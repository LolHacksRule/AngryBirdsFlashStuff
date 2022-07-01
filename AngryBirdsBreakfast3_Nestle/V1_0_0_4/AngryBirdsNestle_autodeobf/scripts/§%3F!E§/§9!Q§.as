package §?!E§
{
   import §'<§.§=!o§;
   import §5!7§.§<"2§;
   import §;!b§.§%>§;
   import §`!_§.ColorFadeLayerEvent;
   import §`!_§.§[!q§;
   import §`6§.§!!]§;
   
   public class §9!Q§ extends §62§
   {
       
      
      protected var §[!x§:§[!q§ = null;
      
      private var §[=§:Boolean;
      
      private var §4i§:Boolean;
      
      public function §9!Q§(param1:§=!o§, param2:§%>§, param3:§<"2§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§[!x§ = new §[!q§(0,0,0,0);
      }
      
      override public function activate(param1:String) : void
      {
         if(this.§[!x§ && this.§[!x§.parent == §#2§.container.mClip)
         {
            §#2§.container.mClip.removeChild(this.§[!x§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§[=§ = false;
         if((§-!l§.§"x§ as AngryBirdsCustom).§catch§.§4!2§())
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§!!g§(false);
         }
         else
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(false);
         }
         this.§4i§ = (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§6j§();
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§#"%§(false);
         §-!l§.§"x§.§,!W§.closeAllPopups();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§#"%§(this.§4i§);
      }
      
      override public function onLevelLoadError() : void
      {
         §0!w§(§]l§.§+B§);
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §!!]§.§?!+§.updateTextFields(§#2§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§1"!§();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      protected function §1"!§() : void
      {
         if(this.§[!x§ && !this.§[=§)
         {
            this.§[=§ = true;
            this.§[!x§.§7!B§(0);
            if(this.§[!x§.parent == §#2§.container.mClip)
            {
               §#2§.container.mClip.removeChild(this.§[!x§);
               §#2§.container.mClip.addChild(this.§[!x§);
            }
            else
            {
               §#2§.container.mClip.addChild(this.§[!x§);
            }
            this.§[!x§.§,>§(1,0.25);
            this.§[!x§.addEventListener(ColorFadeLayerEvent.§"!^§,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§[!x§.removeEventListener(ColorFadeLayerEvent.§"!^§,this.onFadeComplete);
         §0!w§(§=!+§());
      }
   }
}
