package com.example.push_notificatio_pd;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

public class Notificacao_Esan_BD_14 extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {

        Intent startServiceIntent = new Intent(context, Meu_servico.class);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            context.startService(startServiceIntent);
        }
    }
}
