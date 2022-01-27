package §=" §
{
   import §!"4§.§;";§;
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §3R§.§1!R§;
   import §4",§.§,!j§;
   import §5s§.§]s§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §9!L§.§8u§;
   import §9!L§.ColorFadeLayerEvent;
   
   public class §+!8§ extends §?-§
   {
       
      
      private var §;H§:§1!R§;
      
      protected var §@!3§:§8u§ = null;
      
      private var §"8§:Boolean;
      
      public function §+!8§(param1:§,!j§, param2:§;l§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§@!3§ = new §8u§(0,0,0,1);
         §6!J§ = new §0"4§(this);
         §6!J§.init(§7x§.§+2§.Views.View_Credits[0]);
         this.§;H§ = §8!w§.§5!V§;
         § case§ = new §]s§(this.§;H§,§]m§);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§;H§.§3r§(true);
         §8!w§.resume();
         §8!w§.§?<§(§ case§);
         this.§;H§.camera.§""'§();
         §["!§.§>X§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§"8§ = false;
               this.§ !_§();
         }
      }
      
      protected function § !_§() : void
      {
         if(this.§@!3§ && !this.§"8§)
         {
            this.§@!3§.mouseEnabled = true;
            this.§"8§ = true;
            this.§@!3§.§"!i§(0);
            this.§@!3§.§<"&§(1,0.25);
            this.§@!3§.addEventListener(ColorFadeLayerEvent.§+[§,this.§"=§);
         }
      }
      
      protected function §"=§(param1:ColorFadeLayerEvent) : void
      {
         this.§@!3§.mouseEnabled = false;
         this.§@!3§.removeEventListener(ColorFadeLayerEvent.§+[§,this.§"=§);
         §'Q§(StateEpisodeSelection.STATE_NAME);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@!3§.mouseEnabled = true;
         this.§"8§ = false;
         §6!J§.container.mClip.addChild(this.§@!3§);
         this.§else§();
         §&"<§.§<!7§.§1"0§.§`x§();
         (§&"<§.§<!7§ as §["!§).§^"<§.§^"@§(false);
         (§&"<§.§<!7§ as §["!§).§^"<§.§`!4§(true);
         if(!§;";§.§3U§.§1T§)
         {
            (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.§4[§(false);
         }
         else
         {
            (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.§ g§(false);
         }
      }
      
      protected function §else§() : void
      {
         if(this.§@!3§ && !this.§"8§)
         {
            this.§"8§ = true;
            this.§@!3§.§"!i§(1);
            this.§@!3§.§<"&§(0,0.25);
            this.§@!3§.addEventListener(ColorFadeLayerEvent.§+[§,this.§3?§);
         }
      }
      
      private function §3?§(param1:ColorFadeLayerEvent) : void
      {
         this.§@!3§.mouseEnabled = false;
         this.§@!3§.removeEventListener(ColorFadeLayerEvent.§+[§,this.§3?§);
      }
      
      override public function deActivate() : void
      {
         if(this.§@!3§.parent == §6!J§.container.mClip)
         {
            §6!J§.container.mClip.removeChild(this.§@!3§);
         }
         super.deActivate();
         (§&"<§.§<!7§ as §["!§).§^"<§.§^"@§(true);
         (§&"<§.§<!7§ as §["!§).§^"<§.§`!4§(true);
         if(!§;";§.§3U§.§1T§)
         {
            (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.§4[§(true);
         }
         else
         {
            (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.§ g§(true);
         }
      }
   }
}
