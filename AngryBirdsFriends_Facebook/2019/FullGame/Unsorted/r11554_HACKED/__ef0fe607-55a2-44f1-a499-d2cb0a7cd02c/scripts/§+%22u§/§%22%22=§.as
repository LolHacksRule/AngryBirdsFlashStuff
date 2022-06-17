package §+"u§
{
   import §!§.§="D§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §'#g§.§2"W§;
   import §+#B§.§""D§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §=!2§.§%"T§;
   import §]"'§.§>I§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   
   public class §""=§ extends §#S§
   {
      
      private static const §@"#§:String = "LevelButtonBG";
      
      private static const §!_§:String = "background";
      
      private static const §9!@§:String = "LEVEL_BUTTON_";
      
      private static const §1!<§:Number = 0.789;
      
      private static const §8#m§:Number = 0.2;
       
      
      private var §2^§:int;
      
      private var §3!J§:String;
      
      private var §%g§:§2#Q§;
      
      private var §!!O§:Boolean;
      
      private var §7"a§:Boolean;
      
      private var §#"!§:Boolean;
      
      private var mTween:§]%§;
      
      public function §""=§(param1:int, param2:Object, param3:§="D§, param4:§"S§, param5:§^"C§, param6:§2"W§, param7:§>I§, param8:§2#Q§)
      {
         super(param3,param4,param5,param6,param7);
         this.§2^§ = param1;
         §[W§ = param2;
         this.§%g§ = param8;
         this.§#"!§ = false;
         param4.setVisibility(true);
         this.§7"a§ = this.§]P§;
         activate(this.§`$2§);
         this.§-!X§(false);
      }
      
      public function get §`$2§() : String
      {
         return §[W§.levelId;
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
         if(!this.§7"a§ && this.§]P§)
         {
            this.§7"a§ = this.§]P§;
            this.setLocked(!§9-§);
         }
      }
      
      public function §4!f§(param1:String) : void
      {
         this.§3!J§ = param1;
         if(§9-§)
         {
            this.§-#Q§();
         }
      }
      
      private function §-#Q§() : void
      {
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         var _loc1_:MovieClip = §&"Q§.mClip[§@"#§];
         if(_loc1_)
         {
            _loc2_ = §2"O§.§`>§(§9!@§ + this.§3!J§,false);
            if(_loc2_)
            {
               _loc1_.removeChildren();
               §&"Q§.mClip[§!_§].visible = false;
               _loc3_ = new _loc2_();
               _loc1_.addChild(_loc3_);
            }
         }
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%#S§();
         }
         else
         {
            this.§'#k§();
         }
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§!!O§ = param1;
         if(!§9-§)
         {
            this.§%#S§();
         }
      }
      
      private function get §]P§() : Boolean
      {
         return this.§2^§ == 1 || §;"§.isLevelOpen(§;"§.levelIDs[this.§2^§ - 2]);
      }
      
      private function §'#k§() : void
      {
         §&"Q§.mClip.gotoAndStop("Open");
         §&"Q§.setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §&"Q§.mClip.background.visible = true;
         §&"Q§.mClip.unlockCost.visible = false;
         var _loc1_:int = this.§%g§.§>#]§(this.§`$2§);
         if(_loc1_ && _loc1_ <= 3)
         {
            §&"Q§.mClip.LevelSelection_Crown.gotoAndStop(_loc1_);
         }
         else
         {
            §&"Q§.mClip.LevelSelection_Crown.gotoAndStop(4);
         }
         _loc1_ = this.§%g§.§8#Z§(this.§`$2§);
         this.§#"!§ = _loc1_ > 0;
         §&"Q§.mClip.LevelSelection_League.TextLeagueRanking.text = _loc1_ + ".";
         if(_loc1_ <= 10)
         {
            §&"Q§.mClip.LevelSelection_League.gotoAndStop(1);
         }
         else if(_loc1_ <= 20)
         {
            §&"Q§.mClip.LevelSelection_League.gotoAndStop(2);
         }
         else
         {
            §&"Q§.mClip.LevelSelection_League.gotoAndStop(3);
         }
         var _loc2_:int = this.§%g§.§var§(this.§`$2§);
         §&"Q§.mClip.Textfield_LevelScore.text.text = §""D§.§"k§(_loc2_);
         var _loc3_:int = 0;
         if(_loc2_ <= 0)
         {
            _loc3_ = 0;
         }
         else if(_loc2_ < §[W§.sl["ss"])
         {
            _loc3_ = 1;
         }
         else if(_loc2_ < §[W§.sl["sg"])
         {
            _loc3_ = 2;
         }
         else
         {
            _loc3_ = 3;
         }
         §&"Q§.mClip.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
         if(_loc2_ == 0)
         {
            §&"Q§.mClip.MovieClip_Stars.visible = false;
            §&"Q§.mClip.Textfield_LevelScore.visible = false;
            §&"Q§.mClip.GiftboxMovieclip.visible = true;
         }
         else
         {
            §&"Q§.mClip.MovieClip_Stars.visible = true;
            §&"Q§.mClip.Textfield_LevelScore.visible = true;
            §&"Q§.mClip.GiftboxMovieclip.visible = false;
         }
         if(this.§3!J§)
         {
            this.§-#Q§();
         }
      }
      
      private function §%#S§() : void
      {
         §&"Q§.mClip.gotoAndStop("Closed");
         if(this.§!!O§ && this.§7"a§)
         {
            §&"Q§.setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §&"Q§.mClip.unlockCost.visible = §&"Q§.mClip.background.visible = true;
         }
         else
         {
            §&"Q§.setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
            §&"Q§.mClip.unlockCost.visible = §&"Q§.mClip.background.visible = false;
         }
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         §&"Q§.mClip.Textfield_LockTime.text.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         §&"Q§.mClip.unlockCost.text.text = param1.toString();
      }
      
      override protected function get buttonName() : String
      {
         return "UnlockNextLevel";
      }
      
      override protected function get sourceForTracking() : String
      {
         return "level_end";
      }
      
      public function §-!X§(param1:Boolean) : void
      {
         if(§&"Q§.mClip.MovieClip_Stars.visible == false)
         {
            (§&"Q§.mClip.LevelSelection_League as MovieClip).visible = false;
            return;
         }
         if(!§9-§)
         {
            return;
         }
         if((§%"T§.§>$<§ as §'"a§).§1#b§.§1"Z§() == §<"c§.§&l§)
         {
            if(param1)
            {
               this.§7!3§(!!this.§#"!§ ? §&"Q§.mClip.LevelSelection_League : null,§&"Q§.mClip.LevelSelection_Crown.currentFrame < 4 ? §&"Q§.mClip.LevelSelection_Crown : null,§1!<§);
            }
            else
            {
               if(this.mTween)
               {
                  this.mTween.§6X§();
               }
               §&"Q§.mClip.LevelSelection_Crown.visible = false;
               §&"Q§.mClip.LevelSelection_League.visible = this.§#"!§;
               §&"Q§.mClip.LevelSelection_League.scaleX = §&"Q§.mClip.LevelSelection_League.scaleY = §1!<§;
            }
         }
         else if(param1)
         {
            this.§7!3§(§&"Q§.mClip.LevelSelection_Crown.currentFrame < 4 ? §&"Q§.mClip.LevelSelection_Crown : null,!!this.§#"!§ ? §&"Q§.mClip.LevelSelection_League : null,1);
         }
         else
         {
            if(this.mTween)
            {
               this.mTween.§6X§();
            }
            §&"Q§.mClip.LevelSelection_Crown.visible = true;
            §&"Q§.mClip.LevelSelection_Crown.scaleX = §&"Q§.mClip.LevelSelection_Crown.scaleY = 1;
            §&"Q§.mClip.LevelSelection_League.visible = false;
         }
      }
      
      private function §7!3§(param1:Object, param2:Object, param3:Number) : void
      {
         var showObject:Object = param1;
         var hideObject:Object = param2;
         var scaleMax:Number = param3;
         if(this.mTween)
         {
            this.mTween.§6X§();
         }
         if(hideObject)
         {
            this.mTween = §'#n§.§?q§.§9!N§(hideObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":scaleMax,
               "scaleY":scaleMax
            },§8#m§,§'#n§.§^!k§);
            this.mTween.onComplete = function():void
            {
               if(showObject)
               {
                  if(mTween)
                  {
                     mTween = §'#n§.§?q§.§9!N§(showObject,{
                        "scaleX":scaleMax,
                        "scaleY":scaleMax
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },§8#m§,§'#n§.§8"W§);
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
            this.mTween = §'#n§.§?q§.§9!N§(showObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":0,
               "scaleY":0
            },§8#m§);
            this.mTween.onComplete = function():void
            {
               mTween = §'#n§.§?q§.§9!N§(showObject,{
                  "scaleX":scaleMax,
                  "scaleY":scaleMax
               },{
                  "scaleX":0,
                  "scaleY":0
               },§8#m§,§'#n§.§8"W§);
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
