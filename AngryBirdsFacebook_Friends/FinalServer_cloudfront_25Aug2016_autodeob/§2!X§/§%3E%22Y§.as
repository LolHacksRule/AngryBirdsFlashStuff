package §2!X§
{
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §>"Y§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §`]§:SimpleButton;
      
      private var §]"F§:MovieClip;
      
      public function §>"Y§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§`]§ = new §@`§.§4!i§("ButtonMiniChallenge_Plates")();
         this.mAssetHolder.tabChildren = false;
         this.§`]§.tabEnabled = false;
         this.mAssetHolder.addChild(this.§`]§);
      }
      
      public function get §=";§() : SimpleButton
      {
         return this.§`]§;
      }
      
      public function §<!>§(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§`]§.visible = false;
            if(param2)
            {
               this.§]"F§ = new §@`§.§4!i§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
               this.mAssetHolder.addChild(this.§]"F§);
               this.§]"F§.addFrameScript(this.§]"F§.totalFrames - 1,this.§ !G§);
               this.§]"F§.play();
            }
         }
         else
         {
            this.§`]§.visible = true;
            this.§ !G§();
         }
      }
      
      private function § !G§() : void
      {
         if(this.§]"F§)
         {
            this.§]"F§.stop();
            if(this.mAssetHolder.contains(this.§]"F§))
            {
               this.mAssetHolder.removeChild(this.§]"F§);
            }
            this.§]"F§ = null;
         }
      }
   }
}
