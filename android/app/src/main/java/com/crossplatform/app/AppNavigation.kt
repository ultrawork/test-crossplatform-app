package com.crossplatform.app

import androidx.compose.runtime.Composable
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController

@Composable
fun AppNavigation() {
    val navController = rememberNavController()

    NavHost(navController = navController, startDestination = "main") {
        composable("main") {
            MainScreen(onInfoClick = { navController.navigate("about") })
        }
        composable("about") {
            AboutScreen(onBackClick = { navController.popBackStack() })
        }
    }
}
