package §+W§
{
   import § $0§.§5R§;
   import §3"V§.§ b§;
   import §?Q§.§@#D§;
   import §?Q§.BirdBotTutorialPopup;
   import com.rovio.assets.§[a§;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class § !T§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §!#9§:SimpleButton;
      
      public function § !T§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§!#9§ = new §[a§.§8#k§("com.angrybirds.friendsbar.ButtonBirdbotInfo")();
         this.mAssetHolder.addChild(this.§!#9§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§0!&§,false,0,true);
      }
      
      private function §0!&§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         AngryBirdsBase.singleton.popupManager.openPopup(new BirdBotTutorialPopup(§@#D§.NORMAL,§5R§.DEFAULT));
      }
      
      public function get §6"7§() : SimpleButton
      {
         return this.§!#9§;
      }
   }
}
