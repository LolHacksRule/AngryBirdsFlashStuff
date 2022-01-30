package §]!V§
{
   import §!!&§.§`!$§;
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §7"1§.§@!9§;
   import §7"1§.ColorFadeLayerEvent;
   import §[^§.§'g§;
   
   public class § do§ extends §5!h§
   {
       
      
      protected var §7B§:§@!9§ = null;
      
      private var §3'§:Boolean;
      
      private var §?!T§:Boolean;
      
      public function § do§(param1:§5!1§, param2:§&S§, param3:§'g§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§7B§ = new §@!9§(0,0,0,0);
      }
      
      override public function activate(param1:String) : void
      {
         if(this.§7B§ && this.§7B§.parent == §5+§.container.mClip)
         {
            §5+§.container.mClip.removeChild(this.§7B§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§3'§ = false;
         if((§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§^D§())
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§?q§(false);
         }
         else
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(false);
         }
         this.§?!T§ = (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§#!Y§();
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§1!P§(false);
         §,!X§.§>!G§.§5!K§.closeAllPopups();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§1!P§(this.§?!T§);
      }
      
      override public function onLevelLoadError() : void
      {
         §8!`§(§&g§.§+a§);
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §`!$§.§>!P§.updateTextFields(§5+§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§+H§();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      protected function §+H§() : void
      {
         if(this.§7B§ && !this.§3'§)
         {
            this.§3'§ = true;
            this.§7B§.§0a§(0);
            if(this.§7B§.parent == §5+§.container.mClip)
            {
               §5+§.container.mClip.removeChild(this.§7B§);
               §5+§.container.mClip.addChild(this.§7B§);
            }
            else
            {
               §5+§.container.mClip.addChild(this.§7B§);
            }
            this.§7B§.§;!$§(1,0.25);
            this.§7B§.addEventListener(ColorFadeLayerEvent.§+!t§,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§7B§.removeEventListener(ColorFadeLayerEvent.§+!t§,this.onFadeComplete);
         §8!`§(§![§());
      }
   }
}
