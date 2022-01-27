package §5"D§
{
   import §!u§.§'!X§;
   import §!u§.§5r§;
   import §!u§.§8"#§;
   import §"X§.§;W§;
   import §"X§.§<q§;
   import §'!^§.b2Contact;
   import §'@§.Texture;
   import §3R§.§+7§;
   import §3R§.§1!R§;
   import §3R§.§8!>§;
   import §4",§.§3v§;
   import §4"@§.§6p§;
   import §4"@§.§?!0§;
   import §4"@§.Sprite;
   import §5!<§.§0"!§;
   import §5!<§.§5!l§;
   import §5!<§.§6"?§;
   import §5!<§.§`H§;
   import §6!M§.§1!K§;
   import §6!M§.§2!c§;
   import §6!M§.§3!@§;
   import §6!M§.§7r§;
   import §6!M§.§8!]§;
   import §6!M§.§<!r§;
   import §6!M§.§=!P§;
   import §>"!§.§@!9§;
   import §?"#§.b2PrismaticJoint;
   import §?"#§.b2RevoluteJoint;
   import §[!f§.b2Vec2;
   import §^e§.§7!R§;
   import §^e§.§^5§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3!3§ implements §0!5§
   {
      
      private static const §!!h§:Boolean = false;
      
      private static const §+" §:int = 1000000000;
      
      public static const §6P§:int = -1;
      
      public static const §'!y§:int = -2;
       
      
      protected var §%!§:Vector.<§>q§>;
      
      protected var §1"2§:Vector.<§<!&§>;
      
      protected var §6!u§:Vector.<§5r§>;
      
      private var §0H§:int = 1000000000;
      
      public var §;H§:§1!R§;
      
      protected var §'!+§:Vector.<§09§>;
      
      protected var §6!G§:§4"@§.Sprite;
      
      protected var §"l§:§4"@§.Sprite;
      
      protected var §'!h§:§4"@§.Sprite;
      
      protected var §8z§:§4"@§.Sprite;
      
      protected var § u§:Vector.<Texture>;
      
      protected var §9!2§:Vector.<§6"?§>;
      
      protected var §8+§:int = 1;
      
      protected var §[$§:Vector.<§`H§>;
      
      protected var §-!w§:int = 0;
      
      private var §'8§:int = 0;
      
      private var §0z§:int = 0;
      
      private var §4§:§5!l§;
      
      private var §<S§:§1"G§;
      
      private var §["E§:Boolean = true;
      
      private var §0!=§:Boolean = true;
      
      public var §@2§:Boolean = false;
      
      public function §3!3§(param1:§1!R§, param2:§3v§, param3:§4"@§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§%!§ = new Vector.<§>q§>();
         this.§1"2§ = new Vector.<§<!&§>();
         this.§6!u§ = new Vector.<§5r§>();
         this.§'!+§ = new Vector.<§09§>();
         this.§ u§ = new Vector.<Texture>();
         this.§[$§ = new Vector.<§`H§>();
         this.§4§ = new §5!l§();
         super();
         this.§;H§ = param1;
         this.§6!G§ = param3;
         this.§6!G§.§#,§ = false;
         this.§0!=§ = true;
         this.§["E§ = true;
         this.§"l§ = new §4"@§.Sprite();
         this.§'!h§ = new §4"@§.Sprite();
         this.§8z§ = new §4"@§.Sprite();
         this.§6!G§.addChild(this.§"l§);
         this.§6!G§.addChild(this.§'!h§);
         if(param2.hasGround)
         {
            _loc5_ = (this.§;H§.§`!s§.§;[§ + this.§;H§.§`!s§.§2!O§) / 2;
            _loc6_ = 0 + §8!>§.§,"?§;
            this.addObject(param4,_loc5_,_loc6_,0,§3!3§.§6P§);
         }
         this.addLevelObjects(param2);
      }
      
      public function get overlaySprite() : §4"@§.Sprite
      {
         return this.§8z§;
      }
      
      public function get §8&§() : §4"@§.Sprite
      {
         return this.§6!G§;
      }
      
      public function get activeObject() : §6!!§
      {
         return this.§<S§;
      }
      
      public function get objectCount() : int
      {
         return this.§%!§.length;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§<S§)
         {
            _loc3_ = this.§<S§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function addLevelObjects(param1:§3v§) : void
      {
         var _loc3_:§5!l§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§<!r§ = null;
         var _loc6_:§0"!§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§;H§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§^Q§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§0!L§();
         this.§=!Z§(true);
         this.§9!2§ = new Vector.<§6"?§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§1"9§)
         {
            _loc6_ = param1.§7!&§(_loc2_);
            this.§#"%§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§%!§.length > 0)
         {
            this.§'%§(0);
         }
         while(this.§6!u§.length > 0)
         {
            this.§!!,§(0);
         }
         this.§%!§ = null;
         this.§1"2§ = null;
         this.§6!u§ = null;
         this.§[$§ = null;
         if(this.§6!G§)
         {
            this.§6!G§.dispose();
            this.§6!G§ = null;
         }
         this.§"l§ = null;
         this.§'!h§ = null;
         if(this.§8z§)
         {
            this.§8z§.dispose();
            this.§8z§ = null;
         }
         while(this.§ u§.length > 0)
         {
            _loc1_ = this.§ u§.pop();
            this.§;H§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §=!Z§(param1:Boolean) : void
      {
         this.§"l§.visible = param1;
      }
      
      private function §0!L§() : void
      {
         var _loc3_:§>q§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§6!!§ = null;
         var _loc6_:§7r§ = null;
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
         var _loc21_:§?!0§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§6!!§> = new Vector.<§6!!§>();
         for each(_loc3_ in this.§%!§)
         {
            if((_loc5_ = _loc3_ as §6!!§) && _loc5_.§9!u§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.getWidth(),_loc6_.getHeight()) / §1!R§.§00§ * Math.sqrt(2);
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
            _loc8_ = this.§;H§.camera.§1!-§ / §1!R§.§00§;
            _loc9_ = this.§;H§.camera.§9?§ / §1!R§.§00§;
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
            this.§`! §(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§`"G§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§;H§.textureManager.getTextureFromBitmapData(_loc17_);
            this.§ u§.push(_loc20_);
            (_loc21_ = new §?!0§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§"l§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §`"G§(param1:Vector.<§6!!§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§6!!§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§7r§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §1!K§)
            {
               this.§"!v§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§&!G§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §2!c§)
            {
               if((_loc12_ as §2!c§).vertices.length == 4)
               {
                  this.§"!v§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§&!G§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §2!c§).vertices.length == 3)
               {
                  this.§4!6§(_loc12_ as §2!c§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§&!G§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §3!@§)
            {
               this.§8J§(_loc12_ as §3!@§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §"!v§(param1:§7r§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §1!R§.§00§ * param9;
         var _loc13_:Number = param1.getHeight() / §1!R§.§00§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §4!6§(param1:§2!c§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §1!R§.§00§ * param8,_loc14_.y / §1!R§.§00§ * param8);
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
      
      protected function §8J§(param1:§3!@§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §1!R§.§00§ * param7;
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
         return this.§;H§.background.§^!2§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §`! §(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc5_:§7!R§;
         if(_loc5_ = this.§;H§.backgroundTextureManager.getTexture(_loc4_))
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
      
      protected function addObjectBird(param1:§5!l§, param2:§4"@§.Sprite, param3:§^5§, param4:§<!r§, param5:Number = 1.0, param6:Boolean = true) : §1"G§
      {
         var _loc11_:§1"G§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §2!W§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §3I§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §?x§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §["<§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §7"$§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §?"1§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §+R§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §"![§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §^!H§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            default:
               _loc11_ = new §1"G§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§-!w§ > 0;
      }
      
      protected function addObjectPig(param1:§5!l§, param2:§4"@§.Sprite, param3:§^5§, param4:§<!r§, param5:Number = 1.0) : §9V§
      {
         return new §9V§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §>q§
      {
         this.§4§.type = param1;
         this.§4§.x = param2;
         this.§4§.y = param3;
         this.§4§.angle = param4;
         this.§4§.§0!v§ = 0;
         this.§4§.§%! § = 0;
         return this.§^Q§(this.§4§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §[!R§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §>q§
      {
         this.§4§.type = param1;
         this.§4§.x = param2;
         this.§4§.y = param3;
         this.§4§.angle = param4;
         this.§4§.§0!v§ = param6;
         this.§4§.§%! § = param7;
         return this.§^Q§(this.§4§,param5,false,false,false,param8,param9);
      }
      
      protected function §^Q§(param1:§5!l§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §>q§
      {
         var _loc8_:§4"@§.Sprite = new §4"@§.Sprite();
         var _loc9_:§>q§;
         if((_loc9_ = this.§^!w§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §6!!§ && (_loc9_ as §6!!§).§9!u§())
         {
            _loc8_.visible = !this.§["E§;
         }
         if(_loc9_ is §1"G§ && !(_loc9_ is §^!H§))
         {
            ++this.§-!w§;
         }
         if(!param7)
         {
            this.§'!h§.§ !i§(_loc8_);
         }
         else
         {
            this.§8z§.§ !i§(_loc8_);
         }
         if(param3)
         {
            this.§;H§.§>u§(_loc9_);
         }
         if(param4 && _loc9_ is §1"G§)
         {
            this.§<S§ = §1"G§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §^!w§(param1:§5!l§, param2:int, param3:§4"@§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §>q§
      {
         var _loc7_:§6!!§ = null;
         if(param2 == §'!y§)
         {
            param2 = this.§0H§;
            ++this.§0H§;
         }
         else
         {
            if(param2 >= §+" §)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §+" §);
            }
            if(this.§,!`§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§>q§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §1"G§)
         {
            ++this.§0z§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §6!!§;
            if(_loc6_ is §5r§)
            {
               this.§6!u§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§&!<§(param2);
               }
               this.§%!§.push(_loc6_);
               if(_loc6_ is §<!&§)
               {
                  this.§1"2§.push(_loc6_);
               }
            }
         }
         return _loc6_;
      }
      
      protected function getCommonTextureName() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§5!l§, param2:§4"@§.Sprite, param3:§^5§, param4:§<!r§, param5:int, param6:Number = 1.0) : §>q§
      {
         return new §@d§(param2,param3,this.§;H§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param6,param5);
      }
      
      protected function createObjectInstance(param1:§5!l§, param2:§4"@§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §>q§
      {
         var _loc5_:§<!r§;
         if(!(_loc5_ = this.§;H§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.getCommonTextureName();
         }
         var _loc7_:§^5§ = this.§;H§.animationManager.getAnimation(_loc6_);
         var _loc8_:§>q§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §<!r§.§`";§)
         {
            _loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §<!r§.§!"<§ || _loc5_.itemType == §<!r§.§8""§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§09§.§@!D§,param4);
            }
            else if(_loc5_.itemName == §["<§.§=!A§)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§09§.§5!2§,param4);
            }
            else
            {
               _loc8_ = new §"f§(param2,_loc7_,this.§;H§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
            }
         }
         else
         {
            _loc8_ = new §6!!§(param2,_loc7_,this.§;H§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§;H§.addScore(param1,§+7§.§,O§,param3,param4,param5,param6);
      }
      
      public function §'!f§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§;H§.particles.§'!f§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      protected function §1"E§(param1:§6!!§) : void
      {
         var _loc4_:§6"?§ = null;
         var _loc5_:§6"?§ = null;
         var _loc6_:§>q§ = null;
         var _loc7_:§>q§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§9!2§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§9!2§[_loc3_];
            if(this.§9!2§[_loc3_].id1 == _loc2_ || this.§9!2§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§[""§)
               {
                  _loc6_ = _loc4_.§[""§.§&H§().GetUserData() as §>q§;
                  _loc7_ = _loc4_.§[""§.§[D§().GetUserData() as §>q§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§9!2§.pop();
               if(_loc3_ < this.§9!2§.length)
               {
                  this.§9!2§[_loc3_] = _loc5_;
               }
               this.§2=§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §#"%§(param1:§0"!§) : void
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§6"?§ = §6"?§.§#"%§(param1);
         this.§9!2§.push(_loc4_);
         var _loc5_:§>q§ = this.§,!`§(_loc2_);
         var _loc6_:§>q§ = this.§,!`§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §0"!§.§3!]§)
            {
               _loc4_.§[""§ = this.§;H§.mLevelEngine.mWorld.§;""§(_loc4_.§]"?§(_loc5_,_loc6_));
            }
            else
            {
               this.§[$§.push(new §`H§(_loc2_,_loc3_,_loc4_.§4!N§));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
      }
      
      protected function §2=§(param1:§6"?§) : void
      {
         if(param1.§[""§)
         {
            this.§;H§.mLevelEngine.mWorld.§7!o§(param1.§[""§);
         }
         if(param1.§[!N§)
         {
            if(this.§'!h§.contains(param1.§[!N§))
            {
               this.§'!h§.removeChild(param1.§[!N§,true);
            }
         }
      }
      
      public function §-Z§(param1:int, param2:Number, param3:Number) : void
      {
         this.§'!+§.push(§09§.§<!s§(param1,param2,param3));
         §@!9§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §[! §(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§'!+§.push(§09§.§=k§(param1,param2,param3,param4,param5,param6));
         §@!9§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§;H§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get §37§() : Number
      {
         return this.§;H§.§37§;
      }
      
      public function §3!X§(param1:Number, param2:Number) : int
      {
         var _loc4_:§6!!§ = null;
         var _loc3_:int = this.§%!§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§%!§[_loc3_] as §6!!§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §6!!§
      {
         var _loc4_:§6!!§ = null;
         var _loc3_:int = this.§%!§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§%!§[_loc3_] as §6!!§)
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
      
      public function getObject(param1:int) : §>q§
      {
         return this.§%!§[param1];
      }
      
      public function §,!`§(param1:int) : §6!!§
      {
         var _loc2_:§>q§ = null;
         var _loc3_:§6!!§ = null;
         for each(_loc2_ in this.§%!§)
         {
            _loc3_ = _loc2_ as §6!!§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§%!§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§%!§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§]!G§(param1);
         _loc4_ = this.§6!u§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§6!u§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §%'§(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §-L§(param1:Number, param2:Number, param3:§6!!§) : §;W§
      {
         var _loc4_:Number = param3.§9B§().GetPosition().x;
         var _loc5_:Number = param3.§9B§().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.§9B§().GetAngle();
         return §<q§.§;z§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §>!>§(param1:§6!!§, param2:Number) : void
      {
         if(param2 > param1.defence)
         {
            param1.applyDamage(param2 + param1.defence,this,null,false);
         }
      }
      
      protected function § 4§() : void
      {
         var _loc1_:§09§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§>q§ = null;
         var _loc7_:§6!!§ = null;
         var _loc8_:§;W§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§0!=§)
         {
            return;
         }
         while(this.§'!+§.length > 0)
         {
            _loc1_ = this.§'!+§.shift();
            _loc2_ = _loc1_.§="A§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.shakeCameraOnExplosion(_loc1_.push);
            for each(_loc6_ in this.§%!§)
            {
               if(_loc6_ is §6!!§)
               {
                  if(_loc7_ = §6!!§(_loc6_))
                  {
                     if((_loc8_ = this.§-L§(_loc3_,_loc4_,_loc7_)).§[t§ <= _loc1_.§="A§)
                     {
                        _loc9_ = _loc1_.push * this.§%'§(_loc8_.§[t§,_loc1_.§="A§);
                        if(_loc8_.§[t§ > 0)
                        {
                           (_loc10_ = new Point(_loc8_.§9!G§.x - _loc3_,_loc8_.§9!G§.y - _loc4_)).normalize(1);
                           _loc11_ = _loc9_ * _loc10_.x;
                           _loc12_ = _loc9_ * _loc10_.y;
                           _loc7_.§9B§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§9!G§.x,_loc8_.§9!G§.y));
                        }
                     }
                     if(_loc8_.§[t§ <= _loc1_.§7"6§)
                     {
                        _loc13_ = _loc5_ * this.§%'§(_loc8_.§[t§,_loc1_.§7"6§);
                        this.§>!>§(_loc7_,_loc13_);
                     }
                  }
               }
            }
            this.updateExplosionEffects(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function updateExplosionEffects(param1:§09§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§;H§.particles.§'!f§(this.§2X§(param1.type),§'!X§.§=!O§,§8"#§.§?"B§,param2,param3,600,"",§8"#§.§function§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§;H§.particles.§'!f§(§8"#§.§-U§,§'!X§.§=!O§,§8"#§.§^;§,param2,param3,_loc7_,"",§8"#§.§function§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §2X§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §8"#§.§,!]§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§6!!§ = null;
         var _loc2_:§>q§ = null;
         var _loc3_:int = this.§%!§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§%!§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§'%§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §6!!§;
               if(this.§0U§(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§2!;§(§=!P§.§2+§);
                  }
                  this.§'%§(_loc3_,!(_loc4_ is §1"G§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§2!;§(§=!P§.§2+§);
                  this.§'%§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§]!S§(param1);
         this.§ 4§();
      }
      
      protected function §]!G§(param1:Number) : void
      {
         var _loc2_:§5r§ = null;
         var _loc3_:int = this.§6!u§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§6!u§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§!!,§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §]!S§(param1:Number) : void
      {
         this.§`"2§(param1);
         this.§>P§();
      }
      
      protected function §`"2§(param1:Number) : void
      {
         var _loc3_:§`H§ = null;
         var _loc4_:§>q§ = null;
         var _loc2_:int = this.§[$§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[$§[_loc2_];
            if(_loc3_.§?h§)
            {
               if(!_loc3_.update(param1))
               {
                  _loc4_ = this.§,!`§(_loc3_.objectId1);
                  this.removeObject(_loc4_,true);
                  _loc4_ = this.§,!`§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§[$§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §-!S§(param1:§6"?§) : void
      {
         var _loc2_:§6!!§ = param1.debug_object_1;
         var _loc3_:§6!!§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§,!`§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§,!`§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§[!N§ == null)
         {
            param1.§[!N§ = new §6p§(4,4,4294901760);
            this.§'!h§.addChild(param1.§[!N§);
         }
         param1.§[!N§.x = _loc4_;
         param1.§[!N§.y = _loc5_;
         param1.§[!N§.width = _loc8_;
         param1.§[!N§.rotation = _loc9_;
      }
      
      protected function §5m§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §>P§() : void
      {
         var _loc1_:§6"?§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§9!2§)
         {
            if(§!!h§)
            {
               this.§-!S§(_loc1_);
            }
            if(_loc1_.§%!Y§ && _loc1_.§3"8§ && _loc1_.§<n§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §0"!§.§2J§)
               {
                  _loc4_ = (_loc1_.§[""§ as b2PrismaticJoint).§4!i§();
                  _loc5_ = (_loc1_.§[""§ as b2PrismaticJoint).§+!S§();
                  _loc6_ = this.§5m§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§[""§ as b2PrismaticJoint).§7n§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §0"!§.§3!'§)
               {
                  _loc7_ = (_loc1_.§[""§ as b2RevoluteJoint).§#5§();
                  if((_loc5_ = (_loc1_.§[""§ as b2RevoluteJoint).§+!S§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§[""§ as b2RevoluteJoint).§7n§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §]k§() : void
      {
         var _loc1_:§6"?§ = null;
         while(this.§9!2§.length > 0)
         {
            _loc1_ = this.§9!2§.pop();
            this.§2=§(_loc1_);
         }
      }
      
      public function §0U§(param1:§>q§) : Boolean
      {
         this.checkCameraBoundaries(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §8!]§.§16§) && param1.§9B§() && this.§]!j§(param1.§9B§().GetPosition().x,param1.§9B§().GetPosition().y))
         {
            if(param1 is §6!!§)
            {
               §6!!§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function checkCameraBoundaries(param1:§>q§) : void
      {
      }
      
      public function §'k§(param1:Number, param2:Number) : Boolean
      {
         return this.§;H§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §]!j§(param1:Number, param2:Number) : Boolean
      {
         return this.§;H§.§`!s§.§!T§(param1,param2);
      }
      
      public function §!!,§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§5r§ = this.§6!u§[param1];
         this.§="?§(_loc2_.sprite);
         this.§6!u§[param1] = null;
         this.§6!u§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§6!!§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§6!!§) : Point
      {
         var _loc2_:Number = param1.§9B§().GetPosition().x;
         var _loc3_:Number = param1.§9B§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §'%§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:§6!!§ = null;
         var _loc5_:§`H§ = null;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc3_:§>q§ = this.§%!§[param1];
         if(_loc3_ is §9V§)
         {
            ++this.§'8§;
         }
         else if(_loc3_ is §1"G§)
         {
            --this.§-!w§;
         }
         if(_loc3_ == this.§<S§)
         {
            this.§<S§ = null;
         }
         if(_loc3_ is §6!!§)
         {
            _loc4_ = _loc3_ as §6!!§;
            if(param2)
            {
               _loc6_ = this.getScoreTextPosition(_loc4_);
               _loc7_ = §8"#§.§[!%§(_loc4_.itemName);
               _loc8_ = this.shouldShowScoreText(_loc4_);
               this.§;H§.addScore(_loc4_.levelItem.score,§+7§.§@e§,_loc8_,_loc6_.x,_loc6_.y,_loc7_);
            }
            _loc4_.updateBeforeRemoving(this);
            this.§1"E§(_loc4_);
            for each(_loc5_ in this.§[$§)
            {
               if(_loc5_.objectId1 == _loc4_.id || _loc5_.objectId2 == _loc4_.id)
               {
                  _loc5_.§?h§ = true;
               }
            }
         }
         this.§="?§(_loc3_.sprite);
         this.§%!§[param1] = null;
         this.§%!§.splice(param1,1);
         if(_loc3_ is §<!&§)
         {
            if((_loc9_ = this.§1"2§.indexOf(_loc3_)) >= 0)
            {
               this.§1"2§.splice(_loc9_,1);
            }
         }
         _loc3_.dispose();
         _loc3_ = null;
      }
      
      private function §="?§(param1:§4"@§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§>q§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§'%§(this.§%!§.indexOf(param1),param2);
         }
      }
      
      public function §`#§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;H§.§9!$§();
         }
      }
      
      public function §"!B§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§;H§.§"!B§(param1,param2,param3,param4);
      }
      
      public function §,">§(param1:Number, param2:Number) : void
      {
         this.§6!G§.x = -param1;
         this.§6!G§.y = -param2;
         this.§8z§.x = -param1;
         this.§8z§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§>q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%!§.length)
         {
            _loc2_ = this.§%!§[_loc1_];
            if(_loc2_ && _loc2_ is §9V§ && (_loc2_ as §9V§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §;!D§(param1:Boolean = false) : int
      {
         var _loc4_:§9V§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§%!§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§%!§[_loc3_] as §9V§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§8!x§ && !_loc4_.§-C§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §&"3§() : int
      {
         var _loc2_:§6!!§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%!§)
         {
            if(_loc2_ is §"f§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §%f§() : int
      {
         var _loc2_:§6!!§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%!§)
         {
            if(_loc2_ && _loc2_.§9!u§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§9V§ = null;
         var _loc2_:int = this.§%!§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§%!§[_loc2_] as §9V§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §-i§() : Boolean
      {
         var _loc2_:§1"G§ = null;
         var _loc1_:int = this.§%!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§%!§[_loc1_] as §1"G§;
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
         var _loc2_:§6!!§ = null;
         var _loc1_:int = this.§%!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§%!§[_loc1_] as §6!!§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§?0§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§8!Y§())
               {
                  return false;
               }
               if(_loc2_ is §1"G§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §<!y§(param1:Boolean = false) : §9V§
      {
         var _loc7_:§9V§ = null;
         var _loc2_:int = this.§%!§.length;
         var _loc3_:int = this.§;!D§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§%!§[_loc6_] as §9V§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§8!x§ && !_loc7_.§-C§)
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
      
      public function §=!q§() : int
      {
         var _loc3_:§6!!§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§%!§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§%!§[_loc2_] as §6!!§;
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
         return int(_loc1_ + this.§;H§.slingshot.§=!q§());
      }
      
      protected function hasMinimumCollisionSpeed(param1:§>q§, param2:§>q§) : Boolean
      {
         if(param1 is §6!!§ && param2 is §6!!§ && !(param1 as §6!!§).§@!^§() && !(param2 as §6!!§).§@!^§())
         {
            return false;
         }
         return true;
      }
      
      public function §@!5§() : void
      {
         this.§-!w§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      public function §]t§(param1:§>q§, param2:§>q§, param3:b2Contact) : Boolean
      {
         this.§@2§ = false;
         if(!this.§0!=§)
         {
            return false;
         }
         param1.§,>§(param2);
         param2.§,>§(param1);
         var _loc4_:§6!!§ = param1 as §6!!§;
         var _loc5_:§6!!§ = param2 as §6!!§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§`$§)
         {
            _loc5_.applyDamage(_loc5_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§`$§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(_loc4_ is §1"G§ && _loc5_ is §1"G§)
         {
            return true;
         }
         var _loc7_:Number = _loc4_.§`E§(_loc5_.§+!l§());
         var _loc8_:Number = _loc5_.§`E§(_loc4_.§+!l§());
         var _loc9_:Number = 1;
         var _loc10_:Number = 1;
         if(_loc4_ is §1"G§)
         {
            _loc9_ = _loc7_;
            _loc7_ = 1;
         }
         else if(_loc5_ is §1"G§)
         {
            _loc10_ = _loc8_;
            _loc8_ = 1;
         }
         var _loc11_:Number = _loc4_.§8!G§(_loc5_.§+!l§());
         var _loc12_:Number = _loc5_.§8!G§(_loc4_.§+!l§());
         var _loc13_:Number = _loc4_.§9B§().GetMass();
         var _loc14_:Number = _loc5_.§9B§().GetMass();
         var _loc15_:b2Vec2 = _loc4_.§!@§();
         var _loc16_:b2Vec2 = _loc5_.§!@§();
         var _loc17_:Number = _loc9_ * _loc13_ * _loc15_.x - _loc10_ * _loc14_ * _loc16_.x;
         var _loc18_:Number = _loc9_ * _loc13_ * _loc15_.y - _loc10_ * _loc14_ * _loc16_.y;
         var _loc19_:Number;
         if((_loc19_ = Math.sqrt(_loc17_ * _loc17_ + _loc18_ * _loc18_) / 10) <= 0)
         {
            return false;
         }
         var _loc20_:Number = Math.max(0,_loc4_.health);
         var _loc21_:Number = Math.max(0,_loc5_.health);
         this.shakeCameraOnCollision(_loc19_,_loc20_,_loc21_);
         var _loc22_:Number = _loc4_.applyDamage(_loc19_ * _loc8_,this,_loc5_,true);
         var _loc23_:Number = _loc5_.applyDamage(_loc19_ * _loc7_,this,_loc4_,true);
         if(_loc22_ != _loc20_ || _loc23_ != _loc21_)
         {
            this.§@2§ = true;
         }
         if(_loc22_ < _loc20_)
         {
            _loc5_.causedDamageToObjects();
         }
         if(_loc23_ < _loc21_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc4_ is §1"G§)
         {
            if(_loc23_ <= 0)
            {
               this.§`!=§(_loc4_ as §1"G§,_loc19_,_loc21_,_loc11_);
               return true;
            }
         }
         if(_loc5_ is §1"G§)
         {
            if(_loc22_ <= 0)
            {
               this.§`!=§(_loc5_ as §1"G§,_loc19_,_loc20_,_loc12_);
               return true;
            }
         }
         return _loc22_ <= 0 && _loc23_ <= 0;
      }
      
      protected function §`!=§(param1:§1"G§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number;
         if((_loc5_ = (_loc5_ = (param2 - param3) / param2) * param4) > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:b2Vec2 = param1.§!@§();
         _loc6_.x *= _loc5_;
         _loc6_.y *= _loc5_;
         param1.§6!R§(new b2Vec2(_loc6_.x,_loc6_.y));
      }
      
      public function §@z§() : void
      {
         var _loc2_:§6!!§ = null;
         var _loc1_:int = this.§%!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§%!§[_loc1_] as §6!!§;
            if(_loc2_ != null && _loc2_ is §9V§)
            {
               this.§'%§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §"!V§() : void
      {
         var _loc2_:§6!!§ = null;
         var _loc1_:int = this.§%!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§%!§[_loc1_] as §6!!§;
            if(_loc2_ != null && _loc2_.§'!Q§())
            {
               this.§'%§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §8^§() : int
      {
         return this.§%!§.length;
      }
      
      public function writeObjectInformation(param1:§3v§) : void
      {
         var _loc4_:§6!!§ = null;
         var _loc5_:§5!l§ = null;
         var _loc6_:§0"!§ = null;
         var _loc7_:§6"?§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§%!§.length)
         {
            if(_loc4_ = this.§%!§[_loc2_] as §6!!§)
            {
               if(_loc4_.§95§)
               {
                  if(!_loc4_.§?0§())
                  {
                     (_loc5_ = new §5!l§()).angle = _loc4_.§&!G§() / (Math.PI / 180);
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§9B§().GetPosition().x;
                     _loc5_.y = _loc4_.§9B§().GetPosition().y;
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§9!2§.length)
         {
            _loc7_ = this.§9!2§[_loc3_];
            _loc6_ = new §0"!§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§?O§,_loc7_.§3"8§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§<n§,_loc7_.motorSpeed,_loc7_.§%!Y§,_loc7_.maxTorque);
            param1.§&"#§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §7"A§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§%!§.length)
         {
            if(this.§%!§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§%!§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§6!!§ = null;
         this.§["E§ = param1;
         this.§=!Z§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§%!§.length)
         {
            _loc3_ = this.§%!§[_loc2_] as §6!!§;
            if(_loc3_ && _loc3_.§9!u§())
            {
               _loc3_.sprite.visible = !this.§["E§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§0!=§ = param1;
      }
      
      public function §&]§() : int
      {
         return this.§0z§;
      }
      
      public function §?X§() : int
      {
         return this.§'8§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§;H§.damageScoreMultiplier;
      }
   }
}
