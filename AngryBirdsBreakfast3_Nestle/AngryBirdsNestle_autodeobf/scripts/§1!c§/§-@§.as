package §1!c§
{
   import §#!`§.§&!`§;
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§?>§;
   import §1'§.ColorFadeLayerEvent;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4[§.§2P§;
   import §@V§.§#=§;
   import §@V§.§&#§;
   import §[!Z§.§>D§;
   
   public class §-@§ extends §1!Z§
   {
       
      
      private var §!`§:§#=§;
      
      protected var §@T§:§?>§ = null;
      
      private var §+T§:Boolean;
      
      public function §-@§(param1:§0![§, param2:§+f§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§@T§ = new §?>§(0,0,0,1);
         §^!T§ = new §9%§(this);
         §^!T§.init(this.§'!,§());
         this.§!`§ = §@!S§.§2A§;
         §9!m§ = new §&!`§(this.§!`§,§4a§);
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §7I§.§7!%§.Views.View_Credits[0];
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§!`§.§`!V§(true);
         §@!S§.resume();
         §@!S§.setController(§9!m§);
         this.§!`§.camera.§0!,§();
         this.§[!V§();
         AngryBirdsCustom.§get §();
      }
      
      private function §[!V§() : void
      {
         var _loc1_:§&#§ = null;
         for each(_loc1_ in this.§!`§.slingshot.§&]§)
         {
            _loc1_.§??§ = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§+T§ = false;
               this.§<"1§();
               §>D§.§9!q§("Menu_Back");
         }
      }
      
      protected function §<"1§() : void
      {
         if(this.§@T§ && !this.§+T§)
         {
            this.§@T§.mouseEnabled = true;
            this.§+T§ = true;
            this.§@T§.§'7§(0);
            this.§@T§.§!!p§(1,0.25);
            this.§@T§.addEventListener(ColorFadeLayerEvent.§#!9§,this.§,!K§);
         }
      }
      
      protected function §,!K§(param1:ColorFadeLayerEvent) : void
      {
         this.§@T§.mouseEnabled = false;
         this.§@T§.removeEventListener(ColorFadeLayerEvent.§#!9§,this.§,!K§);
         if(§2P§.§[!$§ && §2P§.§[!$§.§-n§)
         {
            §7"6§(§;D§.§8"%§);
         }
         else
         {
            §7"6§(§%!<§.§8"%§);
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@T§.mouseEnabled = true;
         this.§+T§ = false;
         §^!T§.container.mClip.addChild(this.§@T§);
         this.§`!O§();
         § !4§.§%"7§.§+!J§.closeAllPopups();
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§9!z§(true);
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§;!I§(false);
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§4!4§(false);
      }
      
      protected function §`!O§() : void
      {
         if(this.§@T§ && !this.§+T§)
         {
            this.§+T§ = true;
            this.§@T§.§'7§(1);
            this.§@T§.§!!p§(0,0.25);
            this.§@T§.addEventListener(ColorFadeLayerEvent.§#!9§,this.§"!S§);
         }
      }
      
      private function §"!S§(param1:ColorFadeLayerEvent) : void
      {
         this.§@T§.mouseEnabled = false;
         this.§@T§.removeEventListener(ColorFadeLayerEvent.§#!9§,this.§"!S§);
      }
      
      override public function deActivate() : void
      {
         if(this.§@T§.parent == §^!T§.container.mClip)
         {
            §^!T§.container.mClip.removeChild(this.§@T§);
         }
         super.deActivate();
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§;!I§(true);
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§9!z§(true);
         if(!§2P§.§[!$§.§-n§)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§4!4§(false);
         }
         else
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§4!4§(true);
         }
      }
   }
}
