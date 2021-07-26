package §2!X§
{
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §#D§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §,!X§:SimpleButton;
      
      private var §]"F§:MovieClip;
      
      public function §#D§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§,!X§ = new §@`§.§4!i§("com.angrybirds.friendsbar.ButtonMiniGift_Plates")();
         this.mAssetHolder.addChild(this.§,!X§);
      }
      
      public function get §]V§() : SimpleButton
      {
         return this.§,!X§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§,!X§.visible = false;
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
            this.§,!X§.visible = true;
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
