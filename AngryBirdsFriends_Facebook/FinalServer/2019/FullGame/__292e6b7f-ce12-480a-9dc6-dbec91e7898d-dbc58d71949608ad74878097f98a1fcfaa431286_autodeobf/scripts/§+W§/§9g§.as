package §+W§
{
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §9g§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §-#H§:SimpleButton;
      
      private var §,"c§:MovieClip;
      
      public function §9g§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§-#H§ = new §[a§.§8#k§("ButtonMiniChallenge_Plates")();
         this.mAssetHolder.tabChildren = false;
         this.§-#H§.tabEnabled = false;
         this.mAssetHolder.addChild(this.§-#H§);
      }
      
      public function get §,!%§() : SimpleButton
      {
         return this.§-#H§;
      }
      
      public function §%!b§(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§-#H§.visible = false;
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
            this.§-#H§.visible = true;
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
