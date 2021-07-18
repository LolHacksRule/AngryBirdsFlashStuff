package §8!_§
{
   import § M§.§`"2§;
   import §%!r§.§3!'§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §5X§.§+!#§;
   import §7!B§.§@!^§;
   import §^"#§.§&"$§;
   import §^"#§.ColorFadeLayerEvent;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   
   public class §`!4§ extends §4!U§
   {
       
      
      private var §?>§:§^g§;
      
      protected var §!"&§:§&"$§ = null;
      
      private var §+z§:Boolean;
      
      public function §`!4§(param1:§9"!§, param2:§3!'§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§!"&§ = new §&"$§(0,0,0,1);
         §8!A§ = new §1"F§(this);
         §8!A§.init(§-G§.§4+§.Views.View_Credits[0]);
         this.§?>§ = §9q§.§>!L§;
         §'!v§ = new §`"2§(this.§?>§,§6u§);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§?>§.§0!M§(true);
         §9q§.resume();
         §9q§.§15§(§'!v§);
         this.§?>§.camera.§8Y§();
         §`Y§.§2!M§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§+z§ = false;
               this.§5+§();
         }
      }
      
      protected function §5+§() : void
      {
         if(this.§!"&§ && !this.§+z§)
         {
            this.§!"&§.mouseEnabled = true;
            this.§+z§ = true;
            this.§!"&§.§24§(0);
            this.§!"&§.§7t§(1,0.25);
            this.§!"&§.addEventListener(ColorFadeLayerEvent.§;Y§,this.§ ;§);
         }
      }
      
      protected function § ;§(param1:ColorFadeLayerEvent) : void
      {
         this.§!"&§.mouseEnabled = false;
         this.§!"&§.removeEventListener(ColorFadeLayerEvent.§;Y§,this.§ ;§);
         §8!^§(StateEpisodeSelection.STATE_NAME);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§!"&§.mouseEnabled = true;
         this.§+z§ = false;
         §8!A§.container.mClip.addChild(this.§!"&§);
         this.§<e§();
         § !g§.§;!'§.§>";§.§@;§();
         (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(false);
         (§ !g§.§;!'§ as §`Y§).§&,§.§<U§(true);
         if(!§@!^§.§2j§.§8B§)
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§2E§(false);
         }
         else
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§0!s§(false);
         }
      }
      
      protected function §<e§() : void
      {
         if(this.§!"&§ && !this.§+z§)
         {
            this.§+z§ = true;
            this.§!"&§.§24§(1);
            this.§!"&§.§7t§(0,0.25);
            this.§!"&§.addEventListener(ColorFadeLayerEvent.§;Y§,this.§0!r§);
         }
      }
      
      private function §0!r§(param1:ColorFadeLayerEvent) : void
      {
         this.§!"&§.mouseEnabled = false;
         this.§!"&§.removeEventListener(ColorFadeLayerEvent.§;Y§,this.§0!r§);
      }
      
      override public function deActivate() : void
      {
         if(this.§!"&§.parent == §8!A§.container.mClip)
         {
            §8!A§.container.mClip.removeChild(this.§!"&§);
         }
         super.deActivate();
         (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(true);
         (§ !g§.§;!'§ as §`Y§).§&,§.§<U§(true);
         if(!§@!^§.§2j§.§8B§)
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§2E§(true);
         }
         else
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§0!s§(true);
         }
      }
   }
}
