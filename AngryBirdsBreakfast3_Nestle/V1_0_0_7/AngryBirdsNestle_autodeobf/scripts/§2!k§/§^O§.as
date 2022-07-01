package §2!k§
{
   import § !=§.§0F§;
   import § !=§.Sprite;
   import § !=§.§break§;
   import § !a§.Texture;
   import §!P§.§2"4§;
   import §-!2§.b2Vec2;
   import §1!,§.§`!X§;
   import §7!<§.§"k§;
   import §7!<§.§4r§;
   import §7!<§.§9!l§;
   import §7!<§.§<6§;
   import §;L§.§=l§;
   import §;L§.§[!H§;
   import §;Z§.§0R§;
   import §;Z§.§3?§;
   import §;Z§.§@!`§;
   import §;s§.§%!c§;
   import §<!?§.b2PrismaticJoint;
   import §<!?§.b2RevoluteJoint;
   import §[^§.§"!>§;
   import §[^§.§#!?§;
   import §[^§.§&!2§;
   import §[^§.§,+§;
   import §[^§.§>"§;
   import §[^§.§["%§;
   import §[^§.§`!M§;
   import §]A§.§,!l§;
   import §]A§.§[d§;
   import §]A§.§^!-§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^O§ implements §?N§
   {
      
      private static const §#!N§:Boolean = false;
      
      private static const §?!U§:int = 1000000000;
      
      public static const §!!F§:int = -1;
      
      public static const §@"+§:int = -2;
       
      
      protected var § G§:Vector.<§,@§>;
      
      protected var §'8§:Vector.<§]!A§>;
      
      protected var §1!r§:Vector.<§0R§>;
      
      private var §[J§:int = 1000000000;
      
      public var §+"1§:§[d§;
      
      protected var §8!U§:Vector.<§]D§>;
      
      protected var §0z§:§ !=§.Sprite;
      
      protected var §'!&§:§ !=§.Sprite;
      
      protected var §9!J§:§ !=§.Sprite;
      
      protected var §3P§:§ !=§.Sprite;
      
      protected var §%! §:Vector.<Texture>;
      
      protected var §-!§:Vector.<§<6§>;
      
      protected var §^C§:int = 1;
      
      protected var §]$§:Vector.<§9!l§>;
      
      protected var §'!j§:int = 0;
      
      private var §-!R§:int = 0;
      
      private var §9t§:int = 0;
      
      private var §8!w§:§4r§;
      
      private var §3!>§:§6",§;
      
      private var §5B§:Boolean = true;
      
      private var §=!Z§:Boolean = true;
      
      public function §^O§(param1:§[d§, param2:§2"4§, param3:§ !=§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§ G§ = new Vector.<§,@§>();
         this.§'8§ = new Vector.<§]!A§>();
         this.§1!r§ = new Vector.<§0R§>();
         this.§8!U§ = new Vector.<§]D§>();
         this.§%! § = new Vector.<Texture>();
         this.§]$§ = new Vector.<§9!l§>();
         this.§8!w§ = new §4r§();
         super();
         this.§+"1§ = param1;
         this.§0z§ = param3;
         this.§0z§.§8!Z§ = false;
         this.§=!Z§ = true;
         this.§5B§ = true;
         this.§'!&§ = new § !=§.Sprite();
         this.§9!J§ = new § !=§.Sprite();
         this.§3P§ = new § !=§.Sprite();
         this.§0z§.addChild(this.§'!&§);
         this.§0z§.addChild(this.§9!J§);
         if(param2.§@D§)
         {
            _loc5_ = (this.§+"1§.§+$§.§#!u§ + this.§+"1§.§+$§.§7I§) / 2;
            _loc6_ = 0 + §^!-§.§6!;§;
            this.§1!w§(param4,_loc5_,_loc6_,0,§^O§.§!!F§);
         }
         this.§,!Y§(param2);
      }
      
      public function get §,!S§() : § !=§.Sprite
      {
         return this.§3P§;
      }
      
      public function get §3,§() : § !=§.Sprite
      {
         return this.§0z§;
      }
      
      public function get activeObject() : §;;§
      {
         return this.§3!>§;
      }
      
      public function get objectCount() : int
      {
         return this.§ G§.length;
      }
      
      public function §&!S§(param1:String) : §`!M§
      {
         return this.§+"1§.levelItemManager.§ "4§(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§3!>§)
         {
            _loc3_ = this.§3!>§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function §,!Y§(param1:§2"4§) : void
      {
         var _loc3_:§4r§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§`!M§ = null;
         var _loc6_:§"k§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§+"1§.levelItemManager.§ "4§(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§"!4§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§'e§();
         this.§4!3§(true);
         this.§-!§ = new Vector.<§<6§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§0Z§)
         {
            _loc6_ = param1.§'T§(_loc2_);
            this.§]!q§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§ G§.length > 0)
         {
            this.§,q§(0,false,true);
         }
         while(this.§1!r§.length > 0)
         {
            this.§0!i§(0);
         }
         this.§ G§ = null;
         this.§'8§ = null;
         this.§1!r§ = null;
         this.§]$§ = null;
         if(this.§0z§)
         {
            this.§0z§.dispose();
            this.§0z§ = null;
         }
         this.§'!&§ = null;
         this.§9!J§ = null;
         if(this.§3P§)
         {
            this.§3P§.dispose();
            this.§3P§ = null;
         }
         while(this.§%! §.length > 0)
         {
            _loc1_ = this.§%! §.pop();
            this.§+"1§.§7!m§.§!Y§(_loc1_);
         }
      }
      
      private function §4!3§(param1:Boolean) : void
      {
         this.§'!&§.visible = param1;
      }
      
      private function §'e§() : void
      {
         var _loc3_:§,@§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§;;§ = null;
         var _loc6_:§#!?§ = null;
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
         var _loc21_:§0F§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§;;§> = new Vector.<§;;§>();
         for each(_loc3_ in this.§ G§)
         {
            if((_loc5_ = _loc3_ as §;;§) && _loc5_.§<7§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.§'%§(),_loc6_.§!8§()) / §[d§.§]!U§ * Math.sqrt(2);
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
            _loc8_ = this.§+"1§.camera.§%+§ / §[d§.§]!U§;
            _loc9_ = this.§+"1§.camera.§=c§ / §[d§.§]!U§;
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
            _loc18_ = this.§2!G§();
            this.§#!R§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§`"5§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§+"1§.§7!m§.§@",§(_loc17_);
            this.§%! §.push(_loc20_);
            (_loc21_ = new §0F§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§'!&§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §`"5§(param1:Vector.<§;;§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§;;§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§#!?§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §&!2§)
            {
               this.§4%§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<_§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §,+§)
            {
               if((_loc12_ as §,+§).§1"-§.length == 4)
               {
                  this.§4%§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<_§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §,+§).§1"-§.length == 3)
               {
                  this.§2!m§(_loc12_ as §,+§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<_§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §"!>§)
            {
               this.§44§(_loc12_ as §"!>§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §4%§(param1:§#!?§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.§'%§() / §[d§.§]!U§ * param9;
         var _loc13_:Number = param1.§!8§() / §[d§.§]!U§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §2!m§(param1:§,+§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.§1"-§.length)
         {
            _loc14_ = param1.§1"-§[_loc13_];
            _loc12_.push(_loc14_.x / §[d§.§]!U§ * param8,_loc14_.y / §[d§.§]!U§ * param8);
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
      
      protected function §44§(param1:§"!>§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §[d§.§]!U§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §^%§() : String
      {
         return this.§+"1§.background.§ f§();
      }
      
      protected function §2!G§() : Number
      {
         return 1;
      }
      
      private function §#!R§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§^%§();
         var _loc5_:§[!H§;
         if(_loc5_ = this.§+"1§.§'"3§.§""#§(_loc4_))
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
      
      protected function addObjectBird(param1:§4r§, param2:§ !=§.Sprite, param3:§=l§, param4:§`!M§, param5:Number = 1.0, param6:Boolean = true) : §6",§
      {
         var _loc11_:§6",§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new § v§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §!!X§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §=!@§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §!$§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §4!M§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §2!6§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §&R§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new § @§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §+k§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §try§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            default:
               _loc11_ = new §6",§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§'!j§ > 0;
      }
      
      protected function §?!1§(param1:§4r§, param2:§ !=§.Sprite, param3:§=l§, param4:§`!M§, param5:Number = 1.0) : §;!1§
      {
         return new §;!1§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,param1.x,param1.y,param1.angle,param5);
      }
      
      public function §1!w§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §,@§
      {
         this.§8!w§.type = param1;
         this.§8!w§.x = param2;
         this.§8!w§.y = param3;
         this.§8!w§.angle = param4;
         this.§8!w§.§94§ = 0;
         this.§8!w§.§3;§ = 0;
         return this.§"!4§(this.§8!w§,param5,param6,param7,param8,param9,param10);
      }
      
      public function § u§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §,@§
      {
         this.§8!w§.type = param1;
         this.§8!w§.x = param2;
         this.§8!w§.y = param3;
         this.§8!w§.angle = param4;
         this.§8!w§.§94§ = param6;
         this.§8!w§.§3;§ = param7;
         return this.§"!4§(this.§8!w§,param5,false,false,false,param8,param9);
      }
      
      protected function §"!4§(param1:§4r§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §,@§
      {
         var _loc8_:§ !=§.Sprite = new § !=§.Sprite();
         var _loc9_:§,@§;
         if((_loc9_ = this.§^!8§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §;;§ && (_loc9_ as §;;§).§<7§())
         {
            _loc8_.visible = !this.§5B§;
         }
         if(_loc9_ is §6",§ && !(_loc9_ is §try§))
         {
            ++this.§'!j§;
         }
         if(!param7)
         {
            this.§9!J§.§3E§(_loc8_);
         }
         else
         {
            this.§3P§.§3E§(_loc8_);
         }
         if(param3)
         {
            this.§+"1§.§5!a§(_loc9_);
         }
         if(param4 && _loc9_ is §6",§)
         {
            this.§3!>§ = §6",§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §^!8§(param1:§4r§, param2:int, param3:§ !=§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §,@§
      {
         var _loc7_:§;;§ = null;
         if(param2 == §@"+§)
         {
            param2 = this.§[J§;
            ++this.§[J§;
         }
         else
         {
            if(param2 >= §?!U§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §?!U§);
            }
            if(this.§?v§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§,@§;
         if((_loc6_ = this.§#!S§(param1,param3,param4,param5)) is §6",§)
         {
            ++this.§9t§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §;;§;
            if(_loc6_ is §0R§)
            {
               this.§1!r§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§7_§(param2);
               }
               this.§ G§.push(_loc6_);
               if(_loc6_ is §]!A§)
               {
                  this.§'8§.push(_loc6_);
               }
            }
         }
         return _loc6_;
      }
      
      protected function §=N§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function §""5§(param1:§4r§, param2:§ !=§.Sprite, param3:§=l§, param4:§`!M§, param5:int, param6:Number = 1.0) : §,@§
      {
         return new §^`§(param2,param3,this.§+"1§.§%""§.§1!A§,param4,param1.x,param1.y,param1.angle,param6,param5);
      }
      
      protected function §#!S§(param1:§4r§, param2:§ !=§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §,@§
      {
         var _loc5_:§`!M§;
         if(!(_loc5_ = this.§+"1§.levelItemManager.§ "4§(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§=N§();
         }
         var _loc7_:§=l§ = this.§+"1§.§%B§.§[!R§(_loc6_);
         var _loc8_:§,@§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §`!M§.§2i§)
         {
            _loc8_ = this.§?!1§(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §`!M§.§`n§ || _loc5_.itemType == §`!M§.§"!J§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.§""5§(param1,param2,_loc7_,_loc5_,§]D§.§#!'§,param4);
            }
            else if(_loc5_.itemName == §!$§.§1%§)
            {
               _loc8_ = this.§""5§(param1,param2,_loc7_,_loc5_,§]D§.§5;§,param4);
            }
            else
            {
               _loc8_ = new §]!§(param2,_loc7_,this.§+"1§.§%""§.§1!A§,_loc5_,param1.x,param1.y,param1.angle,param4);
            }
         }
         else
         {
            _loc8_ = new §;;§(param2,_loc7_,this.§+"1§.§%""§.§1!A§,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§+"1§.addScore(param1,§,!l§.§5"1§,param3,param4,param5,param6);
      }
      
      public function §;$§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§+"1§.particles.§;$§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      protected function §!!y§(param1:§;;§) : void
      {
         var _loc4_:§<6§ = null;
         var _loc5_:§<6§ = null;
         var _loc6_:§,@§ = null;
         var _loc7_:§,@§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§-!§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§-!§[_loc3_];
            if(this.§-!§[_loc3_].id1 == _loc2_ || this.§-!§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§-!9§)
               {
                  _loc6_ = _loc4_.§-!9§.§@R§().GetUserData() as §,@§;
                  _loc7_ = _loc4_.§-!9§.§,[§().GetUserData() as §,@§;
                  if(_loc6_)
                  {
                     _loc6_.§+"+§(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.§+"+§(_loc6_);
                  }
               }
               _loc5_ = this.§-!§.pop();
               if(_loc3_ < this.§-!§.length)
               {
                  this.§-!§[_loc3_] = _loc5_;
               }
               this.§7O§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §]!q§(param1:§"k§) : void
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§<6§ = §<6§.§]!q§(param1);
         this.§-!§.push(_loc4_);
         var _loc5_:§,@§ = this.§?v§(_loc2_);
         var _loc6_:§,@§ = this.§?v§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §"k§.§3!E§)
            {
               _loc4_.§-!9§ = this.§+"1§.§%""§.§1!A§.§1!E§(_loc4_.§'!,§(_loc5_,_loc6_));
            }
            else
            {
               this.§]$§.push(new §9!l§(_loc2_,_loc3_,_loc4_.§?!k§));
            }
            _loc5_.§@v§(_loc6_);
            _loc6_.§@v§(_loc5_);
         }
      }
      
      protected function §7O§(param1:§<6§) : void
      {
         if(param1.§-!9§)
         {
            this.§+"1§.§%""§.§1!A§.§&!f§(param1.§-!9§);
         }
         if(param1.§>l§)
         {
            if(this.§9!J§.contains(param1.§>l§))
            {
               this.§9!J§.removeChild(param1.§>l§,true);
            }
         }
      }
      
      public function §`!0§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§8!U§.push(§]D§.§<!I§(param1,param2,param3));
         this.§@!r§(param1);
      }
      
      protected function §@!r§(param1:int) : void
      {
         §%!c§.§8" §("TntExplosions","ChannelExplosions");
      }
      
      public function §1!T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§8!U§.push(§]D§.§4"+§(param1,param2,param3,param4,param5,param6));
         §%!c§.§8" §("TntExplosions","ChannelExplosions");
      }
      
      public function §7o§(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§+"1§.§%""§.§1!A§.§4q§());
         return param4;
      }
      
      public function get §'!O§() : Number
      {
         return this.§+"1§.§'!O§;
      }
      
      public function §=f§(param1:Number, param2:Number) : int
      {
         var _loc4_:§;;§ = null;
         var _loc3_:int = this.§ G§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ G§[_loc3_] as §;;§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §;;§
      {
         var _loc4_:§;;§ = null;
         var _loc3_:int = this.§ G§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§ G§[_loc3_] as §;;§)
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
      
      public function getObject(param1:int) : §,@§
      {
         return this.§ G§[param1];
      }
      
      public function §?v§(param1:int) : §;;§
      {
         var _loc2_:§,@§ = null;
         var _loc3_:§;;§ = null;
         for each(_loc2_ in this.§ G§)
         {
            _loc3_ = _loc2_ as §;;§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §4!R§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§ G§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§ G§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§'!d§(param1);
         _loc4_ = this.§1!r§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§1!r§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §`!z§(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function §[!4§(param1:Number, param2:Number, param3:§;;§) : §`!X§
      {
         var _loc4_:Number = param3.§ 2§().GetPosition().x - param1;
         var _loc5_:Number = param3.§ 2§().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§`!X§;
         (_loc7_ = new §`!X§()).§>!>§ = _loc6_;
         _loc7_.§ ;§ = new Point(param3.§ 2§().GetPosition().x,param3.§ 2§().GetPosition().y);
         return _loc7_;
      }
      
      protected function §3c§(param1:§;;§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function §8m§(param1:§;;§) : Boolean
      {
         return false;
      }
      
      protected function §[A§() : void
      {
         var _loc1_:§]D§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§,@§ = null;
         var _loc7_:§;;§ = null;
         var _loc8_:§`!X§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§=!Z§)
         {
            return;
         }
         while(this.§8!U§.length > 0)
         {
            _loc1_ = this.§8!U§.shift();
            _loc2_ = _loc1_.§+!>§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.§7!O§(_loc1_.push);
            for each(_loc6_ in this.§ G§)
            {
               if((_loc7_ = _loc6_ as §;;§) && !this.§8m§(_loc7_))
               {
                  if((_loc8_ = this.§[!4§(_loc3_,_loc4_,_loc7_)).§>!>§ <= _loc1_.§+!>§)
                  {
                     _loc9_ = _loc1_.push * this.§`!z§(_loc8_.§>!>§,_loc1_.§+!>§);
                     if(_loc8_.§>!>§ > 0)
                     {
                        (_loc10_ = new Point(_loc8_.§ ;§.x - _loc3_,_loc8_.§ ;§.y - _loc4_)).normalize(1);
                        _loc11_ = _loc9_ * _loc10_.x;
                        _loc12_ = _loc9_ * _loc10_.y;
                        _loc7_.§ 2§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§ ;§.x,_loc8_.§ ;§.y));
                     }
                  }
                  if(_loc8_.§>!>§ <= _loc1_.§8!b§)
                  {
                     _loc13_ = _loc5_ * this.§`!z§(_loc8_.§>!>§,_loc1_.§8!b§);
                     this.§3c§(_loc7_,_loc13_);
                  }
               }
            }
            this.§"!,§(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function §"!,§(param1:§]D§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§+"1§.particles.§;$§(this.§9,§(param1.type),§@!`§.§<<§,§3?§.§5!e§,param2,param3,600,"",§3?§.§8!p§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§+"1§.particles.§;$§(§3?§.§[!N§,§@!`§.§<<§,§3?§.§72§,param2,param3,_loc7_,"",§3?§.§8!p§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §9,§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §3?§.§0"5§;
      }
      
      public function §;Y§(param1:Number) : void
      {
         var _loc4_:§;;§ = null;
         var _loc2_:§,@§ = null;
         var _loc3_:int = this.§ G§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§ G§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§,q§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §;;§;
               if(this.objectIsOutOfBounds(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§,y§(§>"§.§@4§);
                  }
                  this.§,q§(_loc3_,false);
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§,y§(§>"§.§@4§);
                  this.§,q§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§2D§(param1);
         this.§[A§();
      }
      
      protected function §'!d§(param1:Number) : void
      {
         var _loc2_:§0R§ = null;
         var _loc3_:int = this.§1!r§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§1!r§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§0!i§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §2D§(param1:Number) : void
      {
         this.§;,§(param1);
         this.§3Y§();
      }
      
      protected function §;,§(param1:Number) : void
      {
         var _loc3_:§9!l§ = null;
         var _loc4_:§,@§ = null;
         var _loc2_:int = this.§]$§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]$§[_loc2_];
            if(_loc3_.§ !l§)
            {
               if(!_loc3_.update(param1))
               {
                  _loc4_ = this.§?v§(_loc3_.objectId1);
                  this.removeObject(_loc4_,true);
                  _loc4_ = this.§?v§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§]$§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §7D§(param1:§<6§) : void
      {
         var _loc2_:§;;§ = param1.debug_object_1;
         var _loc3_:§;;§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§?v§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§?v§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§>l§ == null)
         {
            param1.§>l§ = new §break§(4,4,4294901760);
            this.§9!J§.addChild(param1.§>l§);
         }
         param1.§>l§.x = _loc4_;
         param1.§>l§.y = _loc5_;
         param1.§>l§.width = _loc8_;
         param1.§>l§.rotation = _loc9_;
      }
      
      protected function §0!b§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §3Y§() : void
      {
         var _loc1_:§<6§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§-!§)
         {
            if(§#!N§)
            {
               this.§7D§(_loc1_);
            }
            if(_loc1_.§7#§ && _loc1_.§]!3§ && _loc1_.§0!m§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §"k§.§7"-§)
               {
                  _loc4_ = (_loc1_.§-!9§ as b2PrismaticJoint).§&"2§();
                  _loc5_ = (_loc1_.§-!9§ as b2PrismaticJoint).§6_§();
                  _loc6_ = this.§0!b§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§-!9§ as b2PrismaticJoint).§4u§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §"k§.§+!O§)
               {
                  _loc7_ = (_loc1_.§-!9§ as b2RevoluteJoint).§+! §();
                  if((_loc5_ = (_loc1_.§-!9§ as b2RevoluteJoint).§6_§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§-!9§ as b2RevoluteJoint).§4u§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §<E§() : void
      {
         var _loc1_:§<6§ = null;
         while(this.§-!§.length > 0)
         {
            _loc1_ = this.§-!§.pop();
            this.§7O§(_loc1_);
         }
      }
      
      public function objectIsOutOfBounds(param1:§,@§) : Boolean
      {
         this.§`"4§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §["%§.§2!W§) && param1.§ 2§() && this.§["§(param1.§ 2§().GetPosition().x,param1.§ 2§().GetPosition().y))
         {
            if(param1 is §;;§)
            {
               §;;§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §`"4§(param1:§,@§) : void
      {
      }
      
      public function §&X§(param1:Number, param2:Number) : Boolean
      {
         return this.§+"1§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §["§(param1:Number, param2:Number) : Boolean
      {
         return this.§+"1§.§+$§.§&G§(param1,param2);
      }
      
      public function §0!i§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§0R§ = this.§1!r§[param1];
         this.§ "6§(_loc2_.sprite);
         this.§1!r§[param1] = null;
         this.§1!r§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function § ",§(param1:§;;§) : Boolean
      {
         return true;
      }
      
      protected function §8d§(param1:§;;§) : Point
      {
         var _loc2_:Number = param1.§ 2§().GetPosition().x;
         var _loc3_:Number = param1.§ 2§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §,q§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§;;§ = null;
         var _loc6_:§9!l§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§,@§;
         if((_loc4_ = this.§ G§[param1]) is §;!1§)
         {
            ++this.§-!R§;
         }
         else if(_loc4_ is §6",§)
         {
            --this.§'!j§;
         }
         if(_loc4_ == this.§3!>§)
         {
            this.§3!>§ = null;
         }
         if(_loc4_ is §;;§)
         {
            _loc5_ = _loc4_ as §;;§;
            if(param2 && _loc4_.levelItem.score > 0)
            {
               _loc7_ = this.§8d§(_loc5_);
               _loc8_ = §3?§.§+0§(_loc5_.itemName);
               _loc9_ = this.§ ",§(_loc5_);
               this.§+"1§.addScore(_loc5_.levelItem.score,§,!l§.§"J§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this);
            }
            this.§!!y§(_loc5_);
            for each(_loc6_ in this.§]$§)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.§ !l§ = true;
               }
            }
         }
         this.§ "6§(_loc4_.sprite);
         this.§ G§[param1] = null;
         this.§ G§.splice(param1,1);
         if(_loc4_ is §]!A§)
         {
            if((_loc10_ = this.§'8§.indexOf(_loc4_)) >= 0)
            {
               this.§'8§.splice(_loc10_,1);
            }
         }
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      private function § "6§(param1:§ !=§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§,@§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§,q§(this.§ G§.indexOf(param1),param2);
         }
      }
      
      public function §?G§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+"1§.§="%§();
         }
      }
      
      public function §!"§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§+"1§.§!"§(param1,param2,param3,param4);
      }
      
      public function §2v§(param1:Number, param2:Number) : void
      {
         this.§0z§.x = -param1;
         this.§0z§.y = -param2;
         this.§3P§.x = -param1;
         this.§3P§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§,@§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ G§.length)
         {
            _loc2_ = this.§ G§[_loc1_];
            if(_loc2_ && _loc2_ is §;!1§ && (_loc2_ as §;!1§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §+e§(param1:Boolean = false) : int
      {
         var _loc4_:§;!1§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§ G§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ G§[_loc3_] as §;!1§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§86§ && !_loc4_.§[u§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §>!C§() : int
      {
         var _loc2_:§;;§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ G§)
         {
            if(_loc2_ is §]!§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §,!A§() : int
      {
         var _loc2_:§;;§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ G§)
         {
            if(_loc2_ && _loc2_.§<7§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§;!1§ = null;
         var _loc2_:int = this.§ G§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ G§[_loc2_] as §;!1§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §^!D§() : Boolean
      {
         var _loc2_:§6",§ = null;
         var _loc1_:int = this.§ G§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ G§[_loc1_] as §6",§;
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
         var _loc2_:§;;§ = null;
         var _loc1_:int = this.§ G§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ G§[_loc1_] as §;;§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§7g§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§>!m§())
               {
                  return false;
               }
               if(_loc2_ is §6",§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §]H§(param1:Boolean = false) : §;!1§
      {
         var _loc7_:§;!1§ = null;
         var _loc2_:int = this.§ G§.length;
         var _loc3_:int = this.§+e§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§ G§[_loc6_] as §;!1§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§86§ && !_loc7_.§[u§)
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
      
      public function §?"1§() : int
      {
         var _loc3_:§;;§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§ G§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ G§[_loc2_] as §;;§;
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
         return int(_loc1_ + this.§+"1§.slingshot.§?"1§());
      }
      
      protected function §-P§(param1:§,@§, param2:§,@§) : Boolean
      {
         if(param1 is §;;§ && param2 is §;;§ && !(param1 as §;;§).§3F§() && !(param2 as §;;§).§3F§())
         {
            return false;
         }
         return true;
      }
      
      public function §5E§() : void
      {
         this.§'!j§ = 0;
      }
      
      protected function §&!U§(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function §7!O§(param1:Number) : void
      {
      }
      
      protected function §9?§(param1:§;;§, param2:§;;§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §6",§)
         {
            return 1;
         }
         if(param1 is §6",§)
         {
            return Number(param1.§9""§(param2.§use §()));
         }
         return 1;
      }
      
      protected function §&!I§(param1:§;;§, param2:§;;§) : Number
      {
         if(param2 is §6",§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §-o§(param1:§;;§, param2:§;;§) : Number
      {
         var _loc4_:Number = this.§&!I§(param1,param2);
         var _loc5_:Number = this.§&!I§(param2,param1);
         var _loc6_:Number = param1.§ 2§().GetMass();
         var _loc7_:Number = param2.§ 2§().GetMass();
         var _loc8_:b2Vec2 = param1.§!k§();
         var _loc9_:b2Vec2 = param2.§!k§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §3!i§(param1:§,@§, param2:§,@§) : Boolean
      {
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§=!Z§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc3_:§;;§ = param1 as §;;§;
         var _loc4_:§;;§ = param2 as §;;§;
         if(!_loc3_ || !_loc4_)
         {
            return true;
         }
         if(_loc3_.destroysCollidingObjects || _loc4_.§0!K§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc3_,true);
            _loc3_.causedDamageToObjects();
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc3_.§0!K§)
         {
            _loc3_.applyDamage(_loc3_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(!this.§-P§(_loc3_,_loc4_))
         {
            return false;
         }
         if(_loc3_ is §6",§ && _loc4_ is §6",§)
         {
            return true;
         }
         var _loc5_:Number = this.§-o§(_loc3_,_loc4_);
         var _loc6_:Number = Math.max(0,_loc3_.health);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         this.§&!U§(_loc5_,_loc6_,_loc7_);
         var _loc8_:Number = this.§9?§(_loc3_,_loc4_);
         var _loc9_:Number = this.§9?§(_loc4_,_loc3_);
         var _loc10_:Number = _loc3_.applyDamage(_loc5_ * _loc9_,this,_loc4_,true);
         var _loc11_:Number = _loc4_.applyDamage(_loc5_ * _loc8_,this,_loc3_,true);
         if(_loc10_ < _loc6_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc11_ < _loc7_)
         {
            _loc3_.causedDamageToObjects();
         }
         if(_loc3_ is §6",§)
         {
            if(_loc11_ <= 0)
            {
               _loc12_ = _loc3_.§+&§(_loc4_.§use §());
               this.§"$§(_loc3_ as §6",§,_loc5_ * _loc8_,_loc7_,_loc12_);
               return false;
            }
         }
         if(_loc4_ is §6",§)
         {
            if(_loc10_ <= 0)
            {
               _loc13_ = _loc4_.§+&§(_loc3_.§use §());
               this.§"$§(_loc4_ as §6",§,_loc5_ * _loc9_,_loc6_,_loc13_);
               return false;
            }
         }
         return _loc10_ <= 0 && _loc11_ <= 0;
      }
      
      public function §-+§(param1:§,@§, param2:§,@§) : void
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
      
      protected function §"$§(param1:§6",§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = (param2 - param3) / param2;
         if(isNaN(_loc5_))
         {
            _loc5_ = 0;
         }
         if((_loc5_ *= param4) > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:b2Vec2 = param1.§!k§();
         param1.§1f§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §#A§() : void
      {
         var _loc2_:§;;§ = null;
         var _loc1_:int = this.§ G§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ G§[_loc1_] as §;;§;
            if(_loc2_ != null && _loc2_ is §;!1§)
            {
               this.§,q§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §]c§() : void
      {
         var _loc2_:§;;§ = null;
         var _loc1_:int = this.§ G§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ G§[_loc1_] as §;;§;
            if(_loc2_ != null && _loc2_.§=!7§())
            {
               this.§,q§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §6X§() : int
      {
         return this.§ G§.length;
      }
      
      public function §71§(param1:§2"4§) : void
      {
         var _loc4_:§;;§ = null;
         var _loc5_:§4r§ = null;
         var _loc6_:§"k§ = null;
         var _loc7_:§<6§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ G§.length)
         {
            if(_loc4_ = this.§ G§[_loc2_] as §;;§)
            {
               if(_loc4_.§2u§)
               {
                  if(!_loc4_.§7g§())
                  {
                     (_loc5_ = new §4r§()).angle = _loc4_.§<_§() / (Math.PI / 180);
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§ 2§().GetPosition().x;
                     _loc5_.y = _loc4_.§ 2§().GetPosition().y;
                     param1.§1!w§(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§-!§.length)
         {
            _loc7_ = this.§-!§[_loc3_];
            (_loc6_ = new §"k§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§4J§,_loc7_.§]!3§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§0!m§,_loc7_.motorSpeed,_loc7_.§7#§,_loc7_.maxTorque)).§?!k§ = _loc7_.§?!k§;
            param1.§[a§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §?p§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§ G§.length)
         {
            if(this.§ G§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§ G§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§;;§ = null;
         this.§5B§ = param1;
         this.§4!3§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ G§.length)
         {
            _loc3_ = this.§ G§[_loc2_] as §;;§;
            if(_loc3_ && _loc3_.§<7§())
            {
               _loc3_.sprite.visible = !this.§5B§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§=!Z§ = param1;
      }
      
      public function §-!Q§() : int
      {
         return this.§9t§;
      }
      
      public function §6!K§() : int
      {
         return this.§-!R§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§+"1§.damageScoreMultiplier;
      }
   }
}
