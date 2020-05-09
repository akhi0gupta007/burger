import React from "react";
import classes from "./Toolbar.module.css";
import Logo from "../../../components/Logo/Logo";
import NavigationItems from "../NavigationItems/NavigationItems";
import DrawerToggle from "../SideDrawer/DrawerToggle/DrawerToggle"

const toolbar = (props) => (
  <header className={classes.Toolbar}>
    <DrawerToggle clicked={props.click}/>
    <div  className={classes.Logo}>
        <Logo></Logo>
    </div>

    <nav className={classes.DesktopOnly}>
      <NavigationItems isAutheticated={props.isAuth}></NavigationItems>
    </nav>
  </header>
);

export default toolbar;
