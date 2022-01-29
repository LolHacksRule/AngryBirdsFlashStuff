package §8!§
{
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §9!e§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §[<§:SimpleButton;
      
      private var §%"Q§:MovieClip;
      
      public function §9!e§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§[<§ = new §!"f§.§##?§("ButtonMiniChallenge_Plates")();
         this.mAssetHolder.tabChildren = false;
         this.§[<§.tabEnabled = false;
         this.mAssetHolder.addChild(this.§[<§);
      }
      
      public function get §+#Z§() : SimpleButton
      {
         return this.§[<§;
      }
      
      public function §`z§(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§[<§.visible = false;
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
            this.§[<§.visible = true;
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
