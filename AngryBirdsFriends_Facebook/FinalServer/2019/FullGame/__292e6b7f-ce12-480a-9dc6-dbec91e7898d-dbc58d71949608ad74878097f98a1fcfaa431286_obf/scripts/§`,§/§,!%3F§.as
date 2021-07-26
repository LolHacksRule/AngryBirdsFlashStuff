package §`,§
{
   import § "L§.§1"r§;
   import §!L§.§`#u§;
   import §#"4§.§6!B§;
   import §,#,§.§>#g§;
   import §7"&§.§1k§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §>#q§.§<M§;
   import §?#z§.§]$?§;
   import §^"3§.§ #&§;
   import §^"G§.§2+§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   
   public class §,!?§ extends §]!y§
   {
      
      private static const § !6§:String = "LevelButtonBG";
      
      private static const §8!a§:String = "background";
      
      private static const §9"z§:String = "LEVEL_BUTTON_";
      
      private static const §>Z§:Number = 0.789;
      
      private static const §5n§:Number = 0.2;
       
      
      private var §;"w§:int;
      
      private var §4"%§:String;
      
      private var §&"+§:§`#u§;
      
      private var §7u§:Boolean;
      
      private var §<$,§:Boolean;
      
      private var §8H§:Boolean;
      
      private var mTween:§@$-§;
      
      public function §,!?§(param1:int, param2:Object, param3:§1k§, param4:§1"r§, param5:§7!$§, param6:§<M§, param7:§>#g§, param8:§`#u§)
      {
         super(param3,param4,param5,param6,param7);
         this.§;"w§ = param1;
         §4$D§ = param2;
         this.§&"+§ = param8;
         this.§8H§ = false;
         param4.setVisibility(true);
         this.§<$,§ = this.§0!?§;
         activate(this.§1#8§);
         this.§ "J§(false);
      }
      
      public function get §1#8§() : String
      {
         return §4$D§.levelId;
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
      }
      
      override public function update() : void
      {
         super.update();
         if(!this.§<$,§ && this.§0!?§)
         {
            this.§<$,§ = this.§0!?§;
            this.setLocked(!§#]§);
         }
      }
      
      public function §`"3§(param1:String) : void
      {
         this.§4"%§ = param1;
         if(§#]§)
         {
            this.§2#l§();
         }
      }
      
      private function §2#l§() : void
      {
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         var _loc1_:MovieClip = §]"d§.mClip[§ !6§];
         if(_loc1_)
         {
            _loc2_ = §[a§.§8#k§(§9"z§ + this.§4"%§,false);
            if(_loc2_)
            {
               _loc1_.removeChildren();
               §]"d§.mClip[§8!a§].visible = false;
               _loc3_ = new _loc2_();
               _loc1_.addChild(_loc3_);
            }
         }
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;#E§();
         }
         else
         {
            this.§"!y§();
         }
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§7u§ = param1;
         if(!§#]§)
         {
            this.§;#E§();
         }
      }
      
      private function get §0!?§() : Boolean
      {
         return this.§;"w§ == 1 || §<$B§.isLevelOpen(§<$B§.levelIDs[this.§;"w§ - 2]);
      }
      
      private function §"!y§() : void
      {
         §]"d§.mClip.gotoAndStop("Open");
         §]"d§.setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §]"d§.mClip.background.visible = true;
         §]"d§.mClip.unlockCost.visible = false;
         var _loc1_:int = this.§&"+§.§7]§(this.§1#8§);
         if(_loc1_ && _loc1_ <= 3)
         {
            §]"d§.mClip.LevelSelection_Crown.gotoAndStop(_loc1_);
         }
         else
         {
            §]"d§.mClip.LevelSelection_Crown.gotoAndStop(4);
         }
         _loc1_ = this.§&"+§.§]#,§(this.§1#8§);
         this.§8H§ = _loc1_ > 0;
         §]"d§.mClip.LevelSelection_League.TextLeagueRanking.text = _loc1_ + ".";
         if(_loc1_ <= 10)
         {
            §]"d§.mClip.LevelSelection_League.gotoAndStop(1);
         }
         else if(_loc1_ <= 20)
         {
            §]"d§.mClip.LevelSelection_League.gotoAndStop(2);
         }
         else
         {
            §]"d§.mClip.LevelSelection_League.gotoAndStop(3);
         }
         var _loc2_:int = this.§&"+§.§1$C§(this.§1#8§);
         §]"d§.mClip.Textfield_LevelScore.text.text = §6!B§.§^"O§(_loc2_);
         var _loc3_:int = 0;
         if(_loc2_ <= 0)
         {
            _loc3_ = 0;
         }
         else if(_loc2_ < §4$D§.sl["ss"])
         {
            _loc3_ = 1;
         }
         else if(_loc2_ < §4$D§.sl["sg"])
         {
            _loc3_ = 2;
         }
         else
         {
            _loc3_ = 3;
         }
         §]"d§.mClip.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
         if(_loc2_ == 0)
         {
            §]"d§.mClip.MovieClip_Stars.visible = false;
            §]"d§.mClip.Textfield_LevelScore.visible = false;
            §]"d§.mClip.GiftboxMovieclip.visible = true;
         }
         else
         {
            §]"d§.mClip.MovieClip_Stars.visible = true;
            §]"d§.mClip.Textfield_LevelScore.visible = true;
            §]"d§.mClip.GiftboxMovieclip.visible = false;
         }
         if(this.§4"%§)
         {
            this.§2#l§();
         }
      }
      
      private function §;#E§() : void
      {
         §]"d§.mClip.gotoAndStop("Closed");
         if(this.§7u§ && this.§<$,§)
         {
            §]"d§.setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §]"d§.mClip.unlockCost.visible = §]"d§.mClip.background.visible = true;
         }
         else
         {
            §]"d§.setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
            §]"d§.mClip.unlockCost.visible = §]"d§.mClip.background.visible = false;
         }
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         §]"d§.mClip.Textfield_LockTime.text.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         §]"d§.mClip.unlockCost.text.text = param1.toString();
      }
      
      override protected function get buttonName() : String
      {
         return "UnlockNextLevel";
      }
      
      override protected function get sourceForTracking() : String
      {
         return "level_end";
      }
      
      public function § "J§(param1:Boolean) : void
      {
         if(§]"d§.mClip.MovieClip_Stars.visible == false)
         {
            (§]"d§.mClip.LevelSelection_League as MovieClip).visible = false;
            return;
         }
         if(!§#]§)
         {
            return;
         }
         if((§]$?§.§;u§ as §@z§).§8!;§.§="m§() == §2+§.§3#-§)
         {
            if(param1)
            {
               this.§3e§(!!this.§8H§ ? §]"d§.mClip.LevelSelection_League : null,§]"d§.mClip.LevelSelection_Crown.currentFrame < 4 ? §]"d§.mClip.LevelSelection_Crown : null,§>Z§);
            }
            else
            {
               if(this.mTween)
               {
                  this.mTween.§0"D§();
               }
               §]"d§.mClip.LevelSelection_Crown.visible = false;
               §]"d§.mClip.LevelSelection_League.visible = this.§8H§;
               §]"d§.mClip.LevelSelection_League.scaleX = §]"d§.mClip.LevelSelection_League.scaleY = §>Z§;
            }
         }
         else if(param1)
         {
            this.§3e§(§]"d§.mClip.LevelSelection_Crown.currentFrame < 4 ? §]"d§.mClip.LevelSelection_Crown : null,!!this.§8H§ ? §]"d§.mClip.LevelSelection_League : null,1);
         }
         else
         {
            if(this.mTween)
            {
               this.mTween.§0"D§();
            }
            §]"d§.mClip.LevelSelection_Crown.visible = true;
            §]"d§.mClip.LevelSelection_Crown.scaleX = §]"d§.mClip.LevelSelection_Crown.scaleY = 1;
            §]"d§.mClip.LevelSelection_League.visible = false;
         }
      }
      
      private function §3e§(param1:Object, param2:Object, param3:Number) : void
      {
         var showObject:Object = param1;
         var hideObject:Object = param2;
         var scaleMax:Number = param3;
         if(this.mTween)
         {
            this.mTween.§0"D§();
         }
         if(hideObject)
         {
            this.mTween = §6"W§.§+!,§.§9!n§(hideObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":scaleMax,
               "scaleY":scaleMax
            },§5n§,§6"W§.§9"$§);
            this.mTween.onComplete = function():void
            {
               if(showObject)
               {
                  if(mTween)
                  {
                     mTween = §6"W§.§+!,§.§9!n§(showObject,{
                        "scaleX":scaleMax,
                        "scaleY":scaleMax
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },§5n§,§6"W§.§%#T§);
                     mTween.onComplete = function():void
                     {
                        mTween = null;
                     };
                     showObject.scaleY = 0;
                     showObject.scaleX = 0;
                     showObject.visible = true;
                     mTween.play();
                  }
               }
               else
               {
                  mTween = null;
               }
            };
            this.mTween.play();
            hideObject.visible = true;
         }
         else
         {
            this.mTween = §6"W§.§+!,§.§9!n§(showObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":0,
               "scaleY":0
            },§5n§);
            this.mTween.onComplete = function():void
            {
               mTween = §6"W§.§+!,§.§9!n§(showObject,{
                  "scaleX":scaleMax,
                  "scaleY":scaleMax
               },{
                  "scaleX":0,
                  "scaleY":0
               },§5n§,§6"W§.§%#T§);
               mTween.onComplete = function():void
               {
                  mTween = null;
               };
               showObject.scaleY = 0;
               showObject.scaleX = 0;
               showObject.visible = true;
               mTween.play();
            };
            this.mTween.play();
         }
      }
   }
}
