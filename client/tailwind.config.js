module.exports = {
  darkMode: false,
  purge: ["./src/**/*.{js,jsx,ts,tsx}"],
  theme: {
    screens: {
      sm: "640px",
      md: "768px",
      lg: "1024px",
      xl: "1280px",
    },
    extend: {
      spacing: {
        "4xs": "6px",
        "3xs": "10px",
        "2xs": "12px",
        xs: "14px",
        sm: "16px",
        base: "18px",
        lg: "22px",
        xl: "24px",
        "2xl": "32px",
        "3xl": "44px",
        "4xl": "48px",
        "5xl": "58px",
        "6xl": "62px",
        "7xl": "75px",
      },
      fontSize: {
        "2xs": "12px",
        xs: "14px",
        sm: "16px",
        base: "20px",
        lg: "22px",
        xl: "24px",
        "2xl": "32px",
        "3xl": "44px",
        "4xl": "48px",
        "5xl": "58px",
        "6xl": "62px",
      },
      lineHeight: {
        "2xs": "12px",
        xs: "14px",
        sm: "16px",
        base: "20px",
        lg: "22px",
        xl: "24px",
        "2xl": "32px",
        "3xl": "44px",
        "4xl": "48px",
        "5xl": "58px",
      },
      fontFamily: {
        montserratMedium: ["Montserrat Medium"],
        montserratMediumItalic: ["Montserrat Medium Italic"],
        montserratExtraBold: ["Montserrat ExtraBold"],
      },
    },
  },
}
