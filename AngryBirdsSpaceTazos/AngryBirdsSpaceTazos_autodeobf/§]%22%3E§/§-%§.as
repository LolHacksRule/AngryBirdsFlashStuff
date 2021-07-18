package §]">§
{
   import §"!&§.§"!Y§;
   import §"!&§.§8X§;
   import §"!&§.§<s§;
   import §"!&§.§="A§;
   import §"!&§.§=C§;
   import §"!&§.§>!0§;
   import §"!&§.set;
   import §'4§.§!!t§;
   import §'4§.§86§;
   import §'4§.§^g§;
   import §1"H§.§+>§;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §3"#§.§<!O§;
   import §4&§.§#r§;
   import §4&§.§'!"§;
   import §7!8§.§&!D§;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §75§.§4!-§;
   import §75§.§>!6§;
   import §9t§.b2Vec2;
   import §@w§.§#q§;
   import §@w§.§1o§;
   import §@w§.§?!Y§;
   import §@w§.§`a§;
   import §`!#§.Texture;
   import §`!j§.§#b§;
   import §`X§.b2PrismaticJoint;
   import §`X§.b2RevoluteJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-%§ implements §;U§
   {
      
      private static const §8!l§:Boolean = false;
      
      private static const §9b§:int = 1000000000;
      
      public static const §^H§:int = -1;
      
      public static const §;!J§:int = -2;
       
      
      protected var §-`§:Vector.<§<!=§>;
      
      protected var §0!<§:Vector.<§3=§>;
      
      protected var §3R§:Vector.<§+>§>;
      
      private var §each §:int = 1000000000;
      
      public var §?>§:§^g§;
      
      protected var §7[§:Vector.<§5&§>;
      
      protected var §+"?§:§7!8§.Sprite;
      
      protected var § x§:§7!8§.Sprite;
      
      protected var §6#§:§7!8§.Sprite;
      
      protected var §-"0§:§7!8§.Sprite;
      
      protected var §?!a§:Vector.<Texture>;
      
      protected var § !B§:Vector.<§#q§>;
      
      protected var §;""§:int = 1;
      
      protected var §4e§:Vector.<§?!Y§>;
      
      protected var §!C§:int = 0;
      
      private var §6V§:int = 0;
      
      private var §+&§:int = 0;
      
      private var §?w§:§`a§;
      
      private var §0"8§:§ 6§;
      
      private var §'!4§:Boolean = true;
      
      private var §7g§:Boolean = true;
      
      public function §-%§(param1:§^g§, param2:§#b§, param3:§7!8§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§-`§ = new Vector.<§<!=§>();
         this.§0!<§ = new Vector.<§3=§>();
         this.§3R§ = new Vector.<§+>§>();
         this.§7[§ = new Vector.<§5&§>();
         this.§?!a§ = new Vector.<Texture>();
         this.§4e§ = new Vector.<§?!Y§>();
         this.§?w§ = new §`a§();
         super();
         this.§?>§ = param1;
         this.§+"?§ = param3;
         this.§+"?§.§]!D§ = false;
         this.§7g§ = true;
         this.§'!4§ = true;
         this.§ x§ = new §7!8§.Sprite();
         this.§6#§ = new §7!8§.Sprite();
         this.§-"0§ = new §7!8§.Sprite();
         this.§+"?§.addChild(this.§ x§);
         this.§+"?§.addChild(this.§6#§);
         if(param2.hasGround)
         {
            _loc5_ = (this.§?>§.§&+§.§[v§ + this.§?>§.§&+§.§;"+§) / 2;
            _loc6_ = 0 + §86§.§+[§;
            this.addObject(param4,_loc5_,_loc6_,0,§-%§.§^H§);
         }
         this.addLevelObjects(param2);
      }
      
      public function get overlaySprite() : §7!8§.Sprite
      {
         return this.§-"0§;
      }
      
      public function get §-"%§() : §7!8§.Sprite
      {
         return this.§+"?§;
      }
      
      public function get activeObject() : §1!0§
      {
         return this.§0"8§;
      }
      
      public function get objectCount() : int
      {
         return this.§-`§.length;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§0"8§)
         {
            _loc3_ = this.§0"8§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function addLevelObjects(param1:§#b§) : void
      {
         var _loc3_:§`a§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§8X§ = null;
         var _loc6_:§1o§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§?>§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§%"F§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§!!;§();
         this.§9K§(true);
         this.§ !B§ = new Vector.<§#q§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§continue§)
         {
            _loc6_ = param1.§2x§(_loc2_);
            this.§@!<§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§-`§.length > 0)
         {
            this.§-"C§(0);
         }
         while(this.§3R§.length > 0)
         {
            this.§]"#§(0);
         }
         this.§-`§ = null;
         this.§0!<§ = null;
         this.§3R§ = null;
         this.§4e§ = null;
         if(this.§+"?§)
         {
            this.§+"?§.dispose();
            this.§+"?§ = null;
         }
         this.§ x§ = null;
         this.§6#§ = null;
         if(this.§-"0§)
         {
            this.§-"0§.dispose();
            this.§-"0§ = null;
         }
         while(this.§?!a§.length > 0)
         {
            _loc1_ = this.§?!a§.pop();
            this.§?>§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §9K§(param1:Boolean) : void
      {
         this.§ x§.visible = param1;
      }
      
      private function §!!;§() : void
      {
         var _loc3_:§<!=§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§1!0§ = null;
         var _loc6_:set = null;
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
         var _loc21_:§`y§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§1!0§> = new Vector.<§1!0§>();
         for each(_loc3_ in this.§-`§)
         {
            if((_loc5_ = _loc3_ as §1!0§) && _loc5_.§6L§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.getWidth(),_loc6_.getHeight()) / §^g§.§5!-§ * Math.sqrt(2);
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
            _loc8_ = this.§?>§.camera.§[f§ / §^g§.§5!-§;
            _loc9_ = this.§?>§.camera.§<m§ / §^g§.§5!-§;
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
            this.§'!a§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§?'§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§?>§.textureManager.getTextureFromBitmapData(_loc17_);
            this.§?!a§.push(_loc20_);
            (_loc21_ = new §`y§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§ x§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §?'§(param1:Vector.<§1!0§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§1!0§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:set = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §>!0§)
            {
               this.§5R§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§+!c§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §"!Y§)
            {
               if((_loc12_ as §"!Y§).vertices.length == 4)
               {
                  this.§5R§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§+!c§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §"!Y§).vertices.length == 3)
               {
                  this.§#!7§(_loc12_ as §"!Y§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§+!c§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §="A§)
            {
               this.§6"$§(_loc12_ as §="A§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §5R§(param1:set, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §^g§.§5!-§ * param9;
         var _loc13_:Number = param1.getHeight() / §^g§.§5!-§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §#!7§(param1:§"!Y§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §^g§.§5!-§ * param8,_loc14_.y / §^g§.§5!-§ * param8);
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
      
      protected function §6"$§(param1:§="A§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §^g§.§5!-§ * param7;
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
         return this.§?>§.background.§#!<§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §'!a§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc5_:§'!"§;
         if(_loc5_ = this.§?>§.backgroundTextureManager.getTexture(_loc4_))
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
      
      protected function addObjectBird(param1:§`a§, param2:§7!8§.Sprite, param3:§#r§, param4:§8X§, param5:Number = 1.0, param6:Boolean = true) : § 6§
      {
         var _loc11_:§ 6§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §!"<§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §3L§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §29§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §+7§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §+x§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §8"#§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §16§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §<Y§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §5"$§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            default:
               _loc11_ = new § 6§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§!C§ > 0;
      }
      
      protected function addObjectPig(param1:§`a§, param2:§7!8§.Sprite, param3:§#r§, param4:§8X§, param5:Number = 1.0) : §50§
      {
         return new §50§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §<!=§
      {
         this.§?w§.type = param1;
         this.§?w§.x = param2;
         this.§?w§.y = param3;
         this.§?w§.angle = param4;
         this.§?w§.§2]§ = 0;
         this.§?w§.§0!Z§ = 0;
         return this.§%"F§(this.§?w§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §]`§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §<!=§
      {
         this.§?w§.type = param1;
         this.§?w§.x = param2;
         this.§?w§.y = param3;
         this.§?w§.angle = param4;
         this.§?w§.§2]§ = param6;
         this.§?w§.§0!Z§ = param7;
         return this.§%"F§(this.§?w§,param5,false,false,false,param8,param9);
      }
      
      protected function §%"F§(param1:§`a§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §<!=§
      {
         var _loc8_:§7!8§.Sprite = new §7!8§.Sprite();
         var _loc9_:§<!=§;
         if((_loc9_ = this.§'!r§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §1!0§ && (_loc9_ as §1!0§).§6L§())
         {
            _loc8_.visible = !this.§'!4§;
         }
         if(_loc9_ is § 6§ && !(_loc9_ is §5"$§))
         {
            ++this.§!C§;
         }
         if(!param7)
         {
            this.§6#§.§ k§(_loc8_);
         }
         else
         {
            this.§-"0§.§ k§(_loc8_);
         }
         if(param3)
         {
            this.§?>§.§^!#§(_loc9_);
         }
         if(param4 && _loc9_ is § 6§)
         {
            this.§0"8§ = § 6§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §'!r§(param1:§`a§, param2:int, param3:§7!8§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §<!=§
      {
         var _loc7_:§1!0§ = null;
         if(param2 == §;!J§)
         {
            param2 = this.§each §;
            ++this.§each §;
         }
         else
         {
            if(param2 >= §9b§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §9b§);
            }
            if(this.§with§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§<!=§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is § 6§)
         {
            ++this.§+&§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §1!0§;
            if(_loc6_ is §+>§)
            {
               this.§3R§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§2!6§(param2);
               }
               this.§-`§.push(_loc6_);
               if(_loc6_ is §3=§)
               {
                  this.§0!<§.push(_loc6_);
               }
            }
         }
         return _loc6_;
      }
      
      protected function getCommonTextureName() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§`a§, param2:§7!8§.Sprite, param3:§#r§, param4:§8X§, param5:int, param6:Number = 1.0) : §<!=§
      {
         return new §&!h§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param6,param5);
      }
      
      protected function createObjectInstance(param1:§`a§, param2:§7!8§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §<!=§
      {
         var _loc5_:§8X§;
         if(!(_loc5_ = this.§?>§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.getCommonTextureName();
         }
         var _loc7_:§#r§ = this.§?>§.animationManager.getAnimation(_loc6_);
         var _loc8_:§<!=§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §8X§.§<g§)
         {
            _loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §8X§.§5x§ || _loc5_.itemType == §8X§.§@+§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§5&§.§"N§,param4);
            }
            else if(_loc5_.itemName == §+7§.§<>§)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§5&§.§=R§,param4);
            }
            else
            {
               _loc8_ = new §@"D§(param2,_loc7_,this.§?>§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
            }
         }
         else
         {
            _loc8_ = new §1!0§(param2,_loc7_,this.§?>§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§?>§.addScore(param1,§!!t§.§#!L§,param3,param4,param5,param6);
      }
      
      public function §%!y§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§?>§.particles.§%!y§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      protected function §`"'§(param1:§1!0§) : void
      {
         var _loc4_:§#q§ = null;
         var _loc5_:§#q§ = null;
         var _loc6_:§<!=§ = null;
         var _loc7_:§<!=§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§ !B§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§ !B§[_loc3_];
            if(this.§ !B§[_loc3_].id1 == _loc2_ || this.§ !B§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§&_§)
               {
                  _loc6_ = _loc4_.§&_§.§#n§().GetUserData() as §<!=§;
                  _loc7_ = _loc4_.§&_§.§1x§().GetUserData() as §<!=§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§ !B§.pop();
               if(_loc3_ < this.§ !B§.length)
               {
                  this.§ !B§[_loc3_] = _loc5_;
               }
               this.§@c§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §@!<§(param1:§1o§) : void
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§#q§ = §#q§.§@!<§(param1);
         this.§ !B§.push(_loc4_);
         var _loc5_:§<!=§ = this.§with§(_loc2_);
         var _loc6_:§<!=§ = this.§with§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §1o§.§`!T§)
            {
               _loc4_.§&_§ = this.§?>§.mLevelEngine.mWorld.§9"A§(_loc4_.§;"<§(_loc5_,_loc6_));
            }
            else
            {
               this.§4e§.push(new §?!Y§(_loc2_,_loc3_,_loc4_.§%?§));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
      }
      
      protected function §@c§(param1:§#q§) : void
      {
         if(param1.§&_§)
         {
            this.§?>§.mLevelEngine.mWorld.§'$§(param1.§&_§);
         }
         if(param1.§<!a§)
         {
            if(this.§6#§.contains(param1.§<!a§))
            {
               this.§6#§.removeChild(param1.§<!a§,true);
            }
         }
      }
      
      public function §>"'§(param1:int, param2:Number, param3:Number) : void
      {
         this.§7[§.push(§5&§.§6w§(param1,param2,param3));
         §<!O§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §6!N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§7[§.push(§5&§.§2!"§(param1,param2,param3,param4,param5,param6));
         §<!O§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§?>§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get §+"1§() : Number
      {
         return this.§?>§.§+"1§;
      }
      
      public function §+!F§(param1:Number, param2:Number) : int
      {
         var _loc4_:§1!0§ = null;
         var _loc3_:int = this.§-`§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§-`§[_loc3_] as §1!0§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function § !0§(param1:Number, param2:Number) : §1!0§
      {
         var _loc4_:§1!0§ = null;
         var _loc3_:int = this.§-`§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§-`§[_loc3_] as §1!0§)
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
      
      public function getObject(param1:int) : §<!=§
      {
         return this.§-`§[param1];
      }
      
      public function §with§(param1:int) : §1!0§
      {
         var _loc2_:§<!=§ = null;
         var _loc3_:§1!0§ = null;
         for each(_loc2_ in this.§-`§)
         {
            _loc3_ = _loc2_ as §1!0§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§-`§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§-`§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§@!v§(param1);
         _loc4_ = this.§3R§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§3R§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §&P§(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §<!D§(param1:Number, param2:Number, param3:§1!0§) : §>!6§
      {
         var _loc4_:Number = param3.§^!z§().GetPosition().x;
         var _loc5_:Number = param3.§^!z§().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.§^!z§().GetAngle();
         return §4!-§.§6f§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §'!W§(param1:§1!0§, param2:Number) : void
      {
         if(param2 > param1.defence)
         {
            param1.applyDamage(param2 + param1.defence,this,null,false);
         }
      }
      
      protected function §7q§() : void
      {
         var _loc1_:§5&§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§<!=§ = null;
         var _loc7_:§1!0§ = null;
         var _loc8_:§>!6§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§7g§)
         {
            return;
         }
         while(this.§7[§.length > 0)
         {
            _loc1_ = this.§7[§.shift();
            _loc2_ = _loc1_.§2L§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.shakeCameraOnExplosion(_loc1_.push);
            for each(_loc6_ in this.§-`§)
            {
               if(_loc6_ is §1!0§)
               {
                  if(_loc7_ = §1!0§(_loc6_))
                  {
                     if((_loc8_ = this.§<!D§(_loc3_,_loc4_,_loc7_)).§]1§ <= _loc1_.§2L§)
                     {
                        _loc9_ = _loc1_.push * this.§&P§(_loc8_.§]1§,_loc1_.§2L§);
                        if(_loc8_.§]1§ > 0)
                        {
                           (_loc10_ = new Point(_loc8_.§%!b§.x - _loc3_,_loc8_.§%!b§.y - _loc4_)).normalize(1);
                           _loc11_ = _loc9_ * _loc10_.x;
                           _loc12_ = _loc9_ * _loc10_.y;
                           _loc7_.§^!z§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§%!b§.x,_loc8_.§%!b§.y));
                        }
                     }
                     if(_loc8_.§]1§ <= _loc1_.§@P§)
                     {
                        _loc13_ = _loc5_ * this.§&P§(_loc8_.§]1§,_loc1_.§@P§);
                        this.§'!W§(_loc7_,_loc13_);
                     }
                  }
               }
            }
            this.updateExplosionEffects(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function updateExplosionEffects(param1:§5&§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§?>§.particles.§%!y§(this.§^[§(param1.type),§0"@§.§3!W§,§2!V§.§?v§,param2,param3,600,"",§2!V§.§["8§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§?>§.particles.§%!y§(§2!V§.§?![§,§0"@§.§3!W§,§2!V§.§#!N§,param2,param3,_loc7_,"",§2!V§.§["8§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §^[§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §2!V§.§3Z§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§1!0§ = null;
         var _loc2_:§<!=§ = null;
         var _loc3_:int = this.§-`§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§-`§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§-"C§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §1!0§;
               if(this.§"=§(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§'!p§(§=C§.§;!G§);
                  }
                  this.§-"C§(_loc3_,false);
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§'!p§(§=C§.§;!G§);
                  this.§-"C§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§7o§(param1);
         this.§7q§();
      }
      
      protected function §@!v§(param1:Number) : void
      {
         var _loc2_:§+>§ = null;
         var _loc3_:int = this.§3R§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§3R§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§]"#§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §7o§(param1:Number) : void
      {
         this.§7v§(param1);
         this.§#!;§();
      }
      
      protected function §7v§(param1:Number) : void
      {
         var _loc3_:§?!Y§ = null;
         var _loc4_:§<!=§ = null;
         var _loc2_:int = this.§4e§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4e§[_loc2_];
            if(_loc3_.§=""§)
            {
               if(!_loc3_.update(param1))
               {
                  _loc4_ = this.§with§(_loc3_.objectId1);
                  this.§!!m§(_loc4_,true);
                  _loc4_ = this.§with§(_loc3_.objectId2);
                  this.§!!m§(_loc4_,true);
                  this.§4e§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §extends§(param1:§#q§) : void
      {
         var _loc2_:§1!0§ = param1.debug_object_1;
         var _loc3_:§1!0§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§with§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§with§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§<!a§ == null)
         {
            param1.§<!a§ = new §&!D§(4,4,4294901760);
            this.§6#§.addChild(param1.§<!a§);
         }
         param1.§<!a§.x = _loc4_;
         param1.§<!a§.y = _loc5_;
         param1.§<!a§.width = _loc8_;
         param1.§<!a§.rotation = _loc9_;
      }
      
      protected function §'1§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §#!;§() : void
      {
         var _loc1_:§#q§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§ !B§)
         {
            if(§8!l§)
            {
               this.§extends§(_loc1_);
            }
            if(_loc1_.§'=§ && _loc1_.§8D§ && _loc1_.§2"+§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §1o§.§="'§)
               {
                  _loc4_ = (_loc1_.§&_§ as b2PrismaticJoint).§]Z§();
                  _loc5_ = (_loc1_.§&_§ as b2PrismaticJoint).§2"5§();
                  _loc6_ = this.§'1§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§&_§ as b2PrismaticJoint).§+K§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §1o§.§4<§)
               {
                  _loc7_ = (_loc1_.§&_§ as b2RevoluteJoint).§=E§();
                  if((_loc5_ = (_loc1_.§&_§ as b2RevoluteJoint).§2"5§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§&_§ as b2RevoluteJoint).§+K§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §0!T§() : void
      {
         var _loc1_:§#q§ = null;
         while(this.§ !B§.length > 0)
         {
            _loc1_ = this.§ !B§.pop();
            this.§@c§(_loc1_);
         }
      }
      
      public function §"=§(param1:§<!=§) : Boolean
      {
         this.checkCameraBoundaries(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §<s§.§%!2§) && param1.§^!z§() && this.§;!W§(param1.§^!z§().GetPosition().x,param1.§^!z§().GetPosition().y))
         {
            if(param1 is §1!0§)
            {
               §1!0§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function checkCameraBoundaries(param1:§<!=§) : void
      {
      }
      
      public function §#"$§(param1:Number, param2:Number) : Boolean
      {
         return this.§?>§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §;!W§(param1:Number, param2:Number) : Boolean
      {
         return this.§?>§.§&+§.§!'§(param1,param2);
      }
      
      public function §]"#§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§+>§ = this.§3R§[param1];
         this.§0l§(_loc2_.sprite);
         this.§3R§[param1] = null;
         this.§3R§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§1!0§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§1!0§) : Point
      {
         var _loc2_:Number = param1.§^!z§().GetPosition().x;
         var _loc3_:Number = param1.§^!z§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §-"C§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:§1!0§ = null;
         var _loc5_:§?!Y§ = null;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc3_:§<!=§ = this.§-`§[param1];
         if(_loc3_ is §50§)
         {
            ++this.§6V§;
         }
         else if(_loc3_ is § 6§)
         {
            --this.§!C§;
         }
         if(_loc3_ == this.§0"8§)
         {
            this.§0"8§ = null;
         }
         if(_loc3_ is §1!0§)
         {
            _loc4_ = _loc3_ as §1!0§;
            if(param2)
            {
               _loc6_ = this.getScoreTextPosition(_loc4_);
               _loc7_ = §2!V§.§-"§(_loc4_.itemName);
               _loc8_ = this.shouldShowScoreText(_loc4_);
               this.§?>§.addScore(_loc4_.levelItem.score,§!!t§.§1!@§,_loc8_,_loc6_.x,_loc6_.y,_loc7_);
            }
            _loc4_.updateBeforeRemoving(this);
            this.§`"'§(_loc4_);
            for each(_loc5_ in this.§4e§)
            {
               if(_loc5_.objectId1 == _loc4_.id || _loc5_.objectId2 == _loc4_.id)
               {
                  _loc5_.§=""§ = true;
               }
            }
         }
         this.§0l§(_loc3_.sprite);
         this.§-`§[param1] = null;
         this.§-`§.splice(param1,1);
         if(_loc3_ is §3=§)
         {
            if((_loc9_ = this.§0!<§.indexOf(_loc3_)) >= 0)
            {
               this.§0!<§.splice(_loc9_,1);
            }
         }
         _loc3_.dispose();
         _loc3_ = null;
      }
      
      private function §0l§(param1:§7!8§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function §!!m§(param1:§<!=§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§-"C§(this.§-`§.indexOf(param1),param2);
         }
      }
      
      public function §!N§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?>§.§&9§();
         }
      }
      
      public function §&c§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§?>§.§&c§(param1,param2,param3,param4);
      }
      
      public function §2[§(param1:Number, param2:Number) : void
      {
         this.§+"?§.x = -param1;
         this.§+"?§.y = -param2;
         this.§-"0§.x = -param1;
         this.§-"0§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§<!=§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§-`§.length)
         {
            _loc2_ = this.§-`§[_loc1_];
            if(_loc2_ && _loc2_ is §50§ && (_loc2_ as §50§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §-"8§(param1:Boolean = false) : int
      {
         var _loc4_:§50§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§-`§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§-`§[_loc3_] as §50§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§`u§ && !_loc4_.§">§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §`!l§() : int
      {
         var _loc2_:§1!0§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-`§)
         {
            if(_loc2_ is §@"D§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §0">§() : int
      {
         var _loc2_:§1!0§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-`§)
         {
            if(_loc2_ && _loc2_.§6L§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§50§ = null;
         var _loc2_:int = this.§-`§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§-`§[_loc2_] as §50§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §7d§() : Boolean
      {
         var _loc2_:§ 6§ = null;
         var _loc1_:int = this.§-`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-`§[_loc1_] as § 6§;
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
         var _loc2_:§1!0§ = null;
         var _loc1_:int = this.§-`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-`§[_loc1_] as §1!0§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§&-§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§%!8§())
               {
                  return false;
               }
               if(_loc2_ is § 6§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §&6§(param1:Boolean = false) : §50§
      {
         var _loc7_:§50§ = null;
         var _loc2_:int = this.§-`§.length;
         var _loc3_:int = this.§-"8§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§-`§[_loc6_] as §50§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§`u§ && !_loc7_.§">§)
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
      
      public function §@![§() : int
      {
         var _loc3_:§1!0§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§-`§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§-`§[_loc2_] as §1!0§;
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
         return int(_loc1_ + this.§?>§.slingshot.§@![§());
      }
      
      protected function hasMinimumCollisionSpeed(param1:§<!=§, param2:§<!=§) : Boolean
      {
         if(param1 is §1!0§ && param2 is §1!0§ && !(param1 as §1!0§).§6!b§() && !(param2 as §1!0§).§6!b§())
         {
            return false;
         }
         return true;
      }
      
      public function §19§() : void
      {
         this.§!C§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      public function §2U§(param1:§<!=§, param2:§<!=§) : Boolean
      {
         if(!this.§7g§)
         {
            return false;
         }
         param1.§4!`§(param2);
         param2.§4!`§(param1);
         var _loc3_:§1!0§ = param1 as §1!0§;
         var _loc4_:§1!0§ = param2 as §1!0§;
         if(!_loc3_ || !_loc4_)
         {
            return true;
         }
         if(_loc3_.destroysCollidingObjects || _loc4_.§,M§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc3_,true);
            _loc3_.causedDamageToObjects();
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc3_.§,M§)
         {
            _loc3_.applyDamage(_loc3_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc3_,_loc4_))
         {
            return false;
         }
         if(_loc3_ is § 6§ && _loc4_ is § 6§)
         {
            return true;
         }
         var _loc6_:Number = _loc3_.§^^§(_loc4_.§^I§());
         var _loc7_:Number = _loc4_.§^^§(_loc3_.§^I§());
         var _loc8_:Number = 1;
         var _loc9_:Number = 1;
         if(_loc3_ is § 6§)
         {
            _loc8_ = _loc6_;
            _loc6_ = 1;
         }
         else if(_loc4_ is § 6§)
         {
            _loc9_ = _loc7_;
            _loc7_ = 1;
         }
         var _loc10_:Number = _loc3_.§%!O§(_loc4_.§^I§());
         var _loc11_:Number = _loc4_.§%!O§(_loc3_.§^I§());
         var _loc12_:Number = _loc3_.§^!z§().GetMass();
         var _loc13_:Number = _loc4_.§^!z§().GetMass();
         var _loc14_:b2Vec2 = _loc3_.§#?§();
         var _loc15_:b2Vec2 = _loc4_.§#?§();
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
         if(_loc3_ is § 6§)
         {
            if(_loc22_ <= 0)
            {
               this.§5!R§(_loc3_ as § 6§,_loc18_,_loc20_,_loc10_);
               return true;
            }
         }
         if(_loc4_ is § 6§)
         {
            if(_loc21_ <= 0)
            {
               this.§5!R§(_loc4_ as § 6§,_loc18_,_loc19_,_loc11_);
               return true;
            }
         }
         return _loc21_ <= 0 && _loc22_ <= 0;
      }
      
      protected function §5!R§(param1:§ 6§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number;
         if((_loc5_ = (_loc5_ = (param2 - param3) / param2) * param4) > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:b2Vec2 = param1.§#?§();
         param1.§%!>§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §[Q§() : void
      {
         var _loc2_:§1!0§ = null;
         var _loc1_:int = this.§-`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-`§[_loc1_] as §1!0§;
            if(_loc2_ != null && _loc2_ is §50§)
            {
               this.§-"C§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §'e§() : void
      {
         var _loc2_:§1!0§ = null;
         var _loc1_:int = this.§-`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-`§[_loc1_] as §1!0§;
            if(_loc2_ != null && _loc2_.§<!0§())
            {
               this.§-"C§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §`!o§() : int
      {
         return this.§-`§.length;
      }
      
      public function writeObjectInformation(param1:§#b§) : void
      {
         var _loc4_:§1!0§ = null;
         var _loc5_:§`a§ = null;
         var _loc6_:§1o§ = null;
         var _loc7_:§#q§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§-`§.length)
         {
            if(_loc4_ = this.§-`§[_loc2_] as §1!0§)
            {
               if(_loc4_.§44§)
               {
                  if(!_loc4_.§&-§())
                  {
                     (_loc5_ = new §`a§()).angle = _loc4_.§+!c§() / (Math.PI / 180);
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§^!z§().GetPosition().x;
                     _loc5_.y = _loc4_.§^!z§().GetPosition().y;
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§ !B§.length)
         {
            _loc7_ = this.§ !B§[_loc3_];
            _loc6_ = new §1o§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§=4§,_loc7_.§8D§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§2"+§,_loc7_.motorSpeed,_loc7_.§'=§,_loc7_.maxTorque);
            param1.§ !R§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §#&§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§-`§.length)
         {
            if(this.§-`§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§-`§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§1!0§ = null;
         this.§'!4§ = param1;
         this.§9K§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§-`§.length)
         {
            _loc3_ = this.§-`§[_loc2_] as §1!0§;
            if(_loc3_ && _loc3_.§6L§())
            {
               _loc3_.sprite.visible = !this.§'!4§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§7g§ = param1;
      }
      
      public function §6C§() : int
      {
         return this.§+&§;
      }
      
      public function §%!l§() : int
      {
         return this.§6V§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§?>§.damageScoreMultiplier;
      }
   }
}
