import React from "react";
import styles from "../styles/components/header.module.scss";
import Link from "next/link";

export default function Header() {
  return (
    <header className={`${styles["header"]}`}>
      <div className={`${styles["top"]}`}>
        <span>Progressive</span>
        <span style={{ fontFamily: "Montserrat Medium Italic" }}>
          Just a blog
        </span>
      </div>
      <div className={`${styles["quote"]}`}>
        <span>Don’t judge a Cloud by its cover — BvK</span>
      </div>
      <nav className={`${styles["nav"]}`}>
        <Link href="/">
          <span className={`${styles["link"]}`}>Motivation</span>
        </Link>
        <Link href="/">
          <span className={`${styles["link"]}`}>Author</span>
        </Link>
        <Link href="/">
          <span className={`${styles["link"]}`}>Software Engineering</span>
        </Link>
        <Link href="/">
          <span className={`${styles["link"]}`}>Thoughts</span>
        </Link>
        <Link href="/">
          <span className={`${styles["link"]}`}>Contact Me</span>
        </Link>
      </nav>
    </header>
  );
}
