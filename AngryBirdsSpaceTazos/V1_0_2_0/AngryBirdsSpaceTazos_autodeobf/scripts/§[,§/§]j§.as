package §[,§
{
   import §&!S§.b2Vec2;
   import §'!&§.§ "E§;
   import §'!&§.§9!c§;
   import §'!&§.Sprite;
   import §+D§.b2PrismaticJoint;
   import §+D§.b2RevoluteJoint;
   import §,7§.§-"@§;
   import §,7§.§9!v§;
   import §,7§.§?L§;
   import §3"$§.Texture;
   import §8o§.§!">§;
   import §8o§.§]!U§;
   import §9!G§.§"!S§;
   import §;!0§.§!!X§;
   import §;"=§.§ !'§;
   import §;"=§.§"!=§;
   import §;"=§.§"!Y§;
   import §;"=§.§3!R§;
   import §;"=§.§5"5§;
   import §;"=§.§9!B§;
   import §;"=§.§]"<§;
   import §?!<§.§'!1§;
   import §?!<§.§8R§;
   import §?!<§.§]!Q§;
   import §[!v§.§!e§;
   import §[!v§.§'[§;
   import §[!v§.§5!-§;
   import §[!v§.§8Z§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §try§.§+!$§;
   import §try§.§,H§;
   
   public class §]j§ implements §class§
   {
      
      private static const §3<§:Boolean = false;
      
      private static const §;!f§:int = 1000000000;
      
      public static const §7!4§:int = -1;
      
      public static const §4"1§:int = -2;
       
      
      protected var §0Y§:Vector.<§1d§>;
      
      protected var §"!`§:Vector.<§8!a§>;
      
      protected var §,S§:Vector.<§-"@§>;
      
      private var §-G§:int = 1000000000;
      
      public var §1!3§:§'!1§;
      
      protected var §4"5§:Vector.<§7!+§>;
      
      protected var §`!z§:§'!&§.Sprite;
      
      protected var §#!0§:§'!&§.Sprite;
      
      protected var §2L§:§'!&§.Sprite;
      
      protected var §]T§:§'!&§.Sprite;
      
      protected var §`L§:Vector.<Texture>;
      
      protected var §>T§:Vector.<§8Z§>;
      
      protected var §[!§:int = 1;
      
      protected var §4m§:Vector.<§'[§>;
      
      protected var §`K§:int = 0;
      
      private var §@M§:int = 0;
      
      private var §8f§:int = 0;
      
      private var §0t§:§!e§;
      
      private var §0""§:§#!v§;
      
      private var §81§:Boolean = true;
      
      private var §4-§:Boolean = true;
      
      public function §]j§(param1:§'!1§, param2:§!!X§, param3:§'!&§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§0Y§ = new Vector.<§1d§>();
         this.§"!`§ = new Vector.<§8!a§>();
         this.§,S§ = new Vector.<§-"@§>();
         this.§4"5§ = new Vector.<§7!+§>();
         this.§`L§ = new Vector.<Texture>();
         this.§4m§ = new Vector.<§'[§>();
         this.§0t§ = new §!e§();
         super();
         this.§1!3§ = param1;
         this.§`!z§ = param3;
         this.§`!z§.§="E§ = false;
         this.§4-§ = true;
         this.§81§ = true;
         this.§#!0§ = new §'!&§.Sprite();
         this.§2L§ = new §'!&§.Sprite();
         this.§]T§ = new §'!&§.Sprite();
         this.§`!z§.addChild(this.§#!0§);
         this.§`!z§.addChild(this.§2L§);
         if(param2.hasGround)
         {
            _loc5_ = (this.§1!3§.§'!I§.§`"#§ + this.§1!3§.§'!I§.§+!U§) / 2;
            _loc6_ = 0 + §]!Q§.§6!b§;
            this.addObject(param4,_loc5_,_loc6_,0,§]j§.§7!4§);
         }
         this.addLevelObjects(param2);
      }
      
      public function get overlaySprite() : §'!&§.Sprite
      {
         return this.§]T§;
      }
      
      public function get §^!b§() : §'!&§.Sprite
      {
         return this.§`!z§;
      }
      
      public function get activeObject() : §5,§
      {
         return this.§0""§;
      }
      
      public function get objectCount() : int
      {
         return this.§0Y§.length;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§0""§)
         {
            _loc3_ = this.§0""§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function addLevelObjects(param1:§!!X§) : void
      {
         var _loc3_:§!e§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§]"<§ = null;
         var _loc6_:§5!-§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§1!3§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§"e§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§]"%§();
         this.§0J§(true);
         this.§>T§ = new Vector.<§8Z§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§"!a§)
         {
            _loc6_ = param1.§1"-§(_loc2_);
            this.§%b§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§0Y§.length > 0)
         {
            this.§#"<§(0);
         }
         while(this.§,S§.length > 0)
         {
            this.§46§(0);
         }
         this.§0Y§ = null;
         this.§"!`§ = null;
         this.§,S§ = null;
         this.§4m§ = null;
         if(this.§`!z§)
         {
            this.§`!z§.dispose();
            this.§`!z§ = null;
         }
         this.§#!0§ = null;
         this.§2L§ = null;
         if(this.§]T§)
         {
            this.§]T§.dispose();
            this.§]T§ = null;
         }
         while(this.§`L§.length > 0)
         {
            _loc1_ = this.§`L§.pop();
            this.§1!3§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §0J§(param1:Boolean) : void
      {
         this.§#!0§.visible = param1;
      }
      
      private function §]"%§() : void
      {
         var _loc3_:§1d§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§5,§ = null;
         var _loc6_:§3!R§ = null;
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
         var _loc21_:§9!c§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§5,§> = new Vector.<§5,§>();
         for each(_loc3_ in this.§0Y§)
         {
            if((_loc5_ = _loc3_ as §5,§) && _loc5_.§'P§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.getWidth(),_loc6_.getHeight()) / §'!1§.§<!@§ * Math.sqrt(2);
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
            _loc8_ = this.§1!3§.camera.§0_§ / §'!1§.§<!@§;
            _loc9_ = this.§1!3§.camera.§ !d§ / §'!1§.§<!@§;
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
            this.§7!=§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§@!q§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§1!3§.textureManager.getTextureFromBitmapData(_loc17_);
            this.§`L§.push(_loc20_);
            (_loc21_ = new §9!c§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§#!0§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §@!q§(param1:Vector.<§5,§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§5,§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§3!R§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §5"5§)
            {
               this.§<!$§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§@,§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is § !'§)
            {
               if((_loc12_ as § !'§).vertices.length == 4)
               {
                  this.§<!$§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§@,§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as § !'§).vertices.length == 3)
               {
                  this.§6I§(_loc12_ as § !'§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§@,§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §9!B§)
            {
               this.§!4§(_loc12_ as §9!B§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §<!$§(param1:§3!R§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §'!1§.§<!@§ * param9;
         var _loc13_:Number = param1.getHeight() / §'!1§.§<!@§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §6I§(param1:§ !'§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §'!1§.§<!@§ * param8,_loc14_.y / §'!1§.§<!@§ * param8);
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
      
      protected function §!4§(param1:§9!B§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §'!1§.§<!@§ * param7;
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
         return this.§1!3§.background.§@!O§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §7!=§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc5_:§!">§;
         if(_loc5_ = this.§1!3§.backgroundTextureManager.getTexture(_loc4_))
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
      
      protected function addObjectBird(param1:§!e§, param2:§'!&§.Sprite, param3:§]!U§, param4:§]"<§, param5:Number = 1.0, param6:Boolean = true) : §#!v§
      {
         var _loc11_:§#!v§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §#v§(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §+K§(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §3!7§(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §&!2§(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §]c§(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §!2§(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §3" §(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §;W§(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §1X§(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            default:
               _loc11_ = new §#!v§(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§`K§ > 0;
      }
      
      protected function addObjectPig(param1:§!e§, param2:§'!&§.Sprite, param3:§]!U§, param4:§]"<§, param5:Number = 1.0) : §<!f§
      {
         return new §<!f§(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §1d§
      {
         this.§0t§.type = param1;
         this.§0t§.x = param2;
         this.§0t§.y = param3;
         this.§0t§.angle = param4;
         this.§0t§.§;!T§ = 0;
         this.§0t§.§2^§ = 0;
         return this.§"e§(this.§0t§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §]"F§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §1d§
      {
         this.§0t§.type = param1;
         this.§0t§.x = param2;
         this.§0t§.y = param3;
         this.§0t§.angle = param4;
         this.§0t§.§;!T§ = param6;
         this.§0t§.§2^§ = param7;
         return this.§"e§(this.§0t§,param5,false,false,false,param8,param9);
      }
      
      protected function §"e§(param1:§!e§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §1d§
      {
         var _loc8_:§'!&§.Sprite = new §'!&§.Sprite();
         var _loc9_:§1d§;
         if((_loc9_ = this.§"!l§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §5,§ && (_loc9_ as §5,§).§'P§())
         {
            _loc8_.visible = !this.§81§;
         }
         if(_loc9_ is §#!v§ && !(_loc9_ is §1X§))
         {
            ++this.§`K§;
         }
         if(!param7)
         {
            this.§2L§.§3!d§(_loc8_);
         }
         else
         {
            this.§]T§.§3!d§(_loc8_);
         }
         if(param3)
         {
            this.§1!3§.§ !3§(_loc9_);
         }
         if(param4 && _loc9_ is §#!v§)
         {
            this.§0""§ = §#!v§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §"!l§(param1:§!e§, param2:int, param3:§'!&§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §1d§
      {
         var _loc7_:§5,§ = null;
         if(param2 == §4"1§)
         {
            param2 = this.§-G§;
            ++this.§-G§;
         }
         else
         {
            if(param2 >= §;!f§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §;!f§);
            }
            if(this.§4%§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§1d§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §#!v§)
         {
            ++this.§8f§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §5,§;
            if(_loc6_ is §-"@§)
            {
               this.§,S§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§0F§(param2);
               }
               this.§0Y§.push(_loc6_);
               if(_loc6_ is §8!a§)
               {
                  this.§"!`§.push(_loc6_);
               }
            }
         }
         return _loc6_;
      }
      
      protected function getCommonTextureName() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§!e§, param2:§'!&§.Sprite, param3:§]!U§, param4:§]"<§, param5:int, param6:Number = 1.0) : §1d§
      {
         return new §7!U§(param2,param3,this.§1!3§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param6,param5);
      }
      
      protected function createObjectInstance(param1:§!e§, param2:§'!&§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §1d§
      {
         var _loc5_:§]"<§;
         if(!(_loc5_ = this.§1!3§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.getCommonTextureName();
         }
         var _loc7_:§]!U§ = this.§1!3§.animationManager.getAnimation(_loc6_);
         var _loc8_:§1d§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §]"<§.§?![§)
         {
            _loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §]"<§.§^"0§ || _loc5_.itemType == §]"<§.§6!_§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§7!+§.§`"2§,param4);
            }
            else if(_loc5_.itemName == §&!2§.§!7§)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§7!+§.§]Z§,param4);
            }
            else
            {
               _loc8_ = new §5"§(param2,_loc7_,this.§1!3§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
            }
         }
         else
         {
            _loc8_ = new §5,§(param2,_loc7_,this.§1!3§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§1!3§.addScore(param1,§8R§.§^!g§,param3,param4,param5,param6);
      }
      
      public function §=J§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§1!3§.particles.§=J§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      protected function §'b§(param1:§5,§) : void
      {
         var _loc4_:§8Z§ = null;
         var _loc5_:§8Z§ = null;
         var _loc6_:§1d§ = null;
         var _loc7_:§1d§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§>T§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§>T§[_loc3_];
            if(this.§>T§[_loc3_].id1 == _loc2_ || this.§>T§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§6G§)
               {
                  _loc6_ = _loc4_.§6G§.§#'§().GetUserData() as §1d§;
                  _loc7_ = _loc4_.§6G§.§@+§().GetUserData() as §1d§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§>T§.pop();
               if(_loc3_ < this.§>T§.length)
               {
                  this.§>T§[_loc3_] = _loc5_;
               }
               this.§<!Y§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §%b§(param1:§5!-§) : void
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§8Z§ = §8Z§.§%b§(param1);
         this.§>T§.push(_loc4_);
         var _loc5_:§1d§ = this.§4%§(_loc2_);
         var _loc6_:§1d§ = this.§4%§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §5!-§.§9y§)
            {
               _loc4_.§6G§ = this.§1!3§.mLevelEngine.mWorld.§6n§(_loc4_.§<7§(_loc5_,_loc6_));
            }
            else
            {
               this.§4m§.push(new §'[§(_loc2_,_loc3_,_loc4_.§?!=§));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
      }
      
      protected function §<!Y§(param1:§8Z§) : void
      {
         if(param1.§6G§)
         {
            this.§1!3§.mLevelEngine.mWorld.§7"D§(param1.§6G§);
         }
         if(param1.§ "?§)
         {
            if(this.§2L§.contains(param1.§ "?§))
            {
               this.§2L§.removeChild(param1.§ "?§,true);
            }
         }
      }
      
      public function §%n§(param1:int, param2:Number, param3:Number) : void
      {
         this.§4"5§.push(§7!+§.§'!^§(param1,param2,param3));
         §"!S§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §[#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§4"5§.push(§7!+§.§,T§(param1,param2,param3,param4,param5,param6));
         §"!S§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§1!3§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get §5"C§() : Number
      {
         return this.§1!3§.§5"C§;
      }
      
      public function § "0§(param1:Number, param2:Number) : int
      {
         var _loc4_:§5,§ = null;
         var _loc3_:int = this.§0Y§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§0Y§[_loc3_] as §5,§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function §#!^§(param1:Number, param2:Number) : §5,§
      {
         var _loc4_:§5,§ = null;
         var _loc3_:int = this.§0Y§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§0Y§[_loc3_] as §5,§)
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
      
      public function getObject(param1:int) : §1d§
      {
         return this.§0Y§[param1];
      }
      
      public function §4%§(param1:int) : §5,§
      {
         var _loc2_:§1d§ = null;
         var _loc3_:§5,§ = null;
         for each(_loc2_ in this.§0Y§)
         {
            _loc3_ = _loc2_ as §5,§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§0Y§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§0Y§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§+"A§(param1);
         _loc4_ = this.§,S§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§,S§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §7!H§(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §][§(param1:Number, param2:Number, param3:§5,§) : §+!$§
      {
         var _loc4_:Number = param3.§ <§().GetPosition().x;
         var _loc5_:Number = param3.§ <§().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.§ <§().GetAngle();
         return §,H§.§+!N§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §@!D§(param1:§5,§, param2:Number) : void
      {
         if(param2 > param1.defence)
         {
            param1.applyDamage(param2 + param1.defence,this,null,false);
         }
      }
      
      protected function §null §() : void
      {
         var _loc1_:§7!+§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§1d§ = null;
         var _loc7_:§5,§ = null;
         var _loc8_:§+!$§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§4-§)
         {
            return;
         }
         while(this.§4"5§.length > 0)
         {
            _loc1_ = this.§4"5§.shift();
            _loc2_ = _loc1_.§<v§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.shakeCameraOnExplosion(_loc1_.push);
            for each(_loc6_ in this.§0Y§)
            {
               if(_loc6_ is §5,§)
               {
                  if(_loc7_ = §5,§(_loc6_))
                  {
                     if((_loc8_ = this.§][§(_loc3_,_loc4_,_loc7_)).§6b§ <= _loc1_.§<v§)
                     {
                        _loc9_ = _loc1_.push * this.§7!H§(_loc8_.§6b§,_loc1_.§<v§);
                        if(_loc8_.§6b§ > 0)
                        {
                           (_loc10_ = new Point(_loc8_.§9p§.x - _loc3_,_loc8_.§9p§.y - _loc4_)).normalize(1);
                           _loc11_ = _loc9_ * _loc10_.x;
                           _loc12_ = _loc9_ * _loc10_.y;
                           _loc7_.§ <§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§9p§.x,_loc8_.§9p§.y));
                        }
                     }
                     if(_loc8_.§6b§ <= _loc1_.§-D§)
                     {
                        _loc13_ = _loc5_ * this.§7!H§(_loc8_.§6b§,_loc1_.§-D§);
                        this.§@!D§(_loc7_,_loc13_);
                     }
                  }
               }
            }
            this.updateExplosionEffects(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function updateExplosionEffects(param1:§7!+§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§1!3§.particles.§=J§(this.§'d§(param1.type),§?L§.§7!B§,§9!v§.§?"A§,param2,param3,600,"",§9!v§.§-""§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§1!3§.particles.§=J§(§9!v§.§7!Q§,§?L§.§7!B§,§9!v§.§7!@§,param2,param3,_loc7_,"",§9!v§.§-""§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §'d§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §9!v§.§;!3§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§5,§ = null;
         var _loc2_:§1d§ = null;
         var _loc3_:int = this.§0Y§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§0Y§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§#"<§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §5,§;
               if(this.§?!l§(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§<">§(§"!Y§.§`_§);
                  }
                  this.§#"<§(_loc3_,false);
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§<">§(§"!Y§.§`_§);
                  this.§#"<§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§>j§(param1);
         this.§null §();
      }
      
      protected function §+"A§(param1:Number) : void
      {
         var _loc2_:§-"@§ = null;
         var _loc3_:int = this.§,S§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§,S§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§46§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §>j§(param1:Number) : void
      {
         this.§@!o§(param1);
         this.§@m§();
      }
      
      protected function §@!o§(param1:Number) : void
      {
         var _loc3_:§'[§ = null;
         var _loc4_:§1d§ = null;
         var _loc2_:int = this.§4m§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4m§[_loc2_];
            if(_loc3_.§0!+§)
            {
               if(!_loc3_.update(param1))
               {
                  _loc4_ = this.§4%§(_loc3_.objectId1);
                  this.§="6§(_loc4_,true);
                  _loc4_ = this.§4%§(_loc3_.objectId2);
                  this.§="6§(_loc4_,true);
                  this.§4m§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §"R§(param1:§8Z§) : void
      {
         var _loc2_:§5,§ = param1.debug_object_1;
         var _loc3_:§5,§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§4%§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§4%§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§ "?§ == null)
         {
            param1.§ "?§ = new § "E§(4,4,4294901760);
            this.§2L§.addChild(param1.§ "?§);
         }
         param1.§ "?§.x = _loc4_;
         param1.§ "?§.y = _loc5_;
         param1.§ "?§.width = _loc8_;
         param1.§ "?§.rotation = _loc9_;
      }
      
      protected function §<^§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §@m§() : void
      {
         var _loc1_:§8Z§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§>T§)
         {
            if(§3<§)
            {
               this.§"R§(_loc1_);
            }
            if(_loc1_.§'!o§ && _loc1_.§9!u§ && _loc1_.§1"'§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §5!-§.§<F§)
               {
                  _loc4_ = (_loc1_.§6G§ as b2PrismaticJoint).§[!=§();
                  _loc5_ = (_loc1_.§6G§ as b2PrismaticJoint).§@"E§();
                  _loc6_ = this.§<^§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§6G§ as b2PrismaticJoint).§ ]§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §5!-§.§,V§)
               {
                  _loc7_ = (_loc1_.§6G§ as b2RevoluteJoint).§1"1§();
                  if((_loc5_ = (_loc1_.§6G§ as b2RevoluteJoint).§@"E§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§6G§ as b2RevoluteJoint).§ ]§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §9""§() : void
      {
         var _loc1_:§8Z§ = null;
         while(this.§>T§.length > 0)
         {
            _loc1_ = this.§>T§.pop();
            this.§<!Y§(_loc1_);
         }
      }
      
      public function §?!l§(param1:§1d§) : Boolean
      {
         this.checkCameraBoundaries(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §"!=§.§]">§) && param1.§ <§() && this.§3J§(param1.§ <§().GetPosition().x,param1.§ <§().GetPosition().y))
         {
            if(param1 is §5,§)
            {
               §5,§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function checkCameraBoundaries(param1:§1d§) : void
      {
      }
      
      public function §4!w§(param1:Number, param2:Number) : Boolean
      {
         return this.§1!3§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §3J§(param1:Number, param2:Number) : Boolean
      {
         return this.§1!3§.§'!I§.§^"%§(param1,param2);
      }
      
      public function §46§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§-"@§ = this.§,S§[param1];
         this.§@!g§(_loc2_.sprite);
         this.§,S§[param1] = null;
         this.§,S§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§5,§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§5,§) : Point
      {
         var _loc2_:Number = param1.§ <§().GetPosition().x;
         var _loc3_:Number = param1.§ <§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §#"<§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:§5,§ = null;
         var _loc5_:§'[§ = null;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc3_:§1d§ = this.§0Y§[param1];
         if(_loc3_ is §<!f§)
         {
            ++this.§@M§;
         }
         else if(_loc3_ is §#!v§)
         {
            --this.§`K§;
         }
         if(_loc3_ == this.§0""§)
         {
            this.§0""§ = null;
         }
         if(_loc3_ is §5,§)
         {
            _loc4_ = _loc3_ as §5,§;
            if(param2)
            {
               _loc6_ = this.getScoreTextPosition(_loc4_);
               _loc7_ = §9!v§.§#8§(_loc4_.itemName);
               _loc8_ = this.shouldShowScoreText(_loc4_);
               this.§1!3§.addScore(_loc4_.levelItem.score,§8R§.§!d§,_loc8_,_loc6_.x,_loc6_.y,_loc7_);
            }
            _loc4_.updateBeforeRemoving(this);
            this.§'b§(_loc4_);
            for each(_loc5_ in this.§4m§)
            {
               if(_loc5_.objectId1 == _loc4_.id || _loc5_.objectId2 == _loc4_.id)
               {
                  _loc5_.§0!+§ = true;
               }
            }
         }
         this.§@!g§(_loc3_.sprite);
         this.§0Y§[param1] = null;
         this.§0Y§.splice(param1,1);
         if(_loc3_ is §8!a§)
         {
            if((_loc9_ = this.§"!`§.indexOf(_loc3_)) >= 0)
            {
               this.§"!`§.splice(_loc9_,1);
            }
         }
         _loc3_.dispose();
         _loc3_ = null;
      }
      
      private function §@!g§(param1:§'!&§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function §="6§(param1:§1d§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§#"<§(this.§0Y§.indexOf(param1),param2);
         }
      }
      
      public function §^f§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1!3§.§8"F§();
         }
      }
      
      public function §+!I§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§1!3§.§+!I§(param1,param2,param3,param4);
      }
      
      public function §%!2§(param1:Number, param2:Number) : void
      {
         this.§`!z§.x = -param1;
         this.§`!z§.y = -param2;
         this.§]T§.x = -param1;
         this.§]T§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§1d§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0Y§.length)
         {
            _loc2_ = this.§0Y§[_loc1_];
            if(_loc2_ && _loc2_ is §<!f§ && (_loc2_ as §<!f§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §#!8§(param1:Boolean = false) : int
      {
         var _loc4_:§<!f§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§0Y§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§0Y§[_loc3_] as §<!f§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§-q§ && !_loc4_.§#P§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §]!q§() : int
      {
         var _loc2_:§5,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0Y§)
         {
            if(_loc2_ is §5"§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §`!;§() : int
      {
         var _loc2_:§5,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0Y§)
         {
            if(_loc2_ && _loc2_.§'P§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§<!f§ = null;
         var _loc2_:int = this.§0Y§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0Y§[_loc2_] as §<!f§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §""2§() : Boolean
      {
         var _loc2_:§#!v§ = null;
         var _loc1_:int = this.§0Y§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0Y§[_loc1_] as §#!v§;
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
         var _loc2_:§5,§ = null;
         var _loc1_:int = this.§0Y§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0Y§[_loc1_] as §5,§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§>!1§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§#"%§())
               {
                  return false;
               }
               if(_loc2_ is §#!v§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §@t§(param1:Boolean = false) : §<!f§
      {
         var _loc7_:§<!f§ = null;
         var _loc2_:int = this.§0Y§.length;
         var _loc3_:int = this.§#!8§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§0Y§[_loc6_] as §<!f§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§-q§ && !_loc7_.§#P§)
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
      
      public function §3!?§() : int
      {
         var _loc3_:§5,§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§0Y§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0Y§[_loc2_] as §5,§;
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
         return int(_loc1_ + this.§1!3§.slingshot.§3!?§());
      }
      
      protected function hasMinimumCollisionSpeed(param1:§1d§, param2:§1d§) : Boolean
      {
         if(param1 is §5,§ && param2 is §5,§ && !(param1 as §5,§).§[W§() && !(param2 as §5,§).§[W§())
         {
            return false;
         }
         return true;
      }
      
      public function §<!z§() : void
      {
         this.§`K§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      public function §^&§(param1:§1d§, param2:§1d§) : Boolean
      {
         if(!this.§4-§)
         {
            return false;
         }
         param1.§^=§(param2);
         param2.§^=§(param1);
         var _loc3_:§5,§ = param1 as §5,§;
         var _loc4_:§5,§ = param2 as §5,§;
         if(!_loc3_ || !_loc4_)
         {
            return true;
         }
         if(_loc3_.destroysCollidingObjects || _loc4_.§%!J§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc3_,true);
            _loc3_.causedDamageToObjects();
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc3_.§%!J§)
         {
            _loc3_.applyDamage(_loc3_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc3_,_loc4_))
         {
            return false;
         }
         if(_loc3_ is §#!v§ && _loc4_ is §#!v§)
         {
            return true;
         }
         var _loc6_:Number = _loc3_.§-H§(_loc4_.§7y§());
         var _loc7_:Number = _loc4_.§-H§(_loc3_.§7y§());
         var _loc8_:Number = 1;
         var _loc9_:Number = 1;
         if(_loc3_ is §#!v§)
         {
            _loc8_ = _loc6_;
            _loc6_ = 1;
         }
         else if(_loc4_ is §#!v§)
         {
            _loc9_ = _loc7_;
            _loc7_ = 1;
         }
         var _loc10_:Number = _loc3_.§3!G§(_loc4_.§7y§());
         var _loc11_:Number = _loc4_.§3!G§(_loc3_.§7y§());
         var _loc12_:Number = _loc3_.§ <§().GetMass();
         var _loc13_:Number = _loc4_.§ <§().GetMass();
         var _loc14_:b2Vec2 = _loc3_.§[!P§();
         var _loc15_:b2Vec2 = _loc4_.§[!P§();
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
         if(_loc3_ is §#!v§)
         {
            if(_loc22_ <= 0)
            {
               this.§<5§(_loc3_ as §#!v§,_loc18_,_loc20_,_loc10_);
               return true;
            }
         }
         if(_loc4_ is §#!v§)
         {
            if(_loc21_ <= 0)
            {
               this.§<5§(_loc4_ as §#!v§,_loc18_,_loc19_,_loc11_);
               return true;
            }
         }
         return _loc21_ <= 0 && _loc22_ <= 0;
      }
      
      protected function §<5§(param1:§#!v§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number;
         if((_loc5_ = (_loc5_ = (param2 - param3) / param2) * param4) > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:b2Vec2 = param1.§[!P§();
         param1.§1t§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §;p§() : void
      {
         var _loc2_:§5,§ = null;
         var _loc1_:int = this.§0Y§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0Y§[_loc1_] as §5,§;
            if(_loc2_ != null && _loc2_ is §<!f§)
            {
               this.§#"<§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §&!Y§() : void
      {
         var _loc2_:§5,§ = null;
         var _loc1_:int = this.§0Y§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0Y§[_loc1_] as §5,§;
            if(_loc2_ != null && _loc2_.§4!1§())
            {
               this.§#"<§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §;">§() : int
      {
         return this.§0Y§.length;
      }
      
      public function writeObjectInformation(param1:§!!X§) : void
      {
         var _loc4_:§5,§ = null;
         var _loc5_:§!e§ = null;
         var _loc6_:§5!-§ = null;
         var _loc7_:§8Z§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0Y§.length)
         {
            if(_loc4_ = this.§0Y§[_loc2_] as §5,§)
            {
               if(_loc4_.§%%§)
               {
                  if(!_loc4_.§>!1§())
                  {
                     (_loc5_ = new §!e§()).angle = _loc4_.§@,§() / (Math.PI / 180);
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§ <§().GetPosition().x;
                     _loc5_.y = _loc4_.§ <§().GetPosition().y;
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§>T§.length)
         {
            _loc7_ = this.§>T§[_loc3_];
            _loc6_ = new §5!-§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§@p§,_loc7_.§9!u§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§1"'§,_loc7_.motorSpeed,_loc7_.§'!o§,_loc7_.maxTorque);
            param1.§5!$§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §4L§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§0Y§.length)
         {
            if(this.§0Y§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§0Y§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§5,§ = null;
         this.§81§ = param1;
         this.§0J§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0Y§.length)
         {
            _loc3_ = this.§0Y§[_loc2_] as §5,§;
            if(_loc3_ && _loc3_.§'P§())
            {
               _loc3_.sprite.visible = !this.§81§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§4-§ = param1;
      }
      
      public function §4I§() : int
      {
         return this.§8f§;
      }
      
      public function §6!e§() : int
      {
         return this.§@M§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§1!3§.damageScoreMultiplier;
      }
   }
}
