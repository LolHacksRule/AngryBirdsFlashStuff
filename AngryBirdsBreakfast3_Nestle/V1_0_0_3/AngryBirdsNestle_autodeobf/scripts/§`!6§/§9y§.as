package §`!6§
{
   import §&!'§.ColorFadeLayerEvent;
   import §&!'§.§]S§;
   import §;f§.§%!G§;
   import §=X§.§3j§;
   import §>!a§.§5l§;
   import §@"1§.§"h§;
   import §@"1§.§8L§;
   import §@f§.§&!"§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   
   public class §9y§ extends §3B§
   {
       
      
      private var §`W§:§"h§;
      
      protected var §%'§:§]S§ = null;
      
      private var § F§:Boolean;
      
      public function §9y§(param1:§5l§, param2:§-!<§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§%'§ = new §]S§(0,0,0,1);
         §!^§ = new §1"1§(this);
         §!^§.init(this.§@A§());
         this.§`W§ = §4!l§.§,!8§;
         § Z§ = new §%!G§(this.§`W§,§^!§);
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §"!j§.§3=§.Views.View_Credits[0];
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§`W§.§&!L§(true);
         §4!l§.resume();
         §4!l§.setController(§ Z§);
         this.§`W§.camera.§&O§();
         this.§+d§();
         AngryBirdsCustom.§''§();
      }
      
      private function §+d§() : void
      {
         var _loc1_:§8L§ = null;
         for each(_loc1_ in this.§`W§.slingshot.§1%§)
         {
            _loc1_.§'!S§ = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§ F§ = false;
               this.§9+§();
         }
      }
      
      protected function §9+§() : void
      {
         if(this.§%'§ && !this.§ F§)
         {
            this.§%'§.mouseEnabled = true;
            this.§ F§ = true;
            this.§%'§.§["+§(0);
            this.§%'§.§3"5§(1,0.25);
            this.§%'§.addEventListener(ColorFadeLayerEvent.§!D§,this.§6V§);
         }
      }
      
      protected function §6V§(param1:ColorFadeLayerEvent) : void
      {
         this.§%'§.mouseEnabled = false;
         this.§%'§.removeEventListener(ColorFadeLayerEvent.§!D§,this.§6V§);
         if(§3j§.§0!i§ && §3j§.§0!i§.§2A§)
         {
            §8=§(§,z§.§]O§);
         }
         else
         {
            §8=§(§'3§.§]O§);
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§%'§.mouseEnabled = true;
         this.§ F§ = false;
         §!^§.container.mClip.addChild(this.§%'§);
         this.§>!R§();
         §&N§.§#Y§.§@!H§.closeAllPopups();
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§0"$§(true);
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§,v§(false);
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§67§(false);
      }
      
      protected function §>!R§() : void
      {
         if(this.§%'§ && !this.§ F§)
         {
            this.§ F§ = true;
            this.§%'§.§["+§(1);
            this.§%'§.§3"5§(0,0.25);
            this.§%'§.addEventListener(ColorFadeLayerEvent.§!D§,this.§1!2§);
         }
      }
      
      private function §1!2§(param1:ColorFadeLayerEvent) : void
      {
         this.§%'§.mouseEnabled = false;
         this.§%'§.removeEventListener(ColorFadeLayerEvent.§!D§,this.§1!2§);
      }
      
      override public function deActivate() : void
      {
         if(this.§%'§.parent == §!^§.container.mClip)
         {
            §!^§.container.mClip.removeChild(this.§%'§);
         }
         super.deActivate();
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§,v§(true);
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§0"$§(true);
         if(!§3j§.§0!i§.§2A§)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§67§(false);
         }
         else
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§67§(true);
         }
      }
   }
}
