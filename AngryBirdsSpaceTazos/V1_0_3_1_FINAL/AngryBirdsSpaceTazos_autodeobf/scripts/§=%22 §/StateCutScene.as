package §=" §
{
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §-!5§.§ `§;
   import §-!5§.§`!C§;
   import §1f§.§9H§;
   import §4",§.§,!j§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §^e§.§0"1§;
   import §^e§.§1"B§;
   import flash.events.Event;
   
   public class StateCutScene extends §[!B§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §!1§:Number = 500;
       
      
      private var §3!1§:§`!C§;
      
      private var §]!B§:Boolean;
      
      private var §?q§:Number = 0;
      
      private var §@G§:Number = 0;
      
      protected var §%"@§:§1"B§;
      
      public function StateCutScene(param1:§,!j§, param2:§;l§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §6!J§ = new §0"4§(this);
         §6!J§.init(§7x§.§+2§.Views.View_CutScene[0]);
      }
      
      protected function §9!7§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§%"@§)
            {
               §6!J§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§%"@§.removeEventListener(Event.COMPLETE,this.§[h§);
               this.§%"@§.removeEventListener(Event.CANCEL,this.§5!I§);
               this.§%"@§.addEventListener(Event.COMPLETE,this.§[h§);
               this.§%"@§.addEventListener(Event.CANCEL,this.§5!I§);
               this.§%"@§.§,'§("cutscene_" + param1);
            }
            else
            {
               this.§&!e§();
            }
            return true;
         }
         return false;
      }
      
      private function §[h§(param1:Event) : void
      {
         if(this.§%"@§)
         {
            this.§%"@§.removeEventListener(Event.COMPLETE,this.§[h§);
            this.§%"@§.removeEventListener(Event.CANCEL,this.§5!I§);
            this.§&!e§();
         }
      }
      
      protected function §&!e§() : void
      {
         §6!J§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§`!v§();
         var _loc2_:§0"1§ = §0"1§.§8!J§;
         if(this.§%"@§)
         {
            _loc2_ = this.§%"@§.textureManager;
         }
         this.§3!1§ = § `§.§[b§(_loc1_,_loc2_);
         if(this.§3!1§)
         {
            §&"<§.§<!7§.§,!9§.userProgress.§-0§(_loc1_);
            §8!w§.§5!V§.§3r§(true);
            §8!w§.§5!V§.§+g§(false);
            this.§3!1§.update(0);
            §8!w§.§5!V§.§-P§.addChild(this.§3!1§.sprite);
         }
      }
      
      protected function §5!I§(param1:Event) : void
      {
         if(this.§%"@§)
         {
            this.§%"@§.removeEventListener(Event.COMPLETE,this.§[h§);
            this.§%"@§.removeEventListener(Event.CANCEL,this.§5!I§);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8!w§.§5!V§.clearLevel();
         §8!w§.§5!V§.§3r§(false);
         if(!this.§%"@§)
         {
            this.§%"@§ = §8!w§.§5!V§.§2!z§;
         }
         if(§9H§.§0"'§)
         {
            §9H§.§0"'§.color = 0;
         }
         this.§?q§ = 0;
         this.§@G§ = 0;
         §6!J§.getItemByName("Button_Skip").setVisibility(false);
         §6!J§.getItemByName("Button_Skip").mClip.alpha = this.§?q§;
         §&"<§.§<!7§.§+S§();
         this.§]!B§ = false;
         §6!J§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.§`!v§();
         if(!this.§9!7§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function §`!v§() : String
      {
         var _loc1_:String = §]m§.previousLevel;
         var _loc2_:String = §]m§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §]m§.currentLevel;
            _loc2_ = §]m§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§3!1§)
         {
            §8!w§.§5!V§.§-P§.removeChild(this.§3!1§.sprite);
            this.§3!1§.dispose();
            this.§3!1§ = null;
         }
         if(this.§%"@§)
         {
            this.§%"@§.removeEventListener(Event.COMPLETE,this.§[h§);
            this.§%"@§.removeEventListener(Event.CANCEL,this.§5!I§);
         }
         §8!w§.§5!V§.§+g§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§]!B§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §&"<§.§<!7§.§7!H§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§@G§ > §!1§)
         {
            §6!J§.getItemByName("Button_Skip").setVisibility(true);
            this.§?q§ += param1 / 1000;
            §6!J§.getItemByName("Button_Skip").mClip.alpha = this.§?q§;
            if(this.§?q§ > 1)
            {
               this.§?q§ = 1;
            }
         }
         else
         {
            this.§@G§ += param1;
         }
         if(this.§]!B§ || this.§3!1§ && !this.§3!1§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§%"@§)
         {
            this.§%"@§.removeEventListener(Event.COMPLETE,this.§[h§);
            this.§%"@§.removeEventListener(Event.CANCEL,this.§5!I§);
         }
         if(this.§3!1§ && this.§3!1§.§=%§ == §`!C§.§7s§)
         {
            §]!"§.§,"7§ = StateCutScene.STATE_NAME;
            §'Q§(§]!"§.STATE_NAME);
         }
         else if(this.§3!1§ && this.§3!1§.§=%§ == §`!C§.§'!r§)
         {
            §'Q§(§?-§.STATE_NAME);
         }
         else
         {
            _loc1_ = §]m§.currentLevel;
            if(_loc1_)
            {
               §'Q§(this.§""5§());
            }
            else
            {
               §'Q§(this.§6!§);
            }
         }
      }
      
      protected function get §6!§() : String
      {
         return §]!"§.STATE_NAME;
      }
      
      protected function §""5§() : String
      {
         return § Q§.STATE_NAME;
      }
   }
}
