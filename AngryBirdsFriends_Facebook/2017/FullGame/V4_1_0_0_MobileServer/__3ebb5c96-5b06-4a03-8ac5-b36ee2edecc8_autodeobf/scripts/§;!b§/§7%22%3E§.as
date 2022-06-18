package §;!b§
{
   import §%#A§.§]!_§;
   import §&"J§.§<&§;
   import §&$!§.§+#!§;
   import §+!C§.§#!L§;
   import §6"r§.§!#A§;
   import §7!j§.§!"J§;
   import §7"&§.§!"v§;
   import §8"X§.§>!k§;
   import §8"X§.§`$>§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §<o§.§3h§;
   import §<u§.§ "a§;
   import §>!5§.§6#-§;
   import §@#§.§^#Q§;
   import §["-§.§;#>§;
   import §["C§.§0§;
   import §["r§.§8`§;
   import §[$&§.§#!J§;
   import §]#K§.§&p§;
   import §]#K§.§>#x§;
   import §`!R§.§&"8§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §7">§ extends §#!J§
   {
      
      private static const §8m§:Number = 0.8;
       
      
      private var §!!5§:MovieClip;
      
      private var §'B§:Boolean;
      
      private var §1!5§:§-#C§;
      
      private var §5"%§:§0#9§;
      
      public function §7">§(param1:§]!_§, param2:§^#Q§, param3:§;#>§, param4:§<&§, param5:§+#!§)
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
         this.§5"%§ = § "a§.§ "D§.§^W§() as §0#9§;
         if(this.§5"%§)
         {
            this.§5"%§.addEventListener(§0#9§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§'";§);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         if(this.§5"%§)
         {
            this.§5"%§.removeEventListener(§0#9§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§'";§);
         }
         this.§,$§();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§,$§();
      }
      
      override protected function onUIInteraction(param1:§3h§) : void
      {
         switch(param1.eventName)
         {
            case "PAUSE":
               (§!#A§.§#F§ as §#!L§).§1"-§.§1!c§();
         }
         super.onUIInteraction(param1);
      }
      
      override protected function showScoresForLevel() : void
      {
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§+!q§);
         (§!#A§.§>q§ as §-#+§).§'M§.§'!v§();
         (§!#A§.§>q§ as §-#+§).§'M§.§4L§();
      }
      
      override protected function getLevelLoadState() : String
      {
         return §`$>§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §>!k§.STATE_NAME;
      }
      
      override protected function showTutorials() : void
      {
         §8`§.§="@§("ALL_TOURNAMENT",true);
         §8`§.showTutorials(true,true);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      private function §'";§(param1:Event) : void
      {
         var e:Event = param1;
         if(this.§5"%§)
         {
            if(this.§5"%§.§<!,§)
            {
               if(!§@!3§.getItemByName("ScoreMultiplierIcon").visible)
               {
                  §@!3§.getItemByName("ScoreMultiplierIcon").mClip.scaleX = 0;
                  §@!3§.getItemByName("ScoreMultiplierIcon").mClip.scaleY = 0;
                  this.§1!5§ = §6"w§.§ "D§.§""3§(§@!3§.getItemByName("ScoreMultiplierIcon").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },{
                     "scaleX":0,
                     "scaleY":0
                  },0.2);
                  this.§1!5§.play();
                  §@!3§.getItemByName("ScoreMultiplierIcon").visible = true;
                  if(!this.§!!5§)
                  {
                     this.§!!5§ = §@!3§.getItemByName("ScoreMultiplierIcon").mClip.getChildByName("ScoreMultiplierIconOverlay") as MovieClip;
                  }
                  this.§!!5§.alpha = 0;
                  this.§'B§ = true;
               }
            }
            else if(§@!3§.getItemByName("ScoreMultiplierIcon").visible)
            {
               this.§1!5§ = §6"w§.§ "D§.§""3§(§@!3§.getItemByName("ScoreMultiplierIcon").mClip,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":1,
                  "scaleY":1
               },0.2);
               this.§1!5§.play();
               this.§1!5§.onComplete = function():void
               {
                  §@!3§.getItemByName("ScoreMultiplierIcon").visible = false;
               };
            }
         }
      }
      
      override protected function skipToLevelEnd(param1:String) : void
      {
         super.skipToLevelEnd(param1);
         if(this.§5"%§)
         {
            this.§5"%§.§^#3§(false);
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§5"%§ && this.§!!5§)
         {
            if(this.§5"%§.§#$<§())
            {
               if(this.§'B§)
               {
                  if(this.§!!5§.alpha < §8m§)
                  {
                     this.§!!5§.alpha += 0.3;
                  }
                  else
                  {
                     this.§!!5§.alpha = §8m§;
                     this.§'B§ = false;
                  }
               }
               else
               {
                  this.§!!5§.alpha = Math.max(0,this.§!!5§.alpha - 0.3);
                  if(this.§!!5§.alpha == 0)
                  {
                     this.§'B§ = true;
                     this.§5"%§.§]"=§(false);
                  }
               }
            }
         }
      }
      
      private function §,$§() : void
      {
         if(this.§1!5§)
         {
            this.§1!5§.§=`§();
            this.§1!5§ = null;
         }
      }
      
      override protected function handleCollectibleItems() : void
      {
         var _loc1_:§>#x§ = null;
         var _loc2_:§!"J§ = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§&p§ = null;
         var _loc6_:§!"v§ = null;
         super.handleCollectibleItems();
         if(§ "a§.§ "D§.§ #b§())
         {
            _loc1_ = § "a§.§ "D§.§^W§() as §>#x§;
            if(_loc1_)
            {
               if(_loc1_.§4v§())
               {
                  _loc2_ = §!"J§(§!#A§.§#F§.animationManager);
                  _loc3_ = §&p§.§"$>§;
                  _loc4_ = §&p§.§+"N§ + "_" + _loc1_.§@#h§();
                  if(_loc2_.getAnimation(_loc4_))
                  {
                     _loc3_ = _loc4_;
                  }
                  if((_loc5_ = §7%§.addObject(_loc3_,0,0,0,§6#-§.ID_NEXT_FREE) as §&p§) && !_loc5_.levelItem.soundResource)
                  {
                     _loc6_ = (§!#A§.§#F§ as §#!L§).levelItemManager.getItem(§&p§.§"$>§);
                     _loc5_.levelItem.soundResource = _loc6_.soundResource;
                  }
               }
            }
         }
      }
   }
}
