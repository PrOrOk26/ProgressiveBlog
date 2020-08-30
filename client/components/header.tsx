import React from "react";

import styles from "../styles/components/header.module.scss";

export default function Header() {
  return (
    <div className={`${styles.container}`}>
      <span>This is my header</span>
    </div>
  );
}
