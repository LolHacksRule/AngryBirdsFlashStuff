package §?!E§
{
   import §'<§.§=!o§;
   import §-!G§.§!!Y§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §0I§.§!!p§;
   import §0I§.§3]§;
   import §9!o§.§=!-§;
   import §;!b§.§%>§;
   import §[!b§.§'!R§;
   import §`!_§.ColorFadeLayerEvent;
   import §`!_§.§[!q§;
   import com.angrybirds.§6U§;
   
   public class §=!X§ extends §2S§
   {
       
      
      private var §-!r§:§!!p§;
      
      protected var §[!x§:§[!q§ = null;
      
      private var §[=§:Boolean;
      
      public function §=!X§(param1:§=!o§, param2:§%>§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§[!x§ = new §[!q§(0,0,0,1);
         §#2§ = new §`%§(this);
         §#2§.init(this.§^!!§());
         this.§-!r§ = §6U§.§+_§;
         §23§ = new §=!-§(this.§-!r§,§+o§);
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = §+!b§.§#!P§.Views.View_Credits[0];
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§-!r§.§ W§(true);
         §6U§.resume();
         §6U§.setController(§23§);
         this.§-!r§.camera.§"1§();
         this.§>!&§();
         AngryBirdsCustom.§"H§();
      }
      
      private function §>!&§() : void
      {
         var _loc1_:§3]§ = null;
         for each(_loc1_ in this.§-!r§.slingshot.§"7§)
         {
            _loc1_.§^P§ = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§[=§ = false;
               this.§72§();
         }
      }
      
      protected function §72§() : void
      {
         if(this.§[!x§ && !this.§[=§)
         {
            this.§[!x§.mouseEnabled = true;
            this.§[=§ = true;
            this.§[!x§.§7!B§(0);
            this.§[!x§.§,>§(1,0.25);
            this.§[!x§.addEventListener(ColorFadeLayerEvent.§"!^§,this.§@!t§);
         }
      }
      
      protected function §@!t§(param1:ColorFadeLayerEvent) : void
      {
         this.§[!x§.mouseEnabled = false;
         this.§[!x§.removeEventListener(ColorFadeLayerEvent.§"!^§,this.§@!t§);
         if(§!!Y§.§9!L§ && §!!Y§.§9!L§.§>c§)
         {
            §0!w§(§;!k§.§+B§);
         }
         else
         {
            §0!w§(§^"!§.§+B§);
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§[!x§.mouseEnabled = true;
         this.§[=§ = false;
         §#2§.container.mClip.addChild(this.§[!x§);
         this.§3^§();
         §-!l§.§"x§.§,!W§.closeAllPopups();
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§;!m§(true);
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§!!g§(false);
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§#"%§(false);
      }
      
      protected function §3^§() : void
      {
         if(this.§[!x§ && !this.§[=§)
         {
            this.§[=§ = true;
            this.§[!x§.§7!B§(1);
            this.§[!x§.§,>§(0,0.25);
            this.§[!x§.addEventListener(ColorFadeLayerEvent.§"!^§,this.§&6§);
         }
      }
      
      private function §&6§(param1:ColorFadeLayerEvent) : void
      {
         this.§[!x§.mouseEnabled = false;
         this.§[!x§.removeEventListener(ColorFadeLayerEvent.§"!^§,this.§&6§);
      }
      
      override public function deActivate() : void
      {
         if(this.§[!x§.parent == §#2§.container.mClip)
         {
            §#2§.container.mClip.removeChild(this.§[!x§);
         }
         super.deActivate();
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§!!g§(true);
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§;!m§(true);
         if(!§!!Y§.§9!L§.§>c§)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§#"%§(false);
         }
         else
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§#"%§(true);
         }
      }
   }
}
