package §@r§
{
   import § "L§.§23§;
   import §!!L§.§6$1§;
   import §!!L§.§=$3§;
   import §#g§.§!P§;
   import §'"b§.§ #F§;
   import §+`§.§%"q§;
   import §,#,§.§3#J§;
   import §-^§.§8#b§;
   import §5!g§.§;#G§;
   import §6#h§.§'!t§;
   import §7"T§.§@"T§;
   import §7#$§.§]#q§;
   import §8#K§.§&2§;
   import §9#-§.§]!N§;
   import §;!=§.§ !i§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §?#z§.§]$?§;
   import §^"G§.§2+§;
   import §`!Z§.§7J§;
   import §`!Z§.§=!7§;
   import §`,§.§7!$§;
   import §`§.§%#m§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §9#V§ extends §8#b§
   {
      
      private static const §4h§:Number = 0.8;
       
      
      private var §&#d§:MovieClip;
      
      private var § "S§:Boolean;
      
      private var §7"O§:§@$-§;
      
      private var §9#_§:§]!N§;
      
      public function §9#V§(param1:§23§, param2:§]#q§, param3:§'!t§, param4:§3#J§, param5:§%"q§)
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
         this.§9#_§ = § #F§.§+!,§.§4#P§() as §]!N§;
         if(this.§9#_§)
         {
            this.§9#_§.addEventListener(§]!N§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§0!r§);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         if(this.§9#_§)
         {
            this.§9#_§.removeEventListener(§]!N§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§0!r§);
         }
         this.§ Q§();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§ Q§();
      }
      
      override protected function onUIInteraction(param1:§%#m§) : void
      {
         switch(param1.eventName)
         {
            case "PAUSE":
               (§]$?§.§2#§ as §!P§).§]!_§.§<#a§();
         }
         super.onUIInteraction(param1);
      }
      
      override protected function showScoresForLevel() : void
      {
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§#!3§);
         (§]$?§.§;u§ as §@z§).§8!;§.§-"t§();
         (§]$?§.§;u§ as §@z§).§8!;§.§8"!§();
      }
      
      override protected function getLevelLoadState() : String
      {
         return §=$3§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §6$1§.STATE_NAME;
      }
      
      override protected function showTutorials() : void
      {
         §;#G§.§?!g§("ALL_TOURNAMENT",true);
         §;#G§.showTutorials(true,true);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      private function §0!r§(param1:Event) : void
      {
         var e:Event = param1;
         if(this.§9#_§)
         {
            if(this.§9#_§.§]#9§)
            {
               if(!§?!,§.getItemByName("ScoreMultiplierIcon").visible)
               {
                  §?!,§.getItemByName("ScoreMultiplierIcon").mClip.scaleX = 0;
                  §?!,§.getItemByName("ScoreMultiplierIcon").mClip.scaleY = 0;
                  this.§7"O§ = §6"W§.§+!,§.§9!n§(§?!,§.getItemByName("ScoreMultiplierIcon").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },{
                     "scaleX":0,
                     "scaleY":0
                  },0.2);
                  this.§7"O§.play();
                  §?!,§.getItemByName("ScoreMultiplierIcon").visible = true;
                  if(!this.§&#d§)
                  {
                     this.§&#d§ = §?!,§.getItemByName("ScoreMultiplierIcon").mClip.getChildByName("ScoreMultiplierIconOverlay") as MovieClip;
                  }
                  this.§&#d§.alpha = 0;
                  this.§ "S§ = true;
               }
            }
            else if(§?!,§.getItemByName("ScoreMultiplierIcon").visible)
            {
               this.§7"O§ = §6"W§.§+!,§.§9!n§(§?!,§.getItemByName("ScoreMultiplierIcon").mClip,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":1,
                  "scaleY":1
               },0.2);
               this.§7"O§.play();
               this.§7"O§.onComplete = function():void
               {
                  §?!,§.getItemByName("ScoreMultiplierIcon").visible = false;
               };
            }
         }
      }
      
      override protected function skipToLevelEnd(param1:String) : void
      {
         super.skipToLevelEnd(param1);
         if(this.§9#_§)
         {
            this.§9#_§.§]!h§(false);
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§9#_§ && this.§&#d§)
         {
            if(this.§9#_§.§'"W§())
            {
               if(this.§ "S§)
               {
                  if(this.§&#d§.alpha < §4h§)
                  {
                     this.§&#d§.alpha += 0.3;
                  }
                  else
                  {
                     this.§&#d§.alpha = §4h§;
                     this.§ "S§ = false;
                  }
               }
               else
               {
                  this.§&#d§.alpha = Math.max(0,this.§&#d§.alpha - 0.3);
                  if(this.§&#d§.alpha == 0)
                  {
                     this.§ "S§ = true;
                     this.§9#_§.§ !G§(false);
                  }
               }
            }
         }
      }
      
      private function § Q§() : void
      {
         if(this.§7"O§)
         {
            this.§7"O§.§0"D§();
            this.§7"O§ = null;
         }
      }
      
      override protected function handleCollectibleItems() : void
      {
         var _loc1_:§=!7§ = null;
         var _loc2_:§@"T§ = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§7J§ = null;
         var _loc6_:§&2§ = null;
         super.handleCollectibleItems();
         if(§ #F§.§+!,§.§1#@§())
         {
            _loc1_ = § #F§.§+!,§.§4#P§() as §=!7§;
            if(_loc1_)
            {
               if(_loc1_.§1"#§())
               {
                  _loc2_ = §@"T§(§]$?§.§2#§.animationManager);
                  _loc3_ = §7J§.§`$=§;
                  _loc4_ = §7J§.§>[§ + "_" + _loc1_.§>">§();
                  if(_loc2_.getAnimation(_loc4_))
                  {
                     _loc3_ = _loc4_;
                  }
                  if((_loc5_ = §?!^§.addObject(_loc3_,0,0,0,§ !i§.ID_NEXT_FREE) as §7J§) && !_loc5_.levelItem.soundResource)
                  {
                     _loc6_ = (§]$?§.§2#§ as §!P§).levelItemManager.getItem(§7J§.§`$=§);
                     _loc5_.levelItem.soundResource = _loc6_.soundResource;
                  }
               }
            }
         }
      }
      
      override protected function getTournamentId() : int
      {
         if(§7!$§.§+!,§.§@!v§)
         {
            return §7!$§.§+!,§.§@!v§.id;
         }
         return -1;
      }
   }
}
