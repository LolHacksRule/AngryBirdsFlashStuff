package §9%§
{
   import §%"%§.§2Z§;
   import §&f§.§`"-§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1!k§.§2!^§;
   import §1!k§.ColorFadeLayerEvent;
   import §1z§.§^!@§;
   import §3"#§.§`"8§;
   import §5"@§.§1!N§;
   import §7!6§.§@Y§;
   import §>"2§.§8k§;
   
   public class §]!§ extends §2w§
   {
       
      
      private var §'"9§:§`"8§;
      
      protected var §[H§:§2!^§ = null;
      
      private var §#!p§:Boolean;
      
      public function §]!§(param1:§^!@§, param2:§2Z§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§[H§ = new §2!^§(0,0,0,1);
         §%!A§ = new § !;§(this);
         §%!A§.init(§@!T§.§-!8§.Views.View_Credits[0]);
         this.§'"9§ = §8k§.§;!]§;
         §^!'§ = new §`"-§(this.§'"9§,§#"=§);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§'"9§.§#5§(true);
         §8k§.resume();
         §8k§.§&x§(§^!'§);
         this.§'"9§.camera.§@#§();
         §@T§.§,k§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§#!p§ = false;
               this.§3!!§();
         }
      }
      
      protected function §3!!§() : void
      {
         if(this.§[H§ && !this.§#!p§)
         {
            this.§[H§.mouseEnabled = true;
            this.§#!p§ = true;
            this.§[H§.§6f§(0);
            this.§[H§.§[!1§(1,0.25);
            this.§[H§.addEventListener(ColorFadeLayerEvent.§4,§,this.§ in§);
         }
      }
      
      protected function § in§(param1:ColorFadeLayerEvent) : void
      {
         this.§[H§.mouseEnabled = false;
         this.§[H§.removeEventListener(ColorFadeLayerEvent.§4,§,this.§ in§);
         § !I§(StateEpisodeSelection.STATE_NAME);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§[H§.mouseEnabled = true;
         this.§#!p§ = false;
         §%!A§.container.mClip.addChild(this.§[H§);
         this.§^,§();
         §2&§.§6o§.§^7§.§;!7§();
         (§2&§.§6o§ as §@T§).§56§.§,j§(false);
         (§2&§.§6o§ as §@T§).§56§.§!!5§(true);
         if(!§1!N§.§,!<§.§=!9§)
         {
            (§2&§.§6o§ as §@T§).§56§.§`a§.§%"<§(false);
         }
         else
         {
            (§2&§.§6o§ as §@T§).§56§.§`a§.§+x§(false);
         }
      }
      
      protected function §^,§() : void
      {
         if(this.§[H§ && !this.§#!p§)
         {
            this.§#!p§ = true;
            this.§[H§.§6f§(1);
            this.§[H§.§[!1§(0,0.25);
            this.§[H§.addEventListener(ColorFadeLayerEvent.§4,§,this.§%`§);
         }
      }
      
      private function §%`§(param1:ColorFadeLayerEvent) : void
      {
         this.§[H§.mouseEnabled = false;
         this.§[H§.removeEventListener(ColorFadeLayerEvent.§4,§,this.§%`§);
      }
      
      override public function deActivate() : void
      {
         if(this.§[H§.parent == §%!A§.container.mClip)
         {
            §%!A§.container.mClip.removeChild(this.§[H§);
         }
         super.deActivate();
         (§2&§.§6o§ as §@T§).§56§.§,j§(true);
         (§2&§.§6o§ as §@T§).§56§.§!!5§(true);
         if(!§1!N§.§,!<§.§=!9§)
         {
            (§2&§.§6o§ as §@T§).§56§.§`a§.§%"<§(true);
         }
         else
         {
            (§2&§.§6o§ as §@T§).§56§.§`a§.§+x§(true);
         }
      }
   }
}
