package §8!§
{
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §5"M§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §0#U§:SimpleButton;
      
      private var §%"Q§:MovieClip;
      
      public function §5"M§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§0#U§ = new §!"f§.§##?§("com.angrybirds.friendsbar.ButtonMiniGift_Plates")();
         this.mAssetHolder.addChild(this.§0#U§);
      }
      
      public function get §9"P§() : SimpleButton
      {
         return this.§0#U§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§0#U§.visible = false;
            if(param2)
            {
               this.§%"Q§ = new §!"f§.§##?§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
               this.mAssetHolder.addChild(this.§%"Q§);
               this.§%"Q§.addFrameScript(this.§%"Q§.totalFrames - 1,this.§!-§);
               this.§%"Q§.play();
            }
         }
         else
         {
            this.§0#U§.visible = true;
            this.§!-§();
         }
      }
      
      private function §!-§() : void
      {
         if(this.§%"Q§)
         {
            this.§%"Q§.stop();
            if(this.mAssetHolder.contains(this.§%"Q§))
            {
               this.mAssetHolder.removeChild(this.§%"Q§);
            }
            this.§%"Q§ = null;
         }
      }
   }
}
