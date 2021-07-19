package §,h§
{
   import § `§.§6!=§;
   import §!X§.§ 6§;
   import §!X§.§!j§;
   import §!X§.§7@§;
   import §!X§.§86§;
   import §%J§.§"!%§;
   import §%J§.§8C§;
   import §%J§.§8U§;
   import §%J§.§`u§;
   import §+3§.§ 7§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §0!G§.b2Vec2;
   import §[!8§.b2PrismaticJoint;
   import §[!8§.b2WeldJoint;
   import §]!B§.Texture;
   import §]!F§.§&!]§;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import §`!K§.§!!>§;
   import §default§.§!A§;
   import §default§.§%<§;
   import §default§.§-g§;
   import §default§.§-r§;
   import §default§.§<A§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6M§
   {
       
      
      protected var §=U§:Vector.<§+0§>;
      
      protected var §;!W§:int;
      
      public var §>`§:§86§;
      
      public var §=! §:Vector.<§1!T§>;
      
      protected var §9!S§:Sprite;
      
      protected var §<!X§:Sprite;
      
      private var §3,§:Sprite;
      
      private var §[e§:Sprite;
      
      private var §8&§:Sprite;
      
      protected var §>!>§:Vector.<Texture>;
      
      protected var §[%§:Vector.<§8U§>;
      
      protected var §"p§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §2@§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §`!8§:Boolean = false;
      
      protected var §!q§:Number = 0.07;
      
      protected var §7!1§:int;
      
      protected var §'!-§:Vector.<§"!%§>;
      
      protected var §-`§:int = 0;
      
      private var §%!A§:int = 0;
      
      private var §&! §:int = 0;
      
      private var §[h§:int;
      
      private var §2Z§:Boolean = true;
      
      private var §4! §:Boolean = true;
      
      public function §6M§(param1:§86§, param2:§&!]§, param3:Sprite)
      {
         var _loc5_:§8U§ = null;
         var _loc6_:§`u§ = null;
         var _loc7_:§+0§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§+0§ = null;
         var _loc11_:§+0§ = null;
         this.§=U§ = new Vector.<§+0§>();
         this.§=! § = new Vector.<§1!T§>();
         this.§>!>§ = new Vector.<Texture>();
         this.§'!-§ = new Vector.<§"!%§>();
         super();
         this.§>`§ = param1;
         this.§;!W§ = 0;
         this.§<!X§ = param3;
         this.§<!X§.§^f§ = false;
         this.§4! § = true;
         this.§2Z§ = true;
         this.§9!S§ = new Sprite();
         this.§3,§ = new Sprite();
         this.§[e§ = new Sprite();
         this.§8&§ = new Sprite();
         this.§<!X§.addChild(this.§9!S§);
         this.§<!X§.addChild(this.§3,§);
         this.§<!X§.addChild(this.§[e§);
         this.§<!X§.addChild(this.§8&§);
         this.addObject(§ 7§.§[!>§(param2.theme).§&u§,(this.§>`§.§%-§.§3!9§ + this.§>`§.§%-§.§3!J§) / 2,this.§>`§.§%-§.§[w§ + § 6§.§ +§);
         this.§[h§ = this.§=U§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§5"§)
         {
            _loc6_ = param2.§1T§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§ var§();
         this.§0!§(true);
         this.§[%§ = new Vector.<§8U§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§=!R§)
         {
            this.§[%§.push(§8U§.§0l§(param2.§"4§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§[%§)
         {
            _loc8_ = _loc5_.index1 + this.§[h§;
            _loc9_ = _loc5_.index2 + this.§[h§;
            if(_loc8_ < this.§=U§.length && _loc9_ < this.§=U§.length)
            {
               _loc10_ = this.§=U§[_loc8_];
               _loc11_ = this.§=U§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §8C§.§[!S§)
               {
                  _loc5_.§2B§ = this.§>`§.mLevelEngine.mWorld.§8m§(_loc5_.§&!$§(_loc10_,_loc11_));
               }
               else
               {
                  this.§'!-§.push(new §"!%§(_loc8_,_loc9_,_loc5_.§-7§));
               }
            }
         }
      }
      
      public function get §%!1§() : Sprite
      {
         return this.§8&§;
      }
      
      public function get §;!C§() : Sprite
      {
         return this.§<!X§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§=U§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§=U§ = null;
         this.§'!-§ = null;
         if(this.§<!X§)
         {
            this.§<!X§.dispose();
            this.§<!X§ = null;
            this.§9!S§ = null;
            this.§8&§ = null;
            this.§3,§ = null;
            this.§[e§ = null;
         }
         while(this.§>!>§.length > 0)
         {
            _loc1_ = this.§>!>§.pop();
            this.§>`§.§=]§.§'!Y§(_loc1_);
         }
      }
      
      private function §0!§(param1:Boolean) : void
      {
         this.§9!S§.visible = param1;
      }
      
      private function § var§() : void
      {
         var _loc3_:§+0§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§`!C§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§+0§> = new Vector.<§+0§>();
         for each(_loc3_ in this.§=U§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§<!X§);
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
            this.§'&§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§=f§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§>`§.§=]§.§1u§(_loc10_);
            this.§>!>§.push(_loc12_);
            (_loc13_ = new §`!C§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§9!S§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §=f§(param1:Vector.<§+0§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§+0§ = null;
         var _loc11_:§<A§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§7Z§.shape).§%!8§();
            _loc13_ = new Rectangle(_loc12_[0].x / §86§.§7!4§ * param6,_loc12_[0].y / §86§.§7!4§ * param6,(_loc12_[1].x - _loc12_[0].x) / §86§.§7!4§ * param6,(_loc12_[1].y - _loc12_[0].y) / §86§.§7!4§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§%4§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §'&§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§>`§.background.§0!!§();
         var _loc5_:§6!=§;
         if(_loc5_ = this.§>`§.§7!_§.§4!,§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §+0§
      {
         var _loc10_:§+0§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §6!2§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §@N§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §3!G§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §`!2§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §@!S§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new § 0§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §=&§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §4!9§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§-`§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §+0§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§+0§;
         if((_loc11_ = this.§-o§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§2Z§;
            this.§=U§[this.§=U§.length] = _loc11_;
         }
         else
         {
            this.§=U§[this.§=U§.length] = _loc11_;
         }
         if(_loc11_ is §4!9§ && !_loc11_.§@m§())
         {
            this.§3,§.addChild(_loc10_);
            ++this.§-`§;
         }
         else if(_loc11_.front || param9)
         {
            this.§8&§.addChild(_loc10_);
         }
         else
         {
            this.§[e§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§>`§.§7$§(_loc11_);
         }
         if(param6)
         {
            this.§>`§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §0l§(param1:int, param2:§+0§, param3:§+0§) : §8U§
      {
         var _loc6_:§8U§ = null;
         var _loc4_:int = this.§=U§.indexOf(param2) - this.§[h§;
         var _loc5_:int = this.§=U§.indexOf(param3) - this.§[h§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §8U§(§8C§.§3!H§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§2B§ = this.§>`§.mLevelEngine.mWorld.§8m§(_loc6_.§&!$§(param2,param3));
            this.§[%§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §[j§(param1:§8U§) : void
      {
         if(!(param1.§2B§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§+0§ = this.§1T§(param1.index1 + this.§[h§);
         var _loc3_:§+0§ = this.§1T§(param1.index2 + this.§[h§);
         this.§>`§.mLevelEngine.mWorld.§>A§(param1.§2B§);
         param1.§2B§ = this.§>`§.mLevelEngine.mWorld.§8m§(param1.§&!$§(_loc2_,_loc3_));
      }
      
      public function §+o§(param1:§+0§) : Vector.<§8U§>
      {
         var _loc4_:§8U§ = null;
         var _loc2_:Vector.<§8U§> = new Vector.<§8U§>();
         var _loc3_:int = this.§=U§.indexOf(param1) - this.§[h§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§[%§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §<x§() : Vector.<§8U§>
      {
         return this.§[%§;
      }
      
      public function §&!6§(param1:§+0§) : void
      {
         var _loc2_:int = this.§=U§.indexOf(param1) - this.§[h§;
         var _loc3_:int = this.§[%§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§[%§[_loc3_].index1 == _loc2_ || this.§[%§[_loc3_].index2 == _loc2_)
            {
               this.§[%§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §`c§(param1:§+0§, param2:§+0§) : Boolean
      {
         var _loc3_:int = this.§=U§.indexOf(param1) - this.§[h§;
         var _loc4_:int = this.§=U§.indexOf(param2) - this.§[h§;
         var _loc5_:int = this.§[%§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§[%§[_loc5_].index1 == _loc3_ && this.§[%§[_loc5_].index2 == _loc4_ || this.§[%§[_loc5_].index1 == _loc4_ && this.§[%§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §-o§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §+0§
      {
         var _loc10_:§+0§ = null;
         var _loc11_:§-r§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§&! §;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §2!]§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §%<§.§<<§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §%<§.§<<§(param2);
            }
            if(_loc11_.§?n§ == §-r§.§"!1§ || _loc11_.§?n§ == §-r§.§+!S§)
            {
               _loc10_ = new §3i§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §+0§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §2l§(param1:Number) : void
      {
         var _loc3_:§+0§ = null;
         var _loc2_:int = this.§=U§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=U§[_loc2_] as §+0§;
            if(_loc3_)
            {
               if(_loc3_.§,!&§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§1p§();
                  _loc3_.§&;§();
               }
            }
            _loc2_--;
         }
         this.§"!^§(param1);
      }
      
      protected function §"!^§(param1:Number) : void
      {
         var _loc3_:§8U§ = null;
         var _loc4_:§"!%§ = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = this.§'!-§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§'!-§[_loc2_]).§ !9§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc5_ < this.§=U§.length && this.§=U§[_loc5_] != null)
                  {
                     this.removeObjectWithIndex(_loc5_,true,true,true);
                  }
                  this.§'!-§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§[%§)
         {
            if(_loc3_.type == §8C§.§=G§ && _loc3_.§6!'§)
            {
               _loc6_ = (_loc3_.§2B§ as b2PrismaticJoint).§,1§();
               _loc7_ = (_loc3_.§2B§ as b2PrismaticJoint).§class§();
               if(_loc3_.§ h§ && _loc3_.§5Q§ && (_loc7_ > 0 && _loc6_ >= _loc3_.upperLimit || _loc7_ < 0 && _loc6_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§2B§ as b2PrismaticJoint).§;X§(-_loc7_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§=! §.push(§1!T§.§%!J§(param1,param2,param3));
         §!!>§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §0K§(param1:Number, param2:Number) : int
      {
         var _loc4_:§+0§ = null;
         var _loc3_:int = this.§=U§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=U§[_loc3_])
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
      
      public function §5q§(param1:Number, param2:Number) : §+0§
      {
         var _loc4_:§+0§ = null;
         var _loc3_:int = this.§=U§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=U§[_loc3_])
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
      
      public function §1T§(param1:int) : §+0§
      {
         return this.§=U§[param1];
      }
      
      public function §<!@§(param1:Number, param2:Number) : void
      {
         var _loc4_:§+0§ = null;
         var _loc3_:int = this.§=U§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§=U§[_loc3_] as §+0§).§<!@§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §6&§(param1:§+0§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§+0§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§,!&§ == param1.§+?§)
         {
            if(this.§!q§ < §!j§.§4!N§)
            {
               this.§!q§ += param2 * §!j§.§1J§;
            }
            param1.§?!7§().§4K§(param2 * this.§!q§);
            this.§7!1§ = 0;
         }
         else if(this.§7!1§ == 0)
         {
            this.§7!1§ = this.§>`§.§#5§;
         }
         if(param1.§69§() || this.§<^§(param1) || this.§7!1§ > 0 && this.§>`§.§#5§ > this.§7!1§ + §!j§.§;,§)
         {
            if(this.mMightyEagleTimer < §!j§.§6e§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §!j§.§#[§ && _loc4_ > §!j§.§#[§)
               {
                  §!!>§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §!!>§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §!j§.§6e§)
               {
                  _loc5_ = param1.§?!7§().GetPosition().x - §!j§.§5e§;
                  _loc6_ = param1.§?!7§().GetPosition().y - §!j§.§5e§ * §!j§.§=R§ * 1.07;
                  if(this.§<^§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§!j§.§^N§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§7!1§ = 0;
                  _loc7_.§2P§.§%!H§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §#2§(param1:§+0§, param2:Number) : Boolean
      {
         var _loc5_:§+0§ = null;
         if(!this.§`!8§ && this.mMightyEagleTimer > §!j§.§3O§)
         {
            this.§`!8§ = true;
            this.§>`§.§,!0§();
         }
         this.mMightyEagleTimer += param2;
         this.§>`§.particles.addParticle(§7o§.§8!I§,§<2§.§]!X§,§7o§.§%u§,param1.§?!7§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§?!7§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§7o§.§3E§(param1.§2!1§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§!_§(§!j§.§[C§ * param2);
            _loc4_ = -1;
            if(this.§2@§)
            {
               this.§2@§ = false;
               this.§>`§.§<H§();
               param1.§ !=§(§!A§.§5V§);
               this.mSardineCanAdded = false;
               param1.§2P§.§;!D§ = true;
               param1.§2P§.§+!4§();
               for each(_loc5_ in this.§=U§)
               {
                  if(_loc5_ && _loc5_.§'D§())
                  {
                     _loc5_.§?!7§().SetAwake(true);
                     _loc5_.§?!7§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§#!X§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§=U§)
               {
                  if(_loc5_ && _loc5_.§'D§())
                  {
                     _loc5_.applyDamage(_loc5_.§+?§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§?!7§().GetPosition().y >= -5.5;
            this.§2@§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§>!^§(param2,new Point(1,_loc4_ * §!j§.§=R§),§!j§.§+%§);
         return false;
      }
      
      private function §"a§() : void
      {
         var _loc1_:§1!T§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§+0§ = null;
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
         while(this.§=! §.length > 0)
         {
            _loc1_ = this.§=! §.shift();
            _loc2_ = _loc1_.§0k§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§=U§)
            {
               _loc8_ = _loc6_.§?!7§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§?!7§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§0k§)
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
                     _loc6_.§?!7§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§<!&§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§>`§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§<2§.§]!X§,§7o§.§&!'§,_loc3_,_loc4_,600,"",§7o§.§?2§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§>`§.particles.addParticle(§7o§.§0V§,§<2§.§]!X§,§7o§.§%u§,_loc3_,_loc4_,_loc16_,"",§7o§.§?2§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
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
         return §7o§.§40§;
      }
      
      public function §3!B§(param1:Number) : void
      {
         var _loc2_:§+0§ = null;
         var _loc3_:int = this.§=U§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§=U§[_loc3_];
            if(_loc2_.§>1§())
            {
               if(this.§6&§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§@m§())
            {
               this.§#2§(_loc2_,param1);
            }
            else if(this.§<^§(_loc2_))
            {
               _loc2_.§ !=§(§!A§.§!!X§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§ !=§(§!A§.§!!X§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§>!K§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§"a§();
      }
      
      private function §#!X§() : void
      {
         var _loc1_:§8U§ = null;
         for each(_loc1_ in this.§[%§)
         {
            this.§>`§.mLevelEngine.mWorld.§>A§(_loc1_.§2B§);
         }
      }
      
      public function §&e§() : Boolean
      {
         var _loc2_:§+0§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=U§.length)
         {
            _loc2_ = this.§=U§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §<^§(param1:§+0§) : Boolean
      {
         if(param1 && param1.§7Z§.§2C§() != §-g§.§3'§ && this.§>`§.§%-§.§%F§(param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§8U§ = null;
         var _loc7_:§"!%§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§+0§;
         if((_loc5_ = this.§=U§[param1]).§'D§())
         {
            ++this.§%!A§;
         }
         else if(_loc5_.§>!K§())
         {
            --this.§-`§;
         }
         if(_loc5_ == this.§>`§.activeObject)
         {
            this.§>`§.activeObject = null;
         }
         if(param2)
         {
            this.§>`§.addScore(_loc5_.§7Z§.score,§7@§.§!!!§,true,_loc5_.§?!7§().GetPosition().x,_loc5_.§?!7§().GetPosition().y - 3,§7o§.§=F§(_loc5_.§2!1§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§>`§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§0u§(_loc5_.sprite);
         this.§&!6§(_loc5_);
         for each(_loc6_ in this.§[%§)
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
         for each(_loc7_ in this.§'!-§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§ !9§ = true;
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
         this.§=U§[param1] = null;
         this.§=U§.splice(param1,1);
      }
      
      private function §0u§(param1:Sprite) : void
      {
         if(this.§[e§.contains(param1))
         {
            this.§[e§.removeChild(param1);
            return;
         }
         if(this.§3,§.contains(param1))
         {
            this.§3,§.removeChild(param1);
            return;
         }
         if(this.§9!S§.contains(param1))
         {
            this.§9!S§.removeChild(param1);
            return;
         }
         if(this.§8&§.contains(param1))
         {
            this.§8&§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§+0§) : void
      {
         if(param1.§7<§().toUpperCase() == "WHITE_EGG" || param1.§1!'§())
         {
            if(param1.§2!1§.toUpperCase() == §`!2§.§ else§)
            {
               this.addExplosions(§1!T§.§ 9§,param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§1!T§.§-!Z§,param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y);
            }
         }
      }
      
      public function §"!>§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§=U§.indexOf(param1),param2,param3,param4);
      }
      
      public function §<!=§(param1:Number, param2:Number) : void
      {
         this.§<!X§.x = -param1;
         this.§<!X§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§+0§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=U§.length)
         {
            _loc3_ = this.§=U§[_loc2_] as §+0§;
            if(_loc3_ && _loc3_.§'D§() && _loc3_.§,!&§ > 0)
            {
               if(!param1 || _loc3_.§2P§.mTryToBlink <= 0 && _loc3_.§2P§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §%!-§(param1:Boolean = false) : int
      {
         var _loc4_:§+0§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§=U§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§=U§[_loc3_] as §+0§) && _loc4_.§'D§() && _loc4_.§,!&§ > 0)
            {
               if(!param1 || _loc4_.§2P§.mTryToBlink <= 0 && _loc4_.§2P§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §3m§() : int
      {
         var _loc2_:§+0§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=U§)
         {
            §§push(Boolean(_loc2_));
            if(Boolean(_loc2_))
            {
               §§pop();
               if(_loc2_.§29§() || _loc2_.§76§())
               {
                  _loc1_++;
               }
               continue;
            }
            §§goto(addr34);
         }
         return _loc1_;
      }
      
      public function § !2§() : int
      {
         var _loc2_:§+0§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=U§)
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
         var _loc3_:§+0§ = null;
         var _loc2_:int = this.§=U§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=U§[_loc2_];
            if(_loc3_ && _loc3_.§'D§() && _loc3_.§,!&§ > 0)
            {
               _loc3_.§2P§.mTryToScream = §0q§.§<!6§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §@0§() : Boolean
      {
         var _loc2_:§+0§ = null;
         var _loc1_:int = this.§=U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=U§[_loc1_] as §+0§;
            if(_loc2_ && _loc2_.§>!K§() && _loc2_.§,!&§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§+0§ = null;
         var _loc1_:int = this.§=U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=U§[_loc1_] as §+0§;
            if(_loc2_ && _loc2_.§,!&§ > 0 && _loc2_.§?n§ != §-r§.§#!]§)
            {
               if(_loc2_.§"u§() && !_loc2_.§69§())
               {
                  return false;
               }
               if(_loc2_.§>!K§() && _loc2_.§,!&§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §+l§(param1:Boolean = false) : §+0§
      {
         var _loc5_:int = 0;
         var _loc6_:§+0§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§=U§.length;
         var _loc3_:int = 1 + Math.random() * this.§%!-§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§=U§[_loc5_]) && _loc6_.§'D§() && _loc6_.§,!&§ > 0)
               {
                  if(!param1 || _loc6_.§2P§.mTryToBlink <= 0 && _loc6_.§2P§.mTryToScream <= 0)
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
      
      public function §=!^§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§=U§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§=U§[_loc2_] as §+0§).§7Z§.score;
            if((this.§=U§[_loc2_] as §+0§).§"u§())
            {
               _loc1_ += §86§.§@r§.getValue() * int((this.§=U§[_loc2_] as §+0§).§+?§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§>`§.slingshot.§=!^§());
      }
      
      public function §#X§(param1:§+0§, param2:§+0§) : Boolean
      {
         if(param1.§>!K§() && param2.§>!K§())
         {
            return true;
         }
         if(!param1.§-!N§() && !param2.§-!N§())
         {
            return true;
         }
         return false;
      }
      
      public function §0!Q§() : void
      {
         this.mSardineCanAdded = true;
         this.§-`§ = 0;
      }
      
      public function objectCollision(param1:§+0§, param2:§+0§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§@m§() || param2.§'D§())
            {
               param2.applyDamage(param2.§+?§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§@m§() || param1.§'D§())
            {
               param1.applyDamage(param1.§+?§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §!j§.§6e§)
         {
            if(param1.§>1§() || param2.§>1§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§#X§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§ if§(param2.§7<§());
         var _loc5_:Number = param1.§'!'§(param2.§7<§());
         var _loc6_:Number = param2.§ if§(param1.§7<§());
         var _loc7_:Number = param2.§'!'§(param1.§7<§());
         var _loc8_:Number = param1.§?!7§().GetMass() * param1.§?!7§().GetLinearVelocity().x - param2.§?!7§().GetMass() * param2.§?!7§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§?!7§().GetMass() * param1.§?!7§().GetLinearVelocity().y - param2.§?!7§().GetMass() * param2.§?!7§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§,!&§);
         var _loc14_:Number = Math.max(0,param2.§,!&§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§>!K§(),_loc14_ == param2.§+?§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§>!K§(),_loc13_ == param1.§+?§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§!-§(new b2Vec2(param2.§?!7§().GetLinearVelocity().x * _loc18_,param2.§?!7§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§!-§(new b2Vec2(param1.§?!7§().GetLinearVelocity().x * _loc19_,param1.§?!7§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §>B§() : void
      {
         var _loc2_:§+0§ = null;
         var _loc1_:int = this.§=U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=U§[_loc1_] as §+0§;
            if(_loc2_ != null && _loc2_.§'D§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §<v§() : void
      {
         var _loc2_:§+0§ = null;
         var _loc1_:int = this.§=U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=U§[_loc1_] as §+0§;
            if(_loc2_ != null && _loc2_.§1!'§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §0!D§() : int
      {
         return this.§=U§.length;
      }
      
      public function §%!B§(param1:§&!]§) : void
      {
         var _loc4_:§+0§ = null;
         var _loc5_:§`u§ = null;
         var _loc6_:§8C§ = null;
         var _loc7_:§8U§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=U§.length)
         {
            if((_loc4_ = this.§=U§[_loc2_]).§;!Y§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §`u§()).angle = _loc4_.§%4§();
                  _loc5_.id = _loc4_.§2!1§;
                  _loc5_.x = _loc4_.§?!7§().GetPosition().x;
                  _loc5_.y = _loc4_.§?!7§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§[%§.length)
         {
            _loc7_ = this.§[%§[_loc3_];
            _loc6_ = new §8C§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§]!,§,_loc7_.§ h§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§5Q§,_loc7_.motorSpeed,_loc7_.§6!'§,_loc7_.maxTorque);
            param1.§9!U§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §var§() : void
      {
         var _loc1_:int = 0;
         while(this.§=U§.length > _loc1_)
         {
            if(this.§=U§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§"!>§(this.§=U§[_loc1_]);
            }
         }
      }
      
      public function §'!A§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§=U§.length)
         {
            if(this.§=U§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§=U§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§2Z§ = param1;
         this.§0!§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=U§.length)
         {
            if(this.§=U§[_loc2_].isTexture())
            {
               this.§=U§[_loc2_].sprite.visible = !this.§2Z§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§4! § = param1;
      }
      
      public function §6!4§() : Boolean
      {
         return this.§4! §;
      }
      
      public function §8!?§() : int
      {
         return this.§&! §;
      }
      
      public function §#E§() : int
      {
         return this.§%!A§;
      }
      
      public function §8B§(param1:String) : §+0§
      {
         var _loc3_:§+0§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=U§.length)
         {
            _loc3_ = this.§=U§[_loc2_] as §+0§;
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
