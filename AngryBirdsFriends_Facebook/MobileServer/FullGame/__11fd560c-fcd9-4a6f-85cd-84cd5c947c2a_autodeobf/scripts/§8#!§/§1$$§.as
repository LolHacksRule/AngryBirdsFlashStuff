package §8#!§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §-!S§.§##>§;
   import §0#m§.§8#§;
   import §1"N§.§+#`§;
   import §2G§.§"G§;
   import §3#T§.§,#[§;
   import §3r§.§]!4§;
   import §;#D§.§3#U§;
   import §<h§.§>"0§;
   import §`7§.§!"b§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   
   public class §1$$§ extends §'I§
   {
      
      private static const §6#^§:String = "LevelButtonBG";
      
      private static const §1!N§:String = "background";
      
      private static const §-!c§:String = "LEVEL_BUTTON_";
      
      private static const §3#l§:Number = 0.789;
      
      private static const §`!G§:Number = 0.2;
       
      
      private var §!>§:int;
      
      private var §<s§:String;
      
      private var §]#]§:§##>§;
      
      private var §>#3§:Boolean;
      
      private var § "2§:Boolean;
      
      private var §'"x§:Boolean;
      
      private var mTween:§4[§;
      
      public function §1$$§(param1:int, param2:Object, param3:§8#§, param4:§>"0§, param5:§5`§, param6:§+#`§, param7:§"G§, param8:§##>§)
      {
         super(param3,param4,param5,param6,param7);
         this.§!>§ = param1;
         §'!Q§ = param2;
         this.§]#]§ = param8;
         this.§'"x§ = false;
         param4.setVisibility(true);
         this.§ "2§ = this.§[D§;
         activate(this.§?#P§);
         this.§'Q§(false);
      }
      
      public function get §?#P§() : String
      {
         return §'!Q§.levelId;
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
         if(!this.§ "2§ && this.§[D§)
         {
            this.§ "2§ = this.§[D§;
            this.setLocked(!§%!f§);
         }
      }
      
      public function §&$2§(param1:String) : void
      {
         this.§<s§ = param1;
         if(§%!f§)
         {
            this.§`K§();
         }
      }
      
      private function §`K§() : void
      {
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         var _loc1_:MovieClip = §^#Z§.mClip[§6#^§];
         if(_loc1_)
         {
            _loc2_ = §!"f§.§##?§(§-!c§ + this.§<s§,false);
            if(_loc2_)
            {
               _loc1_.removeChildren();
               §^#Z§.mClip[§1!N§].visible = false;
               _loc3_ = new _loc2_();
               _loc1_.addChild(_loc3_);
            }
         }
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3!s§();
         }
         else
         {
            this.§=8§();
         }
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§>#3§ = param1;
         if(!§%!f§)
         {
            this.§3!s§();
         }
      }
      
      private function get §[D§() : Boolean
      {
         return this.§!>§ == 1 || §^!T§.isLevelOpen(§^!T§.levelIDs[this.§!>§ - 2]);
      }
      
      private function §=8§() : void
      {
         §^#Z§.mClip.gotoAndStop("Open");
         §^#Z§.setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §^#Z§.mClip.background.visible = true;
         §^#Z§.mClip.unlockCost.visible = false;
         var _loc1_:int = this.§]#]§.§9!d§(this.§?#P§);
         if(_loc1_ && _loc1_ <= 3)
         {
            §^#Z§.mClip.LevelSelection_Crown.gotoAndStop(_loc1_);
         }
         else
         {
            §^#Z§.mClip.LevelSelection_Crown.gotoAndStop(4);
         }
         _loc1_ = this.§]#]§.§#!,§(this.§?#P§);
         this.§'"x§ = _loc1_ > 0;
         §^#Z§.mClip.LevelSelection_League.TextLeagueRanking.text = _loc1_ + ".";
         if(_loc1_ <= 10)
         {
            §^#Z§.mClip.LevelSelection_League.gotoAndStop(1);
         }
         else if(_loc1_ <= 20)
         {
            §^#Z§.mClip.LevelSelection_League.gotoAndStop(2);
         }
         else
         {
            §^#Z§.mClip.LevelSelection_League.gotoAndStop(3);
         }
         var _loc2_:int = this.§]#]§.§?"B§(this.§?#P§);
         §^#Z§.mClip.Textfield_LevelScore.text.text = §!"b§.§@]§(_loc2_);
         var _loc3_:Number = this.§]#]§.getStarsForLevel(this.§?#P§,_loc2_);
         §^#Z§.mClip.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
         if(_loc2_ == 0)
         {
            §^#Z§.mClip.MovieClip_Stars.visible = false;
            §^#Z§.mClip.Textfield_LevelScore.visible = false;
            §^#Z§.mClip.GiftboxMovieclip.visible = true;
         }
         else
         {
            §^#Z§.mClip.MovieClip_Stars.visible = true;
            §^#Z§.mClip.Textfield_LevelScore.visible = true;
            §^#Z§.mClip.GiftboxMovieclip.visible = false;
         }
         if(this.§<s§)
         {
            this.§`K§();
         }
      }
      
      private function §3!s§() : void
      {
         §^#Z§.mClip.gotoAndStop("Closed");
         if(this.§>#3§ && this.§ "2§)
         {
            §^#Z§.setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §^#Z§.mClip.unlockCost.visible = §^#Z§.mClip.background.visible = true;
         }
         else
         {
            §^#Z§.setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
            §^#Z§.mClip.unlockCost.visible = §^#Z§.mClip.background.visible = false;
         }
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         §^#Z§.mClip.Textfield_LockTime.text.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         §^#Z§.mClip.unlockCost.text.text = param1.toString();
      }
      
      override protected function get buttonName() : String
      {
         return "UnlockNextLevel";
      }
      
      override protected function get sourceForTracking() : String
      {
         return "level_end";
      }
      
      public function §'Q§(param1:Boolean) : void
      {
         if(§^#Z§.mClip.MovieClip_Stars.visible == false)
         {
            (§^#Z§.mClip.LevelSelection_League as MovieClip).visible = false;
            return;
         }
         if(!§%!f§)
         {
            return;
         }
         if((§3#U§.§9#^§ as §,A§).§9"x§.§]#m§() == §]!4§.§&#q§)
         {
            if(param1)
            {
               this.§%!3§(!!this.§'"x§ ? §^#Z§.mClip.LevelSelection_League : null,§^#Z§.mClip.LevelSelection_Crown.currentFrame < 4 ? §^#Z§.mClip.LevelSelection_Crown : null,§3#l§);
            }
            else
            {
               if(this.mTween)
               {
                  this.mTween.§@g§();
               }
               §^#Z§.mClip.LevelSelection_Crown.visible = false;
               §^#Z§.mClip.LevelSelection_League.visible = this.§'"x§;
               §^#Z§.mClip.LevelSelection_League.scaleX = §^#Z§.mClip.LevelSelection_League.scaleY = §3#l§;
            }
         }
         else if(param1)
         {
            this.§%!3§(§^#Z§.mClip.LevelSelection_Crown.currentFrame < 4 ? §^#Z§.mClip.LevelSelection_Crown : null,!!this.§'"x§ ? §^#Z§.mClip.LevelSelection_League : null,1);
         }
         else
         {
            if(this.mTween)
            {
               this.mTween.§@g§();
            }
            §^#Z§.mClip.LevelSelection_Crown.visible = true;
            §^#Z§.mClip.LevelSelection_Crown.scaleX = §^#Z§.mClip.LevelSelection_Crown.scaleY = 1;
            §^#Z§.mClip.LevelSelection_League.visible = false;
         }
      }
      
      private function §%!3§(param1:Object, param2:Object, param3:Number) : void
      {
         var showObject:Object = param1;
         var hideObject:Object = param2;
         var scaleMax:Number = param3;
         if(this.mTween)
         {
            this.mTween.§@g§();
         }
         if(hideObject)
         {
            this.mTween = §&"H§.§6!§.§6C§(hideObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":scaleMax,
               "scaleY":scaleMax
            },§`!G§,§&"H§.§9"_§);
            this.mTween.onComplete = function():void
            {
               if(showObject)
               {
                  if(mTween)
                  {
                     mTween = §&"H§.§6!§.§6C§(showObject,{
                        "scaleX":scaleMax,
                        "scaleY":scaleMax
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },§`!G§,§&"H§.§=>§);
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
            this.mTween = §&"H§.§6!§.§6C§(showObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":0,
               "scaleY":0
            },§`!G§);
            this.mTween.onComplete = function():void
            {
               mTween = §&"H§.§6!§.§6C§(showObject,{
                  "scaleX":scaleMax,
                  "scaleY":scaleMax
               },{
                  "scaleX":0,
                  "scaleY":0
               },§`!G§,§&"H§.§=>§);
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
