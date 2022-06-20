package §1#=§
{
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class §?1§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §4#w§:SimpleButton;
      
      private var §2$0§:MovieClip;
      
      public function §?1§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§4#w§ = new §+$#§.§["`§("ButtonMiniChallenge_Plates")();
         this.mAssetHolder.tabChildren = false;
         this.§4#w§.tabEnabled = false;
         this.mAssetHolder.addChild(this.§4#w§);
      }
      
      public function get §>"4§() : SimpleButton
      {
         return this.§4#w§;
      }
      
      public function §!$6§(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§4#w§.visible = false;
            if(param2)
            {
               this.§2$0§ = new §+$#§.§["`§("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
               this.mAssetHolder.addChild(this.§2$0§);
               this.§2$0§.addFrameScript(this.§2$0§.totalFrames - 1,this.§!!8§);
               this.§2$0§.play();
            }
         }
         else
         {
            this.§4#w§.visible = true;
            this.§!!8§();
         }
      }
      
      private function §!!8§() : void
      {
         if(this.§2$0§)
         {
            this.§2$0§.stop();
            if(this.mAssetHolder.contains(this.§2$0§))
            {
               this.mAssetHolder.removeChild(this.§2$0§);
            }
            this.§2$0§ = null;
         }
      }
   }
}
