package §&!P§
{
   import § !%§.§^2§;
   import §3>§.§=!f§;
   import §3>§.§["!§;
   import §;!<§.§7!f§;
   import §<!I§.§&5§;
   import §<!I§.§7!N§;
   import §<!I§.§>"-§;
   import §<Z§.§7!!§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import §]J§.Popup;
   import com.rovio.assets.§8!q§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.text.AntiAliasType;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class § !A§ extends Popup
   {
      
      private static const §@5§:int = 3;
      
      private static const §1>§:Number = 10;
       
      
      private var §^!i§:§^!#§;
      
      private var §`"§:Number = 1;
      
      public function § !A§(param1:XML, param2:§7!!§)
      {
         var _loc8_:§>"-§ = null;
         var _loc12_:Array = null;
         var _loc20_:* = null;
         var _loc21_:§^!#§ = null;
         var _loc22_:§^!#§ = null;
         var _loc23_:§^!#§ = null;
         var _loc24_:int = 0;
         var _loc25_:§=!f§ = null;
         var _loc26_:BitmapData = null;
         var _loc27_:Bitmap = null;
         var _loc28_:MovieClip = null;
         var _loc29_:Class = null;
         var _loc30_:MovieClip = null;
         var _loc31_:TextField = null;
         var _loc32_:§^!#§ = null;
         super(param1,param2);
         var _loc3_:Number = (AngryBirdsFP11.§5!c§ as §^2§).xp;
         var _loc4_:Number = (AngryBirdsFP11.§5!c§ as §^2§).§[4§ - (AngryBirdsFP11.§5!c§ as §^2§).§&N§;
         var _loc5_:Number = (AngryBirdsFP11.§5!c§ as §^2§).coins;
         var _loc6_:Boolean = (AngryBirdsFP11.§5!c§ as §^2§).§6§;
         var _loc7_:Object = (AngryBirdsFP11.§5!c§ as §^2§).newItems;
         _loc8_ = param2.getItemByName("ContainerRewards") as §>"-§;
         var _loc9_:§&5§ = getItemByName("MovieClip_Block") as §&5§;
         var _loc10_:§&5§ = getItemByName("MovieClip_Bolt") as §&5§;
         var _loc11_:§&5§ = getItemByName("MovieClip_Coin") as §&5§;
         getItemByName("Button_Close").setVisibility(true);
         _loc11_.setVisibility(false);
         _loc9_.setVisibility(false);
         _loc10_.setVisibility(false);
         (getItemByName("TextField_Bolts") as §7!N§).setVisibility(false);
         (getItemByName("TextField_Blocks") as §7!N§).setVisibility(false);
         (getItemByName("TextField_Coins") as §7!N§).setVisibility(false);
         (getItemByName("TextField_Progress_Level") as §7!N§).setText((AngryBirdsFP11.§5!c§ as §^2§).newXpLevel.toString());
         (getItemByName("TextField_Progress_Level") as §7!N§).setVisibility(true);
         _loc12_ = new Array();
         if((AngryBirdsFP11.§5!c§ as §^2§).bolts > 0)
         {
            (getItemByName("TextField_Bolts") as §7!N§).setText("+" + (AngryBirdsFP11.§5!c§ as §^2§).bolts);
            (getItemByName("TextField_Bolts") as §7!N§).setVisibility(true);
            _loc10_.setVisibility(true);
            _loc21_ = §"g§.§'!o§.§3!p§(§"g§.§'!o§.§while§(_loc10_.mClip,{
               "scaleX":this.§`"§,
               "scaleY":this.§`"§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"g§.§'!9§),§"g§.§'!o§.§while§(getItemByName("TextField_Bolts").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"g§.§'!9§));
            _loc12_.push(_loc21_);
         }
         if((AngryBirdsFP11.§5!c§ as §^2§).coins > 0)
         {
            (getItemByName("TextField_Coins") as §7!N§).setText("+" + (AngryBirdsFP11.§5!c§ as §^2§).coins);
            (getItemByName("TextField_Coins") as §7!N§).setVisibility(true);
            _loc11_.setVisibility(true);
            _loc22_ = §"g§.§'!o§.§3!p§(§"g§.§'!o§.§while§(_loc11_.mClip,{
               "scaleX":this.§`"§,
               "scaleY":this.§`"§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"g§.§'!9§),§"g§.§'!o§.§while§(getItemByName("TextField_Coins").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"g§.§'!9§));
            _loc12_.push(_loc22_);
         }
         if(_loc4_ > 0)
         {
            (getItemByName("TextField_Blocks") as §7!N§).setText("+" + _loc4_);
            (getItemByName("TextField_Blocks") as §7!N§).setVisibility(true);
            _loc9_.setVisibility(true);
            _loc23_ = §"g§.§'!o§.§3!p§(§"g§.§'!o§.§while§(_loc9_.mClip,{
               "scaleX":this.§`"§,
               "scaleY":this.§`"§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"g§.§'!9§),§"g§.§'!o§.§while§(getItemByName("TextField_Blocks").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"g§.§'!9§));
            _loc12_.push(_loc23_);
         }
         var _loc13_:int = 0;
         var _loc14_:MovieClip = null;
         var _loc15_:Number = 0;
         var _loc16_:Number = 0;
         var _loc17_:Class;
         var _loc18_:Font = new (_loc17_ = §8!q§.§2^§("BadPiggiesEmbed"))();
         var _loc19_:TextFormat;
         (_loc19_ = new TextFormat()).color = 16777215;
         _loc19_.size = 26;
         _loc19_.font = _loc18_.fontName;
         for(_loc20_ in _loc7_)
         {
            _loc24_ = _loc7_[_loc20_].valueOf();
            _loc25_ = §["!§.§+!s§(_loc20_);
            if(_loc13_ % §@5§ == 0 || _loc13_ == 0)
            {
               if(_loc14_)
               {
                  _loc15_ = _loc14_.y;
                  _loc16_ = _loc14_.x;
               }
               (_loc14_ = new MovieClip()).y = _loc15_;
               if(_loc13_ % §@5§ == 0)
               {
                  _loc14_.y = _loc15_ + 80;
                  _loc14_.x = _loc16_;
               }
               if(_loc13_ == 0)
               {
                  _loc14_.y = (_loc8_.y + _loc8_.height) / 2 - 40;
               }
               _loc8_.mClip.addChild(_loc14_);
            }
            if(_loc25_)
            {
               _loc26_ = §7!f§.§'!o§.§3!y§(_loc25_.§@!'§);
               _loc27_ = new Bitmap(_loc26_);
               (_loc28_ = new MovieClip()).x = _loc14_.width;
               _loc28_.y += 40;
               if(_loc27_.width > 80)
               {
                  _loc27_.scaleY = 80 / _loc27_.width;
                  _loc27_.scaleX = _loc27_.scaleY;
               }
               _loc27_.x = -_loc27_.width / 2;
               _loc27_.y = -_loc27_.height / 2;
               _loc28_.addChild(_loc27_);
               _loc14_.addChild(_loc28_);
               (_loc31_ = (_loc30_ = new (_loc29_ = §8!q§.§2^§("TextField_Count"))()).text).antiAliasType = AntiAliasType.ADVANCED;
               _loc31_.autoSize = "left";
               _loc31_.text = "+" + _loc24_;
               if(_loc24_ == -1)
               {
                  _loc31_.text = "";
               }
               _loc31_.textColor = 16777215;
               _loc31_.setTextFormat(_loc19_);
               _loc31_.selectable = false;
               _loc31_.x = _loc27_.x + _loc27_.width / 2 + 24;
               _loc31_.y = _loc27_.y + _loc27_.height / 2 + 12;
               _loc28_.addChild(_loc31_);
               _loc32_ = §"g§.§'!o§.§while§(_loc28_,{
                  "scaleX":this.§`"§,
                  "scaleY":this.§`"§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§"g§.§'!9§);
               _loc12_.push(_loc32_);
               _loc14_.x = _loc8_.width / 2 - _loc14_.width / 2 - §1>§ + _loc28_.width / 2;
               _loc14_.graphics.beginFill(0,0);
               _loc14_.graphics.drawRect(0,0,_loc14_.width,_loc14_.height);
               _loc14_.graphics.endFill();
            }
            _loc13_++;
         }
         if(_loc12_.length > 0)
         {
            this.§^!i§ = §"g§.§'!o§.§%l§.apply(§"g§.§'!o§,_loc12_);
            this.§^!i§.play();
         }
      }
   }
}
