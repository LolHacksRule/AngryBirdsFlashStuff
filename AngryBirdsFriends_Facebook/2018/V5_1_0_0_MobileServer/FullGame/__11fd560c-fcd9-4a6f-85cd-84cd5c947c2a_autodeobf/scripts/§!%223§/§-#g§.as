package §!"3§
{
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §!#"§.§7Y§;
   import §##C§.§'!'§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §2G§.§"G§;
   import §2G§.§#"8§;
   import §3#T§.§'§;
   import §5§.§9$6§;
   import §;k§.§+"7§;
   import §;k§.§-"K§;
   import §<h§.§>"0§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §`7§.§ try§;
   import com.rovio.assets.§!"f§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.effects.easing.Back;
   
   public class §-#g§ extends AbstractPopup
   {
      
      public static const §;!B§:String = "Spin The Wheel!";
      
      public static const §@$4§:String = "Remove An Item!";
      
      public static const § !g§:String = "Come Back Tomorrow!";
      
      public static const § $"§:String = "Improve the next spin by removing your least favorite item.";
      
      public static const §+#m§:String = "Come back tomorrow for another spin.";
      
      public static const ID:String = "DailyRewardPopup";
      
      private static const §9"[§:String = "Separater";
      
      private static const §?""§:String = "CoinsSmall";
      
      private static const §4"&§:String = "CoinsMedium";
      
      private static const §1$8§:String = "CoinsLarge";
      
      private static const §<#`§:Array = [§?""§,§4"&§,§1$8§];
       
      
      private var §6"C§:§>"0§;
      
      private var §[!U§:SpinningWheel;
      
      private var §!A§:§+"7§;
      
      private var §="S§:Dictionary;
      
      private var §]$A§:DisplayObject;
      
      private var mWheelMc:MovieClip;
      
      private var §2#9§:§>"0§;
      
      private var §=!Y§:TextField;
      
      private var §%"h§:TextField;
      
      private var §2E§:§,$$§;
      
      private var §0$'§:§4[§;
      
      private var §%"4§:§4[§;
      
      public function §-#g§(param1:§+"7§, param2:§,$$§)
      {
         super(§]"$§.INFO,§^"U§.TOP,§1Q§.§5T§.Views.PopupView_NewDailyReward[0],ID);
         this.§!A§ = param1;
         this.§2E§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§6"C§ = §>"0§(§,#2§.getItemByName("spinButton"));
         this.§2#9§ = §>"0§(§,#2§.getItemByName("btnClose"));
         this.mWheelMc = §,#2§.mClip.spinningWheel;
         this.§]$A§ = §,#2§.mClip.getChildByName("loadingScreen");
         this.§]u§(false);
         this.§=!Y§ = TextField(§,#2§.mClip.getChildByName("header_text"));
         this.§%"h§ = TextField(§,#2§.mClip.getChildByName("body_text"));
         var _loc1_:Vector.<Object> = this.§!![§();
         this.§[!U§ = new SpinningWheel(this.mWheelMc.wheel,this.mWheelMc.spike,§9"[§,this.mWheelMc.width >> 1,_loc1_);
         this.updateState();
      }
      
      private function §!![§() : Vector.<Object>
      {
         var _loc3_:§-"K§ = null;
         var _loc1_:Vector.<§-"K§> = this.§!A§.§,!0§();
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         for each(_loc3_ in _loc1_)
         {
            if(_loc3_.§3!z§ == §"G§.§6!@§)
            {
               _loc2_.push({
                  "n":_loc3_.§"#7§,
                  "q":_loc3_.quantity,
                  "isCoin":true
               });
            }
            else
            {
               _loc2_.push({
                  "n":_loc3_.§3!z§,
                  "q":_loc3_.quantity,
                  "isCoin":false
               });
            }
         }
         return _loc2_;
      }
      
      public function §]u§(param1:Boolean) : void
      {
         this.§]$A§.visible = param1;
      }
      
      public function updateState() : void
      {
         var _loc1_:uint = this.§2E§.getState();
         switch(_loc1_)
         {
            case §8#,§.§7$@§:
               this.§?#k§(true);
               this.§6"C§.setVisibility(false);
               this.§;$§(§ !g§,§+#m§);
               this.§[!U§.§>!H§(false);
               break;
            case §8#,§.§8"v§:
               this.§6"C§.setVisibility(true);
               this.§?#k§(true);
               this.§;$§(§;!B§,"");
               this.§[!U§.addEventListener(§9$6§.§`M§,this.§3"H§);
               this.§[!U§.§>!H§(true);
         }
      }
      
      private function §3"H§(param1:§9$6§) : void
      {
         var dimmerSprite:Sprite = null;
         var itemName:String = null;
         var dsp:DisplayObjectContainer = null;
         var rotatorDsp:DisplayObject = null;
         var event:§9$6§ = param1;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 2,AngryBirdsBase.stageHeight * 2);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.mWheelMc.addChild(dimmerSprite);
         §!"p§.playSound("league_promotion_diamond",SpinningWheel.§8#u§);
         var maxScale:Number = 4;
         itemName = String(event.data);
         var cls:Class = §!"f§.§##?§(itemName);
         dsp = new cls();
         dsp.x = this.mWheelMc.center.x;
         dsp.y = this.mWheelMc.center.y;
         dsp.name = itemName;
         var reward:§-"K§ = this.§!A§.§-"b§(this.§!A§.§>$+§());
         (dsp.getChildByName("count") as TextField).text = "x" + reward.quantity;
         dsp.scaleX = dsp.scaleY = 0;
         var GlowRotatorClass:Class = §!"f§.§##?§("RotatingShine");
         rotatorDsp = new GlowRotatorClass();
         rotatorDsp.scaleX = rotatorDsp.scaleY = 2;
         this.mWheelMc.addChild(rotatorDsp);
         this.mWheelMc.addChild(dsp);
         this.§0$'§ = null;
         var tween1:§7Y§ = §&"H§.§6!§.§6C§(dsp,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":dsp.scaleX,
            "scaleY":dsp.scaleY
         },0.5,Back.easeOut,1.5);
         var tween2:§7Y§ = §&"H§.§6!§.§6C§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§0$'§ = §&"H§.§6!§.§>##§(tween1,tween2);
         this.§0$'§.onComplete = function():void
         {
            dispatchEvent(new §9$6§(§9$6§.§]"i§,itemName));
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
         this.§0$'§.play();
         if(reward.§3!z§ == §"G§.§6!@§)
         {
            (AngryBirdsBase.singleton.dataModel as §#"8§).§""[§.§8!!§(reward.quantity);
         }
      }
      
      private function §?#k§(param1:Boolean) : void
      {
         this.§2#9§.setEnabled(param1);
         this.§2#9§.mClip.alpha = !!param1 ? Number(1) : Number(0.5);
      }
      
      private function §;$§(param1:String, param2:String) : void
      {
         this.§=!Y§.text = param1;
         this.§%"h§.text = param2;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "SPIN_PRESSED":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§?#k§(false);
               this.§6"C§.setVisibility(false);
               this.§[!U§.§]!N§();
               dispatchEvent(new §9$6§(§9$6§.§=w§,null));
               break;
            case "CLOSE":
               this.§[!U§.§7"y§();
               § try§.§!!t§().§7!y§(§ try§.§7#6§);
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      private function §<$6§(param1:uint) : String
      {
         var _loc4_:§-"K§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§-"K§> = this.§!A§.§,!0§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§3!z§ == §"G§.§6!@§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§"#7§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §>"O§(param1:String) : void
      {
         this.§[!U§.§>"O§(param1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§[!U§.removeEventListener(§9$6§.§`M§,this.§3"H§);
         this.§[!U§.dispose();
         this.§[!U§ = null;
         if(this.§0$'§)
         {
            this.§0$'§.stop();
            this.§0$'§ = null;
         }
         if(this.§%"4§)
         {
            this.§%"4§.stop();
            this.§%"4§ = null;
         }
         this.§6"C§ = null;
         this.§!A§ = null;
         this.§="S§ = null;
         this.mWheelMc = null;
      }
      
      public function §@"&§() : void
      {
         this.§%"4§ = §&"H§.§6!§.§6C§(this.mWheelMc,{
            "scaleX":0,
            "scaleY":0
         },null,0.5,§'!'§.easeIn);
         this.§%"4§.onComplete = function():void
         {
            §[!U§.§'!B§(§!![§());
            §%"4§ = §&"H§.§6!§.§6C§(mWheelMc,{
               "scaleX":1,
               "scaleY":1
            },null,0.5,§'!'§.easeIn);
            §%"4§.play();
         };
         this.§%"4§.play();
      }
   }
}
