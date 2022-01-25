package §#B§
{
   import § !b§.§'!%§;
   import § !b§.§1Z§;
   import § !b§.§>T§;
   import § !b§.§`!W§;
   import §!w§.§1c§;
   import §"!4§.b2PrismaticJoint;
   import §"!4§.b2WeldJoint;
   import §+N§.§=!+§;
   import §,-§.§ q§;
   import §,-§.§#o§;
   import §,-§.§'i§;
   import §,-§.§7i§;
   import §,-§.§;!F§;
   import §-V§.§&!^§;
   import §-V§.§]s§;
   import §2!G§.§%!&§;
   import §2!G§.§+>§;
   import §2!G§.§1E§;
   import §2!G§.§2!V§;
   import §3U§.§ !M§;
   import §;h§.b2Vec2;
   import §<!$§.Sprite;
   import §<!$§.§[!5§;
   import §=L§.§@E§;
   import §@'§.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § ! §
   {
       
      
      protected var §<!4§:Vector.<§ ]§>;
      
      protected var §4,§:int;
      
      public var mLevelMain:§2!V§;
      
      public var §`!M§:Vector.<§ '§>;
      
      protected var §8r§:Sprite;
      
      protected var §4J§:Sprite;
      
      private var §9!]§:Sprite;
      
      private var §#y§:Sprite;
      
      private var §9!5§:Sprite;
      
      protected var §0i§:Vector.<Texture>;
      
      protected var §@!G§:Vector.<§1Z§>;
      
      protected var §'O§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §4;§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §3!-§:Boolean = false;
      
      protected var §7!!§:Number = 0.07;
      
      protected var §^!<§:int;
      
      protected var §'I§:Vector.<§`!W§>;
      
      protected var §&!G§:int = 0;
      
      private var §?!C§:int = 0;
      
      private var §<!D§:int = 0;
      
      private var §2M§:int;
      
      private var §-z§:Boolean = true;
      
      private var §2?§:Boolean = true;
      
      public function § ! §(param1:§2!V§, param2:§ !M§, param3:Sprite)
      {
         var _loc5_:§1Z§ = null;
         var _loc6_:§'!%§ = null;
         var _loc7_:§ ]§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§ ]§ = null;
         var _loc11_:§ ]§ = null;
         this.§<!4§ = new Vector.<§ ]§>();
         this.§`!M§ = new Vector.<§ '§>();
         this.§0i§ = new Vector.<Texture>();
         this.§'I§ = new Vector.<§`!W§>();
         super();
         this.mLevelMain = param1;
         this.§4,§ = 0;
         this.§4J§ = param3;
         this.§4J§.§2!-§ = false;
         this.§2?§ = true;
         this.§-z§ = true;
         this.§8r§ = new Sprite();
         this.§9!]§ = new Sprite();
         this.§#y§ = new Sprite();
         this.§9!5§ = new Sprite();
         this.§4J§.addChild(this.§8r§);
         this.§4J§.addChild(this.§9!]§);
         this.§4J§.addChild(this.§#y§);
         this.§4J§.addChild(this.§9!5§);
         this.§5!$§(§1c§.§0E§(param2.theme).§get §,(this.mLevelMain.§0D§.§<$§ + this.mLevelMain.§0D§.§ !@§) / 2,this.mLevelMain.§0D§.§6![§ + §1E§.§<!6§);
         this.§2M§ = this.§<!4§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§;!G§)
         {
            _loc6_ = param2.§]A§(_loc4_);
            if(_loc7_ = this.§5!$§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§5![§();
         this.§<e§(true);
         this.§@!G§ = new Vector.<§1Z§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§'5§)
         {
            this.§@!G§.push(§1Z§.§2f§(param2.§%5§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§@!G§)
         {
            _loc8_ = _loc5_.index1 + this.§2M§;
            _loc9_ = _loc5_.index2 + this.§2M§;
            if(_loc8_ < this.§<!4§.length && _loc9_ < this.§<!4§.length)
            {
               _loc10_ = this.§<!4§[_loc8_];
               _loc11_ = this.§<!4§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §>T§.§,<§)
               {
                  _loc5_.§>7§ = this.mLevelMain.mLevelEngine.mWorld.§-!]§(_loc5_.§8!Y§(_loc10_,_loc11_));
               }
               else
               {
                  this.§'I§.push(new §`!W§(_loc8_,_loc9_,_loc5_.§#E§));
               }
            }
         }
      }
      
      public function get §=d§() : Sprite
      {
         return this.§9!5§;
      }
      
      public function get §'n§() : Sprite
      {
         return this.§4J§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§<!4§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§<!4§ = null;
         this.§'I§ = null;
         if(this.§4J§)
         {
            this.§4J§.dispose();
            this.§4J§ = null;
            this.§8r§ = null;
            this.§9!5§ = null;
            this.§9!]§ = null;
            this.§#y§ = null;
         }
         while(this.§0i§.length > 0)
         {
            _loc1_ = this.§0i§.pop();
            this.mLevelMain.textureManager.§@!;§(_loc1_);
         }
      }
      
      private function §<e§(param1:Boolean) : void
      {
         this.§8r§.visible = param1;
      }
      
      private function §5![§() : void
      {
         var _loc3_:§ ]§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§[!5§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§ ]§> = new Vector.<§ ]§>();
         for each(_loc3_ in this.§<!4§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§4J§);
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
            _loc5_ = 1;
            while(_loc1_.width > 2048 || _loc1_.height > 2048)
            {
               _loc1_.left /= 2;
               _loc1_.top /= 2;
               _loc1_.right /= 2;
               _loc1_.bottom /= 2;
               _loc5_ /= 2;
            }
            _loc6_ = _loc1_.width;
            _loc7_ = _loc1_.height;
            _loc8_ = _loc1_.left;
            _loc9_ = _loc1_.top;
            _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
            this.§[y§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§1!B§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.mLevelMain.textureManager.§&!`§(_loc10_);
            this.§0i§.push(_loc12_);
            (_loc13_ = new §[!5§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§8r§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §1!B§(param1:Vector.<§ ]§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§ ]§ = null;
         var _loc11_:§;!F§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§5K§.shape).§=A§();
            _loc13_ = new Rectangle(_loc12_[0].x / §2!V§.§-!3§ * param6,_loc12_[0].y / §2!V§.§-!3§ * param6,(_loc12_[1].x - _loc12_[0].x) / §2!V§.§-!3§ * param6,(_loc12_[1].y - _loc12_[0].y) / §2!V§.§-!3§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§;]§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §[y§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.mLevelMain.background.§+Z§();
         var _loc5_:§=!+§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§-!V§(_loc4_))
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
      
      public function §9-§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : § ]§
      {
         var _loc10_:§ ]§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §,a§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§4,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §]G§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§4,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §5!>§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§4,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §>5§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§4,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §]!A§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§4,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §7O§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§4,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §>!Q§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§4,§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §!!_§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§4,§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§&!G§ > 0;
      }
      
      public function §5!$§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : § ]§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§ ]§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§-z§;
            this.§<!4§[this.§<!4§.length] = _loc11_;
         }
         else
         {
            this.§<!4§[this.§<!4§.length] = _loc11_;
         }
         if(_loc11_ is §!!_§ && !_loc11_.§2R§())
         {
            this.§9!]§.addChild(_loc10_);
            ++this.§&!G§;
         }
         else if(_loc11_.front || param9)
         {
            this.§9!5§.addChild(_loc10_);
         }
         else
         {
            this.§#y§.addChild(_loc10_);
         }
         if(param5)
         {
            this.mLevelMain.§1!§(_loc11_);
         }
         if(param6)
         {
            this.mLevelMain.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §2f§(param1:int, param2:§ ]§, param3:§ ]§) : §1Z§
      {
         var _loc6_:§1Z§ = null;
         var _loc4_:int = this.§<!4§.indexOf(param2) - this.§2M§;
         var _loc5_:int = this.§<!4§.indexOf(param3) - this.§2M§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §1Z§(§>T§.§#!?§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§>7§ = this.mLevelMain.mLevelEngine.mWorld.§-!]§(_loc6_.§8!Y§(param2,param3));
            this.§@!G§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §8!'§(param1:§1Z§) : void
      {
         if(!(param1.§>7§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§ ]§ = this.§]A§(param1.index1 + this.§2M§);
         var _loc3_:§ ]§ = this.§]A§(param1.index2 + this.§2M§);
         this.mLevelMain.mLevelEngine.mWorld.§@j§(param1.§>7§);
         param1.§>7§ = this.mLevelMain.mLevelEngine.mWorld.§-!]§(param1.§8!Y§(_loc2_,_loc3_));
      }
      
      public function §5!!§(param1:§ ]§) : Vector.<§1Z§>
      {
         var _loc4_:§1Z§ = null;
         var _loc2_:Vector.<§1Z§> = new Vector.<§1Z§>();
         var _loc3_:int = this.§<!4§.indexOf(param1) - this.§2M§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§@!G§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §3v§() : Vector.<§1Z§>
      {
         return this.§@!G§;
      }
      
      public function §9!;§(param1:§ ]§) : void
      {
         var _loc2_:int = this.§<!4§.indexOf(param1) - this.§2M§;
         var _loc3_:int = this.§@!G§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§@!G§[_loc3_].index1 == _loc2_ || this.§@!G§[_loc3_].index2 == _loc2_)
            {
               this.§@!G§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §7u§(param1:§ ]§, param2:§ ]§) : Boolean
      {
         var _loc3_:int = this.§<!4§.indexOf(param1) - this.§2M§;
         var _loc4_:int = this.§<!4§.indexOf(param2) - this.§2M§;
         var _loc5_:int = this.§@!G§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§@!G§[_loc5_].index1 == _loc3_ && this.§@!G§[_loc5_].index2 == _loc4_ || this.§@!G§[_loc5_].index1 == _loc4_ && this.§@!G§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : § ]§
      {
         var _loc10_:§ ]§ = null;
         var _loc11_:§7i§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§9-§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§<!D§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §8+§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§4,§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §'i§.§6!R§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §'i§.§6!R§(param2);
            }
            if(_loc11_.§+=§ == §7i§.include || _loc11_.§+=§ == §7i§.§ !d§)
            {
               _loc10_ = new §<%§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§4,§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new § ]§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§4,§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §+x§(param1:Number) : void
      {
         var _loc3_:§ ]§ = null;
         var _loc2_:int = this.§<!4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<!4§[_loc2_] as § ]§;
            if(_loc3_)
            {
               if(_loc3_.§=1§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§?u§();
                  _loc3_.§=!`§();
               }
            }
            _loc2_--;
         }
         this.§+Y§(param1);
      }
      
      protected function §+Y§(param1:Number) : void
      {
         var _loc3_:§1Z§ = null;
         var _loc4_:§`!W§ = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = this.§'I§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§'I§[_loc2_]).§7U§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc5_ < this.§<!4§.length && this.§<!4§[_loc5_] != null)
                  {
                     this.removeObjectWithIndex(_loc5_,true,true,true);
                  }
                  this.§'I§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§@!G§)
         {
            if(_loc3_.type == §>T§.§+O§ && _loc3_.§%!7§)
            {
               _loc6_ = (_loc3_.§>7§ as b2PrismaticJoint).§4!_§();
               _loc7_ = (_loc3_.§>7§ as b2PrismaticJoint).§`!=§();
               if(_loc3_.§1V§ && _loc3_.§^@§ && (_loc7_ > 0 && _loc6_ >= _loc3_.upperLimit || _loc7_ < 0 && _loc6_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§>7§ as b2PrismaticJoint).§+e§(-_loc7_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§`!M§.push(§ '§.createExplosion(param1,param2,param3));
         §@E§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §=!;§(param1:Number, param2:Number) : int
      {
         var _loc4_:§ ]§ = null;
         var _loc3_:int = this.§<!4§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§<!4§[_loc3_])
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc3_;
               }
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function §!!X§(param1:Number, param2:Number) : § ]§
      {
         var _loc4_:§ ]§ = null;
         var _loc3_:int = this.§<!4§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§<!4§[_loc3_])
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
      
      public function §]A§(param1:int) : § ]§
      {
         return this.§<!4§[param1];
      }
      
      public function §]!;§(param1:Number, param2:Number) : void
      {
         var _loc4_:§ ]§ = null;
         var _loc3_:int = this.§<!4§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§<!4§[_loc3_] as § ]§).§]!;§(param2,param1);
            _loc3_--;
         }
      }
      
      private function § 3§(param1:§ ]§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§ ]§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§=1§ == param1.§?G§)
         {
            if(this.§7!!§ < §+>§.§1!R§)
            {
               this.§7!!§ += param2 * §+>§.§^U§;
            }
            param1.§4g§().§6!D§(param2 * this.§7!!§);
            this.§^!<§ = 0;
         }
         else if(this.§^!<§ == 0)
         {
            this.§^!<§ = this.mLevelMain.§#!2§;
         }
         if(param1.§9!T§() || this.§<>§(param1) || this.§^!<§ > 0 && this.mLevelMain.§#!2§ > this.§^!<§ + §+>§.§+%§)
         {
            if(this.mMightyEagleTimer < §+>§.§`S§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §+>§.§[P§ && _loc4_ > §+>§.§[P§)
               {
                  §@E§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §@E§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §+>§.§`S§)
               {
                  _loc5_ = param1.§4g§().GetPosition().x - §+>§.§"!+§;
                  _loc6_ = param1.§4g§().GetPosition().y - §+>§.§"!+§ * §+>§.§`?§ * 1.07;
                  if(this.§<>§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§5!$§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§+>§.§2!d§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§^!<§ = 0;
                  _loc7_.§#8§.§4B§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §[!%§(param1:§ ]§, param2:Number) : Boolean
      {
         var _loc5_:§ ]§ = null;
         if(!this.§3!-§ && this.mMightyEagleTimer > §+>§.§;?§)
         {
            this.§3!-§ = true;
            this.mLevelMain.§;!_§();
         }
         this.mMightyEagleTimer += param2;
         this.mLevelMain.particles.§;!V§(§&!^§.§+Q§,§]s§.§0!E§,§&!^§.§7!L§,param1.§4g§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§4g§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§&!^§.§5F§(param1.§3a§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§8S§(§+>§.§<]§ * param2);
            _loc4_ = -1;
            if(this.§4;§)
            {
               this.§4;§ = false;
               this.mLevelMain.§`V§();
               param1.§;!J§(§#o§.§?I§);
               this.mSardineCanAdded = false;
               param1.§#8§.§2!S§ = true;
               param1.§#8§.§1J§();
               for each(_loc5_ in this.§<!4§)
               {
                  if(_loc5_ && _loc5_.§=M§())
                  {
                     _loc5_.§4g§().SetAwake(true);
                     _loc5_.§4g§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§3!Y§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§<!4§)
               {
                  if(_loc5_ && _loc5_.§=M§())
                  {
                     _loc5_.applyDamage(_loc5_.§?G§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§4g§().GetPosition().y >= -5.5;
            this.§4;§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§9C§(param2,new Point(1,_loc4_ * §+>§.§`?§),§+>§.§'z§);
         return false;
      }
      
      private function §@!M§() : void
      {
         var _loc1_:§ '§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§ ]§ = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         while(this.§`!M§.length > 0)
         {
            _loc1_ = this.§`!M§.shift();
            _loc2_ = _loc1_.§7$§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§<!4§)
            {
               _loc8_ = _loc6_.§4g§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§4g§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§7$§)
               {
                  _loc11_ = _loc1_.push;
                  if(_loc10_ > 1)
                  {
                     _loc11_ /= _loc10_;
                  }
                  if(_loc10_ > 0)
                  {
                     _loc12_ = _loc11_ * (_loc8_ / _loc10_);
                     _loc13_ = _loc11_ * (_loc9_ / _loc10_);
                     _loc6_.§4g§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§,u§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.mLevelMain.particles.§;!V§(this.getMainExplosionCoreName(_loc1_.type),§]s§.§0!E§,§&!^§.§3T§,_loc3_,_loc4_,600,"",§&!^§.§5#§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.mLevelMain.particles.§;!V§(§&!^§.§#[§,§]s§.§0!E§,§&!^§.§7!L§,_loc3_,_loc4_,_loc16_,"",§&!^§.§5#§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §&!^§.§>d§;
      }
      
      public function §>!"§(param1:Number) : void
      {
         var _loc2_:§ ]§ = null;
         var _loc3_:int = this.§<!4§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§<!4§[_loc3_];
            if(_loc2_.§6!"§())
            {
               if(this.§ 3§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§2R§())
            {
               this.§[!%§(_loc2_,param1);
            }
            else if(this.§<>§(_loc2_))
            {
               _loc2_.§;!J§(§#o§.§@1§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§;!J§(§#o§.§@1§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§`-§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§@!M§();
      }
      
      private function §3!Y§() : void
      {
         var _loc1_:§1Z§ = null;
         for each(_loc1_ in this.§@!G§)
         {
            this.mLevelMain.mLevelEngine.mWorld.§@j§(_loc1_.§>7§);
         }
      }
      
      public function §"c§() : Boolean
      {
         var _loc2_:§ ]§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<!4§.length)
         {
            _loc2_ = this.§<!4§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §<>§(param1:§ ]§) : Boolean
      {
         if(param1 && param1.§5K§.§?!0§() != § q§.§-2§ && this.mLevelMain.§0D§.§]^§(param1.§4g§().GetPosition().x,param1.§4g§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§1Z§ = null;
         var _loc7_:§`!W§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§ ]§;
         if((_loc5_ = this.§<!4§[param1]).§=M§())
         {
            ++this.§?!C§;
         }
         else if(_loc5_.§`-§())
         {
            --this.§&!G§;
         }
         if(_loc5_ == this.mLevelMain.activeObject)
         {
            this.mLevelMain.activeObject = null;
         }
         if(param2)
         {
            this.mLevelMain.addScore(_loc5_.§5K§.score,§%!&§.§]!'§,true,_loc5_.§4g§().GetPosition().x,_loc5_.§4g§().GetPosition().y - 3,§&!^§.§+!F§(_loc5_.§3a§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.mLevelMain.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§2k§(_loc5_.sprite);
         this.§9!;§(_loc5_);
         for each(_loc6_ in this.§@!G§)
         {
            if(_loc6_.index1 >= param1)
            {
               --_loc6_.index1;
            }
            if(_loc6_.index2 >= param1)
            {
               --_loc6_.index2;
            }
         }
         for each(_loc7_ in this.§'I§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§7U§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
            if(_loc7_.id2 >= param1)
            {
               --_loc7_.id2;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§<!4§[param1] = null;
         this.§<!4§.splice(param1,1);
      }
      
      private function §2k§(param1:Sprite) : void
      {
         if(this.§#y§.contains(param1))
         {
            this.§#y§.removeChild(param1);
            return;
         }
         if(this.§9!]§.contains(param1))
         {
            this.§9!]§.removeChild(param1);
            return;
         }
         if(this.§8r§.contains(param1))
         {
            this.§8r§.removeChild(param1);
            return;
         }
         if(this.§9!5§.contains(param1))
         {
            this.§9!5§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§ ]§) : void
      {
         if(param1.§;!&§().toUpperCase() == "WHITE_EGG" || param1.§@"§())
         {
            if(param1.§3a§.toUpperCase() == §>5§.§51§)
            {
               this.addExplosions(§ '§.§>!W§,param1.§4g§().GetPosition().x,param1.§4g§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§ '§.§4!7§,param1.§4g§().GetPosition().x,param1.§4g§().GetPosition().y);
            }
         }
      }
      
      public function §1!E§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§<!4§.indexOf(param1),param2,param3,param4);
      }
      
      public function §^!%§(param1:Number, param2:Number) : void
      {
         this.§4J§.x = -param1;
         this.§4J§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§ ]§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!4§.length)
         {
            _loc3_ = this.§<!4§[_loc2_] as § ]§;
            if(_loc3_ && _loc3_.§=M§() && _loc3_.§=1§ > 0)
            {
               if(!param1 || _loc3_.§#8§.mTryToBlink <= 0 && _loc3_.§#8§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §9![§(param1:Boolean = false) : int
      {
         var _loc4_:§ ]§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§<!4§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§<!4§[_loc3_] as § ]§) && _loc4_.§=M§() && _loc4_.§=1§ > 0)
            {
               if(!param1 || _loc4_.§#8§.mTryToBlink <= 0 && _loc4_.§#8§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §+!R§() : int
      {
         var _loc2_:§ ]§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<!4§)
         {
            if(_loc2_ && (_loc2_.§]5§() || _loc2_.§]K§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §8!%§() : int
      {
         var _loc2_:§ ]§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<!4§)
         {
            if(_loc2_ && _loc2_.isTexture())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§ ]§ = null;
         var _loc2_:int = this.§<!4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<!4§[_loc2_];
            if(_loc3_ && _loc3_.§=M§() && _loc3_.§=1§ > 0)
            {
               _loc3_.§#8§.mTryToScream = §-!I§.§49§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function § p§() : Boolean
      {
         var _loc2_:§ ]§ = null;
         var _loc1_:int = this.§<!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<!4§[_loc1_] as § ]§;
            if(_loc2_ && _loc2_.§`-§() && _loc2_.§=1§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§ ]§ = null;
         var _loc1_:int = this.§<!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<!4§[_loc1_] as § ]§;
            if(_loc2_ && _loc2_.§=1§ > 0 && _loc2_.§+=§ != §7i§.§#]§)
            {
               if(_loc2_.§4w§() && !_loc2_.§9!T§())
               {
                  return false;
               }
               if(_loc2_.§`-§() && _loc2_.§=1§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §@+§(param1:Boolean = false) : § ]§
      {
         var _loc5_:int = 0;
         var _loc6_:§ ]§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§<!4§.length;
         var _loc3_:int = 1 + Math.random() * this.§9![§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§<!4§[_loc5_]) && _loc6_.§=M§() && _loc6_.§=1§ > 0)
               {
                  if(!param1 || _loc6_.§#8§.mTryToBlink <= 0 && _loc6_.§#8§.mTryToScream <= 0)
                  {
                     _loc4_++;
                     if(_loc4_ >= _loc3_)
                     {
                        return _loc6_;
                     }
                  }
               }
               _loc5_++;
            }
         }
         return null;
      }
      
      public function §package§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§<!4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§<!4§[_loc2_] as § ]§).§5K§.score;
            if((this.§<!4§[_loc2_] as § ]§).§4w§())
            {
               _loc1_ += §2!V§.§5R§.getValue() * int((this.§<!4§[_loc2_] as § ]§).§?G§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.§package§());
      }
      
      public function §;w§(param1:§ ]§, param2:§ ]§) : Boolean
      {
         if(param1.§`-§() && param2.§`-§())
         {
            return true;
         }
         if(!param1.§ Y§() && !param2.§ Y§())
         {
            return true;
         }
         return false;
      }
      
      public function §>_§() : void
      {
         this.mSardineCanAdded = true;
         this.§&!G§ = 0;
      }
      
      public function § ?§(param1:§ ]§, param2:§ ]§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§2R§() || param2.§=M§())
            {
               param2.applyDamage(param2.§?G§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§2R§() || param1.§=M§())
            {
               param1.applyDamage(param1.§?G§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §+>§.§`S§)
         {
            if(param1.§6!"§() || param2.§6!"§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§;w§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§'u§(param2.§;!&§());
         var _loc5_:Number = param1.§^!c§(param2.§;!&§());
         var _loc6_:Number = param2.§'u§(param1.§;!&§());
         var _loc7_:Number = param2.§^!c§(param1.§;!&§());
         var _loc8_:Number = param1.§4g§().GetMass() * param1.§4g§().GetLinearVelocity().x - param2.§4g§().GetMass() * param2.§4g§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§4g§().GetMass() * param1.§4g§().GetLinearVelocity().y - param2.§4g§().GetMass() * param2.§4g§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§=1§);
         var _loc14_:Number = Math.max(0,param2.§=1§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§`-§(),_loc14_ == param2.§?G§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§`-§(),_loc13_ == param1.§?G§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§?c§(new b2Vec2(param2.§4g§().GetLinearVelocity().x * _loc18_,param2.§4g§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§?c§(new b2Vec2(param1.§4g§().GetLinearVelocity().x * _loc19_,param1.§4g§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §<q§() : void
      {
         var _loc2_:§ ]§ = null;
         var _loc1_:int = this.§<!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<!4§[_loc1_] as § ]§;
            if(_loc2_ != null && _loc2_.§=M§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §6!I§() : void
      {
         var _loc2_:§ ]§ = null;
         var _loc1_:int = this.§<!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<!4§[_loc1_] as § ]§;
            if(_loc2_ != null && _loc2_.§@"§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §]!-§() : int
      {
         return this.§<!4§.length;
      }
      
      public function §&!Z§(param1:§ !M§) : void
      {
         var _loc4_:§ ]§ = null;
         var _loc5_:§'!%§ = null;
         var _loc6_:§>T§ = null;
         var _loc7_:§1Z§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<!4§.length)
         {
            if((_loc4_ = this.§<!4§[_loc2_]).§;!X§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §'!%§()).angle = _loc4_.§;]§();
                  _loc5_.id = _loc4_.§3a§;
                  _loc5_.x = _loc4_.§4g§().GetPosition().x;
                  _loc5_.y = _loc4_.§4g§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.§5!$§(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§@!G§.length)
         {
            _loc7_ = this.§@!G§[_loc3_];
            _loc6_ = new §>T§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§3Q§,_loc7_.§1V§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§^@§,_loc7_.motorSpeed,_loc7_.§%!7§,_loc7_.maxTorque);
            param1.§4!6§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §'!b§() : void
      {
         var _loc1_:int = 0;
         while(this.§<!4§.length > _loc1_)
         {
            if(this.§<!4§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§1!E§(this.§<!4§[_loc1_]);
            }
         }
      }
      
      public function §#!0§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§<!4§.length)
         {
            if(this.§<!4§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§<!4§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§-z§ = param1;
         this.§<e§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<!4§.length)
         {
            if(this.§<!4§[_loc2_].isTexture())
            {
               this.§<!4§[_loc2_].sprite.visible = !this.§-z§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§2?§ = param1;
      }
      
      public function §&e§() : Boolean
      {
         return this.§2?§;
      }
      
      public function §4E§() : int
      {
         return this.§<!D§;
      }
      
      public function §=9§() : int
      {
         return this.§?!C§;
      }
      
      public function §[! §(param1:String) : § ]§
      {
         var _loc3_:§ ]§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!4§.length)
         {
            _loc3_ = this.§<!4§[_loc2_] as § ]§;
            if(_loc3_.uniqueID == param1)
            {
               return _loc3_;
            }
            _loc2_++;
         }
         return null;
      }
   }
}
