package §>" §
{
   import § "g§.§5"D§;
   import §#!E§.§2#Q§;
   import §%#v§.§0"j§;
   import §+"u§.§^"C§;
   import §6§.§'#n§;
   import §6§.§6$'§;
   import §9#^§.§"$ §;
   import §9#^§.§;#I§;
   import §9#^§.§`!h§;
   import §;$5§.§9§;
   import §;$5§.AbstractPopup;
   import §=#§.§%#y§;
   import §=#§.§1!"§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §]"'§.§default§;
   import com.rovio.assets.§2"O§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import mx.effects.easing.Back;
   
   public class QualifierInterruptedPopUp extends AbstractPopup
   {
      
      public static const ID:String = "QualifierInterruptedPopUp";
      
      private static const §>"S§:uint = 0;
      
      private static const §8#9§:uint = 1;
      
      private static const §5!P§:uint = 2;
      
      private static const §9#p§:uint = 3;
      
      private static const §=!S§:uint = 4;
      
      private static const §=!J§:uint = 5;
      
      private static const § in§:uint = 6;
      
      private static const §?!Z§:uint = 7;
      
      private static const §2">§:uint = 8;
      
      private static const §`?§:uint = 9;
      
      private static const each:uint = 10;
      
      private static const §'N§:uint = 7;
      
      private static const §#?§:uint = 3;
      
      private static const §-"0§:int = 2;
      
      private static var §!"$§:Array;
      
      private static const § "^§:uint = 6;
      
      private static var §]$2§:Boolean = false;
      
      private static var §#!O§:Boolean = false;
      
      private static var §"!U§:Array = ["league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_diamond"];
      
      public static var §]z§:Boolean = false;
       
      
      private var §8!i§:DisplayObject;
      
      private var §]"@§:int;
      
      private var §,3§:DisplayObjectContainer;
      
      private var §6#h§:Sprite;
      
      private var §3#`§:DisplayObjectContainer;
      
      private const ROUND_BUTTON_5_ROUNDS_X_PADDING:uint = 25;
      
      private const ROUND_BUTTON_5_ROUNDS_X_OFFSET:uint = 10;
      
      private var §[",§:Number;
      
      private var §7"l§:Number;
      
      private var §`"Q§:int;
      
      private var §^$D§:int;
      
      private var §<#,§:int;
      
      private var §9;§:uint = 0;
      
      private var §^w§:uint = 0;
      
      private var §?i§:Array;
      
      private var §?w§:Number;
      
      private var §`";§:Number;
      
      private var §+$1§:DisplayObject;
      
      private var §!!L§:DisplayObject;
      
      private var §=y§:Number;
      
      private var §,!S§:Number;
      
      private var §8!f§:Array;
      
      private var §##t§:DisplayObject;
      
      private var §2#T§:DisplayObjectContainer;
      
      private var §"p§:Boolean = false;
      
      private var §2c§:Array;
      
      private var §%#L§:int = 30;
      
      private var §'"t§:Number;
      
      private var index:int;
      
      private var mFriendAvatarsGrp1MC:DisplayObjectContainer;
      
      private var mFriendAvatarsGrp2MC:DisplayObjectContainer;
      
      private var §3i§:DisplayObjectContainer;
      
      private var §+"N§:§'#n§;
      
      private var §;#=§:int;
      
      private var §9"e§:Boolean;
      
      private var §&"?§:Boolean;
      
      private var §#!X§:int;
      
      private var §2#X§:Boolean;
      
      private var §?!$§:int;
      
      public function QualifierInterruptedPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§?i§ = [];
         this.§8!f§ = [];
         this.§2c§ = [];
         super(param1,param2,§0"j§.§-i§.Views.PopupView_QualifierInterruptedPopUp[0],ID);
      }
      
      public static function §9#-§(param1:Array) : void
      {
         var _loc2_:§2#Q§ = null;
         var _loc3_:§default§ = null;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:§default§ = null;
         if(!§]$2§)
         {
            §!"$§ = [];
            _loc2_ = AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
            for each(_loc3_ in param1)
            {
               if(_loc3_.userId != _loc2_.userID && _loc3_.§2# § != "QUALIFIER")
               {
                  §!"$§.push(_loc3_);
               }
            }
            _loc4_ = § "^§ - §!"$§.length;
            _loc5_ = 0;
            while(_loc5_ < §5"D§.§[§.length && _loc5_ < _loc4_)
            {
               _loc6_ = §5"D§.§[§[_loc5_];
               if(§5"D§.§4"L§.indexOf(_loc6_.userId) == -1 && _loc6_.§2# § != "QUALIFIER")
               {
                  §!"$§.push(§5"D§.§[§[_loc5_]);
               }
               _loc5_++;
            }
            §]$2§ = true;
         }
      }
      
      override protected function init() : void
      {
         §]z§ = true;
         super.init();
         §[#%§.§8!3§("leagues_channel",10,1);
         this.§+"N§ = §'#n§.§?q§;
         this.§]"@§ = §^"C§.§?q§.§1$0§;
         var _loc1_:MovieClip = §8#Y§.mClip;
         this.§8!i§ = _loc1_.yellowBar;
         this.§,3§ = _loc1_.weeklyTournamentMC;
         this.§3#`§ = _loc1_.leaguesMC;
         this.§+$1§ = _loc1_.rewardChest;
         this.§!!L§ = _loc1_.btnClaim;
         this.§##t§ = _loc1_.rankUpMC;
         this.§2#T§ = _loc1_.PlayerAvatar;
         this.§=#3§();
         var _loc2_:int = 1;
         while(_loc2_ <= §'N§)
         {
            this.§8!f§.push(this.§3#`§.getChildByName("QualifierLeague" + _loc2_));
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < §#?§)
         {
            this.§3#`§.getChildByName("QualifierStar" + (_loc3_ + 1)).visible = false;
            _loc3_++;
         }
         this.§=y§ = this.§8!i§.x - (this.§8!i§.width >> 1);
         this.§,!S§ = this.§8!i§.y - (this.§8!i§.height >> 1);
         this.§[",§ = this.§8!i§.scaleX;
         this.§7"l§ = this.§8!i§.scaleY;
         this.§,3§.visible = false;
         this.§3#`§.visible = false;
         this.§+$1§.visible = false;
         this.§!!L§.visible = false;
         this.§##t§.visible = false;
         this.§3i§.visible = false;
         this.§2#T§.visible = false;
         this.§!!L§.addEventListener(MouseEvent.CLICK,this.§ !I§);
         this.§;#S§(_loc1_);
         this.§8;§();
      }
      
      private function §=#3§() : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         this.mFriendAvatarsGrp1MC = DisplayObjectContainer(this.§,3§.getChildByName("FriendAvatarsGroup1"));
         this.mFriendAvatarsGrp2MC = DisplayObjectContainer(this.§,3§.getChildByName("FriendAvatarsGroup2"));
         this.§3i§ = DisplayObjectContainer(this.§,3§.getChildByName("PlayerAvatar"));
         var _loc1_:uint = § "^§ >> 1;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.mFriendAvatarsGrp1MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_ = this.mFriendAvatarsGrp2MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_.visible = false;
            _loc3_.visible = false;
            _loc2_++;
         }
         this.§+I§();
         this.§]!&§();
      }
      
      private function §;#S§(param1:MovieClip) : void
      {
         switch(this.§]"@§)
         {
            case 1:
               this.§8!i§.scaleX = 0.8;
               break;
            case 2:
               this.§8!i§.scaleX = 1.1;
               break;
            case 3:
               this.§8!i§.scaleX = 1;
               break;
            case 4:
               this.§8!i§.scaleX = 1.1;
         }
         this.§8U§();
         var _loc2_:MovieClip = this.§?i§[this.§]"@§ - 1];
         if(this.§]"@§ < 5)
         {
            this.§,3§.x = _loc2_.x + _loc2_.mc.width + (this.§,3§.width >> 1) + 60;
         }
         this.§2#T§.x = _loc2_.x + (_loc2_.mc.width * §-"0§ - this.§2#T§.width >> 1);
         this.§2#T§.y = _loc2_.y - (_loc2_.mc.height * §-"0§ >> 1) - this.§2#T§.height;
      }
      
      private function §8U§() : void
      {
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc1_:MovieClip = §8#Y§.mClip;
         var _loc2_:Number = this.§8!i§.x - (this.§8!i§.width >> 1) + this.ROUND_BUTTON_5_ROUNDS_X_PADDING;
         var _loc3_:String = this.§]"@§ > 2 ? "QualifierProgressRoundDefault" : "QualifierProgressRoundBig";
         var _loc4_:int = 0;
         while(_loc4_ < this.§]"@§)
         {
            (_loc6_ = new §2"O§.§`>§(_loc3_)()).x = _loc2_;
            _loc7_ = _loc6_.mc;
            _loc2_ += _loc7_.width + this.ROUND_BUTTON_5_ROUNDS_X_OFFSET;
            _loc6_.y = this.§8!i§.y - (this.§8!i§.height >> 1) + (this.§8!i§.height - _loc7_.height >> 1) + (_loc7_.height >> 1);
            _loc6_.visible = false;
            _loc1_.addChild(_loc6_);
            this.§?i§.push(_loc6_);
            _loc4_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§`"Q§ = getTimer();
         §8#Y§.mClip.addEventListener(Event.ENTER_FRAME,this.§`!s§);
         if(this.§]"@§ > 1)
         {
            this.§%D§(§8#9§);
         }
         else
         {
            this.§%D§(§5!P§);
         }
      }
      
      private function §`!s§(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.§`"Q§;
         this.§`"Q§ = _loc2_;
         this.update(_loc3_);
      }
      
      private function update(param1:int) : void
      {
         if(this.§9;§ != §>"S§ && this.§9;§ != this.§^w§)
         {
            this.§^$D§ += param1;
            if(this.§^$D§ >= this.§<#,§)
            {
               this.§,D§();
            }
         }
         this.updateState(param1);
         if(!§#!O§)
         {
            if(§]$2§)
            {
               this.§]!&§();
               §#!O§ = true;
            }
         }
      }
      
      private function updateState(param1:int) : void
      {
         var roundMc:MovieClip = null;
         var soundNum:uint = 0;
         var soundStr:String = null;
         var fn:Function = null;
         var starMC:DisplayObject = null;
         var leagueMC:DisplayObject = null;
         var soundName:String = null;
         var dt:int = param1;
         switch(this.§^w§)
         {
            case §=!J§:
               if(this.§"p§)
               {
                  if(this.index < this.§2c§.length - 1)
                  {
                     this.§2#T§.x = this.§2c§[this.index].x;
                     this.§2#T§.y = this.§2c§[this.index].y;
                     ++this.index;
                  }
                  else
                  {
                     this.§"p§ = false;
                     this.§2#T§.visible = false;
                     this.§3i§.visible = true;
                     this.§%D§(§ in§,1000);
                  }
               }
               break;
            case §8#9§:
               if(!this.§9"e§)
               {
                  roundMc = this.§?i§[this.§;#=§];
                  if(roundMc && roundMc.scaleX >= 1)
                  {
                     soundNum = this.§;#=§ > 2 ? uint(3) : uint(this.§;#=§ + 1);
                     soundStr = "element_appear_" + soundNum;
                     §[#%§.playSound(soundStr,§[#%§.§-"I§);
                     fn = function():void
                     {
                        §[#%§.playSound("Checkmark",§[#%§.§-"I§);
                     };
                     setTimeout(fn,0.5);
                     if(this.§;#=§ < this.§]"@§ - 2)
                     {
                        ++this.§;#=§;
                     }
                     else
                     {
                        this.§9"e§ = true;
                     }
                  }
               }
               break;
            case §2">§:
               if(!this.§&"?§)
               {
                  if(this.§#!X§ > §#?§ - 1)
                  {
                     this.§&"?§ = true;
                  }
                  else
                  {
                     starMC = this.§3#`§.getChildByName("QualifierStar" + (this.§#!X§ + 1));
                     if(starMC && starMC.scaleX >= 0.5)
                     {
                        §[#%§.playSound("league_promotion_star",§[#%§.§-"I§);
                        ++this.§#!X§;
                     }
                  }
               }
               break;
            case §?!Z§:
               if(!this.§2#X§)
               {
                  if(this.§?!$§ > §'N§ - 1)
                  {
                     this.§2#X§ = true;
                  }
                  else
                  {
                     leagueMC = this.§8!f§[this.§?!$§];
                     if(leagueMC && leagueMC.scaleX <= 2 && leagueMC.scaleX != 0)
                     {
                        soundName = §"!U§[this.§?!$§];
                        §[#%§.playSound(soundName,"leagues_channel");
                        ++this.§?!$§;
                     }
                  }
               }
         }
      }
      
      private function §,D§() : void
      {
         this.§^w§ = this.§9;§;
         this.§9;§ = §>"S§;
         switch(this.§^w§)
         {
            case §8#9§:
               this.§`#N§();
               break;
            case §5!P§:
               this.§%]§();
               break;
            case §9#p§:
               this.§<$E§();
               break;
            case §=!S§:
               this.§9D§();
               break;
            case §=!J§:
               this.§<7§();
               break;
            case § in§:
               this.§%!a§();
               break;
            case §?!Z§:
               this.§]!%§();
               break;
            case §2">§:
               this.§ "`§();
               break;
            case each:
               this.§"K§();
               break;
            case §`?§:
               this.§<#w§();
         }
      }
      
      private function §<#w§() : void
      {
         var rankUpTween:§6$'§ = this.§+"N§.§9!N§(this.§##t§,{
            "scaleX":this.§##t§.scaleX,
            "scaleY":this.§##t§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§"$ §.easeIn);
         this.§##t§.visible = true;
         this.§##t§.scaleY = 0;
         this.§##t§.scaleX = 0;
         rankUpTween.play();
         §[#%§.playSound("Congratulations_text_appear",§[#%§.§-"I§);
         rankUpTween.onComplete = function fn():void
         {
            §%D§(each,300);
         };
      }
      
      private function § "`§() : void
      {
         var starMC:DisplayObject = null;
         var starDelay:Number = NaN;
         this.§&"?§ = false;
         this.§#!X§ = 0;
         var tweens:Array = [];
         var k:int = 0;
         while(k < §#?§)
         {
            starMC = this.§3#`§.getChildByName("QualifierStar" + (k + 1));
            starDelay = 0;
            if(k < 1)
            {
               starDelay = 0.2;
            }
            tweens.push(this.§+"N§.§9!N§(starMC,{
               "scaleX":starMC.scaleX,
               "scaleY":starMC.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.3,§;#I§.easeOut,starDelay));
            starMC.visible = true;
            starMC.scaleY = 0;
            starMC.scaleX = 0;
            k++;
         }
         var starShowingTween:§6$'§ = this.§+"N§.§^"%§(tweens);
         starShowingTween.play();
         starShowingTween.onComplete = function fn():void
         {
            §%D§(§`?§);
         };
      }
      
      private function §"K§() : void
      {
         var _loc1_:§6$'§ = this.§+"N§.§9!N§(this.§!!L§,{
            "scaleX":this.§!!L§.scaleX,
            "scaleY":this.§!!L§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§;#I§.easeOut);
         _loc1_.play();
         this.§!!L§.visible = true;
         this.§!!L§.scaleY = 0;
         this.§!!L§.scaleX = 0;
         §[#%§.playSound("button_appear");
      }
      
      private function §`#N§() : void
      {
         var delay:Number = NaN;
         var roundMc:MovieClip = null;
         var tween:§6$'§ = null;
         this.§;#=§ = 0;
         this.§9"e§ = false;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§?i§.length - 1)
         {
            delay = Math.max(0.3,0.05 * (this.§?i§.length - 1 - i));
            roundMc = this.§?i§[i];
            tween = this.§+"N§.§9!N§(roundMc,{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§"$ §.easeIn,delay);
            tweens.push(tween);
            roundMc.visible = true;
            roundMc.rotatingShine.visible = false;
            roundMc.scaleY = 0;
            roundMc.scaleX = 0;
            i++;
         }
         var buttonOpenTween:§6$'§ = this.§+"N§.§^"%§(tweens);
         buttonOpenTween.play();
         buttonOpenTween.onComplete = function fn():void
         {
            §%D§(§5!P§,500);
         };
      }
      
      private function §<7§() : void
      {
         var lastRoundMC:MovieClip = this.§?i§[this.§]"@§ - 1];
         var lastRoundCompTween:§6$'§ = this.§+"N§.§9!N§(lastRoundMC,{
            "scaleX":this.§?w§,
            "scaleY":this.§`";§
         },{
            "scaleX":lastRoundMC.scaleX,
            "scaleY":lastRoundMC.scaleY
         },0.3,§"$ §.easeIn);
         lastRoundCompTween.play();
         lastRoundCompTween.onComplete = function fn():void
         {
            §"p§ = true;
            §[#%§.playSound("Congratulation_ambient");
         };
      }
      
      private function §9D§() : void
      {
         var chestTween:§6$'§ = this.§+"N§.§9!N§(this.§+$1§,{
            "scaleX":this.§+$1§.scaleX,
            "scaleY":this.§+$1§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§;#I§.easeOut);
         this.§+$1§.visible = true;
         this.§+$1§.scaleY = 0;
         this.§+$1§.scaleX = 0;
         chestTween.onComplete = function fn():void
         {
            §%D§(§=!J§,500);
         };
         chestTween.play();
      }
      
      private function §%]§() : void
      {
         var lRoundMC:MovieClip = this.§?i§[this.§]"@§ - 1];
         this.§?w§ = lRoundMC.scaleX;
         this.§`";§ = lRoundMC.scaleY;
         var tween1:§6$'§ = this.§+"N§.§9!N§(lRoundMC,{
            "scaleX":lRoundMC.scaleX * §-"0§,
            "scaleY":lRoundMC.scaleY * §-"0§
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§"$ §.easeIn);
         var tween2:§6$'§ = this.§+"N§.§9!N§(this.§2#T§,{"alpha":this.§2#T§.alpha},{"alpha":0},0.3,§"$ §.easeIn);
         lRoundMC.visible = true;
         var shineMC:MovieClip = MovieClip(lRoundMC.getChildByName("rotatingShine"));
         var shineTween:§6$'§ = this.§+"N§.§9!N§(shineMC,{"rotation":0},{"rotation":-360},5,§'#n§.§-#o§);
         shineTween.§#$0§ = false;
         shineTween.play();
         lRoundMC.scaleY = 0;
         lRoundMC.scaleX = 0;
         this.§2#T§.alpha = 0;
         this.§2#T§.visible = true;
         var tween:§6$'§ = this.§+"N§.§set §(tween1,tween2);
         tween.onComplete = function fn():void
         {
            §[#%§.§!"0§("element_appear_3",§[#%§.§-"I§);
            §[#%§.playSound("Checkmark",§[#%§.§-"I§);
            §%D§(§9#p§,500);
         };
         tween.play();
      }
      
      private function §<$E§() : void
      {
         this.§,3§.visible = true;
         var tween2:§6$'§ = this.§+"N§.§9!N§(this.§,3§,{
            "scaleX":this.§,3§.scaleX,
            "scaleY":this.§,3§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§"$ §.easeIn);
         this.§,3§.scaleY = 0;
         this.§,3§.scaleX = 0;
         tween2.onComplete = function fn():void
         {
            §[#%§.playSound("Weekly_tournament_element",§[#%§.§-"I§);
            §%D§(§=!S§,1000);
         };
         tween2.play();
      }
      
      private function §]!%§() : void
      {
         var leagueMC:DisplayObjectContainer = null;
         var duration:Number = NaN;
         var delay:Number = NaN;
         var shineMC:MovieClip = null;
         var shineTween:§6$'§ = null;
         var icon:MovieClip = null;
         var startScaleX:Number = NaN;
         var startScaleY:Number = NaN;
         var finalScaleX:Number = NaN;
         var finalScaleY:Number = NaN;
         var iconTween1:§6$'§ = null;
         var iconTween2:§6$'§ = null;
         var pulsateTween:§6$'§ = null;
         this.§2#X§ = false;
         this.§?!$§ = 0;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§8!f§.length)
         {
            leagueMC = this.§8!f§[i];
            if(i == 0)
            {
               shineMC = MovieClip(leagueMC.getChildByName("rotatingShine"));
               shineTween = this.§+"N§.§9!N§(shineMC,{"rotation":0},{"rotation":-360},5,§'#n§.§-#o§);
               shineTween.§#$0§ = false;
               shineTween.play();
               icon = MovieClip(leagueMC.getChildByName("icon"));
               startScaleX = icon.scaleX;
               startScaleY = icon.scaleY;
               finalScaleX = icon.scaleX * 1.2;
               finalScaleY = icon.scaleY * 1.2;
               iconTween1 = this.§+"N§.§9!N§(icon,{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },1.5,§"$ §.easeOut);
               iconTween2 = this.§+"N§.§9!N§(icon,{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },1.5,§"$ §.easeOut,0.5);
               pulsateTween = this.§+"N§.§[#F§(iconTween1,iconTween2);
               pulsateTween.§#$0§ = false;
               pulsateTween.play();
            }
            duration = Math.max(0.2,0.07 * (this.§8!f§.length - i));
            delay = 0;
            if(i > this.§8!f§.length - 3)
            {
               delay = 0.3;
            }
            tweens.push(this.§+"N§.§9!N§(leagueMC,{
               "scaleX":leagueMC.scaleX,
               "scaleY":leagueMC.scaleY
            },{
               "scaleX":leagueMC.scaleX * 3,
               "scaleY":leagueMC.scaleY * 3
            },duration,§"$ §.easeIn,delay));
            leagueMC.scaleY = 0;
            leagueMC.scaleX = 0;
            i++;
         }
         this.§3#`§.visible = true;
         var leagueOpeningTween:§6$'§ = this.§+"N§.§^"%§(tweens);
         leagueOpeningTween.play();
         leagueOpeningTween.onComplete = function fn():void
         {
            §%D§(§2">§,300);
         };
      }
      
      private function §%!a§() : void
      {
         var roundMc:MovieClip = null;
         var tween:§6$'§ = null;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§?i§.length)
         {
            roundMc = this.§?i§[i];
            tween = this.§+"N§.§9!N§(roundMc,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },0.3,§"$ §.easeOut,0.75);
            tweens.push(tween);
            i++;
         }
         var roundsCloseTween:§6$'§ = this.§+"N§.§5$<§(tweens);
         roundsCloseTween.play();
         roundsCloseTween.onComplete = function fn():void
         {
            var yellowBarEnlargeTween:§6$'§ = §+"N§.§9!N§(§8!i§,{"scaleX":§[",§},{"scaleX":§8!i§.scaleX},0.5,§`!h§.easeIn);
            var slideTween:§6$'§ = §+"N§.§9!N§(§,3§,{"x":§3#`§.x - (§,3§.width >> 1) - 20},{"x":§,3§.x},0.6,Back.easeInOut);
            var playerAvatarFinalScaleX:Number = §3i§.scaleX * 1.2;
            var playerAvatarFinalScaleY:Number = §3i§.scaleY * 1.2;
            var playerAvatartween:§6$'§ = §+"N§.§9!N§(§3i§,{
               "x":-(§3i§.width + (playerAvatarFinalScaleX - §3i§.scaleX) * §3i§.width >> 1),
               "y":§3i§.y - (playerAvatarFinalScaleY - §3i§.scaleY) * §3i§.height,
               "scaleX":playerAvatarFinalScaleX,
               "scaleY":playerAvatarFinalScaleY
            },{
               "x":§3i§.x,
               "y":§3i§.y,
               "scaleX":§3i§.scaleX,
               "scaleY":§3i§.scaleY
            },0.6,§`!h§.easeIn);
            var friendsSet1Tween:§6$'§ = §+"N§.§9!N§(mFriendAvatarsGrp1MC,{"x":-(§,3§.width >> 1)},{"x":mFriendAvatarsGrp1MC.x},0.6,§`!h§.easeIn);
            var friendsSet2Tween:§6$'§ = §+"N§.§9!N§(mFriendAvatarsGrp2MC,{"x":(§,3§.width >> 1) - mFriendAvatarsGrp2MC.width + 10},{"x":mFriendAvatarsGrp2MC.x},0.6,§`!h§.easeIn);
            var weeklyTournamentTween:§6$'§ = §+"N§.§set §(yellowBarEnlargeTween,slideTween,playerAvatartween,friendsSet1Tween,friendsSet2Tween);
            weeklyTournamentTween.play();
            §[#%§.playSound("boomerang_swish");
            var endSound:Function = function():void
            {
               §[#%§.playSound("ui_ingame_scorebox_gain_position",§[#%§.§-"I§);
            };
            setTimeout(endSound,0.6);
            weeklyTournamentTween.onComplete = function fn():void
            {
               §%D§(§?!Z§);
            };
         };
      }
      
      private function §%D§(param1:uint, param2:int = 0) : void
      {
         this.§9;§ = param1;
         this.§<#,§ = param2;
         this.§^$D§ = 0;
      }
      
      private function § !I§(param1:MouseEvent) : void
      {
         §[#%§.playSound("chest_open_special",§[#%§.§-"I§);
         §8#Y§.mClip.removeEventListener(Event.ENTER_FRAME,this.§`!s§);
         §8#Y§.mClip.btnClaim.removeEventListener(MouseEvent.CLICK,this.§ !I§);
         close(true,false);
         AngryBirdsBase.singleton.popupManager.openPopup(new QualifierRewardPopUp(§%#§.NORMAL,§9#5§.DEFAULT));
      }
      
      private function §8;§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§2c§.length = 0;
         var _loc1_:Number = 0;
         var _loc8_:Number = this.§2#T§.x;
         var _loc9_:Number = this.§2#T§.y;
         var _loc10_:Number = this.§3i§.localToGlobal(new Point(§8#Y§.mClip.x,§8#Y§.mClip.y)).x;
         var _loc11_:Number = this.§3i§.localToGlobal(new Point(§8#Y§.mClip.x,§8#Y§.mClip.y)).y;
         var _loc12_:Number = this.§2#T§.x + 30;
         var _loc13_:Number = this.§2#T§.y - 100;
         if(AngryBirdsBase.singleton.§?$9§())
         {
            _loc12_ += 30;
            _loc13_ -= 150;
         }
         while(_loc1_ <= 1)
         {
            _loc2_ = 1 - _loc1_;
            _loc3_ = _loc2_ * _loc2_;
            _loc4_ = _loc1_ * _loc1_;
            _loc5_ = 2 * _loc1_ * _loc2_;
            _loc6_ = _loc3_ * _loc8_ + _loc5_ * _loc12_ + _loc4_ * _loc10_;
            _loc7_ = _loc3_ * _loc9_ + _loc5_ * _loc13_ + _loc4_ * _loc11_;
            this.§2c§.push(new Point(_loc6_,_loc7_));
            _loc1_ += 1 / this.§%#L§;
         }
         var _loc14_:int = this.§2c§.length - 1;
         var _loc15_:int = this.§2c§.length - 2;
         this.§'"t§ = Math.atan2(this.§2c§[_loc14_].y - this.§2c§[_loc15_].y,this.§2c§[_loc14_].x - this.§2c§[_loc15_].x);
      }
      
      private function §+I§() : void
      {
         var _loc1_:§2#Q§ = AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
         var _loc2_:§%#y§ = new §%#y§(_loc1_.userID,"",true,§1!"§.NORMAL,"",true);
         var _loc3_:§%#y§ = new §%#y§(_loc1_.userID,"",true,§1!"§.NORMAL,"",true);
         this.§2#T§.addChild(_loc2_);
         this.§3i§.addChild(_loc3_);
         _loc2_.scaleX = _loc2_.scaleY = 0.9;
         _loc3_.scaleX = _loc3_.scaleY = 0.9;
         _loc2_.x += 5;
         _loc2_.y += 5;
         _loc3_.x += 5;
         _loc3_.y += 5;
      }
      
      private function §]!&§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:§default§ = null;
         var _loc6_:DisplayObjectContainer = null;
         var _loc7_:DisplayObjectContainer = null;
         var _loc8_:§%#y§ = null;
         if(§!"$§ != null)
         {
            _loc1_ = Math.min(§ "^§,§!"$§.length);
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = 0;
            while(_loc4_ < _loc1_)
            {
               _loc5_ = §!"$§[_loc4_];
               _loc6_ = _loc4_ % 2 == 0 ? this.mFriendAvatarsGrp1MC : this.mFriendAvatarsGrp2MC;
               if(_loc4_ % 2 == 0)
               {
                  _loc2_++;
                  _loc7_ = DisplayObjectContainer(_loc6_.getChildByName("FriendAvatar" + _loc2_));
               }
               else
               {
                  _loc3_++;
                  _loc7_ = DisplayObjectContainer(_loc6_.getChildByName("FriendAvatar" + _loc3_));
               }
               _loc8_ = new §%#y§(_loc5_.userId,"",false,null,_loc5_.profileImageURL,true);
               _loc8_.scaleY = 1.1;
               _loc8_.scaleX = 1.1;
               _loc8_.x += 3;
               _loc8_.y += 3;
               _loc7_.addChild(_loc8_);
               _loc7_.visible = true;
               _loc4_++;
            }
         }
      }
   }
}
