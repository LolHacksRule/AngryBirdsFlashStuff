package §>#d§
{
   import § o§.§%"!§;
   import §%#A§.§,#w§;
   import §&"J§.§6$0§;
   import §&"J§.§`]§;
   import §1#W§.§!#&§;
   import §2`§.§<"I§;
   import §4R§.§+!J§;
   import §4R§.§-#`§;
   import §6V§.§?!=§;
   import §8#D§.§=>§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §8Z§.§`!s§;
   import §<"1§.§'"S§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §?!@§.§%§;
   import com.rovio.assets.§+$#§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.effects.easing.Back;
   
   public class §5!s§ extends AbstractPopup
   {
      
      public static const §7t§:String = "Spin The Wheel!";
      
      public static const §1$-§:String = "Remove An Item!";
      
      public static const §"#K§:String = "Come Back Tomorrow!";
      
      public static const §>"9§:String = "Improve the next spin by removing your least favorite item.";
      
      public static const §>"2§:String = "Come back tomorrow for another spin.";
      
      public static const ID:String = "DailyRewardPopup";
      
      private static const §;_§:String = "Separater";
      
      private static const §%p§:String = "CoinsSmall";
      
      private static const §3#-§:String = "CoinsMedium";
      
      private static const §5!t§:String = "CoinsLarge";
      
      private static const §5c§:Array = [§%p§,§3#-§,§5!t§];
       
      
      private var §%$;§:§,#w§;
      
      private var §5!v§:SpinningWheel;
      
      private var §0!§:§-#`§;
      
      private var §+%§:Dictionary;
      
      private var §0!-§:DisplayObject;
      
      private var mWheelMc:MovieClip;
      
      private var §3J§:§,#w§;
      
      private var §`"?§:TextField;
      
      private var §54§:TextField;
      
      private var §-"5§:§]3§;
      
      private var §,"2§:§-#C§;
      
      private var §3"R§:§-#C§;
      
      public function §5!s§(param1:§-#`§, param2:§]3§)
      {
         super(§%"!§.INFO,§^#o§.TOP,§=>§.§%" §.Views.PopupView_NewDailyReward[0],ID);
         this.§0!§ = param1;
         this.§-"5§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§%$;§ = §,#w§(§1"6§.getItemByName("spinButton"));
         this.§3J§ = §,#w§(§1"6§.getItemByName("btnClose"));
         this.mWheelMc = §1"6§.mClip.spinningWheel;
         this.§0!-§ = §1"6§.mClip.getChildByName("loadingScreen");
         this.§ #'§(false);
         this.§`"?§ = TextField(§1"6§.mClip.getChildByName("header_text"));
         this.§54§ = TextField(§1"6§.mClip.getChildByName("body_text"));
         var _loc1_:Vector.<Object> = this.§?!p§();
         this.§5!v§ = new SpinningWheel(this.mWheelMc.wheel,this.mWheelMc.spike,§;_§,this.mWheelMc.width >> 1,_loc1_);
         this.updateState();
      }
      
      private function §?!p§() : Vector.<Object>
      {
         var _loc3_:§+!J§ = null;
         var _loc1_:Vector.<§+!J§> = this.§0!§.§&#Z§();
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         for each(_loc3_ in _loc1_)
         {
            if(_loc3_.§1!1§ == §6$0§.§3#j§)
            {
               _loc2_.push({
                  "n":_loc3_.§7#n§,
                  "q":_loc3_.quantity,
                  "isCoin":true
               });
            }
            else
            {
               _loc2_.push({
                  "n":_loc3_.§1!1§,
                  "q":_loc3_.quantity,
                  "isCoin":false
               });
            }
         }
         return _loc2_;
      }
      
      public function § #'§(param1:Boolean) : void
      {
         this.§0!-§.visible = param1;
      }
      
      public function updateState() : void
      {
         var _loc1_:uint = this.§-"5§.getState();
         switch(_loc1_)
         {
            case § #w§.§;$7§:
               this.§9$+§(true);
               this.§%$;§.setVisibility(false);
               this.§^!n§(§"#K§,§>"2§);
               this.§5!v§.§="<§(false);
               break;
            case § #w§.§-!z§:
               this.§%$;§.setVisibility(true);
               this.§9$+§(true);
               this.§^!n§(§7t§,"");
               this.§5!v§.addEventListener(§%#2§.§,#t§,this.§>$3§);
               this.§5!v§.§="<§(true);
         }
      }
      
      private function §>$3§(param1:§%#2§) : void
      {
         var dimmerSprite:Sprite = null;
         var itemName:String = null;
         var dsp:DisplayObjectContainer = null;
         var rotatorDsp:DisplayObject = null;
         var event:§%#2§ = param1;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 2,AngryBirdsBase.stageHeight * 2);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.mWheelMc.addChild(dimmerSprite);
         §!#&§.playSound("league_promotion_diamond",SpinningWheel.§2"U§);
         var maxScale:Number = 4;
         itemName = String(event.data);
         var cls:Class = §+$#§.§["`§(itemName);
         dsp = new cls();
         dsp.x = this.mWheelMc.center.x;
         dsp.y = this.mWheelMc.center.y;
         dsp.name = itemName;
         var reward:§+!J§ = this.§0!§.§!"4§(this.§0!§.§&c§());
         (dsp.getChildByName("count") as TextField).text = "x" + reward.quantity;
         dsp.scaleX = dsp.scaleY = 0;
         var GlowRotatorClass:Class = §+$#§.§["`§("RotatingShine");
         rotatorDsp = new GlowRotatorClass();
         rotatorDsp.scaleX = rotatorDsp.scaleY = 2;
         this.mWheelMc.addChild(rotatorDsp);
         this.mWheelMc.addChild(dsp);
         this.§,"2§ = null;
         var tween1:§`!s§ = §6"w§.§ "D§.§""3§(dsp,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":dsp.scaleX,
            "scaleY":dsp.scaleY
         },0.5,Back.easeOut,1.5);
         var tween2:§`!s§ = §6"w§.§ "D§.§""3§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§,"2§ = §6"w§.§ "D§.§=!b§(tween1,tween2);
         this.§,"2§.onComplete = function():void
         {
            dispatchEvent(new §%#2§(§%#2§.§3E§,itemName));
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
         this.§,"2§.play();
         if(reward.§1!1§ == §6$0§.§3#j§)
         {
            (AngryBirdsBase.singleton.dataModel as §`]§).§>p§.§<!E§(reward.quantity);
         }
      }
      
      private function §9$+§(param1:Boolean) : void
      {
         this.§3J§.setEnabled(param1);
         this.§3J§.mClip.alpha = !!param1 ? Number(1) : Number(0.5);
      }
      
      private function §^!n§(param1:String, param2:String) : void
      {
         this.§`"?§.text = param1;
         this.§54§.text = param2;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "SPIN_PRESSED":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§9$+§(false);
               this.§%$;§.setVisibility(false);
               this.§5!v§.§3!#§();
               dispatchEvent(new §%#2§(§%#2§.§]$,§,null));
               break;
            case "CLOSE":
               this.§5!v§.§ #t§();
               §?!=§.§3!q§().§]!-§(§?!=§.§3"M§);
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      private function §0"a§(param1:uint) : String
      {
         var _loc4_:§+!J§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§+!J§> = this.§0!§.§&#Z§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§1!1§ == §6$0§.§3#j§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§7#n§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §4U§(param1:String) : void
      {
         this.§5!v§.§4U§(param1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§5!v§.removeEventListener(§%#2§.§,#t§,this.§>$3§);
         this.§5!v§.dispose();
         this.§5!v§ = null;
         if(this.§,"2§)
         {
            this.§,"2§.stop();
            this.§,"2§ = null;
         }
         if(this.§3"R§)
         {
            this.§3"R§.stop();
            this.§3"R§ = null;
         }
         this.§%$;§ = null;
         this.§0!§ = null;
         this.§+%§ = null;
         this.mWheelMc = null;
      }
      
      public function §=4§() : void
      {
         this.§3"R§ = §6"w§.§ "D§.§""3§(this.mWheelMc,{
            "scaleX":0,
            "scaleY":0
         },null,0.5,§<"I§.easeIn);
         this.§3"R§.onComplete = function():void
         {
            §5!v§.§@0§(§?!p§());
            §3"R§ = §6"w§.§ "D§.§""3§(mWheelMc,{
               "scaleX":1,
               "scaleY":1
            },null,0.5,§<"I§.easeIn);
            §3"R§.play();
         };
         this.§3"R§.play();
      }
   }
}
