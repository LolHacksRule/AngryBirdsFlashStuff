package §#!]§
{
   import § 2§.§=+§;
   import § 2§.§`!d§;
   import §!"§.§^!7§;
   import §!R§.§#!L§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §+T§.§1!7§;
   import §+T§.ColorFadeLayerEvent;
   import §3!0§.§`i§;
   import §7"6§.§^!_§;
   import §;X§.§4!@§;
   import §>T§.§3!V§;
   
   public class §-!L§ extends §'"$§
   {
       
      
      private var §false§:§=+§;
      
      protected var §0!h§:§1!7§ = null;
      
      private var §[!U§:Boolean;
      
      public function §-!L§(param1:§-g§, param2:§^!_§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§0!h§ = new §1!7§(0,0,0,1);
         §4!q§ = new §0!%§(this);
         §4!q§.init(this.§';§());
         this.§false§ = §`i§.§&!L§;
         §^!b§ = new §3!V§(this.§false§,§#n§);
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §%!-§.§#t§.Views.View_Credits[0];
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§false§.§2!J§(true);
         §`i§.resume();
         §`i§.setController(§^!b§);
         this.§false§.camera.§-2§();
         this.§0!L§();
         AngryBirdsCustom.§>q§();
      }
      
      private function §0!L§() : void
      {
         var _loc1_:§`!d§ = null;
         for each(_loc1_ in this.§false§.slingshot.§--§)
         {
            _loc1_.§<J§ = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§[!U§ = false;
               this.§8!X§();
               §4!@§.§`!w§("Menu_Back");
         }
      }
      
      protected function §8!X§() : void
      {
         if(this.§0!h§ && !this.§[!U§)
         {
            this.§0!h§.mouseEnabled = true;
            this.§[!U§ = true;
            this.§0!h§.§&'§(0);
            this.§0!h§.§2u§(1,0.25);
            this.§0!h§.addEventListener(ColorFadeLayerEvent.§7! §,this.§]w§);
         }
      }
      
      protected function §]w§(param1:ColorFadeLayerEvent) : void
      {
         this.§0!h§.mouseEnabled = false;
         this.§0!h§.removeEventListener(ColorFadeLayerEvent.§7! §,this.§]w§);
         if(§^!7§.§>!8§ && §^!7§.§>!8§.§do §)
         {
            §]a§(§[!d§.§]!y§);
         }
         else
         {
            §]a§(§+!a§.§]!y§);
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§0!h§.mouseEnabled = true;
         this.§[!U§ = false;
         §4!q§.container.mClip.addChild(this.§0!h§);
         this.§;!V§();
         §-!2§.§7O§.§0!l§.closeAllPopups();
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§,!a§(true);
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!§(false);
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§-_§(false);
      }
      
      protected function §;!V§() : void
      {
         if(this.§0!h§ && !this.§[!U§)
         {
            this.§[!U§ = true;
            this.§0!h§.§&'§(1);
            this.§0!h§.§2u§(0,0.25);
            this.§0!h§.addEventListener(ColorFadeLayerEvent.§7! §,this.§""3§);
         }
      }
      
      private function §""3§(param1:ColorFadeLayerEvent) : void
      {
         this.§0!h§.mouseEnabled = false;
         this.§0!h§.removeEventListener(ColorFadeLayerEvent.§7! §,this.§""3§);
      }
      
      override public function deActivate() : void
      {
         if(this.§0!h§.parent == §4!q§.container.mClip)
         {
            §4!q§.container.mClip.removeChild(this.§0!h§);
         }
         super.deActivate();
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!§(true);
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§,!a§(true);
         if(!§^!7§.§>!8§.§do §)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§-_§(false);
         }
         else
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§-_§(true);
         }
      }
   }
}
