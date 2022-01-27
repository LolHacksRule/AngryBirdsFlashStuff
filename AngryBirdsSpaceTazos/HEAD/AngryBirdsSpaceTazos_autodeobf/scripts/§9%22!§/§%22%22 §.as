package §9"!§
{
   import §&!]§.§#[§;
   import §&!]§.§7!J§;
   import §&!]§.Sprite;
   import §1"?§.§%!0§;
   import §1"?§.§4R§;
   import §1"?§.§switch§;
   import §1z§.§2#§;
   import §3!S§.§<5§;
   import §3"#§.§ 7§;
   import §3"#§.§?!L§;
   import §3"#§.§`"8§;
   import §3>§.§!4§;
   import §3>§.§'!M§;
   import §3>§.§,!^§;
   import §3>§.§-"8§;
   import §3>§.§1!'§;
   import §3>§.§=!Z§;
   import §3>§.§["<§;
   import §6!n§.b2Vec2;
   import §9!v§.§"[§;
   import §9!v§.§1!_§;
   import §9"@§.Texture;
   import §<!A§.§#g§;
   import §<!A§.§="?§;
   import §="+§.§ !?§;
   import §="+§.§!"$§;
   import §="+§.§&!i§;
   import §="+§.§0E§;
   import §[9§.b2PrismaticJoint;
   import §[9§.b2RevoluteJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"" § implements §0!s§
   {
      
      private static const §<n§:Boolean = false;
      
      private static const §'G§:int = 1000000000;
      
      public static const §@"1§:int = -1;
      
      public static const §%A§:int = -2;
       
      
      protected var §9!S§:Vector.<§,%§>;
      
      protected var §%n§:Vector.<§]#§>;
      
      protected var §6!E§:Vector.<§%!0§>;
      
      private var §`i§:int = 1000000000;
      
      public var §'"9§:§`"8§;
      
      protected var §="8§:Vector.<§8S§>;
      
      protected var §^?§:§&!]§.Sprite;
      
      protected var §;!U§:§&!]§.Sprite;
      
      protected var §?w§:§&!]§.Sprite;
      
      protected var §^!c§:§&!]§.Sprite;
      
      protected var §?!;§:Vector.<Texture>;
      
      protected var §1b§:Vector.<§!"$§>;
      
      protected var § !§:int = 1;
      
      protected var §?H§:Vector.<§ !?§>;
      
      protected var §'J§:int = 0;
      
      private var §'!L§:int = 0;
      
      private var §8`§:int = 0;
      
      private var §5U§:§&!i§;
      
      private var §=@§:§!!H§;
      
      private var §-">§:Boolean = true;
      
      private var §3!d§:Boolean = true;
      
      public function §"" §(param1:§`"8§, param2:§2#§, param3:§&!]§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§9!S§ = new Vector.<§,%§>();
         this.§%n§ = new Vector.<§]#§>();
         this.§6!E§ = new Vector.<§%!0§>();
         this.§="8§ = new Vector.<§8S§>();
         this.§?!;§ = new Vector.<Texture>();
         this.§?H§ = new Vector.<§ !?§>();
         this.§5U§ = new §&!i§();
         super();
         this.§'"9§ = param1;
         this.§^?§ = param3;
         this.§^?§.§="C§ = false;
         this.§3!d§ = true;
         this.§-">§ = true;
         this.§;!U§ = new §&!]§.Sprite();
         this.§?w§ = new §&!]§.Sprite();
         this.§^!c§ = new §&!]§.Sprite();
         this.§^?§.addChild(this.§;!U§);
         this.§^?§.addChild(this.§?w§);
         if(param2.hasGround)
         {
            _loc5_ = (this.§'"9§.§?u§.§'3§ + this.§'"9§.§?u§.§+!3§) / 2;
            _loc6_ = 0 + §?!L§.§[";§;
            this.addObject(param4,_loc5_,_loc6_,0,§"" §.§@"1§);
         }
         this.addLevelObjects(param2);
      }
      
      public function get overlaySprite() : §&!]§.Sprite
      {
         return this.§^!c§;
      }
      
      public function get §2!%§() : §&!]§.Sprite
      {
         return this.§^?§;
      }
      
      public function get activeObject() : §^"3§
      {
         return this.§=@§;
      }
      
      public function get objectCount() : int
      {
         return this.§9!S§.length;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§=@§)
         {
            _loc3_ = this.§=@§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function addLevelObjects(param1:§2#§) : void
      {
         var _loc3_:§&!i§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§-"8§ = null;
         var _loc6_:§0E§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§'"9§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§#]§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§`"#§();
         this.§6D§(true);
         this.§1b§ = new Vector.<§!"$§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§if §)
         {
            _loc6_ = param1.§[#§(_loc2_);
            this.§#!T§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§9!S§.length > 0)
         {
            this.§#o§(0);
         }
         while(this.§6!E§.length > 0)
         {
            this.§3I§(0);
         }
         this.§9!S§ = null;
         this.§%n§ = null;
         this.§6!E§ = null;
         this.§?H§ = null;
         if(this.§^?§)
         {
            this.§^?§.dispose();
            this.§^?§ = null;
         }
         this.§;!U§ = null;
         this.§?w§ = null;
         if(this.§^!c§)
         {
            this.§^!c§.dispose();
            this.§^!c§ = null;
         }
         while(this.§?!;§.length > 0)
         {
            _loc1_ = this.§?!;§.pop();
            this.§'"9§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §6D§(param1:Boolean) : void
      {
         this.§;!U§.visible = param1;
      }
      
      private function §`"#§() : void
      {
         var _loc3_:§,%§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§^"3§ = null;
         var _loc6_:§1!'§ = null;
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
         var _loc21_:§#[§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§^"3§> = new Vector.<§^"3§>();
         for each(_loc3_ in this.§9!S§)
         {
            if((_loc5_ = _loc3_ as §^"3§) && _loc5_.§1+§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.getWidth(),_loc6_.getHeight()) / §`"8§.§3!=§ * Math.sqrt(2);
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
            _loc8_ = this.§'"9§.camera.§<!n§ / §`"8§.§3!=§;
            _loc9_ = this.§'"9§.camera.§4!^§ / §`"8§.§3!=§;
            _loc10_ = (_loc8_ + _loc9_) / 2;
            _loc11_ = (_loc9_ - _loc8_) / 2;
            _loc8_ = _loc10_ - _loc11_;
            _loc9_ = _loc10_ + _loc11_;
            _loc1_.left = Math.max(_loc1_.left,_loc8_);
            _loc1_.right = Math.min(_loc1_.right,_loc9_);
            _loc12_ = 1;
            while(_loc1_.width > 2048 || _loc1_.height > 2048)
            {
               _loc1_.left /= 2;
               _loc1_.top /= 2;
               _loc1_.right /= 2;
               _loc1_.bottom /= 2;
               _loc12_ /= 2;
            }
            _loc13_ = _loc1_.width;
            _loc14_ = _loc1_.height;
            _loc15_ = _loc1_.left;
            _loc16_ = _loc1_.top;
            _loc17_ = new BitmapData(_loc13_,_loc14_,true,0);
            _loc18_ = this.getLevelTextureScale();
            this.§8$§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§<c§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§'"9§.textureManager.getTextureFromBitmapData(_loc17_);
            this.§?!;§.push(_loc20_);
            (_loc21_ = new §#[§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§;!U§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §<c§(param1:Vector.<§^"3§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§^"3§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§1!'§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §["<§)
            {
               this.§-!F§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<!O§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §'!M§)
            {
               if((_loc12_ as §'!M§).vertices.length == 4)
               {
                  this.§-!F§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<!O§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §'!M§).vertices.length == 3)
               {
                  this.§4e§(_loc12_ as §'!M§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<!O§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §,!^§)
            {
               this.§'![§(_loc12_ as §,!^§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §-!F§(param1:§1!'§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §`"8§.§3!=§ * param9;
         var _loc13_:Number = param1.getHeight() / §`"8§.§3!=§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §4e§(param1:§'!M§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §`"8§.§3!=§ * param8,_loc14_.y / §`"8§.§3!=§ * param8);
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
      
      protected function §'![§(param1:§,!^§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §`"8§.§3!=§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function getLevelTextureName() : String
      {
         return this.§'"9§.background.§7U§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §8$§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.getLevelTextureName();
         var _loc5_:§"[§;
         if(_loc5_ = this.§'"9§.backgroundTextureManager.getTexture(_loc4_))
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
      
      protected function addObjectBird(param1:§&!i§, param2:§&!]§.Sprite, param3:§1!_§, param4:§-"8§, param5:Number = 1.0, param6:Boolean = true) : §!!H§
      {
         var _loc11_:§!!H§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §&?§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §?7§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §<"$§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §!!#§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §8!,§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §@!y§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §^H§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §]B§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §7"3§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            default:
               _loc11_ = new §!!H§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§'J§ > 0;
      }
      
      protected function addObjectPig(param1:§&!i§, param2:§&!]§.Sprite, param3:§1!_§, param4:§-"8§, param5:Number = 1.0) : §,r§
      {
         return new §,r§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §,%§
      {
         this.§5U§.type = param1;
         this.§5U§.x = param2;
         this.§5U§.y = param3;
         this.§5U§.angle = param4;
         this.§5U§.§?v§ = 0;
         this.§5U§.§0!o§ = 0;
         return this.§#]§(this.§5U§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §'"H§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §,%§
      {
         this.§5U§.type = param1;
         this.§5U§.x = param2;
         this.§5U§.y = param3;
         this.§5U§.angle = param4;
         this.§5U§.§?v§ = param6;
         this.§5U§.§0!o§ = param7;
         return this.§#]§(this.§5U§,param5,false,false,false,param8,param9);
      }
      
      protected function §#]§(param1:§&!i§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §,%§
      {
         var _loc8_:§&!]§.Sprite = new §&!]§.Sprite();
         var _loc9_:§,%§;
         if((_loc9_ = this.§"P§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §^"3§ && (_loc9_ as §^"3§).§1+§())
         {
            _loc8_.visible = !this.§-">§;
         }
         if(_loc9_ is §!!H§ && !(_loc9_ is §7"3§))
         {
            ++this.§'J§;
         }
         if(!param7)
         {
            this.§?w§.§2"B§(_loc8_);
         }
         else
         {
            this.§^!c§.§2"B§(_loc8_);
         }
         if(param3)
         {
            this.§'"9§.§5" §(_loc9_);
         }
         if(param4 && _loc9_ is §!!H§)
         {
            this.§=@§ = §!!H§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §"P§(param1:§&!i§, param2:int, param3:§&!]§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §,%§
      {
         var _loc7_:§^"3§ = null;
         if(param2 == §%A§)
         {
            param2 = this.§`i§;
            ++this.§`i§;
         }
         else
         {
            if(param2 >= §'G§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §'G§);
            }
            if(this.§]`§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§,%§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §!!H§)
         {
            ++this.§8`§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §^"3§;
            if(_loc6_ is §%!0§)
            {
               this.§6!E§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§[!I§(param2);
               }
               this.§9!S§.push(_loc6_);
               if(_loc6_ is §]#§)
               {
                  this.§%n§.push(_loc6_);
               }
            }
         }
         return _loc6_;
      }
      
      protected function getCommonTextureName() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§&!i§, param2:§&!]§.Sprite, param3:§1!_§, param4:§-"8§, param5:int, param6:Number = 1.0) : §,%§
      {
         return new §!!O§(param2,param3,this.§'"9§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param6,param5);
      }
      
      protected function createObjectInstance(param1:§&!i§, param2:§&!]§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §,%§
      {
         var _loc5_:§-"8§;
         if(!(_loc5_ = this.§'"9§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.getCommonTextureName();
         }
         var _loc7_:§1!_§ = this.§'"9§.animationManager.getAnimation(_loc6_);
         var _loc8_:§,%§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §-"8§.§9!s§)
         {
            _loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §-"8§.§&!s§ || _loc5_.itemType == §-"8§.§ !L§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§8S§.§?&§,param4);
            }
            else if(_loc5_.itemName == §!!#§.§3!m§)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§8S§.§<!S§,param4);
            }
            else
            {
               _loc8_ = new § !K§(param2,_loc7_,this.§'"9§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
            }
         }
         else
         {
            _loc8_ = new §^"3§(param2,_loc7_,this.§'"9§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§'"9§.addScore(param1,§ 7§.§#U§,param3,param4,param5,param6);
      }
      
      public function §'"-§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§'"9§.particles.§'"-§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      protected function §7<§(param1:§^"3§) : void
      {
         var _loc4_:§!"$§ = null;
         var _loc5_:§!"$§ = null;
         var _loc6_:§,%§ = null;
         var _loc7_:§,%§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§1b§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§1b§[_loc3_];
            if(this.§1b§[_loc3_].id1 == _loc2_ || this.§1b§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§"n§)
               {
                  _loc6_ = _loc4_.§"n§.§>!=§().GetUserData() as §,%§;
                  _loc7_ = _loc4_.§"n§.§>1§().GetUserData() as §,%§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§1b§.pop();
               if(_loc3_ < this.§1b§.length)
               {
                  this.§1b§[_loc3_] = _loc5_;
               }
               this.§"2§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §#!T§(param1:§0E§) : void
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§!"$§ = §!"$§.§#!T§(param1);
         this.§1b§.push(_loc4_);
         var _loc5_:§,%§ = this.§]`§(_loc2_);
         var _loc6_:§,%§ = this.§]`§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §0E§.§^"?§)
            {
               _loc4_.§"n§ = this.§'"9§.mLevelEngine.mWorld.§>!f§(_loc4_.§?!5§(_loc5_,_loc6_));
            }
            else
            {
               this.§?H§.push(new § !?§(_loc2_,_loc3_,_loc4_.§#!#§));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
      }
      
      protected function §"2§(param1:§!"$§) : void
      {
         if(param1.§"n§)
         {
            this.§'"9§.mLevelEngine.mWorld.§+"@§(param1.§"n§);
         }
         if(param1.§3a§)
         {
            if(this.§?w§.contains(param1.§3a§))
            {
               this.§?w§.removeChild(param1.§3a§,true);
            }
         }
      }
      
      public function §&k§(param1:int, param2:Number, param3:Number) : void
      {
         this.§="8§.push(§8S§.§4q§(param1,param2,param3));
         §<5§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §9",§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§="8§.push(§8S§.§,<§(param1,param2,param3,param4,param5,param6));
         §<5§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§'"9§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get §]"$§() : Number
      {
         return this.§'"9§.§]"$§;
      }
      
      public function §^!g§(param1:Number, param2:Number) : int
      {
         var _loc4_:§^"3§ = null;
         var _loc3_:int = this.§9!S§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§9!S§[_loc3_] as §^"3§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §^"3§
      {
         var _loc4_:§^"3§ = null;
         var _loc3_:int = this.§9!S§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§9!S§[_loc3_] as §^"3§)
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
      
      public function getObject(param1:int) : §,%§
      {
         return this.§9!S§[param1];
      }
      
      public function §]`§(param1:int) : §^"3§
      {
         var _loc2_:§,%§ = null;
         var _loc3_:§^"3§ = null;
         for each(_loc2_ in this.§9!S§)
         {
            _loc3_ = _loc2_ as §^"3§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§9!S§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§9!S§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§3"1§(param1);
         _loc4_ = this.§6!E§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§6!E§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §-W§(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §+M§(param1:Number, param2:Number, param3:§^"3§) : §#g§
      {
         var _loc4_:Number = param3.§`I§().GetPosition().x;
         var _loc5_:Number = param3.§`I§().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.§`I§().GetAngle();
         return §="?§.§8D§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §8g§(param1:§^"3§, param2:Number) : void
      {
         if(param2 > param1.defence)
         {
            param1.applyDamage(param2 + param1.defence,this,null,false);
         }
      }
      
      protected function §=>§() : void
      {
         var _loc1_:§8S§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§,%§ = null;
         var _loc7_:§^"3§ = null;
         var _loc8_:§#g§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§3!d§)
         {
            return;
         }
         while(this.§="8§.length > 0)
         {
            _loc1_ = this.§="8§.shift();
            _loc2_ = _loc1_.§`!J§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.shakeCameraOnExplosion(_loc1_.push);
            for each(_loc6_ in this.§9!S§)
            {
               if(_loc6_ is §^"3§)
               {
                  if(_loc7_ = §^"3§(_loc6_))
                  {
                     if((_loc8_ = this.§+M§(_loc3_,_loc4_,_loc7_)).§2v§ <= _loc1_.§`!J§)
                     {
                        _loc9_ = _loc1_.push * this.§-W§(_loc8_.§2v§,_loc1_.§`!J§);
                        if(_loc8_.§2v§ > 0)
                        {
                           (_loc10_ = new Point(_loc8_.§ 5§.x - _loc3_,_loc8_.§ 5§.y - _loc4_)).normalize(1);
                           _loc11_ = _loc9_ * _loc10_.x;
                           _loc12_ = _loc9_ * _loc10_.y;
                           _loc7_.§`I§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§ 5§.x,_loc8_.§ 5§.y));
                        }
                     }
                     if(_loc8_.§2v§ <= _loc1_.§;5§)
                     {
                        _loc13_ = _loc5_ * this.§-W§(_loc8_.§2v§,_loc1_.§;5§);
                        this.§8g§(_loc7_,_loc13_);
                     }
                  }
               }
            }
            this.updateExplosionEffects(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function updateExplosionEffects(param1:§8S§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§'"9§.particles.§'"-§(this.§9!,§(param1.type),§switch§.§%!y§,§4R§.§+!'§,param2,param3,600,"",§4R§.§<B§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§'"9§.particles.§'"-§(§4R§.§9!@§,§switch§.§%!y§,§4R§.§!o§,param2,param3,_loc7_,"",§4R§.§<B§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §9!,§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §4R§.§9!$§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§^"3§ = null;
         var _loc2_:§,%§ = null;
         var _loc3_:int = this.§9!S§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§9!S§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§#o§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §^"3§;
               if(this.§'c§(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§6!7§(§=!Z§.§;!H§);
                  }
                  this.§#o§(_loc3_,false);
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§6!7§(§=!Z§.§;!H§);
                  this.§#o§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§>!V§(param1);
         this.§=>§();
      }
      
      protected function §3"1§(param1:Number) : void
      {
         var _loc2_:§%!0§ = null;
         var _loc3_:int = this.§6!E§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§6!E§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§3I§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §>!V§(param1:Number) : void
      {
         this.§,s§(param1);
         this.each();
      }
      
      protected function §,s§(param1:Number) : void
      {
         var _loc3_:§ !?§ = null;
         var _loc4_:§,%§ = null;
         var _loc2_:int = this.§?H§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§?H§[_loc2_];
            if(_loc3_.§8[§)
            {
               if(!_loc3_.update(param1))
               {
                  _loc4_ = this.§]`§(_loc3_.objectId1);
                  this.removeObject(_loc4_,true);
                  _loc4_ = this.§]`§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§?H§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §!_§(param1:§!"$§) : void
      {
         var _loc2_:§^"3§ = param1.debug_object_1;
         var _loc3_:§^"3§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§]`§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§]`§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§3a§ == null)
         {
            param1.§3a§ = new §7!J§(4,4,4294901760);
            this.§?w§.addChild(param1.§3a§);
         }
         param1.§3a§.x = _loc4_;
         param1.§3a§.y = _loc5_;
         param1.§3a§.width = _loc8_;
         param1.§3a§.rotation = _loc9_;
      }
      
      protected function §-!D§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function each() : void
      {
         var _loc1_:§!"$§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§1b§)
         {
            if(§<n§)
            {
               this.§!_§(_loc1_);
            }
            if(_loc1_.§^!V§ && _loc1_.§?!H§ && _loc1_.§ !,§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §0E§.§]!9§)
               {
                  _loc4_ = (_loc1_.§"n§ as b2PrismaticJoint).§78§();
                  _loc5_ = (_loc1_.§"n§ as b2PrismaticJoint).§?!7§();
                  _loc6_ = this.§-!D§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§"n§ as b2PrismaticJoint).§1"#§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §0E§.§?!R§)
               {
                  _loc7_ = (_loc1_.§"n§ as b2RevoluteJoint).§ !'§();
                  if((_loc5_ = (_loc1_.§"n§ as b2RevoluteJoint).§?!7§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§"n§ as b2RevoluteJoint).§1"#§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §<w§() : void
      {
         var _loc1_:§!"$§ = null;
         while(this.§1b§.length > 0)
         {
            _loc1_ = this.§1b§.pop();
            this.§"2§(_loc1_);
         }
      }
      
      public function §'c§(param1:§,%§) : Boolean
      {
         this.checkCameraBoundaries(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §!4§.§4y§) && param1.§`I§() && this.§ !!§(param1.§`I§().GetPosition().x,param1.§`I§().GetPosition().y))
         {
            if(param1 is §^"3§)
            {
               §^"3§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function checkCameraBoundaries(param1:§,%§) : void
      {
      }
      
      public function §;!R§(param1:Number, param2:Number) : Boolean
      {
         return this.§'"9§.camera.isOutOfCamera(param1,param2);
      }
      
      public function § !!§(param1:Number, param2:Number) : Boolean
      {
         return this.§'"9§.§?u§.§1l§(param1,param2);
      }
      
      public function §3I§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§%!0§ = this.§6!E§[param1];
         this.§,!q§(_loc2_.sprite);
         this.§6!E§[param1] = null;
         this.§6!E§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§^"3§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§^"3§) : Point
      {
         var _loc2_:Number = param1.§`I§().GetPosition().x;
         var _loc3_:Number = param1.§`I§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §#o§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:§^"3§ = null;
         var _loc5_:§ !?§ = null;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc3_:§,%§ = this.§9!S§[param1];
         if(_loc3_ is §,r§)
         {
            ++this.§'!L§;
         }
         else if(_loc3_ is §!!H§)
         {
            --this.§'J§;
         }
         if(_loc3_ == this.§=@§)
         {
            this.§=@§ = null;
         }
         if(_loc3_ is §^"3§)
         {
            _loc4_ = _loc3_ as §^"3§;
            if(param2)
            {
               _loc6_ = this.getScoreTextPosition(_loc4_);
               _loc7_ = §4R§.§;'§(_loc4_.itemName);
               _loc8_ = this.shouldShowScoreText(_loc4_);
               this.§'"9§.addScore(_loc4_.levelItem.score,§ 7§.§?A§,_loc8_,_loc6_.x,_loc6_.y,_loc7_);
            }
            _loc4_.updateBeforeRemoving(this);
            this.§7<§(_loc4_);
            for each(_loc5_ in this.§?H§)
            {
               if(_loc5_.objectId1 == _loc4_.id || _loc5_.objectId2 == _loc4_.id)
               {
                  _loc5_.§8[§ = true;
               }
            }
         }
         this.§,!q§(_loc3_.sprite);
         this.§9!S§[param1] = null;
         this.§9!S§.splice(param1,1);
         if(_loc3_ is §]#§)
         {
            if((_loc9_ = this.§%n§.indexOf(_loc3_)) >= 0)
            {
               this.§%n§.splice(_loc9_,1);
            }
         }
         _loc3_.dispose();
         _loc3_ = null;
      }
      
      private function §,!q§(param1:§&!]§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§,%§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§#o§(this.§9!S§.indexOf(param1),param2);
         }
      }
      
      public function §#<§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'"9§.§2!d§();
         }
      }
      
      public function §#!h§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§'"9§.§#!h§(param1,param2,param3,param4);
      }
      
      public function §5x§(param1:Number, param2:Number) : void
      {
         this.§^?§.x = -param1;
         this.§^?§.y = -param2;
         this.§^!c§.x = -param1;
         this.§^!c§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§,%§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!S§.length)
         {
            _loc2_ = this.§9!S§[_loc1_];
            if(_loc2_ && _loc2_ is §,r§ && (_loc2_ as §,r§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §[">§(param1:Boolean = false) : int
      {
         var _loc4_:§,r§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§9!S§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§9!S§[_loc3_] as §,r§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§?"%§ && !_loc4_.§7!n§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §4^§() : int
      {
         var _loc2_:§^"3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§9!S§)
         {
            if(_loc2_ is § !K§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §,T§() : int
      {
         var _loc2_:§^"3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§9!S§)
         {
            if(_loc2_ && _loc2_.§1+§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§,r§ = null;
         var _loc2_:int = this.§9!S§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§9!S§[_loc2_] as §,r§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §^B§() : Boolean
      {
         var _loc2_:§!!H§ = null;
         var _loc1_:int = this.§9!S§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9!S§[_loc1_] as §!!H§;
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
         var _loc2_:§^"3§ = null;
         var _loc1_:int = this.§9!S§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9!S§[_loc1_] as §^"3§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§98§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§ !W§())
               {
                  return false;
               }
               if(_loc2_ is §!!H§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §%V§(param1:Boolean = false) : §,r§
      {
         var _loc7_:§,r§ = null;
         var _loc2_:int = this.§9!S§.length;
         var _loc3_:int = this.§[">§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§9!S§[_loc6_] as §,r§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§?"%§ && !_loc7_.§7!n§)
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
      
      public function §8e§() : int
      {
         var _loc3_:§^"3§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§9!S§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§9!S§[_loc2_] as §^"3§;
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
         return int(_loc1_ + this.§'"9§.slingshot.§8e§());
      }
      
      protected function hasMinimumCollisionSpeed(param1:§,%§, param2:§,%§) : Boolean
      {
         if(param1 is §^"3§ && param2 is §^"3§ && !(param1 as §^"3§).§5!Q§() && !(param2 as §^"3§).§5!Q§())
         {
            return false;
         }
         return true;
      }
      
      public function §4!#§() : void
      {
         this.§'J§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      public function §4"+§(param1:§,%§, param2:§,%§) : Boolean
      {
         if(!this.§3!d§)
         {
            return false;
         }
         param1.§`d§(param2);
         param2.§`d§(param1);
         var _loc3_:§^"3§ = param1 as §^"3§;
         var _loc4_:§^"3§ = param2 as §^"3§;
         if(!_loc3_ || !_loc4_)
         {
            return true;
         }
         if(_loc3_.destroysCollidingObjects || _loc4_.§+!l§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc3_,true);
            _loc3_.causedDamageToObjects();
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc3_.§+!l§)
         {
            _loc3_.applyDamage(_loc3_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc3_,_loc4_))
         {
            return false;
         }
         if(_loc3_ is §!!H§ && _loc4_ is §!!H§)
         {
            return true;
         }
         var _loc6_:Number = _loc3_.§0"$§(_loc4_.§1"G§());
         var _loc7_:Number = _loc4_.§0"$§(_loc3_.§1"G§());
         var _loc8_:Number = 1;
         var _loc9_:Number = 1;
         if(_loc3_ is §!!H§)
         {
            _loc8_ = _loc6_;
            _loc6_ = 1;
         }
         else if(_loc4_ is §!!H§)
         {
            _loc9_ = _loc7_;
            _loc7_ = 1;
         }
         var _loc10_:Number = _loc3_.§4D§(_loc4_.§1"G§());
         var _loc11_:Number = _loc4_.§4D§(_loc3_.§1"G§());
         var _loc12_:Number = _loc3_.§`I§().GetMass();
         var _loc13_:Number = _loc4_.§`I§().GetMass();
         var _loc14_:b2Vec2 = _loc3_.§5!C§();
         var _loc15_:b2Vec2 = _loc4_.§5!C§();
         var _loc16_:Number = _loc8_ * _loc12_ * _loc14_.x - _loc9_ * _loc13_ * _loc15_.x;
         var _loc17_:Number = _loc8_ * _loc12_ * _loc14_.y - _loc9_ * _loc13_ * _loc15_.y;
         var _loc18_:Number = Math.sqrt(_loc16_ * _loc16_ + _loc17_ * _loc17_) / 10;
         var _loc19_:Number = Math.max(0,_loc3_.health);
         var _loc20_:Number = Math.max(0,_loc4_.health);
         this.shakeCameraOnCollision(_loc18_,_loc19_,_loc20_);
         var _loc21_:Number = _loc3_.applyDamage(_loc18_ * _loc7_,this,_loc4_,true);
         var _loc22_:Number = _loc4_.applyDamage(_loc18_ * _loc6_,this,_loc3_,true);
         if(_loc21_ < _loc19_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc22_ < _loc20_)
         {
            _loc3_.causedDamageToObjects();
         }
         if(_loc3_ is §!!H§)
         {
            if(_loc22_ <= 0)
            {
               this.§"!M§(_loc3_ as §!!H§,_loc18_,_loc20_,_loc10_);
               return true;
            }
         }
         if(_loc4_ is §!!H§)
         {
            if(_loc21_ <= 0)
            {
               this.§"!M§(_loc4_ as §!!H§,_loc18_,_loc19_,_loc11_);
               return true;
            }
         }
         return _loc21_ <= 0 && _loc22_ <= 0;
      }
      
      protected function §"!M§(param1:§!!H§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number;
         if((_loc5_ = (_loc5_ = (param2 - param3) / param2) * param4) > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:b2Vec2 = param1.§5!C§();
         param1.§'e§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §^u§() : void
      {
         var _loc2_:§^"3§ = null;
         var _loc1_:int = this.§9!S§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9!S§[_loc1_] as §^"3§;
            if(_loc2_ != null && _loc2_ is §,r§)
            {
               this.§#o§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §5-§() : void
      {
         var _loc2_:§^"3§ = null;
         var _loc1_:int = this.§9!S§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9!S§[_loc1_] as §^"3§;
            if(_loc2_ != null && _loc2_.§-M§())
            {
               this.§#o§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §-i§() : int
      {
         return this.§9!S§.length;
      }
      
      public function writeObjectInformation(param1:§2#§) : void
      {
         var _loc4_:§^"3§ = null;
         var _loc5_:§&!i§ = null;
         var _loc6_:§0E§ = null;
         var _loc7_:§!"$§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§9!S§.length)
         {
            if(_loc4_ = this.§9!S§[_loc2_] as §^"3§)
            {
               if(_loc4_.§2!n§)
               {
                  if(!_loc4_.§98§())
                  {
                     (_loc5_ = new §&!i§()).angle = _loc4_.§<!O§() / (Math.PI / 180);
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§`I§().GetPosition().x;
                     _loc5_.y = _loc4_.§`I§().GetPosition().y;
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§1b§.length)
         {
            _loc7_ = this.§1b§[_loc3_];
            _loc6_ = new §0E§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§2N§,_loc7_.§?!H§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§ !,§,_loc7_.motorSpeed,_loc7_.§^!V§,_loc7_.maxTorque);
            param1.§+W§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §#",§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§9!S§.length)
         {
            if(this.§9!S§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§9!S§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§^"3§ = null;
         this.§-">§ = param1;
         this.§6D§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§9!S§.length)
         {
            _loc3_ = this.§9!S§[_loc2_] as §^"3§;
            if(_loc3_ && _loc3_.§1+§())
            {
               _loc3_.sprite.visible = !this.§-">§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§3!d§ = param1;
      }
      
      public function § !1§() : int
      {
         return this.§8`§;
      }
      
      public function §5!%§() : int
      {
         return this.§'!L§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§'"9§.damageScoreMultiplier;
      }
   }
}
