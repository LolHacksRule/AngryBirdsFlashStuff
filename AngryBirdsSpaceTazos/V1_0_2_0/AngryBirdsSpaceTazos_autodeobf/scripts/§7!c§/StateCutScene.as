package §7!c§
{
   import §"!>§.§<!o§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §3!4§.§ ![§;
   import §4!t§.§95§;
   import §4A§.§ j§;
   import §4A§.§1!d§;
   import §8o§.§5"%§;
   import §8o§.§^!L§;
   import §;!0§.;
   import flash.events.Event;
   
   public class StateCutScene extends §%<§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §28§:Number = 500;
       
      
      private var §3-§:§ j§;
      
      private var §2s§:Boolean;
      
      private var §54§:Number = 0;
      
      private var §8!;§:Number = 0;
      
      protected var §#"@§:§^!L§;
      
      public function StateCutScene(param1:§#2§, param2:§<!o§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4§ = new §,!@§(this);
         §4§.init(§?e§.§'"G§.Views.View_CutScene[0]);
      }
      
      protected function §85§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§#"@§)
            {
               §4§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§#"@§.removeEventListener(Event.COMPLETE,this.§0n§);
               this.§#"@§.removeEventListener(Event.CANCEL,this.§8-§);
               this.§#"@§.addEventListener(Event.COMPLETE,this.§0n§);
               this.§#"@§.addEventListener(Event.CANCEL,this.§8-§);
               this.§#"@§.§5m§("cutscene_" + param1);
            }
            else
            {
               this.§?!R§();
            }
            return true;
         }
         return false;
      }
      
      private function §0n§(param1:Event) : void
      {
         if(this.§#"@§)
         {
            this.§#"@§.removeEventListener(Event.COMPLETE,this.§0n§);
            this.§#"@§.removeEventListener(Event.CANCEL,this.§8-§);
            this.§?!R§();
         }
      }
      
      protected function §?!R§() : void
      {
         §4§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§<h§();
         var _loc2_:§5"%§ = §5"%§.§<"B§;
         if(this.§#"@§)
         {
            _loc2_ = this.§#"@§.textureManager;
         }
         this.§3-§ = §1!d§.§%!x§(_loc1_,_loc2_);
         if(this.§3-§)
         {
            §&!h§.§ u§.§-!V§.userProgress.§-a§(_loc1_);
            §;0§.§@!^§.§'!z§(true);
            §;0§.§@!^§.§-s§(false);
            this.§3-§.update(0);
            §;0§.§@!^§.§9!%§.addChild(this.§3-§.sprite);
         }
      }
      
      protected function §8-§(param1:Event) : void
      {
         if(this.§#"@§)
         {
            this.§#"@§.removeEventListener(Event.COMPLETE,this.§0n§);
            this.§#"@§.removeEventListener(Event.CANCEL,this.§8-§);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;0§.§@!^§.clearLevel();
         §;0§.§@!^§.§'!z§(false);
         if(!this.§#"@§)
         {
            this.§#"@§ = §;0§.§@!^§.§;"?§;
         }
         if(§ ![§.§!G§)
         {
            § ![§.§!G§.color = 0;
         }
         this.§54§ = 0;
         this.§8!;§ = 0;
         §4§.getItemByName("Button_Skip").setVisibility(false);
         §4§.getItemByName("Button_Skip").mClip.alpha = this.§54§;
         §&!h§.§ u§.§%"?§();
         this.§2s§ = false;
         §4§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.§<h§();
         if(!this.§85§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function §<h§() : String
      {
         var _loc1_:String = §,W§.previousLevel;
         var _loc2_:String = §,W§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §,W§.currentLevel;
            _loc2_ = §,W§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§3-§)
         {
            §;0§.§@!^§.§9!%§.removeChild(this.§3-§.sprite);
            this.§3-§.dispose();
            this.§3-§ = null;
         }
         if(this.§#"@§)
         {
            this.§#"@§.removeEventListener(Event.COMPLETE,this.§0n§);
            this.§#"@§.removeEventListener(Event.CANCEL,this.§8-§);
         }
         §;0§.§@!^§.§-s§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§2s§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §&!h§.§ u§.§+"4§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§8!;§ > §28§)
         {
            §4§.getItemByName("Button_Skip").setVisibility(true);
            this.§54§ += param1 / 1000;
            §4§.getItemByName("Button_Skip").mClip.alpha = this.§54§;
            if(this.§54§ > 1)
            {
               this.§54§ = 1;
            }
         }
         else
         {
            this.§8!;§ += param1;
         }
         if(this.§2s§ || this.§3-§ && !this.§3-§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§#"@§)
         {
            this.§#"@§.removeEventListener(Event.COMPLETE,this.§0n§);
            this.§#"@§.removeEventListener(Event.CANCEL,this.§8-§);
         }
         if(this.§3-§ && this.§3-§.§3!F§ == § j§.§"" §)
         {
            §!!Q§.§&E§ = StateCutScene.STATE_NAME;
            §2g§(§!!Q§.STATE_NAME);
         }
         else if(this.§3-§ && this.§3-§.§3!F§ == § j§.§7Y§)
         {
            §2g§(§4'§.STATE_NAME);
         }
         else
         {
            _loc1_ = §,W§.currentLevel;
            if(_loc1_)
            {
               §2g§(this.§+"6§());
            }
            else
            {
               §2g§(§!!Q§.STATE_NAME);
            }
         }
      }
      
      protected function §+"6§() : String
      {
         return §"!H§.STATE_NAME;
      }
   }
}
