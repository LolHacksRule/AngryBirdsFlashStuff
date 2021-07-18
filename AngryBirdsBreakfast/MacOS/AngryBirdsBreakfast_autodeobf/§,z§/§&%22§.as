package §,z§
{
   import § ! §.§5!v§;
   import § ! §.§8-§;
   import §"!&§.§3"!§;
   import §"n§.§<!Z§;
   import §%q§.Texture;
   import §&v§.§ !h§;
   import §&v§.§"a§;
   import §&v§.§#c§;
   import §&v§.§,4§;
   import §&v§.§4!a§;
   import §&v§.§9B§;
   import §&v§.§each §;
   import §+C§.b2JointEdge;
   import §+C§.b2PrismaticJoint;
   import §+C§.b2RevoluteJoint;
   import §,!7§.§1L§;
   import §-"&§.b2Contact;
   import §1T§.§'!c§;
   import §6![§.§ !f§;
   import §6![§.§1!J§;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §8!K§.§5!0§;
   import §>!Z§.§!`§;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§#J§;
   import §?s§.§%!%§;
   import §?s§.§1%§;
   import §?s§.§4!b§;
   import §?s§.§8K§;
   import §@L§.§ 7§;
   import §@L§.§!]§;
   import §@L§.§?!'§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&"§ implements §3!#§
   {
      
      private static const §,!U§:Boolean = false;
      
      private static const §%L§:int = 1000000000;
      
      public static const §1!A§:int = -1;
      
      public static const §5!1§:int = -2;
       
      
      protected var §2!z§:Vector.<§<!r§>;
      
      protected var §+!t§:Vector.<§%!f§>;
      
      protected var §#z§:Vector.<§!`§>;
      
      protected var §]!Z§:§<!Z§;
      
      private var §7x§:int = 1000000000;
      
      public var §<Y§:§?!'§;
      
      protected var §#!>§:Vector.<§@q§>;
      
      protected var §5a§:§6![§.Sprite;
      
      protected var §29§:§6![§.Sprite;
      
      protected var §7"!§:§6![§.Sprite;
      
      protected var §5!,§:§6![§.Sprite;
      
      protected var §4!r§:Vector.<Texture>;
      
      protected var §+!y§:Vector.<§#J§>;
      
      protected var §`!X§:int = 1;
      
      protected var § f§:Vector.<§1%§>;
      
      protected var §"!§:int = 0;
      
      private var §<!w§:int = 0;
      
      private var §-R§:int = 0;
      
      private var §9!c§:§8K§;
      
      private var §3!7§:§?!z§;
      
      private var §?+§:Boolean = true;
      
      private var § §:Boolean = true;
      
      private var § !u§:§3"!§;
      
      private var §]!m§:Boolean = false;
      
      public function §&"§(param1:§?!'§, param2:§5!0§, param3:§6![§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§2!z§ = new Vector.<§<!r§>();
         this.§+!t§ = new Vector.<§%!f§>();
         this.§#z§ = new Vector.<§!`§>();
         this.§]!Z§ = new §<!Z§();
         this.§#!>§ = new Vector.<§@q§>();
         this.§4!r§ = new Vector.<Texture>();
         this.§ f§ = new Vector.<§1%§>();
         this.§9!c§ = new §8K§();
         super();
         this.§<Y§ = param1;
         this.§5a§ = param3;
         this.§5a§.§!!9§ = false;
         this.§ § = true;
         this.§?+§ = true;
         this.§29§ = new §6![§.Sprite();
         this.§7"!§ = new §6![§.Sprite();
         this.§5!,§ = new §6![§.Sprite();
         this.§5a§.addChild(this.§29§);
         this.§5a§.addChild(this.§7"!§);
         if(param2.§0!E§)
         {
            _loc5_ = (this.§<Y§.§57§.§?c§ + this.§<Y§.§57§.§;f§) / 2;
            _loc6_ = 0 + § 7§.§%" §;
            this.§,]§(param4,_loc5_,_loc6_,0,§&"§.§1!A§);
         }
         this.§;&§(param2);
      }
      
      public function get §1!§() : §6![§.Sprite
      {
         return this.§5!,§;
      }
      
      public function get §>5§() : §6![§.Sprite
      {
         return this.§5a§;
      }
      
      public function get activeObject() : §"_§
      {
         return this.§3!7§;
      }
      
      public function get objectCount() : int
      {
         return this.§2!z§.length;
      }
      
      public function set §^v§(param1:§3"!§) : void
      {
         if(param1 != this.§ !u§)
         {
            this.§ !u§ = param1;
            if(this.§]!m§ && this.§ !u§)
            {
               this.§ !u§.levelStarted();
            }
         }
      }
      
      public function §;!J§() : void
      {
         if(!this.§]!m§)
         {
            this.§]!m§ = true;
            if(this.§ !u§)
            {
               this.§ !u§.levelStarted();
            }
         }
      }
      
      public function §9?§(param1:String) : §9B§
      {
         return this.§<Y§.levelItemManager.§"!?§(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§3!7§)
         {
            _loc3_ = this.§3!7§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function §;&§(param1:§5!0§) : void
      {
         var _loc3_:§8K§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§9B§ = null;
         var _loc6_:§%!%§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§<Y§.levelItemManager.§"!?§(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§--§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§2!C§();
         this.§>t§(true);
         this.§+!y§ = new Vector.<§#J§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§use§)
         {
            _loc6_ = param1.§%!m§(_loc2_);
            this.§while§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§2!z§.length > 0)
         {
            this.§@o§(0,false,true);
         }
         while(this.§#z§.length > 0)
         {
            this.§;D§(0);
         }
         this.§2!z§ = null;
         this.§+!t§ = null;
         this.§#z§ = null;
         this.§]!Z§ = null;
         this.§ f§ = null;
         if(this.§5a§)
         {
            this.§5a§.dispose();
            this.§5a§ = null;
         }
         this.§29§ = null;
         this.§7"!§ = null;
         if(this.§5!,§)
         {
            this.§5!,§.dispose();
            this.§5!,§ = null;
         }
         while(this.§4!r§.length > 0)
         {
            _loc1_ = this.§4!r§.pop();
            this.§<Y§.§58§.§ !A§(_loc1_);
         }
      }
      
      private function §>t§(param1:Boolean) : void
      {
         this.§29§.visible = param1;
      }
      
      private function §2!C§() : void
      {
         var _loc3_:§<!r§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§"_§ = null;
         var _loc6_:§each § = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:BitmapData = null;
         var _loc18_:Number = NaN;
         var _loc19_:BitmapData = null;
         var _loc20_:Texture = null;
         var _loc21_:§1!J§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§"_§> = new Vector.<§"_§>();
         for each(_loc3_ in this.§2!z§)
         {
            if((_loc5_ = _loc3_ as §"_§) && _loc5_.§0x§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.§"!j§(),_loc6_.§?!L§()) / §?!'§.§'!i§ * Math.sqrt(2);
               _loc4_ = new Rectangle(_loc3_.sprite.x - _loc7_ / 2,_loc3_.sprite.y - _loc7_ / 2,_loc7_,_loc7_);
               if(_loc1_ == null)
               {
                  _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               }
               else
               {
                  _loc1_ = _loc1_.union(_loc4_);
               }
            }
         }
         if(_loc1_)
         {
            _loc8_ = this.§<Y§.camera.§&!;§ / §?!'§.§'!i§;
            _loc9_ = this.§<Y§.camera.§ !3§ / §?!'§.§'!i§;
            _loc10_ = (_loc8_ + _loc9_) / 2;
            _loc11_ = (_loc9_ - _loc8_) / 2;
            _loc8_ = _loc10_ - _loc11_;
            _loc9_ = _loc10_ + _loc11_;
            _loc1_.left = Math.max(_loc1_.left,_loc8_) - 4;
            _loc1_.right = Math.min(_loc1_.right,_loc9_) + 4;
            if(_loc1_.left >= _loc1_.right - 1)
            {
               return;
            }
            _loc12_ = 1;
            while(_loc1_.width > 2048 || _loc1_.height > 2048)
            {
               _loc1_.left /= 1.05;
               _loc1_.top /= 1.05;
               _loc1_.right /= 1.05;
               _loc1_.bottom /= 1.05;
               _loc12_ /= 1.05;
            }
            _loc13_ = _loc1_.width;
            _loc14_ = _loc1_.height;
            _loc15_ = _loc1_.left;
            _loc16_ = _loc1_.top;
            _loc17_ = new BitmapData(_loc13_,_loc14_,true,0);
            _loc18_ = this.§9!§();
            this.§;!R§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§9!$§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§<Y§.§58§.§%^§(_loc17_);
            this.§4!r§.push(_loc20_);
            (_loc21_ = new §1!J§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§29§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §9!$§(param1:Vector.<§"_§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§"_§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§each § = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §4!a§)
            {
               this.§?6§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§[!G§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is § !h§)
            {
               if((_loc12_ as § !h§).§8!§.length == 4)
               {
                  this.§?6§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§[!G§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as § !h§).§8!§.length == 3)
               {
                  this.§&Q§(_loc12_ as § !h§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§[!G§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §"a§)
            {
               this.§4E§(_loc12_ as §"a§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §?6§(param1:§each §, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.§"!j§() / §?!'§.§'!i§ * param9;
         var _loc13_:Number = param1.§?!L§() / §?!'§.§'!i§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §&Q§(param1:§ !h§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.§8!§.length)
         {
            _loc14_ = param1.§8!§[_loc13_];
            _loc12_.push(_loc14_.x / §?!'§.§'!i§ * param8,_loc14_.y / §?!'§.§'!i§ * param8);
            _loc13_++;
         }
         _loc11_.graphics.drawTriangles(_loc12_);
         _loc11_.graphics.endFill();
         param3.rotate(param6);
         param3.translate(param4 * param7 - param9,param5 * param7 - param10);
         param2.draw(_loc11_,param3);
         _loc11_.graphics.clear();
         _loc11_ = null;
      }
      
      protected function §4E§(param1:§"a§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §?!'§.§'!i§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §6!;§() : String
      {
         return this.§<Y§.background.§1!1§();
      }
      
      protected function §9!§() : Number
      {
         return 1;
      }
      
      private function §;!R§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc4_:String = this.§6!;§();
         var _loc5_:§8-§;
         if(_loc5_ = this.§<Y§.§^N§.§`I§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_);
            _loc8_ = _loc6_.width - 2;
            _loc9_ = _loc6_.height - 2;
            _loc10_ = param1.top / _loc9_;
            if(param1.top < 0)
            {
               _loc10_--;
            }
            _loc11_ = (_loc11_ = int(param1.bottom / _loc9_)) + 1;
            _loc12_ = param1.left / _loc8_;
            if(param1.left < 0)
            {
               _loc12_--;
            }
            _loc13_ = (_loc13_ = int(param1.right / _loc8_)) + 1;
            _loc14_ = _loc12_;
            while(_loc14_ < _loc13_)
            {
               _loc15_ = _loc10_;
               while(_loc15_ < _loc11_)
               {
                  param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                  _loc15_++;
               }
               _loc14_++;
            }
            _loc6_.dispose();
         }
      }
      
      protected function addObjectBird(param1:§8K§, param2:§6![§.Sprite, param3:§5!v§, param4:§9B§, param5:Number = 1.0, param6:Boolean = true) : §?!z§
      {
         var _loc11_:§?!z§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §<!8§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §6y§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §#!b§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §@!O§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §[!#§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §?!T§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §'7§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §8?§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §!t§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §+f§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §?!z§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§"!§ > 0;
      }
      
      protected function §1b§(param1:§8K§, param2:§6![§.Sprite, param3:§5!v§, param4:§9B§, param5:Number = 1.0) : §[!=§
      {
         return new §[!=§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5);
      }
      
      public function §,]§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §<!r§
      {
         this.§9!c§.type = param1;
         this.§9!c§.x = param2;
         this.§9!c§.y = param3;
         this.§9!c§.angle = param4;
         this.§9!c§.§7!i§ = 0;
         this.§9!c§.§!!O§ = 0;
         return this.§--§(this.§9!c§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §"!B§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §<!r§
      {
         this.§9!c§.type = param1;
         this.§9!c§.x = param2;
         this.§9!c§.y = param3;
         this.§9!c§.angle = param4;
         this.§9!c§.§7!i§ = param6;
         this.§9!c§.§!!O§ = param7;
         return this.§--§(this.§9!c§,param5,false,false,false,param8,param9);
      }
      
      protected function §--§(param1:§8K§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §<!r§
      {
         var _loc8_:§6![§.Sprite = new §6![§.Sprite();
         var _loc9_:§<!r§;
         if((_loc9_ = this.§,!§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §"_§ && (_loc9_ as §"_§).§0x§())
         {
            _loc8_.visible = !this.§?+§;
         }
         if(_loc9_ is §?!z§ && !(_loc9_ is §+f§))
         {
            ++this.§"!§;
         }
         if(!param7)
         {
            this.§7"!§.§6!K§(_loc8_);
         }
         else
         {
            this.§5!,§.§6!K§(_loc8_);
         }
         if(param3)
         {
            this.§<Y§.§9!+§(_loc9_);
         }
         if(param4 && _loc9_ is §?!z§)
         {
            this.§3!7§ = §?!z§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §,!§(param1:§8K§, param2:int, param3:§6![§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §<!r§
      {
         var _loc7_:§"_§ = null;
         if(param2 == §5!1§)
         {
            param2 = this.§7x§;
            ++this.§7x§;
         }
         else
         {
            if(param2 >= §%L§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §%L§);
            }
            if(this.§>o§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§<!r§;
         if((_loc6_ = this.§[!K§(param1,param3,param4,param5)) is §?!z§)
         {
            ++this.§-R§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §"_§;
            if(_loc6_ is §!`§)
            {
               this.§#z§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§3!'§(param2);
                  this.§]!Z§[param1.instanceName] = _loc6_;
               }
               this.§2!z§.push(_loc6_);
               if(_loc6_ is §%!f§)
               {
                  this.§+!t§.push(_loc6_);
               }
            }
            if(this.§ !u§)
            {
               this.§ !u§.§ "&§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function §4!t§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function §3W§(param1:§8K§, param2:§6![§.Sprite, param3:§5!v§, param4:§9B§, param5:int, param6:Number = 1.0) : §<!r§
      {
         return new §[4§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param6,param5);
      }
      
      protected function §5'§(param1:§8K§, param2:§6![§.Sprite, param3:§5!v§, param4:§9B§, param5:int, param6:Number = 1.0) : §<!r§
      {
         return new §2!-§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param6,param5);
      }
      
      protected function §[!K§(param1:§8K§, param2:§6![§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §<!r§
      {
         var _loc5_:§9B§;
         if(!(_loc5_ = this.§<Y§.levelItemManager.§"!?§(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§4!t§();
         }
         var _loc7_:§5!v§ = this.§<Y§.§5-§.§#w§(_loc6_);
         var _loc8_:§<!r§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §9B§.§;!b§)
         {
            _loc8_ = this.§1b§(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §9B§.§6,§ || _loc5_.itemType == §9B§.§>!?§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.§3W§(param1,param2,_loc7_,_loc5_,§@q§.§]!Q§,param4);
            }
            else if(_loc5_.itemName == §@!O§.§#5§)
            {
               _loc8_ = this.§5'§(param1,param2,_loc7_,_loc5_,§@q§.§5!]§,param4);
            }
            else
            {
               _loc8_ = new §>!9§(param2,_loc7_,this.§<Y§.§5!u§.§-#§,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §"_§(param2,_loc7_,this.§<Y§.§5!u§.§-#§,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§<Y§.addScore(param1,§!]§.§%!&§,param3,param4,param5,param6);
      }
      
      public function §-!,§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§<Y§.particles.§-!,§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §+!v§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§<Y§.particles.§+!v§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      protected function §#!C§(param1:§"_§) : void
      {
         var _loc4_:§#J§ = null;
         var _loc5_:§#J§ = null;
         var _loc6_:§<!r§ = null;
         var _loc7_:§<!r§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§+!y§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§+!y§[_loc3_];
            if(this.§+!y§[_loc3_].id1 == _loc2_ || this.§+!y§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§%E§)
               {
                  _loc6_ = _loc4_.§%E§.§[d§().GetUserData() as §<!r§;
                  _loc7_ = _loc4_.§%E§.§#E§().GetUserData() as §<!r§;
                  if(_loc6_)
                  {
                     _loc6_.§7+§(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.§7+§(_loc6_);
                  }
               }
               _loc5_ = this.§+!y§.pop();
               if(_loc3_ < this.§+!y§.length)
               {
                  this.§+!y§[_loc3_] = _loc5_;
               }
               this.§]!P§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §while§(param1:§%!%§) : void
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§#J§ = §#J§.§while§(param1);
         this.§+!y§.push(_loc4_);
         var _loc5_:§<!r§ = this.§>o§(_loc2_);
         var _loc6_:§<!r§ = this.§>o§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §%!%§.§`!b§)
            {
               _loc4_.§%E§ = this.§<Y§.§5!u§.§-#§.§6`§(_loc4_.§0^§(_loc5_,_loc6_));
            }
            else
            {
               this.§ f§.push(new §1%§(_loc2_,_loc3_,_loc4_.§03§,param1.§!e§));
            }
            _loc5_.§"!$§(_loc6_);
            _loc6_.§"!$§(_loc5_);
         }
      }
      
      protected function §]!P§(param1:§#J§) : void
      {
         if(param1.§%E§)
         {
            this.§<Y§.§5!u§.§-#§.§=!"§(param1.§%E§);
         }
         if(param1.§6!i§)
         {
            if(this.§7"!§.contains(param1.§6!i§))
            {
               this.§7"!§.removeChild(param1.§6!i§,true);
            }
         }
      }
      
      public function § !%§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§#!>§.push(§@q§.§0!@§(param1,param2,param3));
         this.§6§(param1);
      }
      
      protected function §6§(param1:int) : void
      {
         §'!c§.§3!f§("TntExplosions","ChannelExplosions");
      }
      
      public function §+"§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§#!>§.push(§@q§.§9D§(param1,param2,param3,param4,param5,param6));
         §'!c§.§3!f§("TntExplosions","ChannelExplosions");
      }
      
      public function §;H§(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§<Y§.§5!u§.§-#§.§,§());
         return param4;
      }
      
      public function get §2!M§() : Number
      {
         return this.§<Y§.§2!M§;
      }
      
      public function §>!v§(param1:Number, param2:Number) : int
      {
         var _loc4_:§"_§ = null;
         var _loc3_:int = this.§2!z§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§2!z§[_loc3_] as §"_§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §"_§
      {
         var _loc4_:§"_§ = null;
         var _loc3_:int = this.§2!z§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§2!z§[_loc3_] as §"_§)
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc4_;
               }
            }
            _loc3_--;
         }
         return null;
      }
      
      public function getObject(param1:int) : §<!r§
      {
         return this.§2!z§[param1];
      }
      
      public function §>o§(param1:int) : §"_§
      {
         var _loc2_:§<!r§ = null;
         var _loc3_:§"_§ = null;
         for each(_loc2_ in this.§2!z§)
         {
            _loc3_ = _loc2_ as §"_§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §]!w§(param1:String) : §"_§
      {
         return this.§]!Z§[param1];
      }
      
      public function §6!n§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§2!z§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§2!z§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§=!6§(param1);
         _loc4_ = this.§#z§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§#z§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §1w§(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function §[" §(param1:Number, param2:Number, param3:§"_§) : §1L§
      {
         var _loc4_:Number = param3.§^`§().GetPosition().x - param1;
         var _loc5_:Number = param3.§^`§().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§1L§;
         (_loc7_ = new §1L§()).§1_§ = _loc6_;
         _loc7_.§;%§ = new Point(param3.§^`§().GetPosition().x,param3.§^`§().GetPosition().y);
         return _loc7_;
      }
      
      protected function § C§(param1:§"_§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function ignoreExplosion(param1:§"_§) : Boolean
      {
         return false;
      }
      
      protected function §,!j§() : void
      {
         var _loc1_:§@q§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§<!r§ = null;
         var _loc7_:§"_§ = null;
         var _loc8_:§1L§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§ §)
         {
            return;
         }
         while(this.§#!>§.length > 0)
         {
            _loc1_ = this.§#!>§.shift();
            _loc2_ = _loc1_.§'i§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.§4!w§(_loc1_.push);
            for each(_loc6_ in this.§2!z§)
            {
               if((_loc7_ = _loc6_ as §"_§) && !this.ignoreExplosion(_loc7_))
               {
                  if((_loc8_ = this.§[" §(_loc3_,_loc4_,_loc7_)).§1_§ <= _loc1_.§'i§)
                  {
                     _loc9_ = _loc1_.push * this.§1w§(_loc8_.§1_§,_loc1_.§'i§);
                     if(_loc8_.§1_§ > 0)
                     {
                        (_loc10_ = new Point(_loc8_.§;%§.x - _loc3_,_loc8_.§;%§.y - _loc4_)).normalize(1);
                        _loc11_ = _loc9_ * _loc10_.x;
                        _loc12_ = _loc9_ * _loc10_.y;
                        _loc7_.§^`§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§;%§.x,_loc8_.§;%§.y));
                     }
                  }
                  if(_loc8_.§1_§ <= _loc1_.§,p§)
                  {
                     _loc13_ = _loc5_ * this.§1w§(_loc8_.§1_§,_loc1_.§,p§);
                     this.§ C§(_loc7_,_loc13_);
                  }
               }
            }
            this.§>e§(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function §>e§(param1:§@q§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§<Y§.particles.§-!,§(this.§2w§(param1.type),§!u§.§54§,§2_§.§9o§,param2,param3,600,"",§2_§.§4!Q§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§<Y§.particles.§-!,§(§2_§.§#=§,§!u§.§54§,§2_§.§4d§,param2,param3,_loc7_,"",§2_§.§4!Q§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §2w§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §2_§.§>k§;
      }
      
      public function §`!w§(param1:Number) : void
      {
         var _loc4_:§"_§ = null;
         var _loc2_:§<!r§ = null;
         var _loc3_:int = this.§2!z§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§2!z§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§@o§(_loc3_,true);
            }
            else
            {
               this.§7",§(_loc2_,param1);
               _loc4_ = _loc2_ as §"_§;
               if(this.objectIsOutOfBounds(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§]Y§(§,4§.§ !x§);
                  }
                  this.§@o§(_loc3_,!(_loc4_ is §?!z§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§]Y§(§,4§.§ !x§);
                  this.§@o§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§!!!§(param1);
         this.§,!j§();
         if(this.§ !u§)
         {
            this.§ !u§.update(param1);
         }
      }
      
      protected function §7",§(param1:§<!r§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function §=!6§(param1:Number) : void
      {
         var _loc2_:§!`§ = null;
         var _loc3_:int = this.§#z§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§#z§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§;D§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §!!!§(param1:Number) : void
      {
         this.§!!S§(param1);
         this.§;!9§();
      }
      
      protected function §!!S§(param1:Number) : void
      {
         var _loc3_:§1%§ = null;
         var _loc4_:§<!r§ = null;
         var _loc2_:int = this.§ f§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ f§[_loc2_];
            if(_loc3_.§1Z§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.§#!8§)
                  {
                     _loc4_ = this.§>o§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  _loc4_ = this.§>o§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§ f§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §7F§(param1:§#J§) : void
      {
         var _loc2_:§"_§ = param1.debug_object_1;
         var _loc3_:§"_§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§>o§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§>o§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§6!i§ == null)
         {
            param1.§6!i§ = new § !f§(4,4,4294901760);
            this.§7"!§.addChild(param1.§6!i§);
         }
         param1.§6!i§.x = _loc4_;
         param1.§6!i§.y = _loc5_;
         param1.§6!i§.width = _loc8_;
         param1.§6!i§.rotation = _loc9_;
      }
      
      protected function §!P§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §;!9§() : void
      {
         var _loc1_:§#J§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§+!y§)
         {
            if(§,!U§)
            {
               this.§7F§(_loc1_);
            }
            if(_loc1_.§=!f§ && _loc1_.§ ]§ && _loc1_.§'"&§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §%!%§.§^§)
               {
                  _loc4_ = (_loc1_.§%E§ as b2PrismaticJoint).§#0§();
                  _loc5_ = (_loc1_.§%E§ as b2PrismaticJoint).§7"%§();
                  _loc6_ = this.§!P§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§%E§ as b2PrismaticJoint).§"!v§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §%!%§.§!!C§)
               {
                  _loc7_ = (_loc1_.§%E§ as b2RevoluteJoint).§@-§();
                  if((_loc5_ = (_loc1_.§%E§ as b2RevoluteJoint).§7"%§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§%E§ as b2RevoluteJoint).§"!v§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §&!h§() : void
      {
         var _loc1_:§#J§ = null;
         while(this.§+!y§.length > 0)
         {
            _loc1_ = this.§+!y§.pop();
            this.§]!P§(_loc1_);
         }
      }
      
      public function objectIsOutOfBounds(param1:§<!r§) : Boolean
      {
         this.§[w§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §#c§.§9&§) && param1.§^`§() && this.§6!5§(param1.§^`§().GetPosition().x,param1.§^`§().GetPosition().y))
         {
            if(param1 is §"_§)
            {
               §"_§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §[w§(param1:§<!r§) : void
      {
      }
      
      public function §+6§(param1:Number, param2:Number) : Boolean
      {
         return this.§<Y§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §6!5§(param1:Number, param2:Number) : Boolean
      {
         return this.§<Y§.§57§.§3" §(param1,param2);
      }
      
      public function §;D§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§!`§ = this.§#z§[param1];
         this.§@h§(_loc2_.sprite);
         this.§#z§[param1] = null;
         this.§#z§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function §2Q§(param1:§"_§) : Boolean
      {
         return true;
      }
      
      protected function §^!e§(param1:§"_§) : Point
      {
         var _loc2_:Number = param1.§^`§().GetPosition().x;
         var _loc3_:Number = param1.§^`§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §@o§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§"_§ = null;
         var _loc6_:§1%§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§<!r§;
         if((_loc4_ = this.§2!z§[param1]) is §[!=§)
         {
            ++this.§<!w§;
         }
         else if(_loc4_ is §?!z§)
         {
            --this.§"!§;
         }
         if(_loc4_ == this.§3!7§)
         {
            this.§3!7§ = null;
         }
         if(_loc4_ is §"_§)
         {
            _loc5_ = _loc4_ as §"_§;
            if(param2)
            {
               _loc7_ = this.§^!e§(_loc5_);
               _loc8_ = §2_§.§1!B§(_loc5_.itemName);
               _loc9_ = this.§2Q§(_loc5_);
               this.§<Y§.addScore(_loc5_.levelItem.score,§!]§.§#"$§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this);
            }
            this.§#!C§(_loc5_);
            for each(_loc6_ in this.§ f§)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.§1Z§ = true;
               }
            }
            delete this.§]!Z§[_loc5_.§;"!§.instanceName];
         }
         this.§@h§(_loc4_.sprite);
         this.§2!z§[param1] = null;
         this.§2!z§.splice(param1,1);
         if(_loc4_ is §%!f§)
         {
            if((_loc10_ = this.§+!t§.indexOf(_loc4_)) >= 0)
            {
               this.§+!t§.splice(_loc10_,1);
            }
         }
         if(this.§ !u§)
         {
            this.§ !u§.§4!S§(_loc4_);
         }
         this.§4!S§(_loc4_);
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function §4!S§(param1:§<!r§) : void
      {
         var _loc2_:§"_§ = null;
         var _loc3_:§4!b§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:§"_§ = null;
         if(param1 is §"_§)
         {
            _loc2_ = param1 as §"_§;
            _loc3_ = _loc2_.§;"!§ as §4!b§;
            if(_loc3_)
            {
               for(_loc4_ in _loc3_.§7!b§.§&!G§)
               {
                  _loc5_ = _loc3_.§7!b§.§&!G§[_loc4_];
                  _loc6_ = this.§]!w§(_loc4_);
                  this.§2!#§(_loc6_,_loc5_,"onDestroyed");
               }
            }
         }
      }
      
      protected function §2!#§(param1:§"_§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§7Q§(param2,param3,this);
         }
      }
      
      private function §@h§(param1:§6![§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§<!r§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§@o§(this.§2!z§.indexOf(param1),param2);
         }
      }
      
      public function §#!j§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§<Y§.§;![§();
         }
      }
      
      public function §0h§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§<Y§.§0h§(param1,param2,param3,param4);
      }
      
      public function §=!F§(param1:Number, param2:Number) : void
      {
         this.§5a§.x = -param1;
         this.§5a§.y = -param2;
         this.§5!,§.x = -param1;
         this.§5!,§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§<!r§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!z§.length)
         {
            _loc2_ = this.§2!z§[_loc1_];
            if(_loc2_ && _loc2_ is §[!=§ && (_loc2_ as §[!=§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §[R§(param1:Boolean = false) : int
      {
         var _loc4_:§[!=§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§2!z§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§2!z§[_loc3_] as §[!=§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§#y§ && !_loc4_.§%`§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §%!p§() : int
      {
         var _loc2_:§"_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2!z§)
         {
            if(_loc2_ is §>!9§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §2!8§() : int
      {
         var _loc2_:§"_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2!z§)
         {
            if(_loc2_ && _loc2_.§0x§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§[!=§ = null;
         var _loc2_:int = this.§2!z§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2!z§[_loc2_] as §[!=§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §+t§() : Boolean
      {
         var _loc2_:§?!z§ = null;
         var _loc1_:int = this.§2!z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!z§[_loc1_] as §?!z§;
            if(_loc2_ && _loc2_.health > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§"_§ = null;
         var _loc1_:int = this.§2!z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!z§[_loc1_] as §"_§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§!"'§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§^" §())
               {
                  return false;
               }
               if(_loc2_ is §?!z§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §3!"§(param1:Boolean = false) : §[!=§
      {
         var _loc7_:§[!=§ = null;
         var _loc2_:int = this.§2!z§.length;
         var _loc3_:int = this.§[R§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§2!z§[_loc6_] as §[!=§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§#y§ && !_loc7_.§%`§)
               {
                  if(_loc5_ >= _loc4_)
                  {
                     return _loc7_;
                  }
                  _loc5_++;
               }
            }
            _loc6_++;
         }
         return null;
      }
      
      public function §&!2§() : int
      {
         var _loc3_:§"_§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§2!z§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2!z§[_loc2_] as §"_§;
            if(_loc3_)
            {
               _loc1_ += _loc3_.levelItem.score;
               if(_loc3_.isDamageAwardingScore())
               {
                  _loc1_ += this.damageScoreMultiplier * int(_loc3_.healthMax);
               }
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§<Y§.slingshot.§&!2§());
      }
      
      protected function §=!n§(param1:§<!r§, param2:§<!r§) : Boolean
      {
         if(param1 is §"_§ && param2 is §"_§ && !(param1 as §"_§).§@"+§() && !(param2 as §"_§).§@"+§())
         {
            return false;
         }
         return true;
      }
      
      public function §<h§() : void
      {
         this.§"!§ = 0;
      }
      
      protected function §+=§(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function §4!w§(param1:Number) : void
      {
      }
      
      protected function §%<§(param1:§"_§, param2:§"_§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §?!z§)
         {
            return 1;
         }
         if(param1 is §?!z§)
         {
            return Number(param1.§ Y§(param2.§[,§()));
         }
         return 1;
      }
      
      protected function §5!f§(param1:§"_§, param2:§"_§) : Number
      {
         if(param2 is §?!z§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §>O§(param1:§"_§, param2:§"_§) : Number
      {
         var _loc4_:Number = this.§5!f§(param1,param2);
         var _loc5_:Number = this.§5!f§(param2,param1);
         var _loc6_:Number = param1.§^`§().GetMass();
         var _loc7_:Number = param2.§^`§().GetMass();
         var _loc8_:b2Vec2 = param1.§3!Y§();
         var _loc9_:b2Vec2 = param2.§3!Y§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §else§(param1:§<!r§, param2:§<!r§, param3:b2Contact) : Boolean
      {
         var _loc13_:§#J§ = null;
         var _loc14_:b2JointEdge = null;
         var _loc15_:b2JointEdge = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         if(!this.§ §)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§"_§ = param1 as §"_§;
         var _loc5_:§"_§ = param2 as §"_§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§%!,§)
         {
            _loc5_.applyDamage(_loc5_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§%!,§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.§=!n§(_loc4_,_loc5_))
         {
            return false;
         }
         if(_loc4_ is §?!z§ && _loc5_ is §?!z§)
         {
            return true;
         }
         var _loc6_:Number = this.§>O§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         this.§+=§(_loc6_,_loc7_,_loc8_);
         var _loc9_:Number = this.§%<§(_loc4_,_loc5_);
         var _loc10_:Number = this.§%<§(_loc5_,_loc4_);
         var _loc11_:Number = _loc4_.applyDamage(_loc6_ * _loc10_,this,_loc5_,true);
         var _loc12_:Number = _loc5_.applyDamage(_loc6_ * _loc9_,this,_loc4_,true);
         for each(_loc13_ in this.§+!y§)
         {
            if(_loc13_.§&!5§ && _loc6_ >= _loc13_.§"!d§)
            {
               _loc14_ = _loc4_.§^`§().GetJointList();
               _loc15_ = _loc5_.§^`§().GetJointList();
               if(_loc14_ != null && _loc14_.§`!g§ == _loc13_.§%E§ || _loc15_ != null && _loc15_.§`!g§ == _loc13_.§%E§)
               {
                  this.§]!P§(_loc13_);
               }
            }
         }
         if(_loc11_ < _loc7_)
         {
            _loc5_.causedDamageToObjects();
         }
         if(_loc12_ < _loc8_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc4_ is §?!z§)
         {
            if(_loc12_ <= 0)
            {
               _loc16_ = _loc4_.§+l§(_loc5_.§[,§());
               this.§!p§(_loc4_ as §?!z§,_loc6_ * _loc9_,_loc8_,_loc16_);
               return false;
            }
         }
         if(_loc5_ is §?!z§)
         {
            if(_loc11_ <= 0)
            {
               _loc17_ = _loc5_.§+l§(_loc4_.§[,§());
               this.§!p§(_loc5_ as §?!z§,_loc6_ * _loc10_,_loc7_,_loc17_);
               return false;
            }
         }
         return _loc11_ <= 0 && _loc12_ <= 0;
      }
      
      public function §]!r§(param1:§<!r§, param2:§<!r§) : void
      {
         if(param1)
         {
            param1.collisionEnded(param2);
         }
         if(param2)
         {
            param2.collisionEnded(param1);
         }
      }
      
      protected function §!p§(param1:§?!z§, param2:Number, param3:Number, param4:Number) : void
      {
         if(param2 == 0)
         {
            return;
         }
         var _loc5_:Number = (param2 - param3) / param2;
         if(isNaN(_loc5_))
         {
            _loc5_ = 0;
         }
         if((_loc5_ *= param4) > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:b2Vec2 = param1.§3!Y§();
         param1.§-"-§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §2I§() : void
      {
         var _loc2_:§"_§ = null;
         var _loc1_:int = this.§2!z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!z§[_loc1_] as §"_§;
            if(_loc2_ != null && _loc2_ is §[!=§)
            {
               this.§@o§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §]!>§() : void
      {
         var _loc2_:§"_§ = null;
         var _loc1_:int = this.§2!z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!z§[_loc1_] as §"_§;
            if(_loc2_ != null && _loc2_.§>""§())
            {
               this.§@o§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §<B§() : int
      {
         return this.§2!z§.length;
      }
      
      public function §?F§(param1:§5!0§) : void
      {
         var _loc4_:§"_§ = null;
         var _loc5_:§8K§ = null;
         var _loc6_:§%!%§ = null;
         var _loc7_:§#J§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2!z§.length)
         {
            if(_loc4_ = this.§2!z§[_loc2_] as §"_§)
            {
               if(_loc4_.§!?§)
               {
                  if(!_loc4_.§!"'§())
                  {
                     (_loc5_ = new §8K§()).angle = _loc4_.§[!G§() / (Math.PI / 180);
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§^`§().GetPosition().x;
                     _loc5_.y = _loc4_.§^`§().GetPosition().y;
                     param1.§,]§(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§+!y§.length)
         {
            _loc7_ = this.§+!y§[_loc3_];
            _loc6_ = new §%!%§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§2!&§,_loc7_.§ ]§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§'"&§,_loc7_.motorSpeed,_loc7_.§=!f§,_loc7_.maxTorque);
            param1.§[!7§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §?"%§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§2!z§.length)
         {
            if(this.§2!z§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§2!z§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§"_§ = null;
         this.§?+§ = param1;
         this.§>t§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2!z§.length)
         {
            _loc3_ = this.§2!z§[_loc2_] as §"_§;
            if(_loc3_ && _loc3_.§0x§())
            {
               _loc3_.sprite.visible = !this.§?+§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§ § = param1;
      }
      
      public function §'6§() : int
      {
         return this.§-R§;
      }
      
      public function §-;§() : int
      {
         return this.§<!w§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§<Y§.damageScoreMultiplier;
      }
   }
}
