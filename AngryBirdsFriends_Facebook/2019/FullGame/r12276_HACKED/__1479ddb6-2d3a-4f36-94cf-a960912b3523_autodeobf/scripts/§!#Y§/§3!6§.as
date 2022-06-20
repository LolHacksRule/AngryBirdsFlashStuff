package §!#Y§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import § null§.§0!N§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §0r§.§3#G§;
   import §2$;§.§;!b§;
   import §2E§.§]!P§;
   import §5#<§.§-"q§;
   import §9!6§.§## §;
   import §9!6§.AbstractPopup;
   import §<8§.§8!g§;
   import §>#Y§.§,#b§;
   import §>#Y§.§2$8§;
   import §[#A§.§&n§;
   import §^!&§.§'-§;
   import §^!&§.§--§;
   import com.rovio.assets.§=@§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.effects.easing.Back;
   
   public class §3!6§ extends AbstractPopup
   {
      
      public static const §##`§:String = "Spin The Wheel!";
      
      public static const §;"H§:String = "Remove An Item!";
      
      public static const §#e§:String = "Come Back Tomorrow!";
      
      public static const §5!H§:String = "Improve the next spin by removing your least favorite item.";
      
      public static const §5$,§:String = "Come back tomorrow for another spin.";
      
      public static const ID:String = "DailyRewardPopup";
      
      private static const §9!_§:String = "Separater";
      
      private static const §&!X§:String = "CoinsSmall";
      
      private static const §'Q§:String = "CoinsMedium";
      
      private static const §,!'§:String = "CoinsLarge";
      
      private static const §"#J§:Array = [§&!X§,§'Q§,§,!'§];
       
      
      private var §6$<§:§;!b§;
      
      private var §"#E§:SpinningWheel;
      
      private var §@!U§:§'-§;
      
      private var §4#8§:Dictionary;
      
      private var §@#u§:DisplayObject;
      
      private var mWheelMc:MovieClip;
      
      private var §3#,§:§;!b§;
      
      private var §&!"§:TextField;
      
      private var §^!8§:TextField;
      
      private var §6!r§:§;L§;
      
      private var §`"t§:§@#5§;
      
      private var §7"7§:§@#5§;
      
      public function §3!6§(param1:§'-§, param2:§;L§)
      {
         super(§-!S§.INFO,§## §.TOP,§&n§.§7a§.Views.PopupView_NewDailyReward[0],ID);
         this.§@!U§ = param1;
         this.§6!r§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§6$<§ = §;!b§(§'o§.getItemByName("spinButton"));
         this.§3#,§ = §;!b§(§'o§.getItemByName("btnClose"));
         this.mWheelMc = §'o§.mClip.spinningWheel;
         this.§@#u§ = §'o§.mClip.getChildByName("loadingScreen");
         this.§?"!§(false);
         this.§&!"§ = TextField(§'o§.mClip.getChildByName("header_text"));
         this.§^!8§ = TextField(§'o§.mClip.getChildByName("body_text"));
         var _loc1_:Vector.<Object> = this.§9!<§();
         this.§"#E§ = new SpinningWheel(this.mWheelMc.wheel,this.mWheelMc.spike,§9!_§,this.mWheelMc.width >> 1,_loc1_);
         this.updateState();
      }
      
      private function §9!<§() : Vector.<Object>
      {
         var _loc3_:§--§ = null;
         var _loc1_:Vector.<§--§> = this.§@!U§.§9$#§();
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         for each(_loc3_ in _loc1_)
         {
            if(_loc3_.§4!'§ == §2$8§.§,"p§)
            {
               _loc2_.push({
                  "n":_loc3_.§4!$§,
                  "q":_loc3_.quantity,
                  "isCoin":true
               });
            }
            else
            {
               _loc2_.push({
                  "n":_loc3_.§4!'§,
                  "q":_loc3_.quantity,
                  "isCoin":false
               });
            }
         }
         return _loc2_;
      }
      
      public function §?"!§(param1:Boolean) : void
      {
         this.§@#u§.visible = param1;
      }
      
      public function updateState() : void
      {
         var _loc1_:uint = this.§6!r§.getState();
         switch(_loc1_)
         {
            case §>h§.§ #+§:
               this.§[x§(true);
               this.§6$<§.setVisibility(false);
               this.§+"S§(§#e§,§5$,§);
               this.§"#E§.§9>§(false);
               break;
            case §>h§.§^!e§:
               this.§6$<§.setVisibility(true);
               this.§[x§(true);
               this.§+"S§(§##`§,"");
               this.§"#E§.addEventListener(§-"q§.§=!i§,this.§5$<§);
               this.§"#E§.§9>§(true);
         }
      }
      
      private function §5$<§(param1:§-"q§) : void
      {
         var dimmerSprite:Sprite = null;
         var itemName:String = null;
         var dsp:DisplayObjectContainer = null;
         var rotatorDsp:DisplayObject = null;
         var event:§-"q§ = param1;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 2,AngryBirdsBase.stageHeight * 2);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.mWheelMc.addChild(dimmerSprite);
         §4$4§.playSound("league_promotion_diamond",SpinningWheel.§#N§);
         var maxScale:Number = 4;
         itemName = String(event.data);
         var cls:Class = §=@§.§9!x§(itemName);
         dsp = new cls();
         dsp.x = this.mWheelMc.center.x;
         dsp.y = this.mWheelMc.center.y;
         dsp.name = itemName;
         var reward:§--§ = this.§@!U§.§>$4§(this.§@!U§.§!v§());
         (dsp.getChildByName("count") as TextField).text = "x" + reward.quantity;
         dsp.scaleX = dsp.scaleY = 0;
         var GlowRotatorClass:Class = §=@§.§9!x§("RotatingShine");
         rotatorDsp = new GlowRotatorClass();
         rotatorDsp.scaleX = rotatorDsp.scaleY = 2;
         this.mWheelMc.addChild(rotatorDsp);
         this.mWheelMc.addChild(dsp);
         this.§`"t§ = null;
         var tween1:§0!N§ = §5"<§.§3"1§.§3#§(dsp,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":dsp.scaleX,
            "scaleY":dsp.scaleY
         },0.5,Back.easeOut,1.5);
         var tween2:§0!N§ = §5"<§.§3"1§.§3#§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§`"t§ = §5"<§.§3"1§.§]#6§(tween1,tween2);
         this.§`"t§.onComplete = function():void
         {
            dispatchEvent(new §-"q§(§-"q§.§>"#§,itemName));
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
         this.§`"t§.play();
         if(reward.§4!'§ == §2$8§.§,"p§)
         {
            (AngryBirdsBase.singleton.dataModel as §,#b§).§%$;§.§2#$§(reward.quantity);
         }
      }
      
      private function §[x§(param1:Boolean) : void
      {
         this.§3#,§.setEnabled(param1);
         this.§3#,§.mClip.alpha = !!param1 ? Number(1) : Number(0.5);
      }
      
      private function §+"S§(param1:String, param2:String) : void
      {
         this.§&!"§.text = param1;
         this.§^!8§.text = param2;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "SPIN_PRESSED":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§[x§(false);
               this.§6$<§.setVisibility(false);
               this.§"#E§.§8"Q§();
               dispatchEvent(new §-"q§(§-"q§.§1#d§,null));
               break;
            case "CLOSE":
               this.§"#E§.§+!t§();
               §]!P§.§1!7§().§%#J§(§]!P§.§6#u§);
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      private function §-$ §(param1:uint) : String
      {
         var _loc4_:§--§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§--§> = this.§@!U§.§9$#§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§4!'§ == §2$8§.§,"p§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§4!$§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §^M§(param1:String) : void
      {
         this.§"#E§.§^M§(param1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§"#E§.removeEventListener(§-"q§.§=!i§,this.§5$<§);
         this.§"#E§.dispose();
         this.§"#E§ = null;
         if(this.§`"t§)
         {
            this.§`"t§.stop();
            this.§`"t§ = null;
         }
         if(this.§7"7§)
         {
            this.§7"7§.stop();
            this.§7"7§ = null;
         }
         this.§6$<§ = null;
         this.§@!U§ = null;
         this.§4#8§ = null;
         this.mWheelMc = null;
      }
      
      public function §]$@§() : void
      {
         this.§7"7§ = §5"<§.§3"1§.§3#§(this.mWheelMc,{
            "scaleX":0,
            "scaleY":0
         },null,0.5,§3#G§.easeIn);
         this.§7"7§.onComplete = function():void
         {
            §"#E§.§"!@§(§9!<§());
            §7"7§ = §5"<§.§3"1§.§3#§(mWheelMc,{
               "scaleX":1,
               "scaleY":1
            },null,0.5,§3#G§.easeIn);
            §7"7§.play();
         };
         this.§7"7§.play();
      }
   }
}
