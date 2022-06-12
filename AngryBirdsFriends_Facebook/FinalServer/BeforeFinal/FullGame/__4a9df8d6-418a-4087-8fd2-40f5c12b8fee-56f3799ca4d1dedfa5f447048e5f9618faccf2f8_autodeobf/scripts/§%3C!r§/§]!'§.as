package §<!r§
{
   import § §.§=J§;
   import §!#C§.§null§;
   import §#,§.§ !>§;
   import §&!_§.§9#%§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§+!2§;
   import §1"l§.§`""§;
   import §7R§.§ #`§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   
   public class §]!'§ extends §[#1§
   {
      
      private static const §^""§:String = "LevelButtonBG";
      
      private static const §5t§:String = "background";
      
      private static const §=#X§:String = "LEVEL_BUTTON_";
      
      private static const §8#]§:Number = 0.789;
      
      private static const §""J§:Number = 0.2;
       
      
      private var §0]§:int;
      
      private var §>r§:String;
      
      private var §5"7§:§ #`§;
      
      private var §@$&§:Boolean;
      
      private var §^#!§:Boolean;
      
      private var §4#q§:Boolean;
      
      private var mTween:§7$C§;
      
      public function §]!'§(param1:int, param2:Object, param3:§%!#§, param4:§ !>§, param5:§'##§, param6:§=J§, param7:§null§, param8:§ #`§)
      {
         super(param3,param4,param5,param6,param7);
         this.§0]§ = param1;
         §!!u§ = param2;
         this.§5"7§ = param8;
         this.§4#q§ = false;
         param4.setVisibility(true);
         this.§^#!§ = this.§0#u§;
         activate(this.§4"o§);
         this.§9#1§(false);
      }
      
      public function get §4"o§() : String
      {
         return §!!u§.levelId;
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
         if(!this.§^#!§ && this.§0#u§)
         {
            this.§^#!§ = this.§0#u§;
            this.setLocked(!§5#>§);
         }
      }
      
      public function §&"N§(param1:String) : void
      {
         this.§>r§ = param1;
         if(§5#>§)
         {
            this.§8!"§();
         }
      }
      
      private function §8!"§() : void
      {
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         var _loc1_:MovieClip = §2!t§.mClip[§^""§];
         if(_loc1_)
         {
            _loc2_ = §6$A§.§1!m§(§=#X§ + this.§>r§,false);
            if(_loc2_)
            {
               _loc1_.removeChildren();
               §2!t§.mClip[§5t§].visible = false;
               _loc3_ = new _loc2_();
               _loc1_.addChild(_loc3_);
            }
         }
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!k§();
         }
         else
         {
            this.§#$-§();
         }
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§@$&§ = param1;
         if(!§5#>§)
         {
            this.§#!k§();
         }
      }
      
      private function get §0#u§() : Boolean
      {
         return this.§0]§ == 1 || §8#Q§.isLevelOpen(§8#Q§.levelIDs[this.§0]§ - 2]);
      }
      
      private function §#$-§() : void
      {
         §2!t§.mClip.gotoAndStop("Open");
         §2!t§.setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §2!t§.mClip.background.visible = true;
         §2!t§.mClip.unlockCost.visible = false;
         var _loc1_:int = this.§5"7§.§%!u§(this.§4"o§);
         if(_loc1_ && _loc1_ <= 3)
         {
            §2!t§.mClip.LevelSelection_Crown.gotoAndStop(_loc1_);
         }
         else
         {
            §2!t§.mClip.LevelSelection_Crown.gotoAndStop(4);
         }
         _loc1_ = this.§5"7§.§[A§(this.§4"o§);
         this.§4#q§ = _loc1_ > 0;
         §2!t§.mClip.LevelSelection_League.TextLeagueRanking.text = _loc1_ + ".";
         if(_loc1_ <= 10)
         {
            §2!t§.mClip.LevelSelection_League.gotoAndStop(1);
         }
         else if(_loc1_ <= 20)
         {
            §2!t§.mClip.LevelSelection_League.gotoAndStop(2);
         }
         else
         {
            §2!t§.mClip.LevelSelection_League.gotoAndStop(3);
         }
         var _loc2_:int = this.§5"7§.§ P§(this.§4"o§);
         §2!t§.mClip.Textfield_LevelScore.text.text = §9#%§.§##W§(_loc2_);
         var _loc3_:int = 0;
         if(_loc2_ <= 0)
         {
            _loc3_ = 0;
         }
         else if(_loc2_ < §!!u§.sl["ss"])
         {
            _loc3_ = 1;
         }
         else if(_loc2_ < §!!u§.sl["sg"])
         {
            _loc3_ = 2;
         }
         else
         {
            _loc3_ = 3;
         }
         §2!t§.mClip.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
         if(_loc2_ == 0)
         {
            §2!t§.mClip.MovieClip_Stars.visible = false;
            §2!t§.mClip.Textfield_LevelScore.visible = false;
            §2!t§.mClip.GiftboxMovieclip.visible = true;
         }
         else
         {
            §2!t§.mClip.MovieClip_Stars.visible = true;
            §2!t§.mClip.Textfield_LevelScore.visible = true;
            §2!t§.mClip.GiftboxMovieclip.visible = false;
         }
         if(this.§>r§)
         {
            this.§8!"§();
         }
      }
      
      private function §#!k§() : void
      {
         §2!t§.mClip.gotoAndStop("Closed");
         if(this.§@$&§ && this.§^#!§)
         {
            §2!t§.setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §2!t§.mClip.unlockCost.visible = §2!t§.mClip.background.visible = true;
         }
         else
         {
            §2!t§.setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
            §2!t§.mClip.unlockCost.visible = §2!t§.mClip.background.visible = false;
         }
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         §2!t§.mClip.Textfield_LockTime.text.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         §2!t§.mClip.unlockCost.text.text = param1.toString();
      }
      
      override protected function get buttonName() : String
      {
         return "UnlockNextLevel";
      }
      
      override protected function get sourceForTracking() : String
      {
         return "level_end";
      }
      
      public function §9#1§(param1:Boolean) : void
      {
         if(§2!t§.mClip.MovieClip_Stars.visible == false)
         {
            (§2!t§.mClip.LevelSelection_League as MovieClip).visible = false;
            return;
         }
         if(!§5#>§)
         {
            return;
         }
         if((§7n§.§-$<§ as § #v§).§=#+§.§;#Y§() == §`""§.§]"e§)
         {
            if(param1)
            {
               this.§-"Z§(!!this.§4#q§ ? §2!t§.mClip.LevelSelection_League : null,§2!t§.mClip.LevelSelection_Crown.currentFrame < 4 ? §2!t§.mClip.LevelSelection_Crown : null,§8#]§);
            }
            else
            {
               if(this.mTween)
               {
                  this.mTween.§%"#§();
               }
               §2!t§.mClip.LevelSelection_Crown.visible = false;
               §2!t§.mClip.LevelSelection_League.visible = this.§4#q§;
               §2!t§.mClip.LevelSelection_League.scaleX = §2!t§.mClip.LevelSelection_League.scaleY = §8#]§;
            }
         }
         else if(param1)
         {
            this.§-"Z§(§2!t§.mClip.LevelSelection_Crown.currentFrame < 4 ? §2!t§.mClip.LevelSelection_Crown : null,!!this.§4#q§ ? §2!t§.mClip.LevelSelection_League : null,1);
         }
         else
         {
            if(this.mTween)
            {
               this.mTween.§%"#§();
            }
            §2!t§.mClip.LevelSelection_Crown.visible = true;
            §2!t§.mClip.LevelSelection_Crown.scaleX = §2!t§.mClip.LevelSelection_Crown.scaleY = 1;
            §2!t§.mClip.LevelSelection_League.visible = false;
         }
      }
      
      private function §-"Z§(param1:Object, param2:Object, param3:Number) : void
      {
         var showObject:Object = param1;
         var hideObject:Object = param2;
         var scaleMax:Number = param3;
         if(this.mTween)
         {
            this.mTween.§%"#§();
         }
         if(hideObject)
         {
            this.mTween = §"!&§.§`"H§.§1"W§(hideObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":scaleMax,
               "scaleY":scaleMax
            },§""J§,§"!&§.§0!§);
            this.mTween.onComplete = function():void
            {
               if(showObject)
               {
                  if(mTween)
                  {
                     mTween = §"!&§.§`"H§.§1"W§(showObject,{
                        "scaleX":scaleMax,
                        "scaleY":scaleMax
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },§""J§,§"!&§.§^F§);
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
            this.mTween = §"!&§.§`"H§.§1"W§(showObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":0,
               "scaleY":0
            },§""J§);
            this.mTween.onComplete = function():void
            {
               mTween = §"!&§.§`"H§.§1"W§(showObject,{
                  "scaleX":scaleMax,
                  "scaleY":scaleMax
               },{
                  "scaleX":0,
                  "scaleY":0
               },§""J§,§"!&§.§^F§);
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
