package §7#o§
{
   import § #_§.§?!>§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §+!n§.§+!p§;
   import §+"Y§.§="d§;
   import §+"_§.§ #X§;
   import §+"_§.§>"%§;
   import §-!j§.§-"8§;
   import §0!>§.§;#$§;
   import §2$;§.§!"e§;
   import §4#$§.§5"L§;
   import §9#M§.§0#^§;
   import §<#O§.§<0§;
   import §=X§.§3§;
   import §>#Y§.§@!p§;
   import §?!<§.§5!M§;
   import §?$#§.§^#j§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §[#v§.§'"b§;
   import §[#v§.§]#<§;
   import §]M§.§=!a§;
   import §^0§.§%"^§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §]!9§ extends §<0§
   {
      
      private static const §2W§:Number = 0.8;
       
      
      private var §>#r§:MovieClip;
      
      private var §6$%§:Boolean;
      
      private var §@!k§:§@#5§;
      
      private var §,#5§:§5!M§;
      
      public function §]!9§(param1:§!"e§, param2:§4#?§, param3:§;#$§, param4:§@!p§, param5:§?!>§)
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
         this.§,#5§ = §=!a§.§3"1§.§>"Q§() as §5!M§;
         if(this.§,#5§)
         {
            this.§,#5§.addEventListener(§5!M§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§3"3§);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         if(this.§,#5§)
         {
            this.§,#5§.removeEventListener(§5!M§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§3"3§);
         }
         this.§4!`§();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§4!`§();
      }
      
      override protected function onUIInteraction(param1:§3#6§) : void
      {
         switch(param1.eventName)
         {
            case "PAUSE":
               (§+!p§.§`?§ as §^#j§).§'#>§.§#Y§();
         }
         super.onUIInteraction(param1);
      }
      
      override protected function showScoresForLevel() : void
      {
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§5#O§);
         (§+!p§.§;"-§ as §^"a§).§?"c§.§`$'§();
         (§+!p§.§;"-§ as §^"a§).§?"c§.§&!F§();
      }
      
      override protected function getLevelLoadState() : String
      {
         return §'"b§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §]#<§.STATE_NAME;
      }
      
      override protected function showTutorials() : void
      {
         §="d§.§ S§("ALL_TOURNAMENT",true);
         §="d§.showTutorials(true,true);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      private function §3"3§(param1:Event) : void
      {
         var e:Event = param1;
         if(this.§,#5§)
         {
            if(this.§,#5§.§;^§)
            {
               if(!§<!§.getItemByName("ScoreMultiplierIcon").visible)
               {
                  §<!§.getItemByName("ScoreMultiplierIcon").mClip.scaleX = 0;
                  §<!§.getItemByName("ScoreMultiplierIcon").mClip.scaleY = 0;
                  this.§@!k§ = §5"<§.§3"1§.§3#§(§<!§.getItemByName("ScoreMultiplierIcon").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },{
                     "scaleX":0,
                     "scaleY":0
                  },0.2);
                  this.§@!k§.play();
                  §<!§.getItemByName("ScoreMultiplierIcon").visible = true;
                  if(!this.§>#r§)
                  {
                     this.§>#r§ = §<!§.getItemByName("ScoreMultiplierIcon").mClip.getChildByName("ScoreMultiplierIconOverlay") as MovieClip;
                  }
                  this.§>#r§.alpha = 0;
                  this.§6$%§ = true;
               }
            }
            else if(§<!§.getItemByName("ScoreMultiplierIcon").visible)
            {
               this.§@!k§ = §5"<§.§3"1§.§3#§(§<!§.getItemByName("ScoreMultiplierIcon").mClip,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":1,
                  "scaleY":1
               },0.2);
               this.§@!k§.play();
               this.§@!k§.onComplete = function():void
               {
                  §<!§.getItemByName("ScoreMultiplierIcon").visible = false;
               };
            }
         }
      }
      
      override protected function skipToLevelEnd(param1:String) : void
      {
         super.skipToLevelEnd(param1);
         if(this.§,#5§)
         {
            this.§,#5§.§[g§(false);
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§,#5§ && this.§>#r§)
         {
            if(this.§,#5§.§9P§())
            {
               if(this.§6$%§)
               {
                  if(this.§>#r§.alpha < §2W§)
                  {
                     this.§>#r§.alpha += 0.3;
                  }
                  else
                  {
                     this.§>#r§.alpha = §2W§;
                     this.§6$%§ = false;
                  }
               }
               else
               {
                  this.§>#r§.alpha = Math.max(0,this.§>#r§.alpha - 0.3);
                  if(this.§>#r§.alpha == 0)
                  {
                     this.§6$%§ = true;
                     this.§,#5§.§@"G§(false);
                  }
               }
            }
         }
      }
      
      private function §4!`§() : void
      {
         if(this.§@!k§)
         {
            this.§@!k§.§+!_§();
            this.§@!k§ = null;
         }
      }
      
      override protected function handleCollectibleItems() : void
      {
         var _loc1_:§>"%§ = null;
         var _loc2_:§0#^§ = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§ #X§ = null;
         var _loc6_:§-"8§ = null;
         super.handleCollectibleItems();
         if(§=!a§.§3"1§.§#"P§())
         {
            _loc1_ = §=!a§.§3"1§.§>"Q§() as §>"%§;
            if(_loc1_)
            {
               if(_loc1_.§4!r§())
               {
                  _loc2_ = §0#^§(§+!p§.§`?§.animationManager);
                  _loc3_ = § #X§.§ !6§;
                  _loc4_ = § #X§.§4" § + "_" + _loc1_.§5"a§();
                  if(_loc2_.getAnimation(_loc4_))
                  {
                     _loc3_ = _loc4_;
                  }
                  if((_loc5_ = §1z§.addObject(_loc3_,0,0,0,§%"^§.ID_NEXT_FREE) as § #X§) && !_loc5_.levelItem.soundResource)
                  {
                     _loc6_ = (§+!p§.§`?§ as §^#j§).levelItemManager.getItem(§ #X§.§ !6§);
                     _loc5_.levelItem.soundResource = _loc6_.soundResource;
                  }
               }
            }
         }
      }
      
      override protected function getTournamentId() : int
      {
         if(§5"L§.§3"1§.§54§)
         {
            return §5"L§.§3"1§.§54§.id;
         }
         return -1;
      }
   }
}
