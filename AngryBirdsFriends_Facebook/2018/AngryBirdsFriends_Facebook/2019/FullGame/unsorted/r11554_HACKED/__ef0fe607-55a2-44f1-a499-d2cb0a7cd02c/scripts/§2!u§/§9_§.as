package §2!u§
{
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §9_§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §8$>§:SimpleButton;
      
      private var §]"Y§:MovieClip;
      
      public function §9_§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§8$>§ = new §2"O§.§`>§("ButtonMiniChallenge_Plates")();
         this.mAssetHolder.tabChildren = false;
         this.§8$>§.tabEnabled = false;
         this.mAssetHolder.addChild(this.§8$>§);
      }
      
      public function get §`$7§() : SimpleButton
      {
         return this.§8$>§;
      }
      
      public function §&!w§(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§8$>§.visible = false;
            if(param2)
            {
               this.§]"Y§ = new §2"O§.§`>§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
               this.mAssetHolder.addChild(this.§]"Y§);
               this.§]"Y§.addFrameScript(this.§]"Y§.totalFrames - 1,this.§1!v§);
               this.§]"Y§.play();
            }
         }
         else
         {
            this.§8$>§.visible = true;
            this.§1!v§();
         }
      }
      
      private function §1!v§() : void
      {
         if(this.§]"Y§)
         {
            this.§]"Y§.stop();
            if(this.mAssetHolder.contains(this.§]"Y§))
            {
               this.mAssetHolder.removeChild(this.§]"Y§);
            }
            this.§]"Y§ = null;
         }
      }
   }
}
