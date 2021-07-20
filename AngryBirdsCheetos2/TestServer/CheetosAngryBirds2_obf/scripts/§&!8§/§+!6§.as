package §&!8§
{
   import §!r§.§"B§;
   import §!r§.§2k§;
   import §!r§.§3!!§;
   import §!r§.§9!,§;
   import §!r§.§=?§;
   import §+!9§.§6!N§;
   import §,§.§ p§;
   import §,§.§'-§;
   import §,§.§?9§;
   import §,§.§?s§;
   import §-!Q§.§,!7§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6!H§.b2Vec2;
   import §9t§.§35§;
   import §;!#§.b2PrismaticJoint;
   import §;!#§.b2RevoluteJoint;
   import §;!#§.b2WeldJoint;
   import §;A§.§ f§;
   import §;A§.§9s§;
   import §;A§.§=y§;
   import §;A§.§]!A§;
   import §]!a§.Texture;
   import §^a§.§6p§;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+!6§
   {
       
      
      protected var § #§:Vector.<§[g§>;
      
      protected var §2!E§:int;
      
      public var §^!I§:§ p§;
      
      public var §[F§:Vector.<§7@§>;
      
      protected var §6!Q§:Sprite;
      
      protected var §=!M§:Sprite;
      
      private var §,!C§:Sprite;
      
      private var §@!@§:Sprite;
      
      private var §&!,§:Sprite;
      
      protected var §7A§:Vector.<Texture>;
      
      protected var §]N§:Vector.<§=y§>;
      
      protected var §&f§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §3!M§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §17§:Boolean = false;
      
      protected var §1Q§:Number;
      
      protected var §&!@§:int;
      
      protected var §[!A§:Vector.<§9s§>;
      
      protected var §<c§:int = 0;
      
      private var §&!P§:int = 0;
      
      private var §]!9§:int = 0;
      
      protected var §1!?§:int;
      
      private var §1v§:Boolean = true;
      
      private var §"-§:Boolean = true;
      
      public function §+!6§(param1:§ p§, param2:§!!K§, param3:Sprite)
      {
         var _loc5_:§=y§ = null;
         var _loc6_:§]!A§ = null;
         var _loc7_:§[g§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§[g§ = null;
         var _loc11_:§[g§ = null;
         this.§ #§ = new Vector.<§[g§>();
         this.§[F§ = new Vector.<§7@§>();
         this.§7A§ = new Vector.<Texture>();
         this.§1Q§ = this.§?9§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§[!A§ = new Vector.<§9s§>();
         super();
         this.§^!I§ = param1;
         this.§2!E§ = 0;
         this.§=!M§ = param3;
         this.§=!M§.§;o§ = false;
         this.§"-§ = true;
         this.§1v§ = true;
         this.§6!Q§ = new Sprite();
         this.§,!C§ = new Sprite();
         this.§@!@§ = new Sprite();
         this.§&!,§ = new Sprite();
         this.§=!M§.addChild(this.§6!Q§);
         this.§=!M§.addChild(this.§,!C§);
         this.§=!M§.addChild(this.§@!@§);
         this.§=!M§.addChild(this.§&!,§);
         this.addObject(§6!N§.§'!U§(param2.theme).§%!Q§,(this.§^!I§.§@2§.§;8§ + this.§^!I§.§@2§.§^!T§) / 2,this.§^!I§.§@2§.§-S§ + §?s§.§<!!§);
         this.§1!?§ = this.§ #§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§@!_§)
         {
            _loc6_ = param2.§0;§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§9![§();
         this.§#!0§(true);
         this.§]N§ = new Vector.<§=y§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§85§)
         {
            this.§]N§.push(§=y§.§^b§(param2.§]R§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§]N§)
         {
            _loc8_ = _loc5_.index1 + this.§1!?§;
            _loc9_ = _loc5_.index2 + this.§1!?§;
            if(_loc8_ < this.§ #§.length && _loc9_ < this.§ #§.length)
            {
               _loc10_ = this.§ #§[_loc8_];
               _loc11_ = this.§ #§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != § f§.§+!7§)
               {
                  _loc5_.§@!&§ = this.§^!I§.mLevelEngine.mWorld.§,Y§(_loc5_.§<y§(_loc10_,_loc11_));
               }
               else
               {
                  this.§[!A§.push(new §9s§(parseInt(_loc10_.uniqueID),parseInt(_loc11_.uniqueID),_loc5_.§^`§));
               }
            }
         }
      }
      
      protected function get §?9§() : Class
      {
         return §?9§;
      }
      
      public function get §]4§() : Sprite
      {
         return this.§&!,§;
      }
      
      public function get §#!^§() : Sprite
      {
         return this.§=!M§;
      }
      
      public function get §[!a§() : Sprite
      {
         return this.§@!@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§ #§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§ #§ = null;
         this.§[!A§ = null;
         if(this.§=!M§)
         {
            this.§=!M§.dispose();
            this.§=!M§ = null;
            this.§6!Q§ = null;
            this.§&!,§ = null;
            this.§,!C§ = null;
            this.§@!@§ = null;
         }
         while(this.§7A§.length > 0)
         {
            _loc1_ = this.§7A§.pop();
            this.§^!I§.§],§.§`E§(_loc1_);
         }
      }
      
      private function §#!0§(param1:Boolean) : void
      {
         this.§6!Q§.visible = param1;
      }
      
      private function §9![§() : void
      {
         var _loc3_:§[g§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§6p§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§[g§> = new Vector.<§[g§>();
         for each(_loc3_ in this.§ #§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§=!M§);
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
            this.§-d§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§;!!§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§^!I§.§],§.§0!U§(_loc10_);
            this.§7A§.push(_loc12_);
            (_loc13_ = new §6p§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§6!Q§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §;!!§(param1:Vector.<§[g§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§[g§ = null;
         var _loc11_:§2k§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§-!6§.shape).§%!,§();
            _loc13_ = new Rectangle(_loc12_[0].x / § p§.§]!E§ * param6,_loc12_[0].y / § p§.§]!E§ * param6,(_loc12_[1].x - _loc12_[0].x) / § p§.§]!E§ * param6,(_loc12_[1].y - _loc12_[0].y) / § p§.§]!E§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§?%§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §-d§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§^!I§.background.§+m§();
         var _loc5_:§35§;
         if(_loc5_ = this.§^!I§.§-!7§.§=!+§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_,null,null,null,true);
            _loc8_ = _loc6_.width;
            _loc9_ = _loc6_.height;
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
      
      public function §8!g§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[g§
      {
         var _loc10_:§=?§ = §3!!§.§^!-§(param2);
         return new §7q§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[g§
      {
         var _loc10_:§[g§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §'E§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §8R§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §6d§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §4! §(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §&v§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §,!f§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §`!,§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §['§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §]V§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§<c§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §[g§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§[g§;
         if((_loc11_ = this.§#Y§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§1v§;
            this.§ #§[this.§ #§.length] = _loc11_;
         }
         else
         {
            this.§ #§[this.§ #§.length] = _loc11_;
         }
         if(_loc11_ is §]V§ && !_loc11_.§4!Y§())
         {
            this.§,!C§.addChild(_loc10_);
            ++this.§<c§;
         }
         else if(_loc11_.front || param9)
         {
            this.§&!,§.addChild(_loc10_);
         }
         else
         {
            this.§@!@§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§^!I§.§?!C§(_loc11_);
         }
         if(param6)
         {
            this.§^!I§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §^b§(param1:int, param2:§[g§, param3:§[g§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc17_:§=y§ = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:§9s§ = null;
         var _loc15_:int = this.§ #§.indexOf(param2) - this.§1!?§;
         var _loc16_:int = this.§ #§.indexOf(param3) - this.§1!?§;
         if(_loc15_ >= 0 && _loc16_ >= 0)
         {
            _loc17_ = new §=y§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
            this.§]N§.push(_loc17_);
            _loc17_.§^`§ = param12;
            _loc17_.axisX = param13;
            _loc17_.axisY = param14;
            if(param1 != § f§.§+!7§)
            {
               _loc17_.§@!&§ = this.§^!I§.mLevelEngine.mWorld.§,Y§(_loc17_.§<y§(param2,param3));
            }
            else
            {
               _loc18_ = parseInt(param2.uniqueID);
               _loc19_ = parseInt(param3.uniqueID);
               _loc20_ = new §9s§(_loc18_,_loc19_,param12);
               this.§[!A§.push(_loc20_);
            }
         }
      }
      
      public function §]!8§(param1:§=y§) : void
      {
         if(!(param1.§@!&§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§[g§ = this.§0;§(param1.index1 + this.§1!?§);
         var _loc3_:§[g§ = this.§0;§(param1.index2 + this.§1!?§);
         this.§^!I§.mLevelEngine.mWorld.§4!F§(param1.§@!&§);
         param1.§@!&§ = this.§^!I§.mLevelEngine.mWorld.§,Y§(param1.§<y§(_loc2_,_loc3_));
      }
      
      public function §]b§(param1:§[g§) : Vector.<§=y§>
      {
         var _loc4_:§=y§ = null;
         var _loc2_:Vector.<§=y§> = new Vector.<§=y§>();
         var _loc3_:int = this.§ #§.indexOf(param1) - this.§1!?§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§]N§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §#!8§() : Vector.<§=y§>
      {
         return this.§]N§;
      }
      
      public function §2$§(param1:§[g§) : void
      {
         var _loc2_:int = this.§ #§.indexOf(param1) - this.§1!?§;
         var _loc3_:int = this.§]N§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§]N§[_loc3_].index1 == _loc2_ || this.§]N§[_loc3_].index2 == _loc2_)
            {
               this.§]N§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §!K§(param1:§[g§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§[!A§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§[!A§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§[!A§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §?!!§(param1:§[g§, param2:§[g§) : Boolean
      {
         var _loc3_:int = this.§ #§.indexOf(param1) - this.§1!?§;
         var _loc4_:int = this.§ #§.indexOf(param2) - this.§1!?§;
         var _loc5_:int = this.§]N§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§]N§[_loc5_].index1 == _loc3_ && this.§]N§[_loc5_].index2 == _loc4_ || this.§]N§[_loc5_].index1 == _loc4_ && this.§]N§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §#Y§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[g§
      {
         var _loc10_:§[g§ = null;
         var _loc11_:§=?§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§]!9§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§8!g§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §3!!§.§^!-§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §3!!§.§^!-§(param2);
            }
            if(_loc11_.§=J§ == §=?§.§=K§ || _loc11_.§=J§ == §=?§.§<![§)
            {
               _loc10_ = new §#!J§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §[g§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§#!#§();
         return _loc10_;
      }
      
      protected function §#!#§() : String
      {
         var _loc3_:§[g§ = null;
         var _loc1_:int = this.§ #§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§ #§)
            {
               if(_loc3_.uniqueID == _loc1_.toString())
               {
                  _loc1_++;
                  _loc2_ = false;
                  break;
               }
            }
         }
         return _loc1_.toString();
      }
      
      public function §2!4§(param1:Number) : void
      {
         var _loc3_:§[g§ = null;
         var _loc2_:int = this.§ #§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ #§[_loc2_] as §[g§;
            if(_loc3_)
            {
               if(_loc3_.§+_§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§2!M§();
                  _loc3_.§0!P§();
               }
            }
            _loc2_--;
         }
         this.§1!-§(param1);
      }
      
      protected function §1!-§(param1:Number) : void
      {
         this.§6s§(param1);
         this.§-M§();
      }
      
      private function §6s§(param1:Number) : void
      {
         var _loc4_:§9s§ = null;
         var _loc5_:int = 0;
         var _loc6_:§[g§ = null;
         if(this.§[!A§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§9s§> = this.§[!A§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§,Q§ && this.§[!A§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§,y§("" + _loc5_))
                  {
                     this.§9?§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §-M§() : void
      {
         var _loc1_:§=y§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Class = null;
         var _loc5_:Boolean = false;
         for each(_loc1_ in this.§]N§)
         {
            if(_loc1_.type == § f§.§?x§ || _loc1_.type == § f§.§+!J§ && _loc1_.§4!2§)
            {
               if(_loc1_.§@!&§ is b2PrismaticJoint)
               {
                  _loc4_ = b2PrismaticJoint;
                  _loc2_ = (_loc1_.§@!&§ as b2PrismaticJoint).§ !Q§();
                  _loc3_ = (_loc1_.§@!&§ as b2PrismaticJoint).§ U§();
               }
               else if(_loc1_.§@!&§ is b2RevoluteJoint)
               {
                  _loc4_ = b2RevoluteJoint;
                  _loc2_ = (_loc1_.§@!&§ as b2RevoluteJoint).§?!^§();
                  _loc3_ = (_loc1_.§@!&§ as b2RevoluteJoint).§ U§();
               }
               if(_loc5_ = _loc1_.§"P§ && _loc1_.§?!W§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§@!&§ as _loc4_).SetMotorSpeed(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§[g§> = null) : void
      {
         this.§[F§.push(§7@§.createExplosion(param1,param2,param3,param4));
         §,!7§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §0P§(param1:Number, param2:Number) : int
      {
         var _loc4_:§[g§ = null;
         var _loc3_:int = this.§ #§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§ #§[_loc3_])
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
      
      public function §`!2§(param1:Number, param2:Number) : §[g§
      {
         var _loc4_:§[g§ = null;
         var _loc3_:int = this.§ #§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§ #§[_loc3_])
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
      
      public function §#p§(param1:Number, param2:Number) : Vector.<§[g§>
      {
         var _loc5_:§[g§ = null;
         var _loc3_:Vector.<§[g§> = new Vector.<§[g§>();
         var _loc4_:int = this.§ #§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§ #§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §0;§(param1:int) : §[g§
      {
         return this.§ #§[param1];
      }
      
      public function §5m§(param1:Number, param2:Number) : void
      {
         var _loc4_:§[g§ = null;
         var _loc3_:int = this.§ #§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§ #§[_loc3_] as §[g§).§5m§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §^p§(param1:§[g§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§[g§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§+_§ == param1.§ !G§)
         {
            if(this.§1Q§ < this.§?9§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§1Q§ += param2 * this.§?9§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§`e§().§,!d§(param2 * this.§1Q§);
            this.§&!@§ = 0;
         }
         else if(this.§&!@§ == 0)
         {
            this.§&!@§ = this.§^!I§.§5!H§;
         }
         if(param1.§>!<§() || this.§@s§(param1) || this.§&!@§ > 0 && this.§^!I§.§5!H§ > this.§&!@§ + this.§?9§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§?9§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§?9§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§?9§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §,!7§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §,!7§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§?9§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§`e§().GetPosition().x - this.§?9§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§`e§().GetPosition().y - this.§?9§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§?9§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§@s§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§?9§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§&!@§ = 0;
                  _loc7_.§5d§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §9-§(param1:§[g§, param2:Number) : Boolean
      {
         var _loc5_:§[g§ = null;
         if(this.§?9§.MIGHTY_EAGLE_USE_SHADE && !this.§17§ && this.mMightyEagleTimer > this.§?9§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§17§ = true;
            this.§^!I§.§24§();
         }
         this.mMightyEagleTimer += param2;
         this.§^!I§.particles.addParticle(§7!?§.§=!E§,§do§.§+!c§,§7!?§.§22§,param1.§`e§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§`e§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§7!?§.§7R§(param1.§>p§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§%b§(this.§?9§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§3!M§)
            {
               this.§3!M§ = false;
               this.§^!I§.§,!V§();
               param1.§0!5§(§"B§.§>!W§);
               this.mSardineCanAdded = false;
               param1.§5d§.§!!C§ = true;
               param1.§5d§.§8P§();
               for each(_loc5_ in this.§ #§)
               {
                  if(_loc5_ && _loc5_.§[a§())
                  {
                     _loc5_.§`e§().SetAwake(true);
                     _loc5_.§`e§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§5S§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§ #§)
               {
                  if(_loc5_ && _loc5_.§[a§())
                  {
                     _loc5_.applyDamage(_loc5_.§ !G§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§`e§().GetPosition().y >= -5.5;
            this.§3!M§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§!S§(param2,new Point(this.§?9§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§?9§.MIGHTY_EAGLE_Y_CHANGE),this.§?9§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §&z§() : void
      {
         var _loc1_:§7@§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§[g§ = null;
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
         while(this.§[F§.length > 0)
         {
            _loc1_ = this.§[F§.shift();
            _loc2_ = _loc1_.§0!2§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§ #§)
            {
               if(!(_loc1_.§-%§ != null && _loc1_.§-%§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.§`e§().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.§`e§().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§0!2§)
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
                        _loc6_.§`e§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§%e§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§?!@§(_loc6_,_loc14_);
                  }
               }
            }
            this.§^!I§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§do§.§+!c§,§7!?§.§2B§,_loc3_,_loc4_,600,"",§7!?§.§%!>§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§^!I§.particles.addParticle(§7!?§.§,M§,§do§.§+!c§,§7!?§.§22§,_loc3_,_loc4_,_loc16_,"",§7!?§.§%!>§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §?!@§(param1:§[g§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §7!?§.§[!M§;
      }
      
      public function §6u§(param1:Number) : void
      {
         var _loc2_:§[g§ = null;
         var _loc3_:int = this.§ #§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§ #§[_loc3_];
            if(_loc2_.§9W§())
            {
               if(this.§^p§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§4!Y§())
            {
               this.§9-§(_loc2_,param1);
            }
            else if(this.§@s§(_loc2_))
            {
               _loc2_.§0!5§(§"B§.§!G§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§0!5§(§"B§.§!G§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§2!N§() || _loc2_.§2!!§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§&z§();
      }
      
      private function §5S§() : void
      {
         var _loc1_:§=y§ = null;
         for each(_loc1_ in this.§]N§)
         {
            if(_loc1_.type != § f§.§+!7§)
            {
               this.§^!I§.mLevelEngine.mWorld.§4!F§(_loc1_.§@!&§);
            }
         }
      }
      
      public function §&!!§() : Boolean
      {
         var _loc2_:§[g§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ #§.length)
         {
            _loc2_ = this.§ #§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §@s§(param1:§[g§) : Boolean
      {
         if(param1 && param1.§-!6§.§4!?§() != §9!,§.§;a§ && this.§^!I§.§@2§.§`!H§(param1.§`e§().GetPosition().x,param1.§`e§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§=y§ = null;
         var _loc7_:§9s§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§[g§;
         if((_loc5_ = this.§ #§[param1]).§[a§())
         {
            ++this.§&!P§;
         }
         else if(_loc5_.§2!N§())
         {
            --this.§<c§;
         }
         if(_loc5_ == this.§^!I§.activeObject)
         {
            this.§^!I§.activeObject = null;
         }
         if(param2)
         {
            this.§^!I§.addScore(_loc5_.§-!6§.score,§'-§.§@!4§,true,_loc5_.§`e§().GetPosition().x,_loc5_.§`e§().GetPosition().y - 3,§7!?§.§=I§(_loc5_.§>p§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§^!I§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§7!V§(_loc5_.sprite);
         this.§2$§(_loc5_);
         this.§!K§(_loc5_);
         for each(_loc6_ in this.§]N§)
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
         for each(_loc7_ in this.§[!A§)
         {
            if(_loc7_.§6!A§ == param1)
            {
               _loc7_.§,Q§ = true;
            }
            if(_loc7_.§6!A§ >= param1)
            {
               --_loc7_.§6!A§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§ #§[param1] = null;
         this.§ #§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§[g§, param2:§do§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function §7!V§(param1:Sprite) : void
      {
         if(this.§@!@§.contains(param1))
         {
            this.§@!@§.removeChild(param1);
            return;
         }
         if(this.§,!C§.contains(param1))
         {
            this.§,!C§.removeChild(param1);
            return;
         }
         if(this.§6!Q§.contains(param1))
         {
            this.§6!Q§.removeChild(param1);
            return;
         }
         if(this.§&!,§.contains(param1))
         {
            this.§&!,§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§[g§) : void
      {
         if(param1.§,X§().toUpperCase() == "WHITE_EGG" || param1.§#!A§())
         {
            if(param1.§>p§.toUpperCase() == §4! §.§6r§)
            {
               this.addExplosions(§7@§.§6U§,param1.§`e§().GetPosition().x,param1.§`e§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§7@§.§`!a§,param1.§`e§().GetPosition().x,param1.§`e§().GetPosition().y);
            }
         }
      }
      
      public function §9?§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§ #§.indexOf(param1),param2,param3,param4);
      }
      
      public function §1q§(param1:Number, param2:Number) : void
      {
         this.§=!M§.x = -param1;
         this.§=!M§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§[g§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ #§.length)
         {
            _loc3_ = this.§ #§[_loc2_] as §[g§;
            if(_loc3_ && _loc3_.§[a§() && _loc3_.§+_§ > 0)
            {
               if(!param1 || _loc3_.§5d§.mTryToBlink <= 0 && _loc3_.§5d§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §=!P§(param1:Boolean = false) : int
      {
         var _loc4_:§[g§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§ #§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ #§[_loc3_] as §[g§) && _loc4_.§[a§() && _loc4_.§+_§ > 0)
            {
               if(!param1 || _loc4_.§5d§.mTryToBlink <= 0 && _loc4_.§5d§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §>w§() : int
      {
         var _loc2_:§[g§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ #§)
         {
            if(_loc2_ && (_loc2_.§[n§() || _loc2_.§ ! §()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §>!S§() : int
      {
         var _loc2_:§[g§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ #§)
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
         var _loc3_:§[g§ = null;
         var _loc2_:int = this.§ #§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ #§[_loc2_];
            if(_loc3_ && _loc3_.§[a§() && _loc3_.§+_§ > 0)
            {
               _loc3_.§5d§.mTryToScream = §%$§.§&!D§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §-Q§() : Boolean
      {
         var _loc2_:§[g§ = null;
         var _loc1_:int = this.§ #§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ #§[_loc1_] as §[g§;
            if(_loc2_ && _loc2_.§2!N§() && _loc2_.§+_§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§[g§ = null;
         var _loc1_:int = this.§ #§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ #§[_loc1_] as §[g§;
            if(_loc2_ && _loc2_.§+_§ > 0 && _loc2_.§=J§ != §=?§.§[b§)
            {
               if(_loc2_.§6!O§() && !_loc2_.§>!<§())
               {
                  return false;
               }
               if(_loc2_.§2!N§() && _loc2_.§+_§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §9D§(param1:Boolean = false) : §[g§
      {
         var _loc7_:§[g§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§ #§.length;
         var _loc3_:int = this.§=!P§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§ #§[_loc6_] as §[g§) && _loc7_.§[a§() && _loc7_.§+_§ > 0)
            {
               if(!param1 || _loc7_.§5d§.mTryToBlink <= 0 && _loc7_.§5d§.mTryToScream <= 0)
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
      
      public function §@!K§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§ #§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§ #§[_loc2_] as §[g§).§-!6§.score;
            if((this.§ #§[_loc2_] as §[g§).§6!O§())
            {
               _loc1_ += § p§.§5k§.getValue() * int((this.§ #§[_loc2_] as §[g§).§ !G§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§^!I§.slingshot.§@!K§());
      }
      
      public function §&V§(param1:§[g§, param2:§[g§) : Boolean
      {
         if(param2 is §8R§ && param1 is §8R§)
         {
            return true;
         }
         if(!param1.§;]§() && !param2.§;]§())
         {
            return true;
         }
         return false;
      }
      
      public function §&l§() : void
      {
         this.mSardineCanAdded = true;
         this.§<c§ = 0;
      }
      
      public function objectCollision(param1:§[g§, param2:§[g§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§4!Y§() || param2.§[a§())
            {
               param2.applyDamage(param2.§ !G§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§4!Y§() || param1.§[a§())
            {
               param1.applyDamage(param1.§ !G§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§?9§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§9W§() || param2.§9W§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§&V§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§+S§(param2.§,X§());
         var _loc5_:Number = param1.§>R§(param2.§,X§());
         var _loc6_:Number = param2.§+S§(param1.§,X§());
         var _loc7_:Number = param2.§>R§(param1.§,X§());
         var _loc8_:Number = param1.§`e§().GetMass() * param1.§`e§().GetLinearVelocity().x - param2.§`e§().GetMass() * param2.§`e§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§`e§().GetMass() * param1.§`e§().GetLinearVelocity().y - param2.§`e§().GetMass() * param2.§`e§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§+_§);
         var _loc14_:Number = Math.max(0,param2.§+_§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§2!N§(),_loc14_ == param2.§ !G§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§2!N§(),_loc13_ == param1.§ !G§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§9G§(new b2Vec2(param2.§`e§().GetLinearVelocity().x * _loc18_,param2.§`e§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§9G§(new b2Vec2(param1.§`e§().GetLinearVelocity().x * _loc19_,param1.§`e§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §"!§(param1:§[g§, param2:§[g§) : void
      {
      }
      
      public function §5!M§() : void
      {
         var _loc2_:§[g§ = null;
         var _loc1_:int = this.§ #§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ #§[_loc1_] as §[g§;
            if(_loc2_ != null && _loc2_.§[a§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §66§() : void
      {
         var _loc2_:§[g§ = null;
         var _loc1_:int = this.§ #§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ #§[_loc1_] as §[g§;
            if(_loc2_ != null && _loc2_.§#!A§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §%!"§() : int
      {
         return this.§ #§.length;
      }
      
      public function §&!=§(param1:§!!K§) : void
      {
         var _loc2_:§[g§ = null;
         var _loc3_:§=y§ = null;
         var _loc4_:§]!A§ = null;
         var _loc5_:§ f§ = null;
         for each(_loc2_ in this.§ #§)
         {
            if(!_loc2_.isGround())
            {
               (_loc4_ = new §]!A§()).angle = _loc2_.§?%§();
               _loc4_.id = _loc2_.§>p§;
               _loc4_.x = _loc2_.§`e§().GetPosition().x;
               _loc4_.y = _loc2_.§`e§().GetPosition().y;
               _loc4_.uniqueID = _loc2_.uniqueID;
               param1.addObject(_loc4_);
            }
         }
         for each(_loc3_ in this.§]N§)
         {
            (_loc5_ = new § f§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§53§,_loc3_.§"P§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§?!W§,_loc3_.motorSpeed,_loc3_.§4!2§,_loc3_.maxTorque)).§^`§ = _loc3_.§^`§;
            param1.§3!b§(_loc5_);
         }
      }
      
      public function §+!_§() : void
      {
         var _loc1_:int = 0;
         while(this.§ #§.length > _loc1_)
         {
            if(this.§ #§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§9?§(this.§ #§[_loc1_]);
            }
         }
      }
      
      public function §^!]§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§ #§.length)
         {
            if(this.§ #§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§ #§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§1v§ = param1;
         this.§#!0§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ #§.length)
         {
            if(this.§ #§[_loc2_].isTexture())
            {
               this.§ #§[_loc2_].sprite.visible = !this.§1v§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§"-§ = param1;
      }
      
      public function §!R§() : Boolean
      {
         return this.§"-§;
      }
      
      public function §<!4§() : int
      {
         return this.§]!9§;
      }
      
      public function §'!X§() : int
      {
         return this.§&!P§;
      }
      
      public function §,y§(param1:String) : §[g§
      {
         var _loc3_:§[g§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ #§.length)
         {
            _loc3_ = this.§ #§[_loc2_] as §[g§;
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
