package §-"'§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §7!@§.§+`§;
   import §;"7§.§="<§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§@u§;
   import §?!'§.Popup;
   import §]";§.§!<§;
   import §]";§.§4!p§;
   import com.rovio.assets.§69§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.text.AntiAliasType;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §<q§ extends Popup
   {
      
      private static const §1%§:int = 3;
      
      private static const §@;§:Number = 10;
       
      
      private var §4'§:§=!r§;
      
      private var §=9§:Number = 1;
      
      public function §<q§(param1:XML, param2:§>!V§)
      {
         var _loc9_:§6W§ = null;
         var _loc22_:* = null;
         var _loc23_:§=!r§ = null;
         var _loc24_:§=!r§ = null;
         var _loc25_:§=!r§ = null;
         var _loc26_:int = 0;
         var _loc27_:§4!p§ = null;
         var _loc28_:BitmapData = null;
         var _loc29_:Bitmap = null;
         var _loc30_:MovieClip = null;
         var _loc31_:Class = null;
         var _loc32_:MovieClip = null;
         var _loc33_:TextField = null;
         var _loc34_:Class = null;
         var _loc35_:MovieClip = null;
         var _loc36_:§=!r§ = null;
         super(param1,param2);
         var _loc3_:Number = (AngryBirdsFP11.§>!7§ as §+`§).xp;
         var _loc4_:Number = (AngryBirdsFP11.§>!7§ as §+`§).§#!r§ - (AngryBirdsFP11.§>!7§ as §+`§).§<R§;
         var _loc5_:Number = (AngryBirdsFP11.§>!7§ as §+`§).newBolts;
         var _loc6_:Number = (AngryBirdsFP11.§>!7§ as §+`§).newCoins - (AngryBirdsFP11.§>!7§ as §+`§).oldCoins;
         var _loc7_:Boolean = (AngryBirdsFP11.§>!7§ as §+`§).§&3§;
         var _loc8_:Object = (AngryBirdsFP11.§>!7§ as §+`§).newItems;
         _loc9_ = param2.getItemByName("ContainerRewards") as §6W§;
         var _loc10_:§@u§ = getItemByName("MovieClip_Block") as §@u§;
         var _loc11_:§@u§ = getItemByName("MovieClip_Bolt") as §@u§;
         var _loc12_:§@u§ = getItemByName("MovieClip_Coin") as §@u§;
         getItemByName("Button_Close").setVisibility(true);
         _loc12_.setVisibility(false);
         _loc10_.setVisibility(false);
         _loc11_.setVisibility(false);
         (getItemByName("TextField_Bolts") as §!!]§).setVisibility(false);
         (getItemByName("TextField_Blocks") as §!!]§).setVisibility(false);
         (getItemByName("TextField_Coins") as §!!]§).setVisibility(false);
         var _loc13_:int = (AngryBirdsFP11.§>!7§ as §+`§).oldXpLevel;
         if((AngryBirdsFP11.§>!7§ as §+`§).§&3§)
         {
            _loc13_ = (AngryBirdsFP11.§>!7§ as §+`§).newXpLevel;
         }
         (getItemByName("TextField_Progress_Level") as §!!]§).setText(_loc13_.toString());
         (getItemByName("TextField_Progress_Level") as §!!]§).setVisibility(true);
         var _loc14_:Array = new Array();
         if(_loc5_ > 0)
         {
            (getItemByName("TextField_Bolts") as §!!]§).setText("+" + _loc5_);
            (getItemByName("TextField_Bolts") as §!!]§).setVisibility(true);
            _loc11_.setVisibility(true);
            _loc23_ = §7I§.§[E§.§]g§(§7I§.§[E§.§ ";§(_loc11_.mClip,{
               "scaleX":this.§=9§,
               "scaleY":this.§=9§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§7I§.§;!C§),§7I§.§[E§.§ ";§(getItemByName("TextField_Bolts").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§7I§.§;!C§));
            _loc14_.push(_loc23_);
         }
         if(_loc6_ > 0)
         {
            (getItemByName("TextField_Coins") as §!!]§).setText("+" + _loc6_);
            (getItemByName("TextField_Coins") as §!!]§).setVisibility(true);
            _loc12_.setVisibility(true);
            _loc24_ = §7I§.§[E§.§]g§(§7I§.§[E§.§ ";§(_loc12_.mClip,{
               "scaleX":this.§=9§,
               "scaleY":this.§=9§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§7I§.§;!C§),§7I§.§[E§.§ ";§(getItemByName("TextField_Coins").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§7I§.§;!C§));
            _loc14_.push(_loc24_);
         }
         if(_loc4_ > 0)
         {
            (getItemByName("TextField_Blocks") as §!!]§).setText("+" + _loc4_);
            (getItemByName("TextField_Blocks") as §!!]§).setVisibility(true);
            _loc10_.setVisibility(true);
            _loc25_ = §7I§.§[E§.§]g§(§7I§.§[E§.§ ";§(_loc10_.mClip,{
               "scaleX":this.§=9§,
               "scaleY":this.§=9§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§7I§.§;!C§),§7I§.§[E§.§ ";§(getItemByName("TextField_Blocks").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§7I§.§;!C§));
            _loc14_.push(_loc25_);
         }
         var _loc15_:int = 0;
         var _loc16_:MovieClip = null;
         var _loc17_:Number = 0;
         var _loc18_:Number = 0;
         var _loc19_:Class;
         var _loc20_:Font = new (_loc19_ = §69§.§ 0§("BadPiggiesEmbed"))();
         var _loc21_:TextFormat;
         (_loc21_ = new TextFormat()).color = 16777215;
         _loc21_.size = 26;
         _loc21_.font = _loc20_.fontName;
         for(_loc22_ in _loc8_)
         {
            _loc26_ = _loc8_[_loc22_].valueOf();
            _loc27_ = §!<§.§[!@§(_loc22_);
            if(_loc15_ % §1%§ == 0 || _loc15_ == 0)
            {
               if(_loc16_)
               {
                  _loc17_ = _loc16_.y;
                  _loc18_ = _loc16_.x;
               }
               (_loc16_ = new MovieClip()).y = _loc17_;
               if(_loc15_ % §1%§ == 0)
               {
                  _loc16_.y = _loc17_ + 80;
                  _loc16_.x = _loc18_;
               }
               if(_loc15_ == 0)
               {
                  _loc16_.y = (_loc9_.y + _loc9_.height) / 2 - 40;
               }
               _loc9_.mClip.addChild(_loc16_);
            }
            if(_loc27_)
            {
               _loc28_ = §="<§.§[E§.§`d§(_loc27_.§+!A§);
               _loc29_ = new Bitmap(_loc28_);
               (_loc30_ = new MovieClip()).x = _loc16_.width;
               _loc30_.y += 48;
               if(_loc29_.width >= 80)
               {
                  _loc29_.scaleY = 80 / _loc29_.width;
                  _loc29_.scaleX = _loc29_.scaleY;
               }
               if(_loc29_.height >= 60)
               {
                  _loc29_.scaleY = 60 / _loc29_.height;
                  _loc29_.scaleX = _loc29_.scaleY;
               }
               _loc29_.x = -_loc29_.width / 2;
               _loc29_.y = -_loc29_.height / 2;
               _loc30_.addChild(_loc29_);
               _loc16_.addChild(_loc30_);
               (_loc33_ = (_loc32_ = new (_loc31_ = §69§.§ 0§("TextField_Count"))()).text).antiAliasType = AntiAliasType.ADVANCED;
               _loc33_.autoSize = "left";
               _loc33_.text = "+" + _loc26_;
               _loc35_ = new (_loc34_ = §69§.§ 0§("Unlocked_Icon"))();
               if(_loc26_ == -1)
               {
                  _loc33_.text = "";
                  _loc35_.x = _loc29_.x + _loc29_.width / 2 + 24;
                  _loc35_.y = _loc29_.y + _loc29_.height / 2 + 12;
                  _loc30_.addChild(_loc35_);
               }
               _loc33_.textColor = 16777215;
               _loc33_.setTextFormat(_loc21_);
               _loc33_.selectable = false;
               _loc33_.x = _loc29_.x + _loc29_.width / 2 + 24;
               _loc33_.y = _loc29_.y + _loc29_.height / 2 + 12;
               _loc30_.addChild(_loc33_);
               _loc36_ = §7I§.§[E§.§ ";§(_loc30_,{
                  "scaleX":this.§=9§,
                  "scaleY":this.§=9§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§7I§.§;!C§);
               _loc14_.push(_loc36_);
               _loc16_.x = _loc9_.width / 2 - _loc16_.width / 2 - §@;§ + _loc30_.width / 2;
               _loc16_.graphics.beginFill(0,0);
               _loc16_.graphics.drawRect(0,0,_loc16_.width,_loc16_.height);
               _loc16_.graphics.endFill();
            }
            _loc15_++;
         }
         if(_loc14_.length > 0)
         {
            this.§4'§ = §7I§.§[E§.§5!@§.apply(§7I§.§[E§,_loc14_);
            this.§4'§.play();
         }
         §0"#§.§9"2§("Sound_Editor_Unlock");
      }
      
      private function §1!a§() : void
      {
         §0"#§.§9"2§("Sound_Star_Pig");
      }
   }
}
