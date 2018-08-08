package com.example.huangwenxi.webviewcookiesdemo

import android.annotation.SuppressLint
import android.content.Intent
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.webkit.*
import android.widget.Button
import java.util.*

class MainActivity : AppCompatActivity() {

    @SuppressLint("SetJavaScriptEnabled")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val button = findViewById<Button>(R.id.button)
        button.setOnClickListener {
            val intent = Intent(this, SecondActivity::class.java)
            startActivity(intent)
        }

        val webView = findViewById<WebView>(R.id.web1)
        webView.webViewClient = WebViewClient()
        webView.webChromeClient = WebChromeClient()
        val settings = webView.settings
        settings.javaScriptEnabled = true
        settings.loadsImagesAutomatically = true
        settings.allowFileAccess = true
        webView.loadUrl("https://www.baidu.com")

        val cookieManager = CookieManager.getInstance()
        cookieManager.setAcceptCookie(true)
        cookieManager.removeAllCookies {  }
        val cookie = cookieManager.getCookie("https://www.baidu.com")
        val date = Date()
        Log.i("Hays", "test by hays : $cookie, date: ${date.toString()}")
        cookieManager.setCookie("https://www.baidu.com", "hays_cookie_name=hays_cookie_value; domain=.baidu.com; path=/; expires=Tue Aug 31 2018 19:37:14 GMT+0800 (CST); version=1;")
//        cookieManager.flush()
//        CookieSyncManager.createInstance(this).sync()
        val cookie2 = cookieManager.getCookie("https://www.baidu.com")
        Log.i("Hays", "test by Hays 2 : $cookie2")
        Log.i("Hays", "date : ${date.time}")

    }
}
