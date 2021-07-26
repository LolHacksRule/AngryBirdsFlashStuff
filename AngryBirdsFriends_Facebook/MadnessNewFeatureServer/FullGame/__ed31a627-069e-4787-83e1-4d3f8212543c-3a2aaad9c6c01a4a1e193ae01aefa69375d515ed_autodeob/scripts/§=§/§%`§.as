package §=§#0
{
   import §0!s§.§]"Y§;
   import §8#K§.§3Z§;
   import §>z§.§#"l§;
   import §>z§.BirdBotTutorialPopup;
   import com.rovio.assets.§6$A§;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §%`§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §4!,§:SimpleButton;
      
      public function §%`§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§4!,§ = new §6$A§.§1!m§("com.angrybirds.friendsbar.ButtonBirdbotInfo")();
         this.mAssetHolder.addChild(this.§4!,§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§?"V§,false,0,true);
      }
      
      private function §?"V§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         AngryBirdsBase.singleton.popupManager.openPopup(new BirdBotTutorialPopup(§#"l§.NORMAL,§]"Y§.DEFAULT));
      }
      
      public function get § #a§() : SimpleButton
      {
         return this.§4!,§;
      }
   }
}
