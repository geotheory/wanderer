.class final Lde/agrothe/wanderer/MazeView$2;
.super Landroid/os/Handler;
.source "MazeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/agrothe/wanderer/MazeView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/agrothe/wanderer/MazeView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$diamonds:Landroid/widget/TextView;

.field final synthetic val$level:Landroid/widget/TextView;

.field final synthetic val$moves:Landroid/widget/TextView;

.field final synthetic val$score:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lde/agrothe/wanderer/MazeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$2;->this$0:Lde/agrothe/wanderer/MazeView;

    iput-object p2, p0, Lde/agrothe/wanderer/MazeView$2;->val$diamonds:Landroid/widget/TextView;

    iput-object p3, p0, Lde/agrothe/wanderer/MazeView$2;->val$score:Landroid/widget/TextView;

    iput-object p4, p0, Lde/agrothe/wanderer/MazeView$2;->val$level:Landroid/widget/TextView;

    iput-object p5, p0, Lde/agrothe/wanderer/MazeView$2;->val$moves:Landroid/widget/TextView;

    iput-object p6, p0, Lde/agrothe/wanderer/MazeView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "pMessage"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const v7, 0x1080027

    const v6, 0x104000a

    .line 388
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 389
    .local v3, "value":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 464
    :goto_0
    :pswitch_0
    return-void

    .line 392
    :pswitch_1
    iget-object v4, p0, Lde/agrothe/wanderer/MazeView$2;->val$diamonds:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :pswitch_2
    iget-object v4, p0, Lde/agrothe/wanderer/MazeView$2;->val$score:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 398
    :pswitch_3
    iget-object v4, p0, Lde/agrothe/wanderer/MazeView$2;->val$level:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 401
    :pswitch_4
    iget-object v4, p0, Lde/agrothe/wanderer/MazeView$2;->val$moves:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 404
    :pswitch_5
    new-instance v1, Lde/agrothe/wanderer/MazeView$2$1;

    invoke-direct {v1, p0}, Lde/agrothe/wanderer/MazeView$2$1;-><init>(Lde/agrothe/wanderer/MazeView$2;)V

    .line 419
    .local v1, "deadDialogListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lde/agrothe/wanderer/MazeView$2;->val$context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f05007c

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 428
    .end local v1    # "deadDialogListener":Landroid/content/DialogInterface$OnClickListener;
    :pswitch_6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lde/agrothe/wanderer/MazeView$2;->val$context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f05007d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 435
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 436
    .local v0, "data":Landroid/os/Bundle;
    const-string v4, "items"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "levelItems":[Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lde/agrothe/wanderer/MazeView$2;->val$context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    array-length v5, v2

    invoke-static {}, Lde/agrothe/wanderer/Game;->getLevel()I

    move-result v6

    sub-int/2addr v5, v6

    new-instance v6, Lde/agrothe/wanderer/MazeView$2$2;

    invoke-direct {v6, p0, v0}, Lde/agrothe/wanderer/MazeView$2$2;-><init>(Lde/agrothe/wanderer/MazeView$2;Landroid/os/Bundle;)V

    invoke-virtual {v4, v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f050064

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080051

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 456
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "levelItems":[Ljava/lang/String;
    :pswitch_8
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lde/agrothe/wanderer/MazeView$2;->val$context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f05007f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f050080

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
