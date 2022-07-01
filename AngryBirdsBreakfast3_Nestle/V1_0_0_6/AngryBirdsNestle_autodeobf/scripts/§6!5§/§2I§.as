package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §&<§.§^!#§;
   import §+!5§.§2O§;
   import §+!5§.ColorFadeLayerEvent;
   import §2!N§.§#?§;
   import §63§.§^!!§;
   import §@!6§.§3!5§;
   import §]k§.§-! §;
   import §]k§.§<S§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   
   public class §2I§ extends § !S§
   {
       
      
      private var §#g§:§<S§;
      
      protected var §;"3§:§2O§ = null;
      
      private var §#"&§:Boolean;
      
      public function §2I§(param1:§ q§, param2:§>u§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§;"3§ = new §2O§(0,0,0,1);
         § !z§ = new §-"5§(this);
         § !z§.init(this.§;!<§());
         this.§#g§ = §6!E§.§7I§;
         §;"1§ = new §#?§(this.§#g§,§="4§);
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = §#p§.§'"0§.Views.View_Credits[0];
         return AngryBirdsCustom.§>@§(_loc1_);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§#g§.§'F§(true);
         §6!E§.resume();
         §6!E§.setController(§;"1§);
         this.§#g§.camera.§?"4§();
         this.§?!+§();
         AngryBirdsCustom.§[g§();
      }
      
      private function §?!+§() : void
      {
         var _loc1_:§-! § = null;
         for each(_loc1_ in this.§#g§.slingshot.§-!7§)
         {
            _loc1_.§ else§ = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§#"&§ = false;
               this.§]I§();
               §3!5§.§<!9§("Menu_Back");
         }
      }
      
      protected function §]I§() : void
      {
         if(this.§;"3§ && !this.§#"&§)
         {
            this.§;"3§.mouseEnabled = true;
            this.§#"&§ = true;
            this.§;"3§.§6!L§(0);
            this.§;"3§.§5!F§(1,0.25);
            this.§;"3§.addEventListener(ColorFadeLayerEvent.§@!?§,this.§;!>§);
         }
      }
      
      protected function §;!>§(param1:ColorFadeLayerEvent) : void
      {
         this.§;"3§.mouseEnabled = false;
         this.§;"3§.removeEventListener(ColorFadeLayerEvent.§@!?§,this.§;!>§);
         if(§^!!§.§]!P§ && §^!!§.§]!P§.§9!Z§)
         {
            §?n§(§^;§.§7w§);
         }
         else
         {
            §?n§(§,!`§.§7w§);
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§;"3§.mouseEnabled = true;
         this.§#"&§ = false;
         § !z§.container.mClip.addChild(this.§;"3§);
         this.§%!a§();
         §-!I§.§[f§.§@!C§.closeAllPopups();
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§4!y§(true);
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§70§(false);
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§94§(false);
      }
      
      protected function §%!a§() : void
      {
         if(this.§;"3§ && !this.§#"&§)
         {
            this.§#"&§ = true;
            this.§;"3§.§6!L§(1);
            this.§;"3§.§5!F§(0,0.25);
            this.§;"3§.addEventListener(ColorFadeLayerEvent.§@!?§,this.§`$§);
         }
      }
      
      private function §`$§(param1:ColorFadeLayerEvent) : void
      {
         this.§;"3§.mouseEnabled = false;
         this.§;"3§.removeEventListener(ColorFadeLayerEvent.§@!?§,this.§`$§);
      }
      
      override public function deActivate() : void
      {
         if(this.§;"3§.parent == § !z§.container.mClip)
         {
            § !z§.container.mClip.removeChild(this.§;"3§);
         }
         super.deActivate();
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§70§(true);
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§4!y§(true);
         if(!§^!!§.§]!P§.§9!Z§)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§94§(false);
         }
         else
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§94§(true);
         }
      }
   }
}
