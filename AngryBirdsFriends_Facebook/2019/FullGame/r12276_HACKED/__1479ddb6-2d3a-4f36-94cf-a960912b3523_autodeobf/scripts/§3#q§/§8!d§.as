package §3#q§
{
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §8!d§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §,^§:SimpleButton;
      
      private var §2#!§:MovieClip;
      
      public function §8!d§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§,^§ = new §=@§.§9!x§("com.angrybirds.friendsbar.ButtonMiniGift_Plates")();
         this.mAssetHolder.addChild(this.§,^§);
      }
      
      public function get §3"9§() : SimpleButton
      {
         return this.§,^§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§,^§.visible = false;
            if(param2)
            {
               this.§2#!§ = new §=@§.§9!x§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
               this.mAssetHolder.addChild(this.§2#!§);
               this.§2#!§.addFrameScript(this.§2#!§.totalFrames - 1,this.§-!0§);
               this.§2#!§.play();
            }
         }
         else
         {
            this.§,^§.visible = true;
            this.§-!0§();
         }
      }
      
      private function §-!0§() : void
      {
         if(this.§2#!§)
         {
            this.§2#!§.stop();
            if(this.mAssetHolder.contains(this.§2#!§))
            {
               this.mAssetHolder.removeChild(this.§2#!§);
            }
            this.§2#!§ = null;
         }
      }
   }
}
