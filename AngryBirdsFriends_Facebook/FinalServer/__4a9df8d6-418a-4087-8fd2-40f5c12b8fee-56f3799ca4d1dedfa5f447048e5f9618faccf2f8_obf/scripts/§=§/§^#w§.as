package §=§#0
{
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §^#w§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §6-§:SimpleButton;
      
      private var §0!1§:MovieClip;
      
      public function §^#w§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§6-§ = new §6$A§.§1!m§("com.angrybirds.friendsbar.ButtonMiniGift_Plates")();
         this.mAssetHolder.addChild(this.§6-§);
      }
      
      public function get §,!X§() : SimpleButton
      {
         return this.§6-§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§6-§.visible = false;
            if(param2)
            {
               this.§0!1§ = new §6$A§.§1!m§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
               this.mAssetHolder.addChild(this.§0!1§);
               this.§0!1§.addFrameScript(this.§0!1§.totalFrames - 1,this.§8#d§);
               this.§0!1§.play();
            }
         }
         else
         {
            this.§6-§.visible = true;
            this.§8#d§();
         }
      }
      
      private function §8#d§() : void
      {
         if(this.§0!1§)
         {
            this.§0!1§.stop();
            if(this.mAssetHolder.contains(this.§0!1§))
            {
               this.mAssetHolder.removeChild(this.§0!1§);
            }
            this.§0!1§ = null;
         }
      }
   }
}
