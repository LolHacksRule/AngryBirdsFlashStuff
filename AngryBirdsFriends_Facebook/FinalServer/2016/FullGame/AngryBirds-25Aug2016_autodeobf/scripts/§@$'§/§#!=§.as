package §@$'§
{
   import § §.§7#L§;
   import §#"b§.§-O§;
   import §#"b§.§["I§;
   import §%$!§.§=]§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §&#S§.§^#[§;
   import §'!U§.§0!?§;
   import §6"r§.§=O§;
   import §8§.§#$+§;
   import §<!O§.§@#`§;
   import §>!#§.§-#A§;
   import §?"R§.§[W§;
   import §?"e§.§,##§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import com.rovio.assets.§@`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.effects.easing.Back;
   
   public class §#!=§ extends AbstractPopup
   {
      
      public static const §"7§:String = "Spin The Wheel!";
      
      public static const §=#4§:String = "Remove An Item!";
      
      public static const §;##§:String = "Come Back Tomorrow!";
      
      public static const §7#Q§:String = "Improve the next spin by removing your least favorite item.";
      
      public static const §,L§:String = "Come back tomorrow for another spin.";
      
      public static const ID:String = "DailyRewardPopup";
      
      private static const §1"k§:String = "Separater";
      
      private static const §2#[§:String = "CoinsSmall";
      
      private static const §+6§:String = "CoinsMedium";
      
      private static const §`#`§:String = "CoinsLarge";
      
      private static const §6#C§:Array = [§2#[§,§+6§,§`#`§];
       
      
      private var §1!8§:§=O§;
      
      private var §2!§:SpinningWheel;
      
      private var §3"X§:§["I§;
      
      private var §3#0§:Dictionary;
      
      private var §5!t§:DisplayObject;
      
      private var mWheelMc:MovieClip;
      
      private var §1!3§:§=O§;
      
      private var §2#^§:TextField;
      
      private var §-!K§:TextField;
      
      private var §4!8§:§9#S§;
      
      private var §8a§:§+,§;
      
      private var §<"2§:§+,§;
      
      public function §#!=§(param1:§["I§, param2:§9#S§)
      {
         super(§[W§.NORMAL,§<d§.TOP,§@#`§.§#!c§.Views.PopupView_NewDailyReward[0],ID);
         this.§3"X§ = param1;
         this.§4!8§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§1!8§ = §=O§(§7!j§.getItemByName("spinButton"));
         this.§1!3§ = §=O§(§7!j§.getItemByName("btnClose"));
         this.mWheelMc = §7!j§.mClip.spinningWheel;
         this.§5!t§ = §7!j§.mClip.getChildByName("loadingScreen");
         this.§&!b§(false);
         this.§2#^§ = TextField(§7!j§.mClip.getChildByName("header_text"));
         this.§-!K§ = TextField(§7!j§.mClip.getChildByName("body_text"));
         var _loc1_:Vector.<String> = this.§9"0§();
         this.§2!§ = new SpinningWheel(this.mWheelMc.wheel,this.mWheelMc.spike,§1"k§,this.mWheelMc.width >> 1,_loc1_);
         this.updateState();
      }
      
      private function §9"0§() : Vector.<String>
      {
         var _loc3_:§-O§ = null;
         var _loc1_:Vector.<§-O§> = this.§3"X§.§<#A§();
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in _loc1_)
         {
            if(_loc3_.§2G§ == §=]§.§;Q§)
            {
               _loc2_.push(_loc3_.§+#w§);
            }
            else
            {
               _loc2_.push(_loc3_.§2G§);
            }
         }
         return _loc2_;
      }
      
      public function §&!b§(param1:Boolean) : void
      {
         this.§5!t§.visible = param1;
      }
      
      public function updateState() : void
      {
         var _loc1_:uint = this.§4!8§.getState();
         switch(_loc1_)
         {
            case §&#%§.§-h§:
               this.§?"I§(true);
               this.§1!8§.setVisibility(false);
               this.§3!l§(§;##§,§,L§);
               this.§2!§.§5!B§(false);
               break;
            case §&#%§.§9Q§:
               this.§1!8§.setVisibility(true);
               this.§?"I§(true);
               this.§3!l§(§"7§,"");
               this.§2!§.addEventListener(§,##§.§8$ §,this.§2J§);
               this.§2!§.§5!B§(true);
         }
      }
      
      private function §2J§(param1:§,##§) : void
      {
         var itemName:String = null;
         var dsp:DisplayObjectContainer = null;
         var rotatorDsp:DisplayObject = null;
         var event:§,##§ = param1;
         §#$+§.playSound("LeaguePromotionDiamond",SpinningWheel.§56§);
         var maxScale:Number = 4;
         itemName = String(event.data);
         var cls:Class = §@`§.§4!i§(itemName);
         dsp = new cls();
         dsp.x = this.mWheelMc.center.x;
         dsp.y = this.mWheelMc.center.y;
         dsp.name = itemName;
         var rewardCountClass:Class = §@`§.§4!i§("SpinningWheelRewardCount");
         var rewardCountDsp:DisplayObjectContainer = new rewardCountClass();
         rewardCountDsp.x = dsp.x;
         rewardCountDsp.y = dsp.y + (dsp.height >> 1) + 5;
         var countTF:TextField = TextField(rewardCountDsp.getChildByName("count"));
         countTF.text = this.§3"X§.§0V§(this.§3"X§.§"#<§()).quantity.toString();
         dsp.addChild(rewardCountDsp);
         dsp.scaleX = dsp.scaleY = 0;
         var GlowRotatorClass:Class = §@`§.§4!i§("RotatingShine");
         rotatorDsp = new GlowRotatorClass();
         rotatorDsp.scaleX = rotatorDsp.scaleY = 2;
         this.mWheelMc.addChild(rotatorDsp);
         this.mWheelMc.addChild(dsp);
         this.§8a§ = null;
         var tween1:§^#[§ = §""Z§.§3!]§.§5"0§(dsp,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":dsp.scaleX,
            "scaleY":dsp.scaleY
         },0.5,Back.easeOut,1.5);
         var tween2:§^#[§ = §""Z§.§3!]§.§5"0§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§8a§ = §""Z§.§3!]§.§[#h§(tween1,tween2);
         this.§8a§.onComplete = function():void
         {
            dispatchEvent(new §,##§(§,##§.§-$1§,itemName));
            if(dsp)
            {
               mWheelMc.removeChild(dsp);
            }
            if(rotatorDsp)
            {
               mWheelMc.removeChild(rotatorDsp);
            }
         };
         this.§8a§.play();
      }
      
      private function §?"I§(param1:Boolean) : void
      {
         this.§1!3§.setEnabled(param1);
         this.§1!3§.mClip.alpha = !!param1 ? Number(1) : Number(0.5);
      }
      
      private function §3!l§(param1:String, param2:String) : void
      {
         this.§2#^§.text = param1;
         this.§-!K§.text = param2;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "SPIN_PRESSED":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§?"I§(false);
               this.§1!8§.setVisibility(false);
               this.§2!§.§4"j§();
               dispatchEvent(new §,##§(§,##§.§?"P§,null));
               break;
            case "CLOSE":
               this.§2!§.§%!p§();
               §-#A§.§6$2§().§5V§(§-#A§.§9#%§);
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      private function §1!I§(param1:uint) : String
      {
         var _loc4_:§-O§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§-O§> = this.§3"X§.§<#A§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§2G§ == §=]§.§;Q§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§+#w§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §4" §(param1:String) : void
      {
         this.§2!§.§4" §(param1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§2!§.removeEventListener(§,##§.§8$ §,this.§2J§);
         this.§2!§.dispose();
         this.§2!§ = null;
         if(this.§8a§)
         {
            this.§8a§.stop();
            this.§8a§ = null;
         }
         if(this.§<"2§)
         {
            this.§<"2§.stop();
            this.§<"2§ = null;
         }
         this.§1!8§ = null;
         this.§3"X§ = null;
         this.§3#0§ = null;
         this.mWheelMc = null;
      }
      
      public function §&$#§() : void
      {
         this.§<"2§ = §""Z§.§3!]§.§5"0§(this.mWheelMc,{
            "scaleX":0,
            "scaleY":0
         },null,0.5,§7#L§.easeIn);
         this.§<"2§.onComplete = function():void
         {
            §2!§.§5!m§(§9"0§());
            §<"2§ = §""Z§.§3!]§.§5"0§(mWheelMc,{
               "scaleX":1,
               "scaleY":1
            },null,0.5,§7#L§.easeIn);
            §<"2§.play();
         };
         this.§<"2§.play();
      }
   }
}
