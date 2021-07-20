package §@$=§
{
   import §!#C§.§4!Q§;
   import §!#C§.§null§;
   import §#,§.§ !>§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&$3§.§"!&§;
   import §&$3§.§0#m§;
   import §&$3§.§7$C§;
   import §,!Q§.§6"n§;
   import §-#o§.§-!w§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §8"g§.§^#$§;
   import §8#K§.§3Z§;
   import §>z§.§#"l§;
   import §`T§.§%";§;
   import §`T§.§^#i§;
   import com.rovio.assets.§6$A§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.effects.easing.Back;
   
   public class §'"m§ extends AbstractPopup
   {
      
      public static const §"#l§:String = "Spin The Wheel!";
      
      public static const §+,§:String = "Remove An Item!";
      
      public static const §#!5§:String = "Come Back Tomorrow!";
      
      public static const §6",§:String = "Improve the next spin by removing your least favorite item.";
      
      public static const §&#o§:String = "Come back tomorrow for another spin.";
      
      public static const ID:String = "DailyRewardPopup";
      
      private static const §5§:String = "Separater";
      
      private static const §8!b§:String = "CoinsSmall";
      
      private static const §-"D§:String = "CoinsMedium";
      
      private static const §4c§:String = "CoinsLarge";
      
      private static const § $ §:Array = [§8!b§,§-"D§,§4c§];
       
      
      private var §6#U§:§ !>§;
      
      private var §?#E§:SpinningWheel;
      
      private var §8m§:§%";§;
      
      private var §@B§:Dictionary;
      
      private var § "X§:DisplayObject;
      
      private var mWheelMc:MovieClip;
      
      private var §>$§:§ !>§;
      
      private var §>$$§:TextField;
      
      private var §-"n§:TextField;
      
      private var §-!U§:§8"f§;
      
      private var §+"c§:§7$C§;
      
      private var §]"M§:§7$C§;
      
      public function §'"m§(param1:§%";§, param2:§8"f§)
      {
         super(§#"l§.INFO,§]"Y§.TOP,§?l§.§3m§.Views.PopupView_NewDailyReward[0],ID);
         this.§8m§ = param1;
         this.§-!U§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§6#U§ = § !>§(§&!M§.getItemByName("spinButton"));
         this.§>$§ = § !>§(§&!M§.getItemByName("btnClose"));
         this.mWheelMc = §&!M§.mClip.spinningWheel;
         this.§ "X§ = §&!M§.mClip.getChildByName("loadingScreen");
         this.§7]§(false);
         this.§>$$§ = TextField(§&!M§.mClip.getChildByName("header_text"));
         this.§-"n§ = TextField(§&!M§.mClip.getChildByName("body_text"));
         var _loc1_:Vector.<Object> = this.§&$-§();
         this.§?#E§ = new SpinningWheel(this.mWheelMc.wheel,this.mWheelMc.spike,§5§,this.mWheelMc.width >> 1,_loc1_);
         this.updateState();
      }
      
      private function §&$-§() : Vector.<Object>
      {
         var _loc3_:§^#i§ = null;
         var _loc1_:Vector.<§^#i§> = this.§8m§.§?$A§();
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         for each(_loc3_ in _loc1_)
         {
            if(_loc3_.§4!g§ == §null§.§%l§)
            {
               _loc2_.push({
                  "n":_loc3_.§@4§,
                  "q":_loc3_.quantity,
                  "isCoin":true
               });
            }
            else
            {
               _loc2_.push({
                  "n":_loc3_.§4!g§,
                  "q":_loc3_.quantity,
                  "isCoin":false
               });
            }
         }
         return _loc2_;
      }
      
      public function §7]§(param1:Boolean) : void
      {
         this.§ "X§.visible = param1;
      }
      
      public function updateState() : void
      {
         var _loc1_:uint = this.§-!U§.getState();
         switch(_loc1_)
         {
            case §[#d§.§!#3§:
               this.§+#t§(true);
               this.§6#U§.setVisibility(false);
               this.§="p§(§#!5§,§&#o§);
               this.§?#E§.§!N§(false);
               break;
            case §[#d§.§8h§:
               this.§6#U§.setVisibility(true);
               this.§+#t§(true);
               this.§="p§(§"#l§,"");
               this.§?#E§.addEventListener(§^#$§.§<#=§,this.§3k§);
               this.§?#E§.§!N§(true);
         }
      }
      
      private function §3k§(param1:§^#$§) : void
      {
         var dimmerSprite:Sprite = null;
         var itemName:String = null;
         var dsp:DisplayObjectContainer = null;
         var rotatorDsp:DisplayObject = null;
         var event:§^#$§ = param1;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 2,AngryBirdsBase.stageHeight * 2);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.mWheelMc.addChild(dimmerSprite);
         §3Z§.playSound("league_promotion_diamond",SpinningWheel.§3!X§);
         var maxScale:Number = 4;
         itemName = String(event.data);
         var cls:Class = §6$A§.§1!m§(itemName);
         dsp = new cls();
         dsp.x = this.mWheelMc.center.x;
         dsp.y = this.mWheelMc.center.y;
         dsp.name = itemName;
         var reward:§^#i§ = this.§8m§.§2f§(this.§8m§.§"!s§());
         (dsp.getChildByName("count") as TextField).text = "x" + reward.quantity;
         dsp.scaleX = dsp.scaleY = 0;
         var GlowRotatorClass:Class = §6$A§.§1!m§("RotatingShine");
         rotatorDsp = new GlowRotatorClass();
         rotatorDsp.scaleX = rotatorDsp.scaleY = 2;
         this.mWheelMc.addChild(rotatorDsp);
         this.mWheelMc.addChild(dsp);
         this.§+"c§ = null;
         var tween1:§0#m§ = §"!&§.§`"H§.§1"W§(dsp,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":dsp.scaleX,
            "scaleY":dsp.scaleY
         },0.5,Back.easeOut,1.5);
         var tween2:§0#m§ = §"!&§.§`"H§.§1"W§(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§+"c§ = §"!&§.§`"H§.§?"§(tween1,tween2);
         this.§+"c§.onComplete = function():void
         {
            dispatchEvent(new §^#$§(§^#$§.§]!Q§,itemName));
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
         this.§+"c§.play();
         if(reward.§4!g§ == §null§.§%l§)
         {
            (AngryBirdsBase.singleton.dataModel as §4!Q§).§1W§.§%B§(reward.quantity);
         }
      }
      
      private function §+#t§(param1:Boolean) : void
      {
         this.§>$§.setEnabled(param1);
         this.§>$§.mClip.alpha = !!param1 ? Number(1) : Number(0.5);
      }
      
      private function §="p§(param1:String, param2:String) : void
      {
         this.§>$$§.text = param1;
         this.§-"n§.text = param2;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "SPIN_PRESSED":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§+#t§(false);
               this.§6#U§.setVisibility(false);
               this.§?#E§.§="D§();
               dispatchEvent(new §^#$§(§^#$§.§>#a§,null));
               break;
            case "CLOSE":
               this.§?#E§.§,!"§();
               §!!K§.§%#S§().§3!j§(§!!K§.§0"_§);
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      private function §9h§(param1:uint) : String
      {
         var _loc4_:§^#i§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§^#i§> = this.§8m§.§?$A§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§4!g§ == §null§.§%l§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§@4§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §7#l§(param1:String) : void
      {
         this.§?#E§.§7#l§(param1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§?#E§.removeEventListener(§^#$§.§<#=§,this.§3k§);
         this.§?#E§.dispose();
         this.§?#E§ = null;
         if(this.§+"c§)
         {
            this.§+"c§.stop();
            this.§+"c§ = null;
         }
         if(this.§]"M§)
         {
            this.§]"M§.stop();
            this.§]"M§ = null;
         }
         this.§6#U§ = null;
         this.§8m§ = null;
         this.§@B§ = null;
         this.mWheelMc = null;
      }
      
      public function §0"p§() : void
      {
         this.§]"M§ = §"!&§.§`"H§.§1"W§(this.mWheelMc,{
            "scaleX":0,
            "scaleY":0
         },null,0.5,§-!w§.easeIn);
         this.§]"M§.onComplete = function():void
         {
            §?#E§.§^$=§(§&$-§());
            §]"M§ = §"!&§.§`"H§.§1"W§(mWheelMc,{
               "scaleX":1,
               "scaleY":1
            },null,0.5,§-!w§.easeIn);
            §]"M§.play();
         };
         this.§]"M§.play();
      }
   }
}
