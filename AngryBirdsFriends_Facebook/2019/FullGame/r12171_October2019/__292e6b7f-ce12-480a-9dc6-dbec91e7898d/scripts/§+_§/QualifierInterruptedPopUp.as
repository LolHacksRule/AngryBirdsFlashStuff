package §+_§
{
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §!L§.§`#u§;
   import §";§.§false§;
   import §,#,§.§2§;
   import §2!Y§.§4!h§;
   import §2G§.§?!s§;
   import §2G§.§?$3§;
   import §3"V§.§ b§;
   import §;"5§.§6"W§;
   import §;"5§.§@"§;
   import §=J§.§&P§;
   import §=J§.§4#"§;
   import §=J§.§7!§;
   import §?Q§.§@#D§;
   import §`,§.§7!$§;
   import com.rovio.assets.§[a§;
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
      
      private static const § #X§:uint = 0;
      
      private static const §=#+§:uint = 1;
      
      private static const §9"b§:uint = 2;
      
      private static const §>$>§:uint = 3;
      
      private static const §;"S§:uint = 4;
      
      private static const §]$;§:uint = 5;
      
      private static const §""`§:uint = 6;
      
      private static const §[!A§:uint = 7;
      
      private static const §3##§:uint = 8;
      
      private static const §5"!§:uint = 9;
      
      private static const §3"_§:uint = 10;
      
      private static const §""t§:uint = 7;
      
      private static const §"$"§:uint = 3;
      
      private static const §'"m§:int = 2;
      
      private static var §4n§:Array;
      
      private static const §0#&§:uint = 6;
      
      private static var §5"g§:Boolean = false;
      
      private static var §%#q§:Boolean = false;
      
      private static var §1$§:Array = ["league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_diamond"];
      
      public static var §@"1§:Boolean = false;
       
      
      private var §[#j§:DisplayObject;
      
      private var §7!k§:int;
      
      private var §?!G§:DisplayObjectContainer;
      
      private var §?#S§:Sprite;
      
      private var §["B§:DisplayObjectContainer;
      
      private const ROUND_BUTTON_5_ROUNDS_X_PADDING:uint = 25;
      
      private const ROUND_BUTTON_5_ROUNDS_X_OFFSET:uint = 10;
      
      private var §!a§:Number;
      
      private var §'#r§:Number;
      
      private var §^#q§:int;
      
      private var §9"&§:int;
      
      private var §,"g§:int;
      
      private var §+!t§:uint = 0;
      
      private var §9!'§:uint = 0;
      
      private var §?#[§:Array;
      
      private var §6"f§:Number;
      
      private var §,-§:Number;
      
      private var §1w§:DisplayObject;
      
      private var §%"-§:DisplayObject;
      
      private var §?c§:Number;
      
      private var §`Z§:Number;
      
      private var §-!X§:Array;
      
      private var §4!H§:DisplayObject;
      
      private var §]"0§:DisplayObjectContainer;
      
      private var §;#7§:Boolean = false;
      
      private var §]K§:Array;
      
      private var §0#A§:int = 30;
      
      private var §`!b§:Number;
      
      private var index:int;
      
      private var mFriendAvatarsGrp1MC:DisplayObjectContainer;
      
      private var mFriendAvatarsGrp2MC:DisplayObjectContainer;
      
      private var §5"V§:DisplayObjectContainer;
      
      private var §&X§:§6"W§;
      
      private var §?!5§:int;
      
      private var each:Boolean;
      
      private var §,"D§:Boolean;
      
      private var §&#s§:int;
      
      private var §?$"§:Boolean;
      
      private var §[#i§:int;
      
      public function QualifierInterruptedPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§?#[§ = [];
         this.§-!X§ = [];
         this.§]K§ = [];
         super(param1,param2,§false§.§4#;§.Views.PopupView_QualifierInterruptedPopUp[0],ID);
      }
      
      public static function §2!,§(param1:Array) : void
      {
         var _loc2_:§`#u§ = null;
         var _loc3_:§2#9§ = null;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:§2#9§ = null;
         if(!§5"g§)
         {
            §4n§ = [];
            _loc2_ = AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
            for each(_loc3_ in param1)
            {
               if(_loc3_.userId != _loc2_.userID && _loc3_.§"!T§ != "QUALIFIER")
               {
                  §4n§.push(_loc3_);
               }
            }
            _loc4_ = §0#&§ - §4n§.length;
            _loc5_ = 0;
            while(_loc5_ < §4!h§.§3#^§.length && _loc5_ < _loc4_)
            {
               _loc6_ = §4!h§.§3#^§[_loc5_];
               if(§4!h§.§6M§.indexOf(_loc6_.userId) == -1 && _loc6_.§"!T§ != "QUALIFIER")
               {
                  §4n§.push(§4!h§.§3#^§[_loc5_]);
               }
               _loc5_++;
            }
            §5"g§ = true;
         }
      }
      
      override protected function init() : void
      {
         var _loc4_:DisplayObject = null;
         §@"1§ = true;
         super.init();
         § b§.§%#C§("leagues_channel",10,1);
         this.§&X§ = §6"W§.§+!,§;
         this.§7!k§ = §7!$§.§+!,§.§ 8§;
         var _loc1_:MovieClip = §;#'§.mClip;
         this.§[#j§ = _loc1_.yellowBar;
         this.§?!G§ = _loc1_.weeklyTournamentMC;
         this.§["B§ = _loc1_.leaguesMC;
         this.§1w§ = _loc1_.rewardChest;
         this.§%"-§ = _loc1_.btnClaim;
         this.§4!H§ = _loc1_.rankUpMC;
         this.§]"0§ = _loc1_.PlayerAvatar;
         this.§2!W§();
         var _loc2_:int = 1;
         while(_loc2_ <= §""t§)
         {
            this.§-!X§.push(this.§["B§.getChildByName("QualifierLeague" + _loc2_));
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < §"$"§)
         {
            (_loc4_ = this.§["B§.getChildByName("QualifierStar" + (_loc3_ + 1))).visible = false;
            _loc3_++;
         }
         this.§?c§ = this.§[#j§.x - (this.§[#j§.width >> 1);
         this.§`Z§ = this.§[#j§.y - (this.§[#j§.height >> 1);
         this.§!a§ = this.§[#j§.scaleX;
         this.§'#r§ = this.§[#j§.scaleY;
         this.§?!G§.visible = false;
         this.§["B§.visible = false;
         this.§1w§.visible = false;
         this.§%"-§.visible = false;
         this.§4!H§.visible = false;
         this.§5"V§.visible = false;
         this.§]"0§.visible = false;
         this.§%"-§.addEventListener(MouseEvent.CLICK,this.§8"J§);
         this.§5#_§(_loc1_);
         this.§>!Q§();
      }
      
      private function §2!W§() : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         this.mFriendAvatarsGrp1MC = DisplayObjectContainer(this.§?!G§.getChildByName("FriendAvatarsGroup1"));
         this.mFriendAvatarsGrp2MC = DisplayObjectContainer(this.§?!G§.getChildByName("FriendAvatarsGroup2"));
         this.§5"V§ = DisplayObjectContainer(this.§?!G§.getChildByName("PlayerAvatar"));
         var _loc1_:uint = §0#&§ >> 1;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.mFriendAvatarsGrp1MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_ = this.mFriendAvatarsGrp2MC.getChildByName("FriendAvatar" + (_loc2_ + 1));
            _loc4_.visible = false;
            _loc3_.visible = false;
            _loc2_++;
         }
         this.§?$5§();
         this.§-#W§();
      }
      
      private function §5#_§(param1:MovieClip) : void
      {
         switch(this.§7!k§)
         {
            case 1:
               this.§[#j§.scaleX = 0.8;
               break;
            case 2:
               this.§[#j§.scaleX = 1.1;
               break;
            case 3:
               this.§[#j§.scaleX = 1;
               break;
            case 4:
               this.§[#j§.scaleX = 1.1;
         }
         this.§7#2§();
         var _loc2_:MovieClip = this.§?#[§[this.§7!k§ - 1];
         if(this.§7!k§ < 5)
         {
            this.§?!G§.x = _loc2_.x + _loc2_.mc.width + (this.§?!G§.width >> 1) + 60;
         }
         this.§]"0§.x = _loc2_.x + (_loc2_.mc.width * §'"m§ - this.§]"0§.width >> 1);
         this.§]"0§.y = _loc2_.y - (_loc2_.mc.height * §'"m§ >> 1) - this.§]"0§.height;
      }
      
      private function §7#2§() : void
      {
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc1_:MovieClip = §;#'§.mClip;
         var _loc2_:Number = this.§[#j§.x - (this.§[#j§.width >> 1) + this.ROUND_BUTTON_5_ROUNDS_X_PADDING;
         var _loc3_:String = this.§7!k§ > 2 ? "QualifierProgressRoundDefault" : "QualifierProgressRoundBig";
         var _loc4_:int = 0;
         while(_loc4_ < this.§7!k§)
         {
            (_loc6_ = new (_loc5_ = §[a§.§8#k§(_loc3_))()).x = _loc2_;
            _loc7_ = _loc6_.mc;
            _loc2_ += _loc7_.width + this.ROUND_BUTTON_5_ROUNDS_X_OFFSET;
            _loc6_.y = this.§[#j§.y - (this.§[#j§.height >> 1) + (this.§[#j§.height - _loc7_.height >> 1) + (_loc7_.height >> 1);
            _loc6_.visible = false;
            _loc1_.addChild(_loc6_);
            this.§?#[§.push(_loc6_);
            _loc4_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§^#q§ = getTimer();
         §;#'§.mClip.addEventListener(Event.ENTER_FRAME,this.§3#f§);
         if(this.§7!k§ > 1)
         {
            this.§3#§(§=#+§);
         }
         else
         {
            this.§3#§(§9"b§);
         }
      }
      
      private function §3#f§(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.§^#q§;
         this.§^#q§ = _loc2_;
         this.update(_loc3_);
      }
      
      private function update(param1:int) : void
      {
         if(this.§+!t§ != § #X§ && this.§+!t§ != this.§9!'§)
         {
            this.§9"&§ += param1;
            if(this.§9"&§ >= this.§,"g§)
            {
               this.§<R§();
            }
         }
         this.updateState(param1);
         if(!§%#q§)
         {
            if(§5"g§)
            {
               this.§-#W§();
               §%#q§ = true;
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
         switch(this.§9!'§)
         {
            case §]$;§:
               if(this.§;#7§)
               {
                  if(this.index < this.§]K§.length - 1)
                  {
                     this.§]"0§.x = this.§]K§[this.index].x;
                     this.§]"0§.y = this.§]K§[this.index].y;
                     ++this.index;
                  }
                  else
                  {
                     this.§;#7§ = false;
                     this.§]"0§.visible = false;
                     this.§5"V§.visible = true;
                     this.§3#§(§""`§,1000);
                  }
                  break;
               }
               break;
            case §=#+§:
               if(!this.each)
               {
                  roundMc = this.§?#[§[this.§?!5§];
                  if(roundMc && roundMc.scaleX >= 1)
                  {
                     soundNum = this.§?!5§ > 2 ? uint(3) : uint(this.§?!5§ + 1);
                     soundStr = "element_appear_" + soundNum;
                     § b§.playSound(soundStr,§ b§.§;$5§);
                     fn = function():void
                     {
                        § b§.playSound("Checkmark",§ b§.§;$5§);
                     };
                     setTimeout(fn,0.5);
                     if(this.§?!5§ < this.§7!k§ - 2)
                     {
                        ++this.§?!5§;
                     }
                     else
                     {
                        this.each = true;
                     }
                     break;
                  }
                  break;
               }
               break;
            case §3##§:
               if(!this.§,"D§)
               {
                  if(this.§&#s§ > §"$"§ - 1)
                  {
                     this.§,"D§ = true;
                     break;
                  }
                  starMC = this.§["B§.getChildByName("QualifierStar" + (this.§&#s§ + 1));
                  if(starMC && starMC.scaleX >= 0.5)
                  {
                     § b§.playSound("league_promotion_star",§ b§.§;$5§);
                     ++this.§&#s§;
                     break;
                  }
                  break;
               }
               break;
            case §[!A§:
               if(!this.§?$"§)
               {
                  if(this.§[#i§ > §""t§ - 1)
                  {
                     this.§?$"§ = true;
                     break;
                  }
                  leagueMC = this.§-!X§[this.§[#i§];
                  if(leagueMC && leagueMC.scaleX <= 2 && leagueMC.scaleX != 0)
                  {
                     soundName = §1$§[this.§[#i§];
                     § b§.playSound(soundName,"leagues_channel");
                     ++this.§[#i§;
                     break;
                  }
                  break;
               }
         }
      }
      
      private function §<R§() : void
      {
         this.§9!'§ = this.§+!t§;
         this.§+!t§ = § #X§;
         switch(this.§9!'§)
         {
            case §=#+§:
               this.§7[§();
               break;
            case §9"b§:
               this.§2r§();
               break;
            case §>$>§:
               this.§&#f§();
               break;
            case §;"S§:
               this.§;"V§();
               break;
            case §]$;§:
               this.§@c§();
               break;
            case §""`§:
               this.§8l§();
               break;
            case §[!A§:
               this.§+$§();
               break;
            case §3##§:
               this.§>"e§();
               break;
            case §3"_§:
               this.§-#2§();
               break;
            case §5"!§:
               this.§]!;§();
         }
      }
      
      private function §]!;§() : void
      {
         var rankUpTween:§@"§ = this.§&X§.§9!n§(this.§4!H§,{
            "scaleX":this.§4!H§.scaleX,
            "scaleY":this.§4!H§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§4#"§.easeIn);
         this.§4!H§.visible = true;
         this.§4!H§.scaleY = 0;
         this.§4!H§.scaleX = 0;
         rankUpTween.play();
         § b§.playSound("Congratulations_text_appear",§ b§.§;$5§);
         rankUpTween.onComplete = function fn():void
         {
            §3#§(§3"_§,300);
         };
      }
      
      private function §>"e§() : void
      {
         var starMC:DisplayObject = null;
         var starDelay:Number = NaN;
         this.§,"D§ = false;
         this.§&#s§ = 0;
         var tweens:Array = [];
         var k:int = 0;
         while(k < §"$"§)
         {
            starMC = this.§["B§.getChildByName("QualifierStar" + (k + 1));
            starDelay = 0;
            if(k < 1)
            {
               starDelay = 0.2;
            }
            tweens.push(this.§&X§.§9!n§(starMC,{
               "scaleX":starMC.scaleX,
               "scaleY":starMC.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.3,§7!§.easeOut,starDelay));
            starMC.visible = true;
            starMC.scaleY = 0;
            starMC.scaleX = 0;
            k++;
         }
         var starShowingTween:§@"§ = this.§&X§.§1#6§(tweens);
         starShowingTween.play();
         starShowingTween.onComplete = function fn():void
         {
            §3#§(§5"!§);
         };
      }
      
      private function §-#2§() : void
      {
         var _loc1_:§@"§ = this.§&X§.§9!n§(this.§%"-§,{
            "scaleX":this.§%"-§.scaleX,
            "scaleY":this.§%"-§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§7!§.easeOut);
         _loc1_.play();
         this.§%"-§.visible = true;
         this.§%"-§.scaleY = 0;
         this.§%"-§.scaleX = 0;
         § b§.playSound("button_appear");
      }
      
      private function §7[§() : void
      {
         var delay:Number = NaN;
         var roundMc:MovieClip = null;
         var tween:§@"§ = null;
         this.§?!5§ = 0;
         this.each = false;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§?#[§.length - 1)
         {
            delay = Math.max(0.3,0.05 * (this.§?#[§.length - 1 - i));
            roundMc = this.§?#[§[i];
            tween = this.§&X§.§9!n§(roundMc,{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§4#"§.easeIn,delay);
            tweens.push(tween);
            roundMc.visible = true;
            roundMc.rotatingShine.visible = false;
            roundMc.scaleY = 0;
            roundMc.scaleX = 0;
            i++;
         }
         var buttonOpenTween:§@"§ = this.§&X§.§1#6§(tweens);
         buttonOpenTween.play();
         buttonOpenTween.onComplete = function fn():void
         {
            §3#§(§9"b§,500);
         };
      }
      
      private function §@c§() : void
      {
         var lastRoundMC:MovieClip = this.§?#[§[this.§7!k§ - 1];
         var lastRoundCompTween:§@"§ = this.§&X§.§9!n§(lastRoundMC,{
            "scaleX":this.§6"f§,
            "scaleY":this.§,-§
         },{
            "scaleX":lastRoundMC.scaleX,
            "scaleY":lastRoundMC.scaleY
         },0.3,§4#"§.easeIn);
         lastRoundCompTween.play();
         lastRoundCompTween.onComplete = function fn():void
         {
            §;#7§ = true;
            § b§.playSound("Congratulation_ambient");
         };
      }
      
      private function §;"V§() : void
      {
         var chestTween:§@"§ = this.§&X§.§9!n§(this.§1w§,{
            "scaleX":this.§1w§.scaleX,
            "scaleY":this.§1w§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,§7!§.easeOut);
         this.§1w§.visible = true;
         this.§1w§.scaleY = 0;
         this.§1w§.scaleX = 0;
         chestTween.onComplete = function fn():void
         {
            §3#§(§]$;§,500);
         };
         chestTween.play();
      }
      
      private function §2r§() : void
      {
         var lRoundMC:MovieClip = this.§?#[§[this.§7!k§ - 1];
         this.§6"f§ = lRoundMC.scaleX;
         this.§,-§ = lRoundMC.scaleY;
         var tween1:§@"§ = this.§&X§.§9!n§(lRoundMC,{
            "scaleX":lRoundMC.scaleX * §'"m§,
            "scaleY":lRoundMC.scaleY * §'"m§
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§4#"§.easeIn);
         var tween2:§@"§ = this.§&X§.§9!n§(this.§]"0§,{"alpha":this.§]"0§.alpha},{"alpha":0},0.3,§4#"§.easeIn);
         lRoundMC.visible = true;
         var shineMC:MovieClip = MovieClip(lRoundMC.getChildByName("rotatingShine"));
         var shineTween:§@"§ = this.§&X§.§9!n§(shineMC,{"rotation":0},{"rotation":-360},5,§6"W§.§[X§);
         shineTween.§=!0§ = false;
         shineTween.play();
         lRoundMC.scaleY = 0;
         lRoundMC.scaleX = 0;
         this.§]"0§.alpha = 0;
         this.§]"0§.visible = true;
         var tween:§@"§ = this.§&X§.§8$>§(tween1,tween2);
         tween.onComplete = function fn():void
         {
            § b§.§^"8§("element_appear_3",§ b§.§;$5§);
            § b§.playSound("Checkmark",§ b§.§;$5§);
            §3#§(§>$>§,500);
         };
         tween.play();
      }
      
      private function §&#f§() : void
      {
         this.§?!G§.visible = true;
         var tween2:§@"§ = this.§&X§.§9!n§(this.§?!G§,{
            "scaleX":this.§?!G§.scaleX,
            "scaleY":this.§?!G§.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,§4#"§.easeIn);
         this.§?!G§.scaleY = 0;
         this.§?!G§.scaleX = 0;
         tween2.onComplete = function fn():void
         {
            § b§.playSound("Weekly_tournament_element",§ b§.§;$5§);
            §3#§(§;"S§,1000);
         };
         tween2.play();
      }
      
      private function §+$§() : void
      {
         var leagueMC:DisplayObjectContainer = null;
         var duration:Number = NaN;
         var delay:Number = NaN;
         var shineMC:MovieClip = null;
         var shineTween:§@"§ = null;
         var icon:MovieClip = null;
         var startScaleX:Number = NaN;
         var startScaleY:Number = NaN;
         var finalScaleX:Number = NaN;
         var finalScaleY:Number = NaN;
         var iconTween1:§@"§ = null;
         var iconTween2:§@"§ = null;
         var pulsateTween:§@"§ = null;
         this.§?$"§ = false;
         this.§[#i§ = 0;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§-!X§.length)
         {
            leagueMC = this.§-!X§[i];
            if(i == 0)
            {
               shineMC = MovieClip(leagueMC.getChildByName("rotatingShine"));
               shineTween = this.§&X§.§9!n§(shineMC,{"rotation":0},{"rotation":-360},5,§6"W§.§[X§);
               shineTween.§=!0§ = false;
               shineTween.play();
               icon = MovieClip(leagueMC.getChildByName("icon"));
               startScaleX = icon.scaleX;
               startScaleY = icon.scaleY;
               finalScaleX = icon.scaleX * 1.2;
               finalScaleY = icon.scaleY * 1.2;
               iconTween1 = this.§&X§.§9!n§(icon,{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },1.5,§4#"§.easeOut);
               iconTween2 = this.§&X§.§9!n§(icon,{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },1.5,§4#"§.easeOut,0.5);
               pulsateTween = this.§&X§.§9S§(iconTween1,iconTween2);
               pulsateTween.§=!0§ = false;
               pulsateTween.play();
            }
            duration = Math.max(0.2,0.07 * (this.§-!X§.length - i));
            delay = 0;
            if(i > this.§-!X§.length - 3)
            {
               delay = 0.3;
            }
            tweens.push(this.§&X§.§9!n§(leagueMC,{
               "scaleX":leagueMC.scaleX,
               "scaleY":leagueMC.scaleY
            },{
               "scaleX":leagueMC.scaleX * 3,
               "scaleY":leagueMC.scaleY * 3
            },duration,§4#"§.easeIn,delay));
            leagueMC.scaleY = 0;
            leagueMC.scaleX = 0;
            i++;
         }
         this.§["B§.visible = true;
         var leagueOpeningTween:§@"§ = this.§&X§.§1#6§(tweens);
         leagueOpeningTween.play();
         leagueOpeningTween.onComplete = function fn():void
         {
            §3#§(§3##§,300);
         };
      }
      
      private function §8l§() : void
      {
         var roundMc:MovieClip = null;
         var tween:§@"§ = null;
         var tweens:Array = [];
         var i:int = 0;
         while(i < this.§?#[§.length)
         {
            roundMc = this.§?#[§[i];
            tween = this.§&X§.§9!n§(roundMc,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },0.3,§4#"§.easeOut,0.75);
            tweens.push(tween);
            i++;
         }
         var roundsCloseTween:§@"§ = this.§&X§.§;"x§(tweens);
         roundsCloseTween.play();
         roundsCloseTween.onComplete = function fn():void
         {
            var yellowBarEnlargeTween:§@"§ = §&X§.§9!n§(§[#j§,{"scaleX":§!a§},{"scaleX":§[#j§.scaleX},0.5,§&P§.easeIn);
            var slideTween:§@"§ = §&X§.§9!n§(§?!G§,{"x":§["B§.x - (§?!G§.width >> 1) - 20},{"x":§?!G§.x},0.6,Back.easeInOut);
            var playerAvatarFinalScaleX:Number = §5"V§.scaleX * 1.2;
            var playerAvatarFinalScaleY:Number = §5"V§.scaleY * 1.2;
            var playerAvatartween:§@"§ = §&X§.§9!n§(§5"V§,{
               "x":-(§5"V§.width + (playerAvatarFinalScaleX - §5"V§.scaleX) * §5"V§.width >> 1),
               "y":§5"V§.y - (playerAvatarFinalScaleY - §5"V§.scaleY) * §5"V§.height,
               "scaleX":playerAvatarFinalScaleX,
               "scaleY":playerAvatarFinalScaleY
            },{
               "x":§5"V§.x,
               "y":§5"V§.y,
               "scaleX":§5"V§.scaleX,
               "scaleY":§5"V§.scaleY
            },0.6,§&P§.easeIn);
            var friendsSet1Tween:§@"§ = §&X§.§9!n§(mFriendAvatarsGrp1MC,{"x":-(§?!G§.width >> 1)},{"x":mFriendAvatarsGrp1MC.x},0.6,§&P§.easeIn);
            var friendsSet2Tween:§@"§ = §&X§.§9!n§(mFriendAvatarsGrp2MC,{"x":(§?!G§.width >> 1) - mFriendAvatarsGrp2MC.width + 10},{"x":mFriendAvatarsGrp2MC.x},0.6,§&P§.easeIn);
            var weeklyTournamentTween:§@"§ = §&X§.§8$>§(yellowBarEnlargeTween,slideTween,playerAvatartween,friendsSet1Tween,friendsSet2Tween);
            weeklyTournamentTween.play();
            § b§.playSound("boomerang_swish");
            var endSound:Function = function():void
            {
               § b§.playSound("ui_ingame_scorebox_gain_position",§ b§.§;$5§);
            };
            setTimeout(endSound,0.6);
            weeklyTournamentTween.onComplete = function fn():void
            {
               §3#§(§[!A§);
            };
         };
      }
      
      private function §3#§(param1:uint, param2:int = 0) : void
      {
         this.§+!t§ = param1;
         this.§,"g§ = param2;
         this.§9"&§ = 0;
      }
      
      private function §8"J§(param1:MouseEvent) : void
      {
         § b§.playSound("chest_open_special",§ b§.§;$5§);
         §;#'§.mClip.removeEventListener(Event.ENTER_FRAME,this.§3#f§);
         §;#'§.mClip.btnClaim.removeEventListener(MouseEvent.CLICK,this.§8"J§);
         close(true,false);
         AngryBirdsBase.singleton.popupManager.openPopup(new QualifierRewardPopUp(§@#D§.NORMAL,§5R§.DEFAULT));
      }
      
      private function §>!Q§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§]K§.length = 0;
         var _loc1_:Number = 0;
         var _loc8_:Number = this.§]"0§.x;
         var _loc9_:Number = this.§]"0§.y;
         var _loc10_:Number = this.§5"V§.localToGlobal(new Point(§;#'§.mClip.x,§;#'§.mClip.y)).x;
         var _loc11_:Number = this.§5"V§.localToGlobal(new Point(§;#'§.mClip.x,§;#'§.mClip.y)).y;
         var _loc12_:Number = this.§]"0§.x + 30;
         var _loc13_:Number = this.§]"0§.y - 100;
         if(AngryBirdsBase.singleton.§ >§())
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
            this.§]K§.push(new Point(_loc6_,_loc7_));
            _loc1_ += 1 / this.§0#A§;
         }
         var _loc14_:int = this.§]K§.length - 1;
         var _loc15_:int = this.§]K§.length - 2;
         this.§`!b§ = Math.atan2(this.§]K§[_loc14_].y - this.§]K§[_loc15_].y,this.§]K§[_loc14_].x - this.§]K§[_loc15_].x);
      }
      
      private function §?$5§() : void
      {
         var _loc1_:§`#u§ = AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
         var _loc2_:§?$3§ = new §?$3§(_loc1_.userID,"",true,§?!s§.NORMAL,"",true);
         var _loc3_:§?$3§ = new §?$3§(_loc1_.userID,"",true,§?!s§.NORMAL,"",true);
         this.§]"0§.addChild(_loc2_);
         this.§5"V§.addChild(_loc3_);
         _loc2_.scaleX = _loc2_.scaleY = 0.9;
         _loc3_.scaleX = _loc3_.scaleY = 0.9;
         _loc2_.x += 5;
         _loc2_.y += 5;
         _loc3_.x += 5;
         _loc3_.y += 5;
      }
      
      private function §-#W§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:§2#9§ = null;
         var _loc6_:DisplayObjectContainer = null;
         var _loc7_:DisplayObjectContainer = null;
         var _loc8_:§?$3§ = null;
         if(§4n§ != null)
         {
            _loc1_ = Math.min(§0#&§,§4n§.length);
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = 0;
            while(_loc4_ < _loc1_)
            {
               _loc5_ = §4n§[_loc4_];
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
               _loc8_ = new §?$3§(_loc5_.userId,"",false,null,_loc5_.profileImageURL,true);
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
