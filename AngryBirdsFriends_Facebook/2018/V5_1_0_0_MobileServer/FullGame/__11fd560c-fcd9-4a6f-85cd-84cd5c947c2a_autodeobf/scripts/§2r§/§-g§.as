package §2r§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §!$3§.§,$§;
   import §%9§.§0J§;
   import §%J§.§]i§;
   import §'#d§.§#§;
   import §'#d§.§5!Z§;
   import §2G§.§3W§;
   import §3"I§.§ E§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §8"L§.§4U§;
   import §8#!§.§5`§;
   import §8§.§!#L§;
   import §9#B§.§+y§;
   import §9#B§.§=!V§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§[#K§;
   import §="h§.§`"O§;
   import §=#G§.§6"v§;
   import §@0§.§2$2§;
   import §`"8§.§`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §-g§ extends §0J§
   {
      
      private static const §;N§:Number = 0.8;
       
      
      private var §-#c§:MovieClip;
      
      private var §=x§:Boolean;
      
      private var §3#p§:§4[§;
      
      private var §,>§:§,$§;
      
      public function §-g§(param1:§[#K§, param2:§8=§, param3:§6"v§, param4:§3W§, param5:§""C§)
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
         this.§,>§ = §`"O§.§6!§.§!!I§() as §,$§;
         if(this.§,>§)
         {
            this.§,>§.addEventListener(§,$§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§;!a§);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         if(this.§,>§)
         {
            this.§,>§.removeEventListener(§,$§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§;!a§);
         }
         this.§ b§();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§ b§();
      }
      
      override protected function onUIInteraction(param1:§ E§) : void
      {
         switch(param1.eventName)
         {
            case "PAUSE":
               (§3#U§.§#$4§ as §2$2§).§2"P§.§@#d§();
         }
         super.onUIInteraction(param1);
      }
      
      override protected function showScoresForLevel() : void
      {
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§=C§);
         (§3#U§.§9#^§ as §,A§).§9"x§.§ !6§();
         (§3#U§.§9#^§ as §,A§).§9"x§.§@!b§();
      }
      
      override protected function getLevelLoadState() : String
      {
         return §+y§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §=!V§.STATE_NAME;
      }
      
      override protected function showTutorials() : void
      {
         §]i§.§"#o§("ALL_TOURNAMENT",true);
         §]i§.showTutorials(true,true);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      private function §;!a§(param1:Event) : void
      {
         var e:Event = param1;
         if(this.§,>§)
         {
            if(this.§,>§.§5#3§)
            {
               if(!§4"y§.getItemByName("ScoreMultiplierIcon").visible)
               {
                  §4"y§.getItemByName("ScoreMultiplierIcon").mClip.scaleX = 0;
                  §4"y§.getItemByName("ScoreMultiplierIcon").mClip.scaleY = 0;
                  this.§3#p§ = §&"H§.§6!§.§6C§(§4"y§.getItemByName("ScoreMultiplierIcon").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },{
                     "scaleX":0,
                     "scaleY":0
                  },0.2);
                  this.§3#p§.play();
                  §4"y§.getItemByName("ScoreMultiplierIcon").visible = true;
                  if(!this.§-#c§)
                  {
                     this.§-#c§ = §4"y§.getItemByName("ScoreMultiplierIcon").mClip.getChildByName("ScoreMultiplierIconOverlay") as MovieClip;
                  }
                  this.§-#c§.alpha = 0;
                  this.§=x§ = true;
               }
            }
            else if(§4"y§.getItemByName("ScoreMultiplierIcon").visible)
            {
               this.§3#p§ = §&"H§.§6!§.§6C§(§4"y§.getItemByName("ScoreMultiplierIcon").mClip,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":1,
                  "scaleY":1
               },0.2);
               this.§3#p§.play();
               this.§3#p§.onComplete = function():void
               {
                  §4"y§.getItemByName("ScoreMultiplierIcon").visible = false;
               };
            }
         }
      }
      
      override protected function skipToLevelEnd(param1:String) : void
      {
         super.skipToLevelEnd(param1);
         if(this.§,>§)
         {
            this.§,>§.§-b§(false);
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§,>§ && this.§-#c§)
         {
            if(this.§,>§.§@J§())
            {
               if(this.§=x§)
               {
                  if(this.§-#c§.alpha < §;N§)
                  {
                     this.§-#c§.alpha += 0.3;
                  }
                  else
                  {
                     this.§-#c§.alpha = §;N§;
                     this.§=x§ = false;
                  }
               }
               else
               {
                  this.§-#c§.alpha = Math.max(0,this.§-#c§.alpha - 0.3);
                  if(this.§-#c§.alpha == 0)
                  {
                     this.§=x§ = true;
                     this.§,>§.§+?§(false);
                  }
               }
            }
         }
      }
      
      private function § b§() : void
      {
         if(this.§3#p§)
         {
            this.§3#p§.§@g§();
            this.§3#p§ = null;
         }
      }
      
      override protected function handleCollectibleItems() : void
      {
         var _loc1_:§5!Z§ = null;
         var _loc2_:§`#6§ = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§##8§ = null;
         var _loc6_:§4U§ = null;
         super.handleCollectibleItems();
         if(§`"O§.§6!§.§8!>§())
         {
            _loc1_ = §`"O§.§6!§.§!!I§() as §5!Z§;
            if(_loc1_)
            {
               if(_loc1_.§0!J§())
               {
                  _loc2_ = §`#6§(§3#U§.§#$4§.animationManager);
                  _loc3_ = §##8§.§#!"§;
                  _loc4_ = §##8§.§2!^§ + "_" + _loc1_.§;!7§();
                  if(_loc2_.getAnimation(_loc4_))
                  {
                     _loc3_ = _loc4_;
                  }
                  if((_loc5_ = §4!=§.addObject(_loc3_,0,0,0,§!#L§.ID_NEXT_FREE) as §##8§) && !_loc5_.levelItem.soundResource)
                  {
                     _loc6_ = (§3#U§.§#$4§ as §2$2§).levelItemManager.getItem(§##8§.§#!"§);
                     _loc5_.levelItem.soundResource = _loc6_.soundResource;
                  }
               }
            }
         }
      }
      
      override protected function getTournamentId() : int
      {
         if(§5`§.§6!§.§"!^§)
         {
            return §5`§.§6!§.§"!^§.id;
         }
         return -1;
      }
   }
}
