.class public Lde/agrothe/wanderer/ApplicationInstrumentation;
.super Landroid/app/Instrumentation;
.source "ApplicationInstrumentation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    return-void
.end method


# virtual methods
.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 39
    return-void
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 4
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 46
    .local v1, "application":Lde/agrothe/wanderer/WandererApplication;
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lde/agrothe/wanderer/WandererApplication;

    move-object v1, v0

    .line 47
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "instrument"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x0

    iput-boolean v2, v1, Lde/agrothe/wanderer/WandererApplication;->_startInstrumentation:Z

    .line 49
    const/high16 v2, 0x7f090000

    invoke-virtual {v1, v2}, Lde/agrothe/wanderer/WandererApplication;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "pArguments"    # Landroid/os/Bundle;

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lde/agrothe/wanderer/ApplicationInstrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    .line 22
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Instrumentation;->onStart()V

    .line 34
    return-void
.end method
