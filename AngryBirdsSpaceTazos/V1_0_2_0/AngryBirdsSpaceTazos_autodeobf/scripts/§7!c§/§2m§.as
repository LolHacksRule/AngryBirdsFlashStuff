package §7!c§
{
   import §"!>§.§<!o§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §4!t§.§95§;
   import §6"6§.§40§;
   import §;!0§.;
   import §<"9§.§^"@§;
   import §?!<§.§'!1§;
   import §]!O§.ColorFadeLayerEvent;
   import §]!O§.§^!j§;
   
   public class §2m§ extends §4'§
   {
       
      
      private var §1!3§:§'!1§;
      
      protected var §=!#§:§^!j§ = null;
      
      private var § !w§:Boolean;
      
      public function §2m§(param1:§#2§, param2:§<!o§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§=!#§ = new §^!j§(0,0,0,1);
         §4§ = new §,!@§(this);
         §4§.init(§?e§.§'"G§.Views.View_Credits[0]);
         this.§1!3§ = §;0§.§@!^§;
         §#!"§ = new §^"@§(this.§1!3§,§,W§);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§1!3§.§'!z§(true);
         §;0§.resume();
         §;0§.§'"8§(§#!"§);
         this.§1!3§.camera.§[!q§();
         §^"=§.§`=§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§ !w§ = false;
               this.§switch§();
         }
      }
      
      protected function §switch§() : void
      {
         if(this.§=!#§ && !this.§ !w§)
         {
            this.§=!#§.mouseEnabled = true;
            this.§ !w§ = true;
            this.§=!#§.§8!j§(0);
            this.§=!#§.§#A§(1,0.25);
            this.§=!#§.addEventListener(ColorFadeLayerEvent.§9"?§,this.§"m§);
         }
      }
      
      protected function §"m§(param1:ColorFadeLayerEvent) : void
      {
         this.§=!#§.mouseEnabled = false;
         this.§=!#§.removeEventListener(ColorFadeLayerEvent.§9"?§,this.§"m§);
         §2g§(StateEpisodeSelection.STATE_NAME);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§=!#§.mouseEnabled = true;
         this.§ !w§ = false;
         §4§.container.mClip.addChild(this.§=!#§);
         this.§]!6§();
         §&!h§.§ u§.§-"F§.§=!B§();
         (§&!h§.§ u§ as §^"=§).§?P§.§;j§(false);
         (§&!h§.§ u§ as §^"=§).§?P§.§%!P§(true);
         if(!§40§.§1"$§.§ !0§)
         {
            (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§']§(false);
         }
         else
         {
            (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§0u§(false);
         }
      }
      
      protected function §]!6§() : void
      {
         if(this.§=!#§ && !this.§ !w§)
         {
            this.§ !w§ = true;
            this.§=!#§.§8!j§(1);
            this.§=!#§.§#A§(0,0.25);
            this.§=!#§.addEventListener(ColorFadeLayerEvent.§9"?§,this.§=!K§);
         }
      }
      
      private function §=!K§(param1:ColorFadeLayerEvent) : void
      {
         this.§=!#§.mouseEnabled = false;
         this.§=!#§.removeEventListener(ColorFadeLayerEvent.§9"?§,this.§=!K§);
      }
      
      override public function deActivate() : void
      {
         if(this.§=!#§.parent == §4§.container.mClip)
         {
            §4§.container.mClip.removeChild(this.§=!#§);
         }
         super.deActivate();
         (§&!h§.§ u§ as §^"=§).§?P§.§;j§(true);
         (§&!h§.§ u§ as §^"=§).§?P§.§%!P§(true);
         if(!§40§.§1"$§.§ !0§)
         {
            (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§']§(true);
         }
         else
         {
            (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§0u§(true);
         }
      }
   }
}
