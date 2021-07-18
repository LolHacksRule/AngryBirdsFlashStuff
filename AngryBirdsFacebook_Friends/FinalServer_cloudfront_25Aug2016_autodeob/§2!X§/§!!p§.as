package §2!X§
{
   import §8§.§#$+§;
   import §?"R§.BirdBotTutorialPopup;
   import §?"R§.§[W§;
   import §^!,§.§<d§;
   import com.rovio.assets.§@`§;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §!!p§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §>#;§:SimpleButton;
      
      public function §!!p§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§>#;§ = new §@`§.§4!i§("com.angrybirds.friendsbar.ButtonBirdbotInfo")();
         this.mAssetHolder.addChild(this.§>#;§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§^%§,false,0,true);
      }
      
      private function §^%§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         AngryBirdsBase.singleton.popupManager.openPopup(new BirdBotTutorialPopup(§[W§.NORMAL,§<d§.DEFAULT));
      }
      
      public function get §6#$§() : SimpleButton
      {
         return this.§>#;§;
      }
   }
}
