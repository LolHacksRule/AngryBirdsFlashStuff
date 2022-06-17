package §;N§
{
   import §%#v§.§0"j§;
   import §'$9§.§8!L§;
   import §+#B§.§+$A§;
   import §4!n§.§'!,§;
   import §5!$§.§"S§;
   import §6§.§'#n§;
   import §6§.§6$'§;
   import §6§.§]%§;
   import §8"§.§ l§;
   import §8"§.§"#l§;
   import §9#^§.§"$ §;
   import §;$5§.§9§;
   import §;$5§.AbstractPopup;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §]"'§.§>I§;
   import §]"'§.§@"%§;
   import com.rovio.assets.§2"O§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.effects.easing.Back;
   
   public class §+"4§ extends AbstractPopup
   {
      
      public static const §&c§:String = "Spin The Wheel!";
      
      public static const §69§:String = "Remove An Item!";
      
      public static const §'$3§:String = "Come Back Tomorrow!";
      
      public static const §+!B§:String = "Improve the next spin by removing your least favorite item.";
      
      public static const §9"A§:String = "Come back tomorrow for another spin.";
      
      public static const ID:String = "DailyRewardPopup";
      
      private static const §@R§:String = "Separater";
      
      private static const §3!<§:String = "CoinsSmall";
      
      private static const §8#n§:String = "CoinsMedium";
      
      private static const §`s§:String = "CoinsLarge";
      
      private static const §2#D§:Array = [§3!<§,§8#n§,§`s§];
       
      
      private var §<$,§:§"S§;
      
      private var § 8§:SpinningWheel;
      
      private var §,!p§:§ l§;
      
      private var §>"M§:Dictionary;
      
      private var §+"y§:DisplayObject;
      
      private var mWheelMc:MovieClip;
      
      private var §9"M§:§"S§;
      
      private var §""`§:TextField;
      
      private var §6$&§:TextField;
      
      private var §]!s§:§^";§;
      
      private var §&!I§:§]%§;
      
      private var §^! §:§]%§;
      
      public function §+"4§(param1:§ l§, param2:§^";§)
      {
         super(§%#§.INFO,§9#5§.TOP,§0"j§.§-i§.Views.PopupView_NewDailyReward[0],ID);
         this.§,!p§ = param1;
         this.§]!s§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§<$,§ = §"S§(§8#Y§.getItemByName("spinButton"));
         this.§9"M§ = §"S§(§8#Y§.getItemByName("btnClose"));
         this.mWheelMc = §8#Y§.mClip.spinningWheel;
         this.§+"y§ = §8#Y§.mClip.getChildByName("loadingScreen");
         this.§8"-§(false);
         this.§""`§ = TextField(§8#Y§.mClip.getChildByName("header_text"));
         this.§6$&§ = TextField(§8#Y§.mClip.getChildByName("body_text"));
         var _loc1_:Vector.<Object> = this.§0![§();
         this.§ 8§ = new SpinningWheel(this.mWheelMc.wheel,this.mWheelMc.spike,§@R§,this.mWheelMc.width >> 1,_loc1_);
         this.updateState();
      }
      
      private function §0![§() : Vector.<Object>
      {
         var _loc3_:§"#l§ = null;
         var _loc1_:Vector.<§"#l§> = this.§,!p§.§`!]§();
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         for each(_loc3_ in _loc1_)
         {
            if(_loc3_.§1b§ == §>I§.§ !C§)
            {
               _loc2_.push({
                  "n":_loc3_.§=$?§,
                  "q":_loc3_.quantity,
                  "isCoin":true
               });
            }
            else
            {
               _loc2_.push({
                  "n":_loc3_.§1b§,
                  "q":_loc3_.quantity,
                  "isCoin":false
               });
            }
         }
         return _loc2_;
      }
      
      public function §8"-§(param1:Boolean) : void
      {
         this.§+"y§.visible = param1;
      }
      
      public function updateState() : void
      {
         var _loc1_:uint = this.§]!s§.getState();
         switch(_loc1_)
         {
            case §"F§.§6!"§:
               this.§?##§(true);
               this.§<$,§.setVisibility(false);
               this.§;!i§(§'$3§,§9"A§);
               this.§ 8§.§<"P§(false);
               break;
            case §"F§.§]#>§:
               this.§<$,§.setVisibility(true);
               this.§?##§(true);
               this.§;!i§(§&c§,"");
               this.§ 8§.addEventListener(§8!L§.§%#$§,this.§+"s§);
               this.§ 8§.§<"P§(true);
         }
      }
      
      private function §+"s§(param1:§8!L§) : void
      {
         var dimmerSprite:Sprite = null;
         var itemName:String = null;
         var dsp:DisplayObjectContainer = null;
         var rotatorDsp:DisplayObject = null;
         var event:§8!L§ = param1;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 2,AngryBirdsBase.stageHeight * 2);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.mWheelMc.addChild(dimmerSprite);
         §[#%§.playSound("league_promotion_diamond",SpinningWheel.§'!%§);
         var maxScale:Number = 4;
         itemName = String(event.data);
         var cls:Class = §2"O§.§`>§(itemName);
         dsp = new cls();
         dsp.x = this.mWheelMc.center.x;
         dsp.y = this.mWheelMc.center.y;
         dsp.name = itemName;
         var reward:§"#l§ = this.§,!p§.§]C§(this.§,!p§.§9"_§());
         (dsp.getChildByName("count") as TextField).text = "x" + reward.quantity;
         dsp.scaleX = dsp.scaleY = 0;
         var GlowRotatorClass:Class = §2"O§.§`>§("RotatingShine");
         rotatorDsp = new GlowRotatorClass();
         rotatorDsp.scaleX = rotatorDsp.scaleY = 2;
         this.mWheelMc.addChild(rotatorDsp);
         this.mWheelMc.addChild(dsp);
         this.§&!I§ = null;
         var tween1:§6$'§ = §'#n§.§?q§.§9!N§(dsp,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":dsp.scaleX,
            "scaleY":dsp.scaleY
         },0.5,Back.easeOut,1.5);
         var tween2:§6$'§ = §'#n§.§?q§.§9!N§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§&!I§ = §'#n§.§?q§.§[#F§(tween1,tween2);
         this.§&!I§.onComplete = function():void
         {
            dispatchEvent(new §8!L§(§8!L§.§'Z§,itemName));
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
         this.§&!I§.play();
         if(reward.§1b§ == §>I§.§ !C§)
         {
            (AngryBirdsBase.singleton.dataModel as §@"%§).§8!8§.§8P§(reward.quantity);
         }
      }
      
      private function §?##§(param1:Boolean) : void
      {
         this.§9"M§.setEnabled(param1);
         this.§9"M§.mClip.alpha = !!param1 ? Number(1) : Number(0.5);
      }
      
      private function §;!i§(param1:String, param2:String) : void
      {
         this.§""`§.text = param1;
         this.§6$&§.text = param2;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "SPIN_PRESSED":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§?##§(false);
               this.§<$,§.setVisibility(false);
               this.§ 8§.§'"m§();
               dispatchEvent(new §8!L§(§8!L§.§9$8§,null));
               break;
            case "CLOSE":
               this.§ 8§.§?!m§();
               §+$A§.§@"i§().§]$#§(§+$A§.§=",§);
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      private function §["`§(param1:uint) : String
      {
         var _loc4_:§"#l§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§"#l§> = this.§,!p§.§`!]§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§1b§ == §>I§.§ !C§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§=$?§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §5"S§(param1:String) : void
      {
         this.§ 8§.§5"S§(param1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§ 8§.removeEventListener(§8!L§.§%#$§,this.§+"s§);
         this.§ 8§.dispose();
         this.§ 8§ = null;
         if(this.§&!I§)
         {
            this.§&!I§.stop();
            this.§&!I§ = null;
         }
         if(this.§^! §)
         {
            this.§^! §.stop();
            this.§^! § = null;
         }
         this.§<$,§ = null;
         this.§,!p§ = null;
         this.§>"M§ = null;
         this.mWheelMc = null;
      }
      
      public function §1$8§() : void
      {
         this.§^! § = §'#n§.§?q§.§9!N§(this.mWheelMc,{
            "scaleX":0,
            "scaleY":0
         },null,0.5,§"$ §.easeIn);
         this.§^! §.onComplete = function():void
         {
            § 8§.§7w§(§0![§());
            §^! § = §'#n§.§?q§.§9!N§(mWheelMc,{
               "scaleX":1,
               "scaleY":1
            },null,0.5,§"$ §.easeIn);
            §^! §.play();
         };
         this.§^! §.play();
      }
   }
}
