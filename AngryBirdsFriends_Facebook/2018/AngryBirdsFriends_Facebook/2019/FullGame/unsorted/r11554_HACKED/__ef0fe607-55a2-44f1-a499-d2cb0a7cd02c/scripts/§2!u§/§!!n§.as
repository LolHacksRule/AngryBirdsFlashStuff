package §2!u§
{
   import §;$5§.§9§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §?!N§.BirdBotTutorialPopup;
   import com.rovio.assets.§2"O§;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §!!n§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §="2§:SimpleButton;
      
      public function §!!n§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§="2§ = new §2"O§.§`>§("com.angrybirds.friendsbar.ButtonBirdbotInfo")();
         this.mAssetHolder.addChild(this.§="2§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§8!0§,false,0,true);
      }
      
      private function §8!0§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         AngryBirdsBase.singleton.popupManager.openPopup(new BirdBotTutorialPopup(§%#§.NORMAL,§9#5§.DEFAULT));
      }
      
      public function get §8"g§() : SimpleButton
      {
         return this.§="2§;
      }
   }
}
