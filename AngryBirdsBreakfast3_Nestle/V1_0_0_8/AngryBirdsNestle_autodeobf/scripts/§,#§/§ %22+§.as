package §,#§
{
   import §"!G§.§3!f§;
   import §&!>§.§2!V§;
   import §1Q§.§%!Y§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §9G§.§1!a§;
   import §9G§.§2F§;
   import §=b§.§5!p§;
   import §=b§.ColorFadeLayerEvent;
   import §>P§.§,3§;
   import com.angrybirds.§4"6§;
   
   public class § "+§ extends §6L§
   {
       
      
      private var §5M§:§2F§;
      
      protected var § p§:§5!p§ = null;
      
      private var §6!d§:Boolean;
      
      public function § "+§(param1:§3"&§, param2:§3!f§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§ p§ = new §5!p§(0,0,0,1);
         §^!6§ = new §58§(this);
         §^!6§.init(this.§'!N§());
         this.§5M§ = §4"6§.§;!k§;
         §5!Y§ = new §%!Y§(this.§5M§,§!3§);
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §8!1§.§31§.Views.View_Credits[0];
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§5M§.§7!X§(true);
         §4"6§.resume();
         §4"6§.setController(§5!Y§);
         this.§5M§.camera.§5! §();
         this.§?!?§();
         AngryBirdsCustom.§"-§();
      }
      
      private function §?!?§() : void
      {
         var _loc1_:§1!a§ = null;
         for each(_loc1_ in this.§5M§.slingshot.§set §)
         {
            _loc1_.§2![§ = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§6!d§ = false;
               this.§9!U§();
               §]d§.§^!J§("Menu_Back");
         }
      }
      
      protected function §9!U§() : void
      {
         if(this.§ p§ && !this.§6!d§)
         {
            this.§ p§.mouseEnabled = true;
            this.§6!d§ = true;
            this.§ p§.§+b§(0);
            this.§ p§.§<!9§(1,0.25);
            this.§ p§.addEventListener(ColorFadeLayerEvent.§4!U§,this.§6i§);
         }
      }
      
      protected function §6i§(param1:ColorFadeLayerEvent) : void
      {
         this.§ p§.mouseEnabled = false;
         this.§ p§.removeEventListener(ColorFadeLayerEvent.§4!U§,this.§6i§);
         if(§2!V§.§!!?§ && §2!V§.§!!?§.§3§)
         {
            §'"6§(§'!&§.§'u§);
         }
         else
         {
            §'"6§(§=!8§.§'u§);
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§ p§.mouseEnabled = true;
         this.§6!d§ = false;
         §^!6§.container.mClip.addChild(this.§ p§);
         this.§33§();
         §-O§.§5!1§.§-6§.closeAllPopups();
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!b§(true);
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+;§(false);
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+!h§(false);
      }
      
      protected function §33§() : void
      {
         if(this.§ p§ && !this.§6!d§)
         {
            this.§6!d§ = true;
            this.§ p§.§+b§(1);
            this.§ p§.§<!9§(0,0.25);
            this.§ p§.addEventListener(ColorFadeLayerEvent.§4!U§,this.§!m§);
         }
      }
      
      private function §!m§(param1:ColorFadeLayerEvent) : void
      {
         this.§ p§.mouseEnabled = false;
         this.§ p§.removeEventListener(ColorFadeLayerEvent.§4!U§,this.§!m§);
      }
      
      override public function deActivate() : void
      {
         if(this.§ p§.parent == §^!6§.container.mClip)
         {
            §^!6§.container.mClip.removeChild(this.§ p§);
         }
         super.deActivate();
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+;§(true);
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!b§(true);
         if(!§2!V§.§!!?§.§3§)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+!h§(false);
         }
         else
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+!h§(true);
         }
      }
   }
}
