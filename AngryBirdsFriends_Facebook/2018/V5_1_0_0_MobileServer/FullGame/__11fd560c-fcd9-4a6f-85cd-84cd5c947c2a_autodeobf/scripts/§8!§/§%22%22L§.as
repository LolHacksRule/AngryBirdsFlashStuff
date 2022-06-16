package §8!§
{
   import §1!=§.§^"U§;
   import §?P§.BirdBotTutorialPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import com.rovio.assets.§!"f§;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §""L§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §-#P§:SimpleButton;
      
      public function §""L§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§-#P§ = new §!"f§.§##?§("com.angrybirds.friendsbar.ButtonBirdbotInfo")();
         this.mAssetHolder.addChild(this.§-#P§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§-!K§,false,0,true);
      }
      
      private function §-!K§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         AngryBirdsBase.singleton.popupManager.openPopup(new BirdBotTutorialPopup(§]"$§.NORMAL,§^"U§.DEFAULT));
      }
      
      public function get §6#F§() : SimpleButton
      {
         return this.§-#P§;
      }
   }
}
