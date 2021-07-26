package § #s§
{
   import § !j§.§4#c§;
   import §!"'§.§0"Z§;
   import §!#C§.§#H§;
   import §#,§.§]$+§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §&n§.§6"r§;
   import §&n§.§]"%§;
   import §'"6§.§,R§;
   import §'G§.§=g§;
   import §+#A§.§`y§;
   import §,"v§.§;"n§;
   import §1"l§.§`""§;
   import §3+§.§#D§;
   import §3+§.§+">§;
   import §4§.§9#i§;
   import §6!3§.§'!§;
   import §9$2§.§7"L§;
   import §<!r§.§'##§;
   import §=!t§.§ $!§;
   import §>2§.§"§;
   import §?$<§.§?$>§;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §4!$§ extends § $!§
   {
      
      private static const §,#7§:Number = 0.8;
       
      
      private var §>"I§:MovieClip;
      
      private var §9Z§:Boolean;
      
      private var §]=§:§7$C§;
      
      private var §,!K§:§`y§;
      
      public function §4!$§(param1:§]$+§, param2:§;"n§, param3:§9#i§, param4:§#H§, param5:§4#c§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.§,!K§ = §7"L§.§`"H§.§9'§() as §`y§;
         if(this.§,!K§)
         {
            this.§,!K§.addEventListener(§`y§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§6_§);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         if(this.§,!K§)
         {
            this.§,!K§.removeEventListener(§`y§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§6_§);
         }
         this.§0!_§();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§0!_§();
      }
      
      override protected function onUIInteraction(param1:§0"Z§) : void
      {
         switch(param1.eventName)
         {
            case "PAUSE":
               (§7n§.§6#K§ as §"#1§).§=!G§.§'"R§();
         }
         super.onUIInteraction(param1);
      }
      
      override protected function showScoresForLevel() : void
      {
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§2"5§);
         (§7n§.§-$<§ as § #v§).§=#+§.§@!>§();
         (§7n§.§-$<§ as § #v§).§=#+§.§!"P§();
      }
      
      override protected function getLevelLoadState() : String
      {
         return §+">§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §#D§.STATE_NAME;
      }
      
      override protected function showTutorials() : void
      {
         §,R§.§>#?§("ALL_TOURNAMENT",true);
         §,R§.showTutorials(true,true);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      private function §6_§(param1:Event) : void
      {
         var e:Event = param1;
         if(this.§,!K§)
         {
            if(this.§,!K§.§'!n§)
            {
               if(!§6#`§.getItemByName("ScoreMultiplierIcon").visible)
               {
                  §6#`§.getItemByName("ScoreMultiplierIcon").mClip.scaleX = 0;
                  §6#`§.getItemByName("ScoreMultiplierIcon").mClip.scaleY = 0;
                  this.§]=§ = §"!&§.§`"H§.§1"W§(§6#`§.getItemByName("ScoreMultiplierIcon").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },{
                     "scaleX":0,
                     "scaleY":0
                  },0.2);
                  this.§]=§.play();
                  §6#`§.getItemByName("ScoreMultiplierIcon").visible = true;
                  if(!this.§>"I§)
                  {
                     this.§>"I§ = §6#`§.getItemByName("ScoreMultiplierIcon").mClip.getChildByName("ScoreMultiplierIconOverlay") as MovieClip;
                  }
                  this.§>"I§.alpha = 0;
                  this.§9Z§ = true;
               }
            }
            else if(§6#`§.getItemByName("ScoreMultiplierIcon").visible)
            {
               this.§]=§ = §"!&§.§`"H§.§1"W§(§6#`§.getItemByName("ScoreMultiplierIcon").mClip,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":1,
                  "scaleY":1
               },0.2);
               this.§]=§.play();
               this.§]=§.onComplete = function():void
               {
                  §6#`§.getItemByName("ScoreMultiplierIcon").visible = false;
               };
            }
         }
      }
      
      override protected function skipToLevelEnd(param1:String) : void
      {
         super.skipToLevelEnd(param1);
         if(this.§,!K§)
         {
            this.§,!K§.§&d§(false);
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§,!K§ && this.§>"I§)
         {
            if(this.§,!K§.§"!-§())
            {
               if(this.§9Z§)
               {
                  if(this.§>"I§.alpha < §,#7§)
                  {
                     this.§>"I§.alpha += 0.3;
                  }
                  else
                  {
                     this.§>"I§.alpha = §,#7§;
                     this.§9Z§ = false;
                  }
               }
               else
               {
                  this.§>"I§.alpha = Math.max(0,this.§>"I§.alpha - 0.3);
                  if(this.§>"I§.alpha == 0)
                  {
                     this.§9Z§ = true;
                     this.§,!K§.§2#E§(false);
                  }
               }
            }
         }
      }
      
      private function §0!_§() : void
      {
         if(this.§]=§)
         {
            this.§]=§.§%"#§();
            this.§]=§ = null;
         }
      }
      
      override protected function handleCollectibleItems() : void
      {
         var _loc1_:§]"%§ = null;
         var _loc2_:§=g§ = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§6"r§ = null;
         var _loc6_:§?$>§ = null;
         super.handleCollectibleItems();
         if(§7"L§.§`"H§.§58§())
         {
            _loc1_ = §7"L§.§`"H§.§9'§() as §]"%§;
            if(_loc1_)
            {
               if(_loc1_.§;#d§())
               {
                  _loc2_ = §=g§(§7n§.§6#K§.animationManager);
                  _loc3_ = §6"r§.§-#e§;
                  _loc4_ = §6"r§.§;#G§ + "_" + _loc1_.§8!Y§();
                  if(_loc2_.getAnimation(_loc4_))
                  {
                     _loc3_ = _loc4_;
                  }
                  if((_loc5_ = §<?§.addObject(_loc3_,0,0,0,§'!§.ID_NEXT_FREE) as §6"r§) && !_loc5_.levelItem.soundResource)
                  {
                     _loc6_ = (§7n§.§6#K§ as §"#1§).levelItemManager.getItem(§6"r§.§-#e§);
                     _loc5_.levelItem.soundResource = _loc6_.soundResource;
                  }
               }
            }
         }
      }
      
      override protected function getTournamentId() : int
      {
         if(§'##§.§`"H§.§;#Q§)
         {
            return §'##§.§`"H§.§;#Q§.id;
         }
         return -1;
      }
   }
}
