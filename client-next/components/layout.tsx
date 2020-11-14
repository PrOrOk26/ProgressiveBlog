import Head from "next/head";
import { WithChildren } from "../util/types";
import Header from "./header";
import styles from "../styles/components/layout.module.scss";
import React from "react";
import Footer from "./footer";

type LayoutProps = WithChildren<{
  title?: string;
}>;

export default function Layout({
  children,
  title = "Progressive blog",
}: LayoutProps) {
  return (
    <div className={`${styles["layout"]}`}>
      <Head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      <Header />
      <main>{children}</main>
      <Footer />
    </div>
  );
}
