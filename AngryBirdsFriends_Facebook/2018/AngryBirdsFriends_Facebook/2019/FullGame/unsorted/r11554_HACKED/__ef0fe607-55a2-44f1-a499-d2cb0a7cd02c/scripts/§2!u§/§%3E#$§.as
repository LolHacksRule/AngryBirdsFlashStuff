package §2!u§
{
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §>#$§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §^!W§:SimpleButton;
      
      private var §]"Y§:MovieClip;
      
      public function §>#$§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§^!W§ = new §2"O§.§`>§("com.angrybirds.friendsbar.ButtonMiniGift_Plates")();
         this.mAssetHolder.addChild(this.§^!W§);
      }
      
      public function get §<#0§() : SimpleButton
      {
         return this.§^!W§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§^!W§.visible = false;
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
            this.§^!W§.visible = true;
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
