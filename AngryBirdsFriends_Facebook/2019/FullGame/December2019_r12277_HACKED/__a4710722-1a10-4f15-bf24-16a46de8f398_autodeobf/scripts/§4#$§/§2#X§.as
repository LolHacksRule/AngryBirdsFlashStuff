package §4#$§
{
   import § null§.§5"<§;
   import § null§.§@§;
   import §+!n§.§+!p§;
   import §-"S§.§>#G§;
   import §2$;§.§;!b§;
   import §2E§.§,!8§;
   import §4$A§.§=$5§;
   import §<8§.§;"k§;
   import §>#Y§.§2$8§;
   import §?_§.§9! §;
   import §@!_§.§]a§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   
   public class §2#X§ extends §8"E§
   {
      
      private static const §2"n§:String = "LevelButtonBG";
      
      private static const §["D§:String = "background";
      
      private static const §5$4§:String = "LEVEL_BUTTON_";
      
      private static const §3#b§:Number = 0.789;
      
      private static const §?! §:Number = 0.2;
       
      
      private var §'#s§:int;
      
      private var §"!d§:String;
      
      private var §4!i§:§>#G§;
      
      private var §@#R§:Boolean;
      
      private var §="2§:Boolean;
      
      private var §7q§:Boolean;
      
      private var mTween:§@#5§;
      
      public function §2#X§(param1:int, param2:Object, param3:§=$5§, param4:§;!b§, param5:§5"L§, param6:§]a§, param7:§2$8§, param8:§>#G§)
      {
         super(param3,param4,param5,param6,param7);
         this.§'#s§ = param1;
         §=$§ = param2;
         this.§4!i§ = param8;
         this.§7q§ = false;
         param4.setVisibility(true);
         this.§="2§ = this.§8R§;
         activate(this.§#"F§);
         this.§!$>§(false);
      }
      
      public function get §#"F§() : String
      {
         return §=$§.levelId;
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
         if(!this.§="2§ && this.§8R§)
         {
            this.§="2§ = this.§8R§;
            this.setLocked(!§5#C§);
         }
      }
      
      public function §4_§(param1:String) : void
      {
         this.§"!d§ = param1;
         if(§5#C§)
         {
            this.§2"j§();
         }
      }
      
      private function §2"j§() : void
      {
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         var _loc1_:MovieClip = §`$%§.mClip[§2"n§];
         if(_loc1_)
         {
            _loc2_ = §=@§.§9!x§(§5$4§ + this.§"!d§,false);
            if(_loc2_)
            {
               _loc1_.removeChildren();
               §`$%§.mClip[§["D§].visible = false;
               _loc3_ = new _loc2_();
               _loc1_.addChild(_loc3_);
            }
         }
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#$+§();
         }
         else
         {
            this.§5"+§();
         }
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§@#R§ = param1;
         if(!§5#C§)
         {
            this.§#$+§();
         }
      }
      
      private function get §8R§() : Boolean
      {
         return this.§'#s§ == 1 || §]!a§.isLevelOpen(§]!a§.levelIDs[this.§'#s§ - 2]);
      }
      
      private function §5"+§() : void
      {
         §`$%§.mClip.gotoAndStop("Open");
         §`$%§.setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §`$%§.mClip.background.visible = true;
         §`$%§.mClip.unlockCost.visible = false;
         var _loc1_:int = this.§4!i§.§0#F§(this.§#"F§);
         if(_loc1_ && _loc1_ <= 3)
         {
            §`$%§.mClip.LevelSelection_Crown.gotoAndStop(_loc1_);
         }
         else
         {
            §`$%§.mClip.LevelSelection_Crown.gotoAndStop(4);
         }
         _loc1_ = this.§4!i§.§8$§(this.§#"F§);
         this.§7q§ = _loc1_ > 0;
         §`$%§.mClip.LevelSelection_League.TextLeagueRanking.text = _loc1_ + ".";
         if(_loc1_ <= 10)
         {
            §`$%§.mClip.LevelSelection_League.gotoAndStop(1);
         }
         else if(_loc1_ <= 20)
         {
            §`$%§.mClip.LevelSelection_League.gotoAndStop(2);
         }
         else
         {
            §`$%§.mClip.LevelSelection_League.gotoAndStop(3);
         }
         var _loc2_:int = this.§4!i§.§5!>§(this.§#"F§);
         §`$%§.mClip.Textfield_LevelScore.text.text = §,!8§.§1"h§(_loc2_);
         var _loc3_:int = 0;
         if(_loc2_ <= 0)
         {
            _loc3_ = 0;
         }
         else if(_loc2_ < §=$§.sl["ss"])
         {
            _loc3_ = 1;
         }
         else if(_loc2_ < §=$§.sl["sg"])
         {
            _loc3_ = 2;
         }
         else
         {
            _loc3_ = 3;
         }
         §`$%§.mClip.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
         if(_loc2_ == 0)
         {
            §`$%§.mClip.MovieClip_Stars.visible = false;
            §`$%§.mClip.Textfield_LevelScore.visible = false;
            §`$%§.mClip.GiftboxMovieclip.visible = true;
         }
         else
         {
            §`$%§.mClip.MovieClip_Stars.visible = true;
            §`$%§.mClip.Textfield_LevelScore.visible = true;
            §`$%§.mClip.GiftboxMovieclip.visible = false;
         }
         if(this.§"!d§)
         {
            this.§2"j§();
         }
      }
      
      private function §#$+§() : void
      {
         §`$%§.mClip.gotoAndStop("Closed");
         if(this.§@#R§ && this.§="2§)
         {
            §`$%§.setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §`$%§.mClip.unlockCost.visible = §`$%§.mClip.background.visible = true;
         }
         else
         {
            §`$%§.setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
            §`$%§.mClip.unlockCost.visible = §`$%§.mClip.background.visible = false;
         }
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         §`$%§.mClip.Textfield_LockTime.text.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         §`$%§.mClip.unlockCost.text.text = param1.toString();
      }
      
      override protected function get buttonName() : String
      {
         return "UnlockNextLevel";
      }
      
      override protected function get sourceForTracking() : String
      {
         return "level_end";
      }
      
      public function §!$>§(param1:Boolean) : void
      {
         if(§`$%§.mClip.MovieClip_Stars.visible == false)
         {
            (§`$%§.mClip.LevelSelection_League as MovieClip).visible = false;
            return;
         }
         if(!§5#C§)
         {
            return;
         }
         if((§+!p§.§;"-§ as §^"a§).§?"c§.§5!T§() == §9! §.§"!"§)
         {
            if(param1)
            {
               this.§9#T§(!!this.§7q§ ? §`$%§.mClip.LevelSelection_League : null,§`$%§.mClip.LevelSelection_Crown.currentFrame < 4 ? §`$%§.mClip.LevelSelection_Crown : null,§3#b§);
            }
            else
            {
               if(this.mTween)
               {
                  this.mTween.§+!_§();
               }
               §`$%§.mClip.LevelSelection_Crown.visible = false;
               §`$%§.mClip.LevelSelection_League.visible = this.§7q§;
               §`$%§.mClip.LevelSelection_League.scaleX = §`$%§.mClip.LevelSelection_League.scaleY = §3#b§;
            }
         }
         else if(param1)
         {
            this.§9#T§(§`$%§.mClip.LevelSelection_Crown.currentFrame < 4 ? §`$%§.mClip.LevelSelection_Crown : null,!!this.§7q§ ? §`$%§.mClip.LevelSelection_League : null,1);
         }
         else
         {
            if(this.mTween)
            {
               this.mTween.§+!_§();
            }
            §`$%§.mClip.LevelSelection_Crown.visible = true;
            §`$%§.mClip.LevelSelection_Crown.scaleX = §`$%§.mClip.LevelSelection_Crown.scaleY = 1;
            §`$%§.mClip.LevelSelection_League.visible = false;
         }
      }
      
      private function §9#T§(param1:Object, param2:Object, param3:Number) : void
      {
         var showObject:Object = param1;
         var hideObject:Object = param2;
         var scaleMax:Number = param3;
         if(this.mTween)
         {
            this.mTween.§+!_§();
         }
         if(hideObject)
         {
            this.mTween = §5"<§.§3"1§.§3#§(hideObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":scaleMax,
               "scaleY":scaleMax
            },§?! §,§5"<§.§&"1§);
            this.mTween.onComplete = function():void
            {
               if(showObject)
               {
                  if(mTween)
                  {
                     mTween = §5"<§.§3"1§.§3#§(showObject,{
                        "scaleX":scaleMax,
                        "scaleY":scaleMax
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },§?! §,§5"<§.§[u§);
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
            this.mTween = §5"<§.§3"1§.§3#§(showObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":0,
               "scaleY":0
            },§?! §);
            this.mTween.onComplete = function():void
            {
               mTween = §5"<§.§3"1§.§3#§(showObject,{
                  "scaleX":scaleMax,
                  "scaleY":scaleMax
               },{
                  "scaleX":0,
                  "scaleY":0
               },§?! §,§5"<§.§[u§);
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
