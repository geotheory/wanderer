.class public Lde/agrothe/util/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# static fields
.field static final _MAX_LOG_TAGE_LENGTH:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buidLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pTagName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x17

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 17
    .local v0, "length":I
    if-gt v0, v1, :cond_0

    move-object v1, p0

    :goto_0
    return-object v1

    :cond_0
    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isEnabledFor(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "pTag"    # Ljava/lang/String;
    .param p1, "pLevel"    # I

    .prologue
    const/4 v0, 0x4

    .line 27
    if-ge p1, v0, :cond_0

    :goto_0
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2
    .param p0, "pTag"    # Ljava/lang/String;
    .param p1, "pLevel"    # I
    .param p2, "pMessage"    # Ljava/lang/Object;

    .prologue
    .line 37
    if-nez p2, :cond_0

    const-string v1, "null"

    move-object v0, v1

    .line 40
    .end local p2    # "pMessage":Ljava/lang/Object;
    .local v0, "message":Ljava/lang/String;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 56
    :pswitch_0
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_1
    return-void

    .line 37
    .end local v0    # "message":Ljava/lang/String;
    .restart local p2    # "pMessage":Ljava/lang/Object;
    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/String;

    .end local p2    # "pMessage":Ljava/lang/Object;
    move-object v0, p2

    goto :goto_0

    .restart local p2    # "pMessage":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 43
    .end local p2    # "pMessage":Ljava/lang/Object;
    .restart local v0    # "message":Ljava/lang/String;
    :pswitch_1
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 46
    :pswitch_2
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 49
    :pswitch_3
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 52
    :pswitch_4
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 40
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
