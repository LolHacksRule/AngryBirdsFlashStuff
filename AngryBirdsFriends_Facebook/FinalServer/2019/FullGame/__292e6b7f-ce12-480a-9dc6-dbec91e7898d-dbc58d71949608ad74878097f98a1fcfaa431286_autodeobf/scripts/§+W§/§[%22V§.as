package §+W§
{
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §["V§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §;!#§:SimpleButton;
      
      private var §,"c§:MovieClip;
      
      public function §["V§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§;!#§ = new §[a§.§8#k§("com.angrybirds.friendsbar.ButtonMiniGift_Plates")();
         this.mAssetHolder.addChild(this.§;!#§);
      }
      
      public function get §5#g§() : SimpleButton
      {
         return this.§;!#§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§;!#§.visible = false;
            if(param2)
            {
               this.§,"c§ = new §[a§.§8#k§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
               this.mAssetHolder.addChild(this.§,"c§);
               this.§,"c§.addFrameScript(this.§,"c§.totalFrames - 1,this.§3!p§);
               this.§,"c§.play();
            }
         }
         else
         {
            this.§;!#§.visible = true;
            this.§3!p§();
         }
      }
      
      private function §3!p§() : void
      {
         if(this.§,"c§)
         {
            this.§,"c§.stop();
            if(this.mAssetHolder.contains(this.§,"c§))
            {
               this.mAssetHolder.removeChild(this.§,"c§);
            }
            this.§,"c§ = null;
         }
      }
   }
}
