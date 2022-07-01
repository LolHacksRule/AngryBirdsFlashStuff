package §7!%§
{
   import §#?§.§%!O§;
   import §#?§.§4">§;
   import §%B§.§^k§;
   import §-!@§.Popup;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §5!8§.§;!P§;
   import §>";§.§#§;
   import §@!-§.§3"1§;
   import §@">§.§%!u§;
   import com.rovio.assets.§!"'§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.text.AntiAliasType;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §4!p§ extends Popup
   {
      
      private static const §4g§:int = 3;
      
      private static const §4?§:Number = 10;
       
      
      private var §#""§:§+I§;
      
      private var §2"§:Number = 1;
      
      public function §4!p§(param1:XML, param2:§%!u§)
      {
         var _loc8_:§+!?§ = null;
         var _loc21_:* = null;
         var _loc22_:§+I§ = null;
         var _loc23_:§+I§ = null;
         var _loc24_:§+I§ = null;
         var _loc25_:int = 0;
         var _loc26_:§4">§ = null;
         var _loc27_:BitmapData = null;
         var _loc28_:Bitmap = null;
         var _loc29_:MovieClip = null;
         var _loc30_:Class = null;
         var _loc31_:MovieClip = null;
         var _loc32_:TextField = null;
         var _loc33_:Class = null;
         var _loc34_:MovieClip = null;
         var _loc35_:§+I§ = null;
         super(param1,param2);
         var _loc3_:Number = (AngryBirdsFP11.§`!j§ as §#§).xp;
         var _loc4_:Number = (AngryBirdsFP11.§`!j§ as §#§).§'b§;
         var _loc5_:Number = (AngryBirdsFP11.§`!j§ as §#§).newBolts;
         var _loc6_:Boolean = (AngryBirdsFP11.§`!j§ as §#§).§^!B§;
         var _loc7_:Object = (AngryBirdsFP11.§`!j§ as §#§).newItems;
         _loc8_ = param2.getItemByName("ContainerRewards") as §+!?§;
         var _loc9_:§;!P§ = getItemByName("MovieClip_Block") as §;!P§;
         var _loc10_:§;!P§ = getItemByName("MovieClip_Bolt") as §;!P§;
         var _loc11_:§;!P§ = getItemByName("MovieClip_Coin") as §;!P§;
         getItemByName("Button_Close").setVisibility(true);
         _loc11_.setVisibility(false);
         _loc9_.setVisibility(false);
         _loc10_.setVisibility(false);
         (getItemByName("TextField_Bolts") as §6m§).setVisibility(false);
         (getItemByName("TextField_Blocks") as §6m§).setVisibility(false);
         (getItemByName("TextField_Coins") as §6m§).setVisibility(false);
         var _loc12_:int = (AngryBirdsFP11.§`!j§ as §#§).oldXpLevel;
         if((AngryBirdsFP11.§`!j§ as §#§).§^!B§)
         {
            _loc12_ = (AngryBirdsFP11.§`!j§ as §#§).newXpLevel;
         }
         (getItemByName("TextField_Progress_Level") as §6m§).setText(_loc12_.toString());
         (getItemByName("TextField_Progress_Level") as §6m§).setVisibility(true);
         var _loc13_:Array = new Array();
         if(_loc5_ > 0)
         {
            (getItemByName("TextField_Bolts") as §6m§).setText("+" + _loc5_);
            (getItemByName("TextField_Bolts") as §6m§).setVisibility(true);
            _loc10_.setVisibility(true);
            _loc22_ = §-!M§.§ "!§.§["!§(§-!M§.§ "!§.§+d§(_loc10_.mClip,{
               "scaleX":this.§2"§,
               "scaleY":this.§2"§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§-!M§.§ §),§-!M§.§ "!§.§+d§(getItemByName("TextField_Bolts").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§-!M§.§ §));
            _loc13_.push(_loc22_);
         }
         if((AngryBirdsFP11.§`!j§ as §#§).coins > 0)
         {
            (getItemByName("TextField_Coins") as §6m§).setText("+" + (AngryBirdsFP11.§`!j§ as §#§).coins);
            (getItemByName("TextField_Coins") as §6m§).setVisibility(true);
            _loc11_.setVisibility(true);
            _loc23_ = §-!M§.§ "!§.§["!§(§-!M§.§ "!§.§+d§(_loc11_.mClip,{
               "scaleX":this.§2"§,
               "scaleY":this.§2"§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§-!M§.§ §),§-!M§.§ "!§.§+d§(getItemByName("TextField_Coins").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§-!M§.§ §));
            _loc13_.push(_loc23_);
         }
         if(_loc4_ > 0)
         {
            (getItemByName("TextField_Blocks") as §6m§).setText("+" + _loc4_);
            (getItemByName("TextField_Blocks") as §6m§).setVisibility(true);
            _loc9_.setVisibility(true);
            _loc24_ = §-!M§.§ "!§.§["!§(§-!M§.§ "!§.§+d§(_loc9_.mClip,{
               "scaleX":this.§2"§,
               "scaleY":this.§2"§
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§-!M§.§ §),§-!M§.§ "!§.§+d§(getItemByName("TextField_Blocks").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.4,§-!M§.§ §));
            _loc13_.push(_loc24_);
         }
         var _loc14_:int = 0;
         var _loc15_:MovieClip = null;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Class;
         var _loc19_:Font = new (_loc18_ = §!"'§.§%!Q§("BadPiggiesEmbed"))();
         var _loc20_:TextFormat;
         (_loc20_ = new TextFormat()).color = 16777215;
         _loc20_.size = 26;
         _loc20_.font = _loc19_.fontName;
         for(_loc21_ in _loc7_)
         {
            _loc25_ = _loc7_[_loc21_].valueOf();
            _loc26_ = §%!O§.§2<§(_loc21_);
            if(_loc14_ % §4g§ == 0 || _loc14_ == 0)
            {
               if(_loc15_)
               {
                  _loc16_ = _loc15_.y;
                  _loc17_ = _loc15_.x;
               }
               (_loc15_ = new MovieClip()).y = _loc16_;
               if(_loc14_ % §4g§ == 0)
               {
                  _loc15_.y = _loc16_ + 80;
                  _loc15_.x = _loc17_;
               }
               if(_loc14_ == 0)
               {
                  _loc15_.y = (_loc8_.y + _loc8_.height) / 2 - 40;
               }
               _loc8_.mClip.addChild(_loc15_);
            }
            if(_loc26_)
            {
               _loc27_ = §3"1§.§ "!§.§!5§(_loc26_.§%!t§);
               _loc28_ = new Bitmap(_loc27_);
               (_loc29_ = new MovieClip()).x = _loc15_.width;
               _loc29_.y += 48;
               if(_loc28_.width >= 80)
               {
                  _loc28_.scaleY = 80 / _loc28_.width;
                  _loc28_.scaleX = _loc28_.scaleY;
               }
               if(_loc28_.height >= 60)
               {
                  _loc28_.scaleY = 60 / _loc28_.height;
                  _loc28_.scaleX = _loc28_.scaleY;
               }
               _loc28_.x = -_loc28_.width / 2;
               _loc28_.y = -_loc28_.height / 2;
               _loc29_.addChild(_loc28_);
               _loc15_.addChild(_loc29_);
               (_loc32_ = (_loc31_ = new (_loc30_ = §!"'§.§%!Q§("TextField_Count"))()).text).antiAliasType = AntiAliasType.ADVANCED;
               _loc32_.autoSize = "left";
               _loc32_.text = "+" + _loc25_;
               _loc34_ = new (_loc33_ = §!"'§.§%!Q§("Unlocked_Icon"))();
               if(_loc25_ == -1)
               {
                  _loc32_.text = "";
                  _loc34_.x = _loc28_.x + _loc28_.width / 2 + 24;
                  _loc34_.y = _loc28_.y + _loc28_.height / 2 + 12;
                  _loc29_.addChild(_loc34_);
               }
               _loc32_.textColor = 16777215;
               _loc32_.setTextFormat(_loc20_);
               _loc32_.selectable = false;
               _loc32_.x = _loc28_.x + _loc28_.width / 2 + 24;
               _loc32_.y = _loc28_.y + _loc28_.height / 2 + 12;
               _loc29_.addChild(_loc32_);
               _loc35_ = §-!M§.§ "!§.§+d§(_loc29_,{
                  "scaleX":this.§2"§,
                  "scaleY":this.§2"§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§-!M§.§ §);
               _loc13_.push(_loc35_);
               _loc15_.x = _loc8_.width / 2 - _loc15_.width / 2 - §4?§ + _loc29_.width / 2;
               _loc15_.graphics.beginFill(0,0);
               _loc15_.graphics.drawRect(0,0,_loc15_.width,_loc15_.height);
               _loc15_.graphics.endFill();
            }
            _loc14_++;
         }
         if(_loc13_.length > 0)
         {
            this.§#""§ = §-!M§.§ "!§.§=!1§.apply(§-!M§.§ "!§,_loc13_);
            this.§#""§.play();
         }
         §^k§.playSound("Sound_Editor_Unlock");
      }
      
      private function §4!_§() : void
      {
         §^k§.playSound("Sound_Star_Pig");
         §^k§.playSound("Sound_Star_Pig");
      }
   }
}
