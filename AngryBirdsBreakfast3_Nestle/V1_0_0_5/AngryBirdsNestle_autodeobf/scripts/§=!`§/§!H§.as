package §=!`§
{
   import § !T§.§7@§;
   import §#!4§.§0!q§;
   import §#!4§.§=f§;
   import §#!4§.§`v§;
   import §%z§.§#!l§;
   import §%z§.§&;§;
   import §%z§.§,g§;
   import §%z§.§-i§;
   import §%z§.§3!B§;
   import §%z§.§9!n§;
   import §%z§.§;#§;
   import §,!q§.§#!H§;
   import §,!q§.§+Q§;
   import §,!q§.Sprite;
   import §-!A§.b2Vec2;
   import §-!b§.§<W§;
   import §-!b§.§=!T§;
   import §0!s§.§&>§;
   import §0!s§.§1!;§;
   import §0!s§.§5!L§;
   import §0!s§.§>"4§;
   import §;!r§.b2PrismaticJoint;
   import §;!r§.b2RevoluteJoint;
   import §=!R§.§3!S§;
   import §?V§.Texture;
   import §@!6§.§3!5§;
   import §]k§.§9J§;
   import §]k§.§<S§;
   import §]k§.§]W§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!H§ implements §'`§
   {
      
      private static const §!B§:Boolean = false;
      
      private static const §[F§:int = 1000000000;
      
      public static const §#h§:int = -1;
      
      public static const §"!W§:int = -2;
       
      
      protected var §!#§:Vector.<§=6§>;
      
      protected var §1!,§:Vector.<§0!K§>;
      
      protected var §^9§:Vector.<§`v§>;
      
      private var §,?§:int = 1000000000;
      
      public var §#g§:§<S§;
      
      protected var §!!O§:Vector.<§,F§>;
      
      protected var §=v§:§,!q§.Sprite;
      
      protected var §69§:§,!q§.Sprite;
      
      protected var §9!7§:§,!q§.Sprite;
      
      protected var §4!x§:§,!q§.Sprite;
      
      protected var §]!M§:Vector.<Texture>;
      
      protected var §#r§:Vector.<§1!;§>;
      
      protected var § !g§:int = 1;
      
      protected var §6Y§:Vector.<§>"4§>;
      
      protected var §1_§:int = 0;
      
      private var §8!4§:int = 0;
      
      private var §]!Q§:int = 0;
      
      private var §4"'§:§5!L§;
      
      private var §6n§:§6!-§;
      
      private var §8<§:Boolean = true;
      
      private var §&!l§:Boolean = true;
      
      public function §!H§(param1:§<S§, param2:§7@§, param3:§,!q§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§!#§ = new Vector.<§=6§>();
         this.§1!,§ = new Vector.<§0!K§>();
         this.§^9§ = new Vector.<§`v§>();
         this.§!!O§ = new Vector.<§,F§>();
         this.§]!M§ = new Vector.<Texture>();
         this.§6Y§ = new Vector.<§>"4§>();
         this.§4"'§ = new §5!L§();
         super();
         this.§#g§ = param1;
         this.§=v§ = param3;
         this.§=v§.§ w§ = false;
         this.§&!l§ = true;
         this.§8<§ = true;
         this.§69§ = new §,!q§.Sprite();
         this.§9!7§ = new §,!q§.Sprite();
         this.§4!x§ = new §,!q§.Sprite();
         this.§=v§.addChild(this.§69§);
         this.§=v§.addChild(this.§9!7§);
         if(param2.§#!,§)
         {
            _loc5_ = (this.§#g§.§-"3§.§>!n§ + this.§#g§.§-"3§.§@!F§) / 2;
            _loc6_ = 0 + §]W§.§+C§;
            this.§`!k§(param4,_loc5_,_loc6_,0,§!H§.§#h§);
         }
         this.§83§(param2);
      }
      
      public function get §3M§() : §,!q§.Sprite
      {
         return this.§4!x§;
      }
      
      public function get §@B§() : §,!q§.Sprite
      {
         return this.§=v§;
      }
      
      public function get activeObject() : §^^§
      {
         return this.§6n§;
      }
      
      public function get objectCount() : int
      {
         return this.§!#§.length;
      }
      
      public function §@"+§(param1:String) : §9!n§
      {
         return this.§#g§.levelItemManager.§4!1§(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§6n§)
         {
            _loc3_ = this.§6n§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function §83§(param1:§7@§) : void
      {
         var _loc3_:§5!L§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§9!n§ = null;
         var _loc6_:§&>§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§#g§.levelItemManager.§4!1§(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§?!r§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§;!n§();
         this.§2-§(true);
         this.§#r§ = new Vector.<§1!;§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§<!P§)
         {
            _loc6_ = param1.§^e§(_loc2_);
            this.§#!J§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§!#§.length > 0)
         {
            this.§&!a§(0,false,true);
         }
         while(this.§^9§.length > 0)
         {
            this.§`w§(0);
         }
         this.§!#§ = null;
         this.§1!,§ = null;
         this.§^9§ = null;
         this.§6Y§ = null;
         if(this.§=v§)
         {
            this.§=v§.dispose();
            this.§=v§ = null;
         }
         this.§69§ = null;
         this.§9!7§ = null;
         if(this.§4!x§)
         {
            this.§4!x§.dispose();
            this.§4!x§ = null;
         }
         while(this.§]!M§.length > 0)
         {
            _loc1_ = this.§]!M§.pop();
            this.§#g§.§0p§.§1!#§(_loc1_);
         }
      }
      
      private function §2-§(param1:Boolean) : void
      {
         this.§69§.visible = param1;
      }
      
      private function §;!n§() : void
      {
         var _loc3_:§=6§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§^^§ = null;
         var _loc6_:§-i§ = null;
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
         var _loc21_:§+Q§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§^^§> = new Vector.<§^^§>();
         for each(_loc3_ in this.§!#§)
         {
            if((_loc5_ = _loc3_ as §^^§) && _loc5_.§4W§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.§0!U§(),_loc6_.§!!u§()) / §<S§.§;!Q§ * Math.sqrt(2);
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
            _loc8_ = this.§#g§.camera.§2!R§ / §<S§.§;!Q§;
            _loc9_ = this.§#g§.camera.§]!N§ / §<S§.§;!Q§;
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
            _loc18_ = this.§ !@§();
            this.§17§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§3!>§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§#g§.§0p§.§2!8§(_loc17_);
            this.§]!M§.push(_loc20_);
            (_loc21_ = new §+Q§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§69§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §3!>§(param1:Vector.<§^^§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§^^§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§-i§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §,g§)
            {
               this.§,P§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§6!j§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §#!l§)
            {
               if((_loc12_ as §#!l§).§6#§.length == 4)
               {
                  this.§,P§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§6!j§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §#!l§).§6#§.length == 3)
               {
                  this.§<"1§(_loc12_ as §#!l§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§6!j§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §&;§)
            {
               this.§%!e§(_loc12_ as §&;§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §,P§(param1:§-i§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.§0!U§() / §<S§.§;!Q§ * param9;
         var _loc13_:Number = param1.§!!u§() / §<S§.§;!Q§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §<"1§(param1:§#!l§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.§6#§.length)
         {
            _loc14_ = param1.§6#§[_loc13_];
            _loc12_.push(_loc14_.x / §<S§.§;!Q§ * param8,_loc14_.y / §<S§.§;!Q§ * param8);
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
      
      protected function §%!e§(param1:§&;§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §<S§.§;!Q§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §2X§() : String
      {
         return this.§#g§.background.§<-§();
      }
      
      protected function § !@§() : Number
      {
         return 1;
      }
      
      private function §17§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§2X§();
         var _loc5_:§=!T§;
         if(_loc5_ = this.§#g§.§ _§.§^"§(_loc4_))
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
      
      protected function addObjectBird(param1:§5!L§, param2:§,!q§.Sprite, param3:§<W§, param4:§9!n§, param5:Number = 1.0, param6:Boolean = true) : §6!-§
      {
         var _loc11_:§6!-§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §+U§(param2,param3,this.§#g§.§3n§.§'!7§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §24§(param2,param3,this.§#g§.§3n§.§'!7§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §5!X§(param2,param3,this.§#g§.§3n§.§'!7§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §0`§(param2,param3,this.§#g§.§3n§.§'!7§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §+M§(param2,param3,this.§#g§.§3n§.§'!7§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §,!H§(param2,param3,this.§#g§.§3n§.§'!7§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §use§(param2,param3,this.§#g§.§3n§.§'!7§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §8!&§(param2,param3,this.§#g§.§3n§.§'!7§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §?!G§(param2,param3,this.§#g§.§3n§.§'!7§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §0!d§(param2,param3,this.§#g§.§3n§.§'!7§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            default:
               _loc11_ = new §6!-§(param2,param3,this.§#g§.§3n§.§'!7§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§1_§ > 0;
      }
      
      protected function §3V§(param1:§5!L§, param2:§,!q§.Sprite, param3:§<W§, param4:§9!n§, param5:Number = 1.0) : §&6§
      {
         return new §&6§(param2,param3,this.§#g§.§3n§.§'!7§,param4,param1.x,param1.y,param1.angle,param5);
      }
      
      public function §`!k§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §=6§
      {
         this.§4"'§.type = param1;
         this.§4"'§.x = param2;
         this.§4"'§.y = param3;
         this.§4"'§.angle = param4;
         this.§4"'§.§!X§ = 0;
         this.§4"'§.§'!4§ = 0;
         return this.§?!r§(this.§4"'§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §=!<§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §=6§
      {
         this.§4"'§.type = param1;
         this.§4"'§.x = param2;
         this.§4"'§.y = param3;
         this.§4"'§.angle = param4;
         this.§4"'§.§!X§ = param6;
         this.§4"'§.§'!4§ = param7;
         return this.§?!r§(this.§4"'§,param5,false,false,false,param8,param9);
      }
      
      protected function §?!r§(param1:§5!L§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §=6§
      {
         var _loc8_:§,!q§.Sprite = new §,!q§.Sprite();
         var _loc9_:§=6§;
         if((_loc9_ = this.§4N§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §^^§ && (_loc9_ as §^^§).§4W§())
         {
            _loc8_.visible = !this.§8<§;
         }
         if(_loc9_ is §6!-§ && !(_loc9_ is §0!d§))
         {
            ++this.§1_§;
         }
         if(!param7)
         {
            this.§9!7§.§1!F§(_loc8_);
         }
         else
         {
            this.§4!x§.§1!F§(_loc8_);
         }
         if(param3)
         {
            this.§#g§.§'Z§(_loc9_);
         }
         if(param4 && _loc9_ is §6!-§)
         {
            this.§6n§ = §6!-§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §4N§(param1:§5!L§, param2:int, param3:§,!q§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §=6§
      {
         var _loc7_:§^^§ = null;
         if(param2 == §"!W§)
         {
            param2 = this.§,?§;
            ++this.§,?§;
         }
         else
         {
            if(param2 >= §[F§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §[F§);
            }
            if(this.§@!&§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§=6§;
         if((_loc6_ = this.§!8§(param1,param3,param4,param5)) is §6!-§)
         {
            ++this.§]!Q§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §^^§;
            if(_loc6_ is §`v§)
            {
               this.§^9§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§<"&§(param2);
               }
               this.§!#§.push(_loc6_);
               if(_loc6_ is §0!K§)
               {
                  this.§1!,§.push(_loc6_);
               }
            }
         }
         return _loc6_;
      }
      
      protected function §6!6§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function §<g§(param1:§5!L§, param2:§,!q§.Sprite, param3:§<W§, param4:§9!n§, param5:int, param6:Number = 1.0) : §=6§
      {
         return new §^!F§(param2,param3,this.§#g§.§3n§.§'!7§,param4,param1.x,param1.y,param1.angle,param6,param5);
      }
      
      protected function §!8§(param1:§5!L§, param2:§,!q§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §=6§
      {
         var _loc5_:§9!n§;
         if(!(_loc5_ = this.§#g§.levelItemManager.§4!1§(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§6!6§();
         }
         var _loc7_:§<W§ = this.§#g§.§-h§.§ !u§(_loc6_);
         var _loc8_:§=6§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §9!n§.§7O§)
         {
            _loc8_ = this.§3V§(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §9!n§.§&!Z§ || _loc5_.itemType == §9!n§.§"A§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.§<g§(param1,param2,_loc7_,_loc5_,§,F§.§'$§,param4);
            }
            else if(_loc5_.itemName == §0`§.§-@§)
            {
               _loc8_ = this.§<g§(param1,param2,_loc7_,_loc5_,§,F§.§6!k§,param4);
            }
            else
            {
               _loc8_ = new §[B§(param2,_loc7_,this.§#g§.§3n§.§'!7§,_loc5_,param1.x,param1.y,param1.angle,param4);
            }
         }
         else
         {
            _loc8_ = new §^^§(param2,_loc7_,this.§#g§.§3n§.§'!7§,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§#g§.addScore(param1,§9J§.§5^§,param3,param4,param5,param6);
      }
      
      public function §6!=§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§#g§.particles.§6!=§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      protected function §@V§(param1:§^^§) : void
      {
         var _loc4_:§1!;§ = null;
         var _loc5_:§1!;§ = null;
         var _loc6_:§=6§ = null;
         var _loc7_:§=6§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§#r§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§#r§[_loc3_];
            if(this.§#r§[_loc3_].id1 == _loc2_ || this.§#r§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§7m§)
               {
                  _loc6_ = _loc4_.§7m§.§;!R§().GetUserData() as §=6§;
                  _loc7_ = _loc4_.§7m§.§[!Q§().GetUserData() as §=6§;
                  if(_loc6_)
                  {
                     _loc6_.§4_§(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.§4_§(_loc6_);
                  }
               }
               _loc5_ = this.§#r§.pop();
               if(_loc3_ < this.§#r§.length)
               {
                  this.§#r§[_loc3_] = _loc5_;
               }
               this.§`" §(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §#!J§(param1:§&>§) : void
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§1!;§ = §1!;§.§#!J§(param1);
         this.§#r§.push(_loc4_);
         var _loc5_:§=6§ = this.§@!&§(_loc2_);
         var _loc6_:§=6§ = this.§@!&§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §&>§.§7h§)
            {
               _loc4_.§7m§ = this.§#g§.§3n§.§'!7§.§0!&§(_loc4_.§'!q§(_loc5_,_loc6_));
            }
            else
            {
               this.§6Y§.push(new §>"4§(_loc2_,_loc3_,_loc4_.§9" §));
            }
            _loc5_.§]!$§(_loc6_);
            _loc6_.§]!$§(_loc5_);
         }
      }
      
      protected function §`" §(param1:§1!;§) : void
      {
         if(param1.§7m§)
         {
            this.§#g§.§3n§.§'!7§.§ C§(param1.§7m§);
         }
         if(param1.§4!b§)
         {
            if(this.§9!7§.contains(param1.§4!b§))
            {
               this.§9!7§.removeChild(param1.§4!b§,true);
            }
         }
      }
      
      public function §=P§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§!!O§.push(§,F§.§0!V§(param1,param2,param3));
         this.§^!t§(param1);
      }
      
      protected function §^!t§(param1:int) : void
      {
         §3!5§.§<!9§("TntExplosions","ChannelExplosions");
      }
      
      public function § "#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§!!O§.push(§,F§.§'8§(param1,param2,param3,param4,param5,param6));
         §3!5§.§<!9§("TntExplosions","ChannelExplosions");
      }
      
      public function §#5§(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§#g§.§3n§.§'!7§.§,""§());
         return param4;
      }
      
      public function get §8!3§() : Number
      {
         return this.§#g§.§8!3§;
      }
      
      public function §#!r§(param1:Number, param2:Number) : int
      {
         var _loc4_:§^^§ = null;
         var _loc3_:int = this.§!#§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§!#§[_loc3_] as §^^§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §^^§
      {
         var _loc4_:§^^§ = null;
         var _loc3_:int = this.§!#§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§!#§[_loc3_] as §^^§)
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
      
      public function getObject(param1:int) : §=6§
      {
         return this.§!#§[param1];
      }
      
      public function §@!&§(param1:int) : §^^§
      {
         var _loc2_:§=6§ = null;
         var _loc3_:§^^§ = null;
         for each(_loc2_ in this.§!#§)
         {
            _loc3_ = _loc2_ as §^^§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §!5§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§!#§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§!#§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§8!W§(param1);
         _loc4_ = this.§^9§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§^9§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §'!d§(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function §%!y§(param1:Number, param2:Number, param3:§^^§) : §3!S§
      {
         var _loc4_:Number = param3.§^",§().GetPosition().x - param1;
         var _loc5_:Number = param3.§^",§().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§3!S§;
         (_loc7_ = new §3!S§()).§]!w§ = _loc6_;
         _loc7_.§@!"§ = new Point(param3.§^",§().GetPosition().x,param3.§^",§().GetPosition().y);
         return _loc7_;
      }
      
      protected function §7!U§(param1:§^^§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function §,!§() : void
      {
         var _loc1_:§,F§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§=6§ = null;
         var _loc7_:§^^§ = null;
         var _loc8_:§3!S§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§&!l§)
         {
            return;
         }
         while(this.§!!O§.length > 0)
         {
            _loc1_ = this.§!!O§.shift();
            _loc2_ = _loc1_.§"!m§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.§""5§(_loc1_.push);
            for each(_loc6_ in this.§!#§)
            {
               if(_loc6_ is §^^§)
               {
                  if(_loc7_ = §^^§(_loc6_))
                  {
                     if((_loc8_ = this.§%!y§(_loc3_,_loc4_,_loc7_)).§]!w§ <= _loc1_.§"!m§)
                     {
                        _loc9_ = _loc1_.push * this.§'!d§(_loc8_.§]!w§,_loc1_.§"!m§);
                        if(_loc8_.§]!w§ > 0)
                        {
                           (_loc10_ = new Point(_loc8_.§@!"§.x - _loc3_,_loc8_.§@!"§.y - _loc4_)).normalize(1);
                           _loc11_ = _loc9_ * _loc10_.x;
                           _loc12_ = _loc9_ * _loc10_.y;
                           _loc7_.§^",§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§@!"§.x,_loc8_.§@!"§.y));
                        }
                     }
                     if(_loc8_.§]!w§ <= _loc1_.§,!d§)
                     {
                        _loc13_ = _loc5_ * this.§'!d§(_loc8_.§]!w§,_loc1_.§,!d§);
                        this.§7!U§(_loc7_,_loc13_);
                     }
                  }
               }
            }
            this.§75§(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function §75§(param1:§,F§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§#g§.particles.§6!=§(this.§-B§(param1.type),§0!q§.§[!V§,§=f§.§<!m§,param2,param3,600,"",§=f§.§8J§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§#g§.particles.§6!=§(§=f§.§]]§,§0!q§.§[!V§,§=f§.§@m§,param2,param3,_loc7_,"",§=f§.§8J§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §-B§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §=f§.§ I§;
      }
      
      public function §'?§(param1:Number) : void
      {
         var _loc4_:§^^§ = null;
         var _loc2_:§=6§ = null;
         var _loc3_:int = this.§!#§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§!#§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§&!a§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §^^§;
               if(this.objectIsOutOfBounds(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§&!z§(§;#§.§]X§);
                  }
                  this.§&!a§(_loc3_,false);
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§&!z§(§;#§.§]X§);
                  this.§&!a§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§?=§(param1);
         this.§,!§();
      }
      
      protected function §8!W§(param1:Number) : void
      {
         var _loc2_:§`v§ = null;
         var _loc3_:int = this.§^9§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§^9§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§`w§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §?=§(param1:Number) : void
      {
         this.§%!=§(param1);
         this.§!m§();
      }
      
      protected function §%!=§(param1:Number) : void
      {
         var _loc3_:§>"4§ = null;
         var _loc4_:§=6§ = null;
         var _loc2_:int = this.§6Y§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§6Y§[_loc2_];
            if(_loc3_.§6!d§)
            {
               if(!_loc3_.update(param1))
               {
                  _loc4_ = this.§@!&§(_loc3_.objectId1);
                  this.removeObject(_loc4_,true);
                  _loc4_ = this.§@!&§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§6Y§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §^=§(param1:§1!;§) : void
      {
         var _loc2_:§^^§ = param1.debug_object_1;
         var _loc3_:§^^§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§@!&§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§@!&§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§4!b§ == null)
         {
            param1.§4!b§ = new §#!H§(4,4,4294901760);
            this.§9!7§.addChild(param1.§4!b§);
         }
         param1.§4!b§.x = _loc4_;
         param1.§4!b§.y = _loc5_;
         param1.§4!b§.width = _loc8_;
         param1.§4!b§.rotation = _loc9_;
      }
      
      protected function §9!D§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §!m§() : void
      {
         var _loc1_:§1!;§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§#r§)
         {
            if(§!B§)
            {
               this.§^=§(_loc1_);
            }
            if(_loc1_.§?!7§ && _loc1_.§,t§ && _loc1_.§1N§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §&>§.§]!a§)
               {
                  _loc4_ = (_loc1_.§7m§ as b2PrismaticJoint).§&!V§();
                  _loc5_ = (_loc1_.§7m§ as b2PrismaticJoint).§7i§();
                  _loc6_ = this.§9!D§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§7m§ as b2PrismaticJoint).§!-§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §&>§.§^h§)
               {
                  _loc7_ = (_loc1_.§7m§ as b2RevoluteJoint).§<§();
                  if((_loc5_ = (_loc1_.§7m§ as b2RevoluteJoint).§7i§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§7m§ as b2RevoluteJoint).§!-§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §4!=§() : void
      {
         var _loc1_:§1!;§ = null;
         while(this.§#r§.length > 0)
         {
            _loc1_ = this.§#r§.pop();
            this.§`" §(_loc1_);
         }
      }
      
      public function objectIsOutOfBounds(param1:§=6§) : Boolean
      {
         this.§%!v§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §3!B§.§5w§) && param1.§^",§() && this.§9"&§(param1.§^",§().GetPosition().x,param1.§^",§().GetPosition().y))
         {
            if(param1 is §^^§)
            {
               §^^§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §%!v§(param1:§=6§) : void
      {
      }
      
      public function §-E§(param1:Number, param2:Number) : Boolean
      {
         return this.§#g§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §9"&§(param1:Number, param2:Number) : Boolean
      {
         return this.§#g§.§-"3§.§'!%§(param1,param2);
      }
      
      public function §`w§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§`v§ = this.§^9§[param1];
         this.§@!>§(_loc2_.sprite);
         this.§^9§[param1] = null;
         this.§^9§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function §!!q§(param1:§^^§) : Boolean
      {
         return true;
      }
      
      protected function §@q§(param1:§^^§) : Point
      {
         var _loc2_:Number = param1.§^",§().GetPosition().x;
         var _loc3_:Number = param1.§^",§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §&!a§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§^^§ = null;
         var _loc6_:§>"4§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§=6§;
         if((_loc4_ = this.§!#§[param1]) is §&6§)
         {
            ++this.§8!4§;
         }
         else if(_loc4_ is §6!-§)
         {
            --this.§1_§;
         }
         if(_loc4_ == this.§6n§)
         {
            this.§6n§ = null;
         }
         if(_loc4_ is §^^§)
         {
            _loc5_ = _loc4_ as §^^§;
            if(param2 && _loc4_.levelItem.score > 0)
            {
               _loc7_ = this.§@q§(_loc5_);
               _loc8_ = §=f§.§;"2§(_loc5_.itemName);
               _loc9_ = this.§!!q§(_loc5_);
               this.§#g§.addScore(_loc5_.levelItem.score,§9J§.§9""§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this);
            }
            this.§@V§(_loc5_);
            for each(_loc6_ in this.§6Y§)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.§6!d§ = true;
               }
            }
         }
         this.§@!>§(_loc4_.sprite);
         this.§!#§[param1] = null;
         this.§!#§.splice(param1,1);
         if(_loc4_ is §0!K§)
         {
            if((_loc10_ = this.§1!,§.indexOf(_loc4_)) >= 0)
            {
               this.§1!,§.splice(_loc10_,1);
            }
         }
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      private function §@!>§(param1:§,!q§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§=6§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§&!a§(this.§!#§.indexOf(param1),param2);
         }
      }
      
      public function §&!%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#g§.§&m§();
         }
      }
      
      public function §-!t§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§#g§.§-!t§(param1,param2,param3,param4);
      }
      
      public function §7Z§(param1:Number, param2:Number) : void
      {
         this.§=v§.x = -param1;
         this.§=v§.y = -param2;
         this.§4!x§.x = -param1;
         this.§4!x§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§=6§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!#§.length)
         {
            _loc2_ = this.§!#§[_loc1_];
            if(_loc2_ && _loc2_ is §&6§ && (_loc2_ as §&6§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §!!p§(param1:Boolean = false) : int
      {
         var _loc4_:§&6§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§!#§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§!#§[_loc3_] as §&6§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§3!G§ && !_loc4_.§5!;§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §8!q§() : int
      {
         var _loc2_:§^^§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!#§)
         {
            if(_loc2_ is §[B§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §>!+§() : int
      {
         var _loc2_:§^^§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!#§)
         {
            if(_loc2_ && _loc2_.§4W§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§&6§ = null;
         var _loc2_:int = this.§!#§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!#§[_loc2_] as §&6§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §8f§() : Boolean
      {
         var _loc2_:§6!-§ = null;
         var _loc1_:int = this.§!#§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!#§[_loc1_] as §6!-§;
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
         var _loc2_:§^^§ = null;
         var _loc1_:int = this.§!#§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!#§[_loc1_] as §^^§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§@!§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§@,§())
               {
                  return false;
               }
               if(_loc2_ is §6!-§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §>!r§(param1:Boolean = false) : §&6§
      {
         var _loc7_:§&6§ = null;
         var _loc2_:int = this.§!#§.length;
         var _loc3_:int = this.§!!p§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§!#§[_loc6_] as §&6§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§3!G§ && !_loc7_.§5!;§)
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
      
      public function §`"&§() : int
      {
         var _loc3_:§^^§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§!#§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!#§[_loc2_] as §^^§;
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
         return int(_loc1_ + this.§#g§.slingshot.§`"&§());
      }
      
      protected function §!,§(param1:§=6§, param2:§=6§) : Boolean
      {
         if(param1 is §^^§ && param2 is §^^§ && !(param1 as §^^§).§9!u§() && !(param2 as §^^§).§9!u§())
         {
            return false;
         }
         return true;
      }
      
      public function §3I§() : void
      {
         this.§1_§ = 0;
      }
      
      protected function §!!%§(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function §""5§(param1:Number) : void
      {
      }
      
      protected function §59§(param1:§^^§, param2:§^^§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §6!-§)
         {
            return 1;
         }
         if(param1 is §6!-§)
         {
            return Number(param1.§"!G§(param2.§2!6§()));
         }
         return 1;
      }
      
      protected function §6!#§(param1:§^^§, param2:§^^§) : Number
      {
         if(param2 is §6!-§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §@!_§(param1:§^^§, param2:§^^§) : Number
      {
         var _loc4_:Number = this.§6!#§(param1,param2);
         var _loc5_:Number = this.§6!#§(param2,param1);
         var _loc6_:Number = param1.§^",§().GetMass();
         var _loc7_:Number = param2.§^",§().GetMass();
         var _loc8_:b2Vec2 = param1.§+!L§();
         var _loc9_:b2Vec2 = param2.§+!L§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §[+§(param1:§=6§, param2:§=6§) : Boolean
      {
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§&!l§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc3_:§^^§ = param1 as §^^§;
         var _loc4_:§^^§ = param2 as §^^§;
         if(!_loc3_ || !_loc4_)
         {
            return true;
         }
         if(_loc3_.destroysCollidingObjects || _loc4_.§9G§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc3_,true);
            _loc3_.causedDamageToObjects();
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc3_.§9G§)
         {
            _loc3_.applyDamage(_loc3_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(!this.§!,§(_loc3_,_loc4_))
         {
            return false;
         }
         if(_loc3_ is §6!-§ && _loc4_ is §6!-§)
         {
            return true;
         }
         var _loc5_:Number = this.§@!_§(_loc3_,_loc4_);
         var _loc6_:Number = Math.max(0,_loc3_.health);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         this.§!!%§(_loc5_,_loc6_,_loc7_);
         var _loc8_:Number = this.§59§(_loc3_,_loc4_);
         var _loc9_:Number = this.§59§(_loc4_,_loc3_);
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
         if(_loc3_ is §6!-§)
         {
            if(_loc11_ <= 0)
            {
               _loc12_ = _loc3_.§'E§(_loc4_.§2!6§());
               this.§"!^§(_loc3_ as §6!-§,_loc5_ * _loc8_,_loc7_,_loc12_);
               return false;
            }
         }
         if(_loc4_ is §6!-§)
         {
            if(_loc10_ <= 0)
            {
               _loc13_ = _loc4_.§'E§(_loc3_.§2!6§());
               this.§"!^§(_loc4_ as §6!-§,_loc5_ * _loc9_,_loc6_,_loc13_);
               return false;
            }
         }
         return _loc10_ <= 0 && _loc11_ <= 0;
      }
      
      public function §?!q§(param1:§=6§, param2:§=6§) : void
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
      
      protected function §"!^§(param1:§6!-§, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§+!L§();
         param1.§,!#§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §0!9§() : void
      {
         var _loc2_:§^^§ = null;
         var _loc1_:int = this.§!#§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!#§[_loc1_] as §^^§;
            if(_loc2_ != null && _loc2_ is §&6§)
            {
               this.§&!a§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §4%§() : void
      {
         var _loc2_:§^^§ = null;
         var _loc1_:int = this.§!#§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!#§[_loc1_] as §^^§;
            if(_loc2_ != null && _loc2_.§+"6§())
            {
               this.§&!a§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §;_§() : int
      {
         return this.§!#§.length;
      }
      
      public function §22§(param1:§7@§) : void
      {
         var _loc4_:§^^§ = null;
         var _loc5_:§5!L§ = null;
         var _loc6_:§&>§ = null;
         var _loc7_:§1!;§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!#§.length)
         {
            if(_loc4_ = this.§!#§[_loc2_] as §^^§)
            {
               if(_loc4_.§<!O§)
               {
                  if(!_loc4_.§@!§())
                  {
                     (_loc5_ = new §5!L§()).angle = _loc4_.§6!j§() / (Math.PI / 180);
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§^",§().GetPosition().x;
                     _loc5_.y = _loc4_.§^",§().GetPosition().y;
                     param1.§`!k§(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§#r§.length)
         {
            _loc7_ = this.§#r§[_loc3_];
            (_loc6_ = new §&>§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§3=§,_loc7_.§,t§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§1N§,_loc7_.motorSpeed,_loc7_.§?!7§,_loc7_.maxTorque)).§9" § = _loc7_.§9" §;
            param1.§;7§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §%!c§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§!#§.length)
         {
            if(this.§!#§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§!#§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§^^§ = null;
         this.§8<§ = param1;
         this.§2-§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!#§.length)
         {
            _loc3_ = this.§!#§[_loc2_] as §^^§;
            if(_loc3_ && _loc3_.§4W§())
            {
               _loc3_.sprite.visible = !this.§8<§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§&!l§ = param1;
      }
      
      public function §9!B§() : int
      {
         return this.§]!Q§;
      }
      
      public function §4!7§() : int
      {
         return this.§8!4§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§#g§.damageScoreMultiplier;
      }
   }
}
