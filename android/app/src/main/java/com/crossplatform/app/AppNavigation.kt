package com.crossplatform.app

import androidx.compose.runtime.Composable
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController

object AppRoutes {
    const val MAIN = "main"
    const val ABOUT = "about"
}

@Composable
fun AppNavigation() {
    val navController = rememberNavController()

    NavHost(navController = navController, startDestination = AppRoutes.MAIN) {
        composable(AppRoutes.MAIN) {
            MainScreen(onInfoClick = { navController.navigate(AppRoutes.ABOUT) })
        }
        composable(AppRoutes.ABOUT) {
            AboutScreen(onBackClick = { navController.popBackStack() })
        }
    }
}
