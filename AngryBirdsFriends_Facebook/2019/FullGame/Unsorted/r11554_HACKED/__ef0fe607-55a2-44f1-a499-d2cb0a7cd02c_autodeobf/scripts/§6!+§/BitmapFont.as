package §6!+§
{
   import §!6§.§9$'§;
   import §!6§.Image;
   import §!6§.Sprite;
   import §""'§.Texture;
   import §#"l§.§6!j§;
   import §#"l§.§^#r§;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class BitmapFont
   {
      
      public static const §#!&§:int = -1;
      
      public static const §@!Y§:String = "mini";
      
      private static const §-!;§:int = 32;
      
      private static const §!!5§:int = 9;
      
      private static const §'!G§:int = 10;
      
      private static const §[#,§:int = 13;
       
      
      private var §;Z§:Texture;
      
      private var §1"Y§:Dictionary;
      
      private var §-!O§:String;
      
      private var §0"T§:Number;
      
      private var §'"M§:Number;
      
      private var §[!v§:Number;
      
      private var § %§:Image;
      
      private var §?!H§:Vector.<CharLocation>;
      
      public function BitmapFont(param1:Texture = null, param2:XML = null)
      {
         super();
         if(param1 == null && param2 == null)
         {
            param1 = §7D§.texture;
            param2 = §7D§.xml;
         }
         this.§-!O§ = "unknown";
         this.§'"M§ = this.§0"T§ = this.§[!v§ = 14;
         this.§;Z§ = param1;
         this.§1"Y§ = new Dictionary();
         this.§ %§ = new Image(param1);
         this.§?!H§ = new Vector.<CharLocation>(0);
         if(param2)
         {
            this.§"!A§(param2);
         }
      }
      
      public function dispose() : void
      {
         if(this.§;Z§)
         {
            this.§;Z§.dispose();
         }
      }
      
      private function §"!A§(param1:XML) : void
      {
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Rectangle = null;
         var _loc11_:Texture = null;
         var _loc12_:§9!Y§ = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:Number = NaN;
         var _loc2_:Number = this.§;Z§.scale;
         var _loc3_:Rectangle = this.§;Z§.frame;
         this.§-!O§ = param1.info.attribute("face");
         this.§0"T§ = parseFloat(param1.info.attribute("size")) / _loc2_;
         this.§'"M§ = parseFloat(param1.common.attribute("lineHeight")) / _loc2_;
         this.§[!v§ = parseFloat(param1.common.attribute("base")) / _loc2_;
         if(param1.info.attribute("smooth").toString() == "0")
         {
            this.smoothing = Image.§;!,§;
         }
         if(this.§0"T§ <= 0)
         {
            this.§0"T§ = this.§0"T§ == 0 ? Number(16) : Number(this.§0"T§ * -1);
         }
         for each(_loc4_ in param1.chars.char)
         {
            _loc6_ = parseInt(_loc4_.attribute("id"));
            _loc7_ = parseFloat(_loc4_.attribute("xoffset")) / _loc2_;
            _loc8_ = parseFloat(_loc4_.attribute("yoffset")) / _loc2_;
            _loc9_ = parseFloat(_loc4_.attribute("xadvance")) / _loc2_;
            (_loc10_ = new Rectangle()).x = parseFloat(_loc4_.attribute("x")) / _loc2_ + _loc3_.x;
            _loc10_.y = parseFloat(_loc4_.attribute("y")) / _loc2_ + _loc3_.y;
            _loc10_.width = parseFloat(_loc4_.attribute("width")) / _loc2_;
            _loc10_.height = parseFloat(_loc4_.attribute("height")) / _loc2_;
            _loc11_ = Texture.§#!a§(this.§;Z§,_loc10_);
            _loc12_ = new §9!Y§(_loc6_,_loc11_,_loc7_,_loc8_,_loc9_);
            this.§2$7§(_loc6_,_loc12_);
         }
         for each(_loc5_ in param1.kernings.kerning)
         {
            _loc13_ = parseInt(_loc5_.attribute("first"));
            _loc14_ = parseInt(_loc5_.attribute("second"));
            _loc15_ = parseFloat(_loc5_.attribute("amount")) / _loc2_;
            if(_loc14_ in this.§1"Y§)
            {
               this.§""M§(_loc14_).§2#@§(_loc13_,_loc15_);
            }
         }
      }
      
      public function §""M§(param1:int) : §9!Y§
      {
         return this.§1"Y§[param1];
      }
      
      public function §2$7§(param1:int, param2:§9!Y§) : void
      {
         this.§1"Y§[param1] = param2;
      }
      
      public function §"#U§(param1:Number, param2:Number, param3:String, param4:Number = -1, param5:uint = 16777215, param6:String = "center", param7:String = "center", param8:Boolean = true, param9:Boolean = true) : Sprite
      {
         var _loc14_:CharLocation = null;
         var _loc15_:Image = null;
         var _loc10_:Vector.<CharLocation>;
         var _loc11_:int = (_loc10_ = this.§>#i§(param1,param2,param3,param4,param6,param7,param8,param9)).length;
         var _loc12_:Sprite = new Sprite();
         var _loc13_:int = 0;
         while(_loc13_ < _loc11_)
         {
            (_loc15_ = (_loc14_ = _loc10_[_loc13_]).char.§;!2§()).x = _loc14_.x;
            _loc15_.y = _loc14_.y;
            _loc15_.scaleX = _loc15_.scaleY = _loc14_.scale;
            _loc15_.color = param5;
            _loc12_.addChild(_loc15_);
            _loc13_++;
         }
         return _loc12_;
      }
      
      public function § "V§(param1:§9$'§, param2:Number, param3:Number, param4:String, param5:Number = -1, param6:uint = 16777215, param7:String = "center", param8:String = "center", param9:Boolean = true, param10:Boolean = true) : void
      {
         var _loc14_:CharLocation = null;
         var _loc11_:Vector.<CharLocation>;
         var _loc12_:int = (_loc11_ = this.§>#i§(param2,param3,param4,param5,param7,param8,param9,param10)).length;
         this.§ %§.color = param6;
         if(_loc12_ > 8192)
         {
            throw new ArgumentError("Bitmap Font text is limited to 8192 characters.");
         }
         var _loc13_:int = 0;
         while(_loc13_ < _loc12_)
         {
            _loc14_ = _loc11_[_loc13_];
            this.§ %§.texture = _loc14_.char.texture;
            this.§ %§.§2#q§();
            this.§ %§.x = _loc14_.x;
            this.§ %§.y = _loc14_.y;
            this.§ %§.scaleX = this.§ %§.scaleY = _loc14_.scale;
            param1.§]!A§(this.§ %§);
            _loc13_++;
         }
      }
      
      private function §>#i§(param1:Number, param2:Number, param3:String, param4:Number = -1, param5:String = "center", param6:String = "center", param7:Boolean = true, param8:Boolean = true) : Vector.<CharLocation>
      {
         var _loc9_:Vector.<Vector.<CharLocation>> = null;
         var _loc11_:CharLocation = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Vector.<CharLocation> = null;
         var _loc26_:int = 0;
         var _loc27_:Boolean = false;
         var _loc28_:int = 0;
         var _loc29_:§9!Y§ = null;
         var _loc30_:int = 0;
         var _loc31_:int = 0;
         var _loc32_:Vector.<CharLocation> = null;
         var _loc33_:CharLocation = null;
         var _loc34_:Number = NaN;
         var _loc35_:int = 0;
         var _loc36_:int = 0;
         if(param3 == null || param3.length == 0)
         {
            return new Vector.<CharLocation>(0);
         }
         if(param4 < 0)
         {
            param4 *= -this.§0"T§;
         }
         var _loc10_:Boolean = false;
         while(!_loc10_)
         {
            _loc15_ = param4 / this.§0"T§;
            _loc13_ = param1 / _loc15_;
            _loc14_ = param2 / _loc15_;
            _loc9_ = new Vector.<Vector.<CharLocation>>();
            if(this.§'"M§ <= _loc14_)
            {
               _loc21_ = -1;
               _loc22_ = -1;
               _loc23_ = 0;
               _loc24_ = 0;
               _loc25_ = new Vector.<CharLocation>(0);
               _loc12_ = param3.length;
               _loc26_ = 0;
               while(_loc26_ < _loc12_)
               {
                  _loc27_ = false;
                  _loc28_ = param3.charCodeAt(_loc26_);
                  _loc29_ = this.§""M§(_loc28_);
                  if(_loc28_ == §'!G§ || _loc28_ == §[#,§)
                  {
                     _loc27_ = true;
                  }
                  else if(_loc29_ != null)
                  {
                     if(_loc28_ == §-!;§ || _loc28_ == §!!5§)
                     {
                        _loc21_ = _loc26_;
                     }
                     if(param8)
                     {
                        _loc23_ += _loc29_.§&x§(_loc22_);
                     }
                     (_loc11_ = !!this.§?!H§.length ? this.§?!H§.pop() : new CharLocation(_loc29_)).char = _loc29_;
                     _loc11_.x = _loc23_ + _loc29_.xOffset;
                     _loc11_.y = _loc24_ + _loc29_.yOffset;
                     _loc25_.push(_loc11_);
                     _loc23_ += _loc29_.§6"v§;
                     _loc22_ = _loc28_;
                     if(_loc25_.length == 1)
                     {
                        _loc23_ -= _loc29_.xOffset;
                        _loc11_.x -= _loc29_.xOffset;
                     }
                     if(_loc11_.x + _loc29_.width > _loc13_)
                     {
                        _loc30_ = _loc21_ == -1 ? 1 : int(_loc26_ - _loc21_);
                        _loc31_ = _loc25_.length - _loc30_;
                        _loc25_.splice(_loc31_,_loc30_);
                        if(_loc25_.length == 0)
                        {
                           break;
                        }
                        _loc26_ -= _loc30_;
                        _loc27_ = true;
                     }
                  }
                  if(_loc26_ == _loc12_ - 1)
                  {
                     _loc9_.push(_loc25_);
                     _loc10_ = true;
                  }
                  else if(_loc27_)
                  {
                     _loc9_.push(_loc25_);
                     if(_loc21_ == _loc26_)
                     {
                        _loc25_.pop();
                     }
                     if(_loc24_ + 2 * this.§'"M§ > _loc14_)
                     {
                        break;
                     }
                     _loc25_ = new Vector.<CharLocation>(0);
                     _loc23_ = 0;
                     _loc24_ += this.§'"M§;
                     _loc21_ = -1;
                     _loc22_ = -1;
                  }
                  _loc26_++;
               }
            }
            if(param7 && !_loc10_)
            {
               param4--;
               _loc9_.length = 0;
            }
            else
            {
               _loc10_ = true;
            }
         }
         var _loc16_:Vector.<CharLocation> = new Vector.<CharLocation>(0);
         var _loc17_:int = _loc9_.length;
         var _loc18_:Number = _loc24_ + this.§'"M§;
         var _loc19_:int = 0;
         if(param6 == §6!j§.BOTTOM)
         {
            _loc19_ = _loc14_ - _loc18_;
         }
         else if(param6 == §6!j§.CENTER)
         {
            _loc19_ = (_loc14_ - _loc18_) / 2;
         }
         var _loc20_:int = 0;
         while(_loc20_ < _loc17_)
         {
            if((_loc12_ = (_loc32_ = _loc9_[_loc20_]).length) != 0)
            {
               _loc34_ = (_loc33_ = _loc32_[_loc32_.length - 1]).x + _loc33_.char.width;
               _loc35_ = 0;
               if(param5 == §^#r§.RIGHT)
               {
                  _loc35_ = _loc13_ - _loc34_;
               }
               else if(param5 == §^#r§.CENTER)
               {
                  _loc35_ = (_loc13_ - _loc34_) / 2;
               }
               _loc36_ = 0;
               while(_loc36_ < _loc12_)
               {
                  (_loc11_ = _loc32_[_loc36_]).x = _loc15_ * (_loc11_.x + _loc35_);
                  _loc11_.y = _loc15_ * (_loc11_.y + _loc19_);
                  _loc11_.scale = _loc15_;
                  if(_loc11_.char.width > 0 && _loc11_.char.height > 0)
                  {
                     _loc16_.push(_loc11_);
                  }
                  this.§?!H§.push(_loc11_);
                  _loc36_++;
               }
            }
            _loc20_++;
         }
         return _loc16_;
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      public function get size() : Number
      {
         return this.§0"T§;
      }
      
      public function get lineHeight() : Number
      {
         return this.§'"M§;
      }
      
      public function set lineHeight(param1:Number) : void
      {
         this.§'"M§ = param1;
      }
      
      public function get smoothing() : int
      {
         return this.§ %§.smoothing;
      }
      
      public function set smoothing(param1:int) : void
      {
         this.§ %§.smoothing = param1;
      }
      
      public function get baseline() : Number
      {
         return this.§[!v§;
      }
   }
}

import §6!+§.§9!Y§;

class CharLocation
{
    
   
   public var char:§9!Y§;
   
   public var scale:Number;
   
   public var x:Number;
   
   public var y:Number;
   
   function CharLocation(param1:§9!Y§)
   {
      super();
      this.char = param1;
   }
}
