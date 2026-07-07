package com.bagce.dili;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        TextView welcomeText = findViewById(R.id.welcome_text);
        welcomeText.setText("Bağçə Dili Xoş Gəldiniz!");
    }
}
