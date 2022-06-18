package §3#q§
{
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §7"R§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §4#O§:SimpleButton;
      
      private var §2#!§:MovieClip;
      
      public function §7"R§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§4#O§ = new §=@§.§9!x§("ButtonMiniChallenge_Plates")();
         this.mAssetHolder.tabChildren = false;
         this.§4#O§.tabEnabled = false;
         this.mAssetHolder.addChild(this.§4#O§);
      }
      
      public function get §'!"§() : SimpleButton
      {
         return this.§4#O§;
      }
      
      public function §0Q§(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§4#O§.visible = false;
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
            this.§4#O§.visible = true;
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
