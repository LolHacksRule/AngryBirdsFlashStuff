package §1#=§
{
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §8#_§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §]n§:SimpleButton;
      
      private var §2$0§:MovieClip;
      
      public function §8#_§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§]n§ = new §+$#§.§["`§("com.angrybirds.friendsbar.ButtonMiniGift_Plates")();
         this.mAssetHolder.addChild(this.§]n§);
      }
      
      public function get §@"&§() : SimpleButton
      {
         return this.§]n§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§]n§.visible = false;
            if(param2)
            {
               this.§2$0§ = new §+$#§.§["`§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
               this.mAssetHolder.addChild(this.§2$0§);
               this.§2$0§.addFrameScript(this.§2$0§.totalFrames - 1,this.§!!8§);
               this.§2$0§.play();
            }
         }
         else
         {
            this.§]n§.visible = true;
            this.§!!8§();
         }
      }
      
      private function §!!8§() : void
      {
         if(this.§2$0§)
         {
            this.§2$0§.stop();
            if(this.mAssetHolder.contains(this.§2$0§))
            {
               this.mAssetHolder.removeChild(this.§2$0§);
            }
            this.§2$0§ = null;
         }
      }
   }
}
