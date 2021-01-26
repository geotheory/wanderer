.class final Lde/agrothe/wanderer/MazeView$2$2;
.super Ljava/lang/Object;
.source "MazeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/agrothe/wanderer/MazeView$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/agrothe/wanderer/MazeView$2;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lde/agrothe/wanderer/MazeView$2;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$2$2;->this$1:Lde/agrothe/wanderer/MazeView$2;

    iput-object p2, p0, Lde/agrothe/wanderer/MazeView$2$2;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "pDialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "pIndex"    # I

    .prologue
    .line 448
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 449
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$2$2;->this$1:Lde/agrothe/wanderer/MazeView$2;

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$2;->this$0:Lde/agrothe/wanderer/MazeView;

    iget-object v1, p0, Lde/agrothe/wanderer/MazeView$2$2;->val$data:Landroid/os/Bundle;

    const-string v2, "levels"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lde/agrothe/wanderer/MazeView;->loadLevel(I)V

    .line 451
    return-void
.end method
