package § ">§
{
   import § "L§.§1"r§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §#"4§.§3";§;
   import §#"R§.§?""§;
   import §,#,§.§=#o§;
   import §,#,§.§>#g§;
   import §3"V§.§ b§;
   import §5,§.§&"G§;
   import §5,§.§,$-§;
   import §;"5§.§6"W§;
   import §;"5§.§@"§;
   import §;"5§.§@$-§;
   import §=J§.§4#"§;
   import §?Q§.§@#D§;
   import §^"3§.§`$4§;
   import com.rovio.assets.§[a§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.effects.easing.Back;
   
   public class §3"+§ extends AbstractPopup
   {
      
      public static const §>"C§:String = "Spin The Wheel!";
      
      public static const §-!Q§:String = "Remove An Item!";
      
      public static const §9$%§:String = "Come Back Tomorrow!";
      
      public static const §`g§:String = "Improve the next spin by removing your least favorite item.";
      
      public static const §`k§:String = "Come back tomorrow for another spin.";
      
      public static const ID:String = "DailyRewardPopup";
      
      private static const §3"i§:String = "Separater";
      
      private static const §!Z§:String = "CoinsSmall";
      
      private static const §;#&§:String = "CoinsMedium";
      
      private static const §7",§:String = "CoinsLarge";
      
      private static const §@w§:Array = [§!Z§,§;#&§,§7",§];
       
      
      private var §%A§:§1"r§;
      
      private var §#$<§:SpinningWheel;
      
      private var §=H§:§,$-§;
      
      private var §=#D§:Dictionary;
      
      private var §6#w§:DisplayObject;
      
      private var mWheelMc:MovieClip;
      
      private var §1"8§:§1"r§;
      
      private var §]$-§:TextField;
      
      private var §%W§:TextField;
      
      private var §>!N§:§,#8§;
      
      private var §&#;§:§@$-§;
      
      private var §?$%§:§@$-§;
      
      public function §3"+§(param1:§,$-§, param2:§,#8§)
      {
         super(§@#D§.INFO,§5R§.TOP,§false§.§4#;§.Views.PopupView_NewDailyReward[0],ID);
         this.§=H§ = param1;
         this.§>!N§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§%A§ = §1"r§(§;#'§.getItemByName("spinButton"));
         this.§1"8§ = §1"r§(§;#'§.getItemByName("btnClose"));
         this.mWheelMc = §;#'§.mClip.spinningWheel;
         this.§6#w§ = §;#'§.mClip.getChildByName("loadingScreen");
         this.§-!F§(false);
         this.§]$-§ = TextField(§;#'§.mClip.getChildByName("header_text"));
         this.§%W§ = TextField(§;#'§.mClip.getChildByName("body_text"));
         var _loc1_:Vector.<Object> = this.§&o§();
         this.§#$<§ = new SpinningWheel(this.mWheelMc.wheel,this.mWheelMc.spike,§3"i§,this.mWheelMc.width >> 1,_loc1_);
         this.updateState();
      }
      
      private function §&o§() : Vector.<Object>
      {
         var _loc3_:§&"G§ = null;
         var _loc1_:Vector.<§&"G§> = this.§=H§.§["=§();
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         for each(_loc3_ in _loc1_)
         {
            if(_loc3_.§<"K§ == §>#g§.§=-§)
            {
               _loc2_.push({
                  "n":_loc3_.§2"G§,
                  "q":_loc3_.quantity,
                  "isCoin":true
               });
            }
            else
            {
               _loc2_.push({
                  "n":_loc3_.§<"K§,
                  "q":_loc3_.quantity,
                  "isCoin":false
               });
            }
         }
         return _loc2_;
      }
      
      public function §-!F§(param1:Boolean) : void
      {
         this.§6#w§.visible = param1;
      }
      
      public function updateState() : void
      {
         var _loc1_:uint = this.§>!N§.getState();
         switch(_loc1_)
         {
            case §#"O§.§2"#§:
               this.§6#`§(true);
               this.§%A§.setVisibility(false);
               this.§2"p§(§9$%§,§`k§);
               this.§#$<§.§?!y§(false);
               break;
            case §#"O§.§#q§:
               this.§%A§.setVisibility(true);
               this.§6#`§(true);
               this.§2"p§(§>"C§,"");
               this.§#$<§.addEventListener(§?""§.§7V§,this.§#!Y§);
               this.§#$<§.§?!y§(true);
         }
      }
      
      private function §#!Y§(param1:§?""§) : void
      {
         var dimmerSprite:Sprite = null;
         var itemName:String = null;
         var dsp:DisplayObjectContainer = null;
         var rotatorDsp:DisplayObject = null;
         var event:§?""§ = param1;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 2,AngryBirdsBase.stageHeight * 2);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.mWheelMc.addChild(dimmerSprite);
         § b§.playSound("league_promotion_diamond",SpinningWheel.§?#M§);
         var maxScale:Number = 4;
         itemName = String(event.data);
         var cls:Class = §[a§.§8#k§(itemName);
         dsp = new cls();
         dsp.x = this.mWheelMc.center.x;
         dsp.y = this.mWheelMc.center.y;
         dsp.name = itemName;
         var reward:§&"G§ = this.§=H§.§`$1§(this.§=H§.§>N§());
         (dsp.getChildByName("count") as TextField).text = "x" + reward.quantity;
         dsp.scaleX = dsp.scaleY = 0;
         var GlowRotatorClass:Class = §[a§.§8#k§("RotatingShine");
         rotatorDsp = new GlowRotatorClass();
         rotatorDsp.scaleX = rotatorDsp.scaleY = 2;
         this.mWheelMc.addChild(rotatorDsp);
         this.mWheelMc.addChild(dsp);
         this.§&#;§ = null;
         var tween1:§@"§ = §6"W§.§+!,§.§9!n§(dsp,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":dsp.scaleX,
            "scaleY":dsp.scaleY
         },0.5,Back.easeOut,1.5);
         var tween2:§@"§ = §6"W§.§+!,§.§9!n§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§&#;§ = §6"W§.§+!,§.§9S§(tween1,tween2);
         this.§&#;§.onComplete = function():void
         {
            dispatchEvent(new §?""§(§?""§.§5"u§,itemName));
            if(dsp)
            {
               mWheelMc.removeChild(dsp);
            }
            if(rotatorDsp)
            {
               mWheelMc.removeChild(rotatorDsp);
            }
            mWheelMc.removeChild(dimmerSprite);
         };
         this.§&#;§.play();
         if(reward.§<"K§ == §>#g§.§=-§)
         {
            (AngryBirdsBase.singleton.dataModel as §=#o§).§1q§.§3N§(reward.quantity);
         }
      }
      
      private function §6#`§(param1:Boolean) : void
      {
         this.§1"8§.setEnabled(param1);
         this.§1"8§.mClip.alpha = !!param1 ? Number(1) : Number(0.5);
      }
      
      private function §2"p§(param1:String, param2:String) : void
      {
         this.§]$-§.text = param1;
         this.§%W§.text = param2;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "SPIN_PRESSED":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§6#`§(false);
               this.§%A§.setVisibility(false);
               this.§#$<§.§7#=§();
               dispatchEvent(new §?""§(§?""§.§!![§,null));
               break;
            case "CLOSE":
               this.§#$<§.§?#k§();
               §3";§.§#"'§().§%!;§(§3";§.§`o§);
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      private function §^J§(param1:uint) : String
      {
         var _loc4_:§&"G§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§&"G§> = this.§=H§.§["=§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§<"K§ == §>#g§.§=-§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§2"G§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §@!5§(param1:String) : void
      {
         this.§#$<§.§@!5§(param1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§#$<§.removeEventListener(§?""§.§7V§,this.§#!Y§);
         this.§#$<§.dispose();
         this.§#$<§ = null;
         if(this.§&#;§)
         {
            this.§&#;§.stop();
            this.§&#;§ = null;
         }
         if(this.§?$%§)
         {
            this.§?$%§.stop();
            this.§?$%§ = null;
         }
         this.§%A§ = null;
         this.§=H§ = null;
         this.§=#D§ = null;
         this.mWheelMc = null;
      }
      
      public function §=+§() : void
      {
         this.§?$%§ = §6"W§.§+!,§.§9!n§(this.mWheelMc,{
            "scaleX":0,
            "scaleY":0
         },null,0.5,§4#"§.easeIn);
         this.§?$%§.onComplete = function():void
         {
            §#$<§.§^!M§(§&o§());
            §?$%§ = §6"W§.§+!,§.§9!n§(mWheelMc,{
               "scaleX":1,
               "scaleY":1
            },null,0.5,§4#"§.easeIn);
            §?$%§.play();
         };
         this.§?$%§.play();
      }
   }
}
