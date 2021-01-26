.class public Lde/agrothe/wanderer/WandererApplication;
.super Landroid/app/Application;
.source "WandererApplication.java"


# instance fields
.field _startInstrumentation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/agrothe/wanderer/WandererApplication;->_startInstrumentation:Z

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x7f090000

    const/4 v2, 0x1

    .line 15
    iget-boolean v0, p0, Lde/agrothe/wanderer/WandererApplication;->_startInstrumentation:Z

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "before instrument"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lde/agrothe/wanderer/ApplicationInstrumentation;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4, v4}, Lde/agrothe/wanderer/WandererApplication;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 20
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "after instrument"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void

    .line 24
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "before onCreate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lde/agrothe/wanderer/WandererApplication;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 26
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 27
    invoke-virtual {p0}, Lde/agrothe/wanderer/WandererApplication;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 28
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "after onCreate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
