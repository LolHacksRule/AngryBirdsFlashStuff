package §3#q§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import § h§.BirdBotTutorialPopup;
   import §9!6§.§## §;
   import com.rovio.assets.§=@§;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §<#p§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §0!c§:SimpleButton;
      
      public function §<#p§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§0!c§ = new §=@§.§9!x§("com.angrybirds.friendsbar.ButtonBirdbotInfo")();
         this.mAssetHolder.addChild(this.§0!c§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§#!O§,false,0,true);
      }
      
      private function §#!O§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         AngryBirdsBase.singleton.popupManager.openPopup(new BirdBotTutorialPopup(§-!S§.NORMAL,§## §.DEFAULT));
      }
      
      public function get §?$!§() : SimpleButton
      {
         return this.§0!c§;
      }
   }
}
