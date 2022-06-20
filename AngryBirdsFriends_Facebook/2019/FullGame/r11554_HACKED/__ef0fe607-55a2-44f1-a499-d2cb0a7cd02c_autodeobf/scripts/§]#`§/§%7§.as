package §]#`§
{
   import § !D§.§4B§;
   import § #@§.§!!A§;
   import §!!T§.§1"9§;
   import §!!t§.§ "X§;
   import §!!t§.§8!k§;
   import §!L§.§<"s§;
   import §"$=§.§'![§;
   import §#M§.§<"c§;
   import §+"u§.§^"C§;
   import §-!!§.§7S§;
   import §3"G§.§16§;
   import §5!$§.§<c§;
   import §5"G§.§8"`§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §=!2§.§%"T§;
   import §=V§.§,#P§;
   import §?§.§,Y§;
   import §[!B§.§&#`§;
   import §[";§.§0#m§;
   import §[";§.§8!n§;
   import §]"'§.§""K§;
   import §^"[§.§&M§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §%7§ extends §!!A§
   {
      
      private static const §#K§:Number = 0.8;
       
      
      private var §+"<§:MovieClip;
      
      private var §%#A§:Boolean;
      
      private var §?"R§:§]%§;
      
      private var §##a§:§,#P§;
      
      public function §%7§(param1:§<c§, param2:§'![§, param3:§<"s§, param4:§""K§, param5:§16§)
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
         this.§##a§ = §1"9§.§?q§.§[!8§() as §,#P§;
         if(this.§##a§)
         {
            this.§##a§.addEventListener(§,#P§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§%!5§);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         if(this.§##a§)
         {
            this.§##a§.removeEventListener(§,#P§.SCORE_MULTIPLIER_UPDATE_EVENT,this.§%!5§);
         }
         this.§%"G§();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§%"G§();
      }
      
      override protected function onUIInteraction(param1:§8"`§) : void
      {
         switch(param1.eventName)
         {
            case "PAUSE":
               (§%"T§.§;`§ as §4B§).§##`§.§'"?§();
         }
         super.onUIInteraction(param1);
      }
      
      override protected function showScoresForLevel() : void
      {
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§!"d§);
         (§%"T§.§>$<§ as §'"a§).§1#b§.§"";§();
         (§%"T§.§>$<§ as §'"a§).§1#b§.§'"7§();
      }
      
      override protected function getLevelLoadState() : String
      {
         return §8!k§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return § "X§.STATE_NAME;
      }
      
      override protected function showTutorials() : void
      {
         §&#`§.§5"s§("ALL_TOURNAMENT",true);
         §&#`§.showTutorials(true,true);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      private function §%!5§(param1:Event) : void
      {
         var e:Event = param1;
         if(this.§##a§)
         {
            if(this.§##a§.§0A§)
            {
               if(!§+!9§.getItemByName("ScoreMultiplierIcon").visible)
               {
                  §+!9§.getItemByName("ScoreMultiplierIcon").mClip.scaleX = 0;
                  §+!9§.getItemByName("ScoreMultiplierIcon").mClip.scaleY = 0;
                  this.§?"R§ = §'#n§.§?q§.§9!N§(§+!9§.getItemByName("ScoreMultiplierIcon").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },{
                     "scaleX":0,
                     "scaleY":0
                  },0.2);
                  this.§?"R§.play();
                  §+!9§.getItemByName("ScoreMultiplierIcon").visible = true;
                  if(!this.§+"<§)
                  {
                     this.§+"<§ = §+!9§.getItemByName("ScoreMultiplierIcon").mClip.getChildByName("ScoreMultiplierIconOverlay") as MovieClip;
                  }
                  this.§+"<§.alpha = 0;
                  this.§%#A§ = true;
               }
            }
            else if(§+!9§.getItemByName("ScoreMultiplierIcon").visible)
            {
               this.§?"R§ = §'#n§.§?q§.§9!N§(§+!9§.getItemByName("ScoreMultiplierIcon").mClip,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":1,
                  "scaleY":1
               },0.2);
               this.§?"R§.play();
               this.§?"R§.onComplete = function():void
               {
                  §+!9§.getItemByName("ScoreMultiplierIcon").visible = false;
               };
            }
         }
      }
      
      override protected function skipToLevelEnd(param1:String) : void
      {
         super.skipToLevelEnd(param1);
         if(this.§##a§)
         {
            this.§##a§.§"!G§(false);
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§##a§ && this.§+"<§)
         {
            if(this.§##a§.§'#l§())
            {
               if(this.§%#A§)
               {
                  if(this.§+"<§.alpha < §#K§)
                  {
                     this.§+"<§.alpha += 0.3;
                  }
                  else
                  {
                     this.§+"<§.alpha = §#K§;
                     this.§%#A§ = false;
                  }
               }
               else
               {
                  this.§+"<§.alpha = Math.max(0,this.§+"<§.alpha - 0.3);
                  if(this.§+"<§.alpha == 0)
                  {
                     this.§%#A§ = true;
                     this.§##a§.§2J§(false);
                  }
               }
            }
         }
      }
      
      private function §%"G§() : void
      {
         if(this.§?"R§)
         {
            this.§?"R§.§6X§();
            this.§?"R§ = null;
         }
      }
      
      override protected function handleCollectibleItems() : void
      {
         var _loc1_:§8!n§ = null;
         var _loc2_:§&M§ = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§0#m§ = null;
         var _loc6_:§,Y§ = null;
         super.handleCollectibleItems();
         if(§1"9§.§?q§.§-"?§())
         {
            _loc1_ = §1"9§.§?q§.§[!8§() as §8!n§;
            if(_loc1_)
            {
               if(_loc1_.§>!f§())
               {
                  _loc2_ = §&M§(§%"T§.§;`§.animationManager);
                  _loc3_ = §0#m§.§+",§;
                  _loc4_ = §0#m§.§!"v§ + "_" + _loc1_.§;"K§();
                  if(_loc2_.getAnimation(_loc4_))
                  {
                     _loc3_ = _loc4_;
                  }
                  if((_loc5_ = §]#t§.addObject(_loc3_,0,0,0,§7S§.ID_NEXT_FREE) as §0#m§) && !_loc5_.levelItem.soundResource)
                  {
                     _loc6_ = (§%"T§.§;`§ as §4B§).levelItemManager.getItem(§0#m§.§+",§);
                     _loc5_.levelItem.soundResource = _loc6_.soundResource;
                  }
               }
            }
         }
      }
      
      override protected function getTournamentId() : int
      {
         if(§^"C§.§?q§.§4#-§)
         {
            return §^"C§.§?q§.§4#-§.id;
         }
         return -1;
      }
   }
}
