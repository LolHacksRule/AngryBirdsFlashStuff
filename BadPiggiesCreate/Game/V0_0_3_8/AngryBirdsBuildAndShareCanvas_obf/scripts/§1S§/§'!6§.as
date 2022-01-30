package §1S§
{
   import § !V§.§7!P§;
   import §!D§.§ use§;
   import §!D§.§%c§;
   import §!D§.§<!5§;
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §%!<§.§,6§;
   import §%!<§.§7V§;
   import §-D§.Popup;
   import §9e§.§"!e§;
   import §?!V§.§ T§;
   import com.rovio.assets.§%"4§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.text.AntiAliasType;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §'!6§ extends Popup
   {
      
      private static const §8W§:int = 3;
      
      private static const §-!n§:Number = 10;
       
      
      private var § h§:§;!5§;
      
      private var §?V§:Number = 1;
      
      public function §'!6§(param1:XML, param2:§ T§)
      {
         var _loc8_:§ use§ = null;
         var _loc9_:Array = null;
         var _loc17_:* = null;
         var _loc18_:§;!5§ = null;
         var _loc19_:§;!5§ = null;
         var _loc20_:§;!5§ = null;
         var _loc21_:int = 0;
         var _loc22_:§,6§ = null;
         var _loc23_:BitmapData = null;
         var _loc24_:Bitmap = null;
         var _loc25_:MovieClip = null;
         var _loc26_:Class = null;
         var _loc27_:MovieClip = null;
         var _loc28_:TextField = null;
         var _loc29_:§;!5§ = null;
         super(param1,param2);
         var _loc3_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).xp;
         var _loc4_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).§8"3§ - (AngryBirdsFP11.§8!v§ as §"!e§).§]!a§;
         var _loc5_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).coins;
         var _loc6_:Boolean = (AngryBirdsFP11.§8!v§ as §"!e§).§?W§;
         var _loc7_:Object = (AngryBirdsFP11.§8!v§ as §"!e§).newItems;
         _loc8_ = param2.getItemByName("ContainerRewards") as § use§;
         getItemByName("Button_Close").setVisibility(false);
         getItemByName("Button_Close").setVisibility(true);
         (getItemByName("MovieClip_Bolt") as §<!5§).setVisibility(false);
         (getItemByName("MovieClip_Block") as §<!5§).setVisibility(false);
         (getItemByName("MovieClip_Coin") as §<!5§).setVisibility(false);
         (getItemByName("TextField_Bolts") as §%c§).setVisibility(false);
         (getItemByName("TextField_Blocks") as §%c§).setVisibility(false);
         (getItemByName("TextField_Coins") as §%c§).setVisibility(false);
         (getItemByName("TextField_Progress_Level") as §%c§).setText((AngryBirdsFP11.§8!v§ as §"!e§).newXpLevel.toString());
         (getItemByName("TextField_Progress_Level") as §%c§).setVisibility(true);
         _loc9_ = new Array();
         if((AngryBirdsFP11.§8!v§ as §"!e§).bolts > 0)
         {
            (getItemByName("TextField_Bolts") as §%c§).setText("+" + (AngryBirdsFP11.§8!v§ as §"!e§).bolts);
            (getItemByName("TextField_Bolts") as §%c§).setVisibility(true);
            (getItemByName("MovieClip_Bolt") as §<!5§).setVisibility(true);
            _loc18_ = §"!5§.§9j§.§&>§(§"!5§.§9j§.§4!p§(getItemByName("MovieClip_Bolt").mClip,{
               "scaleX":this.§?V§,
               "scaleY":this.§?V§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"!5§.§1a§),§"!5§.§9j§.§4!p§(getItemByName("TextField_Bolts").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"!5§.§1a§));
            _loc9_.push(_loc18_);
         }
         if((AngryBirdsFP11.§8!v§ as §"!e§).coins > 0)
         {
            (getItemByName("TextField_Coins") as §%c§).setText("+" + (AngryBirdsFP11.§8!v§ as §"!e§).coins);
            (getItemByName("TextField_Coins") as §%c§).setVisibility(true);
            (getItemByName("MovieClip_Coin") as §<!5§).setVisibility(true);
            _loc19_ = §"!5§.§9j§.§&>§(§"!5§.§9j§.§4!p§(getItemByName("MovieClip_Coin").mClip,{
               "scaleX":this.§?V§,
               "scaleY":this.§?V§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"!5§.§1a§),§"!5§.§9j§.§4!p§(getItemByName("TextField_Coins").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"!5§.§1a§));
            _loc9_.push(_loc19_);
         }
         if(_loc4_ > 0)
         {
            (getItemByName("TextField_Blocks") as §%c§).setText("+" + _loc4_);
            (getItemByName("TextField_Blocks") as §%c§).setVisibility(true);
            (getItemByName("MovieClip_Block") as §<!5§).setVisibility(true);
            _loc20_ = §"!5§.§9j§.§&>§(§"!5§.§9j§.§4!p§(getItemByName("MovieClip_Block").mClip,{
               "scaleX":this.§?V§,
               "scaleY":this.§?V§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"!5§.§1a§),§"!5§.§9j§.§4!p§(getItemByName("TextField_Blocks").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§"!5§.§1a§));
            _loc9_.push(_loc20_);
         }
         var _loc10_:int = 0;
         var _loc11_:MovieClip = null;
         var _loc12_:Number = 0;
         var _loc13_:Number = 0;
         var _loc14_:Class;
         var _loc15_:Font = new (_loc14_ = §%"4§.§>!v§("BadPiggiesEmbed"))();
         var _loc16_:TextFormat;
         (_loc16_ = new TextFormat()).color = 16777215;
         _loc16_.size = 26;
         _loc16_.font = _loc15_.fontName;
         for(_loc17_ in _loc7_)
         {
            _loc21_ = _loc7_[_loc17_].valueOf();
            _loc22_ = §7V§.§"!E§(_loc17_);
            if(_loc10_ % §8W§ == 0 || _loc10_ == 0)
            {
               if(_loc11_)
               {
                  _loc12_ = _loc11_.y;
                  _loc13_ = _loc11_.x;
               }
               (_loc11_ = new MovieClip()).y = _loc12_;
               if(_loc10_ % §8W§ == 0)
               {
                  _loc11_.y = _loc12_ + 80;
                  _loc11_.x = _loc13_;
               }
               if(_loc10_ == 0)
               {
                  _loc11_.y = (_loc8_.y + _loc8_.height) / 2 - 100;
               }
               _loc8_.mClip.addChild(_loc11_);
            }
            if(_loc22_)
            {
               _loc23_ = §7!P§.§9j§.§+"#§(_loc22_.§6u§);
               _loc24_ = new Bitmap(_loc23_);
               (_loc25_ = new MovieClip()).x = _loc11_.width;
               _loc25_.y += 40;
               if(_loc24_.width > 80)
               {
                  _loc24_.scaleY = 80 / _loc24_.width;
                  _loc24_.scaleX = _loc24_.scaleY;
               }
               _loc24_.x = -_loc24_.width / 2;
               _loc24_.y = -_loc24_.height / 2;
               _loc25_.addChild(_loc24_);
               _loc11_.addChild(_loc25_);
               (_loc28_ = (_loc27_ = new (_loc26_ = §%"4§.§>!v§("TextField_Count"))()).text).antiAliasType = AntiAliasType.ADVANCED;
               _loc28_.autoSize = "left";
               _loc28_.text = "+" + _loc21_;
               if(_loc21_ == -1)
               {
                  _loc28_.text = "";
               }
               _loc28_.textColor = 16777215;
               _loc28_.setTextFormat(_loc16_);
               _loc28_.selectable = false;
               _loc28_.x = _loc24_.x + _loc24_.width / 2 + 24;
               _loc28_.y = _loc24_.y + _loc24_.height / 2 + 12;
               _loc25_.addChild(_loc28_);
               _loc29_ = §"!5§.§9j§.§4!p§(_loc25_,{
                  "scaleX":this.§?V§,
                  "scaleY":this.§?V§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§"!5§.§1a§);
               _loc9_.push(_loc29_);
               _loc11_.x = _loc8_.width / 2 - _loc11_.width / 2 - §-!n§ + _loc25_.width / 2;
               _loc11_.graphics.beginFill(0,0);
               _loc11_.graphics.drawRect(0,0,_loc11_.width,_loc11_.height);
               _loc11_.graphics.endFill();
            }
            _loc10_++;
         }
         if(_loc9_.length > 0)
         {
            this.§ h§ = §"!5§.§9j§.§["!§.apply(§"!5§.§9j§,_loc9_);
            this.§ h§.play();
         }
      }
   }
}
