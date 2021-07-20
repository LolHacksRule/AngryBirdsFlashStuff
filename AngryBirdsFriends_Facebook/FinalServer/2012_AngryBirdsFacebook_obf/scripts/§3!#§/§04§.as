package §3!#§
{
   import §!!t§.§+!9§;
   import §"G§.b2PrismaticJoint;
   import §"G§.b2RevoluteJoint;
   import §"G§.b2WeldJoint;
   import §#S§.§6!r§;
   import §0!2§.§#!&§;
   import §0!2§.§-6§;
   import §0!2§.§3`§;
   import §0!2§.§5"L§;
   import §7F§.b2Vec2;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §=%§.§&-§;
   import §=%§.§7!g§;
   import §=%§.§=!C§;
   import §=%§.§>"-§;
   import §=%§.§]"%§;
   import §>s§.§+m§;
   import §?7§.Texture;
   import §@-§.§ !H§;
   import §@-§.§&!g§;
   import §@-§.§&"!§;
   import §@-§.§9o§;
   import §]!v§.§'!=§;
   import §]!v§.Sprite;
   import §`!n§.§#!s§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §04§
   {
       
      
      protected var §#"5§:Vector.<§5"A§>;
      
      protected var §7!E§:int;
      
      public var §^!"§:§5"L§;
      
      public var §-">§:Vector.<§0"A§>;
      
      protected var §@!w§:Sprite;
      
      protected var §5!!§:Sprite;
      
      private var §for§:Sprite;
      
      private var §2!y§:Sprite;
      
      private var §["0§:Sprite;
      
      protected var §<!R§:Vector.<Texture>;
      
      protected var §7"@§:Vector.<§9o§>;
      
      protected var § x§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §^!V§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §9D§:Boolean = false;
      
      protected var §8!q§:Number;
      
      protected var §4!,§:int;
      
      protected var § ! §:Vector.<§ !H§>;
      
      protected var §@"%§:int = 0;
      
      private var §3!L§:int = 0;
      
      private var §`X§:int = 0;
      
      protected var §7i§:int;
      
      private var §-r§:Boolean = true;
      
      private var §1!A§:Boolean = true;
      
      public function §04§(param1:§5"L§, param2:§#!s§, param3:Sprite)
      {
         var _loc5_:§9o§ = null;
         var _loc6_:§&"!§ = null;
         var _loc7_:§5"A§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§5"A§ = null;
         var _loc11_:§5"A§ = null;
         this.§#"5§ = new Vector.<§5"A§>();
         this.§-">§ = new Vector.<§0"A§>();
         this.§<!R§ = new Vector.<Texture>();
         this.§8!q§ = this.§3`§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§ ! § = new Vector.<§ !H§>();
         super();
         this.§^!"§ = param1;
         this.§7!E§ = 0;
         this.§5!!§ = param3;
         this.§5!!§.§5! § = false;
         this.§1!A§ = true;
         this.§-r§ = true;
         this.§@!w§ = new Sprite();
         this.§for§ = new Sprite();
         this.§2!y§ = new Sprite();
         this.§["0§ = new Sprite();
         this.§5!!§.addChild(this.§@!w§);
         this.§5!!§.addChild(this.§for§);
         this.§5!!§.addChild(this.§2!y§);
         this.§5!!§.addChild(this.§["0§);
         this.addObject(§+!9§.§7b§(param2.theme).§!_§,(this.§^!"§.§>9§.§[4§ + this.§^!"§.§>9§.§1!&§) / 2,this.§^!"§.§>9§.§"p§ + §#!&§.§>o§);
         this.§7i§ = this.§#"5§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§8"'§)
         {
            _loc6_ = param2.§ §(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§7!R§();
         this.§ F§(true);
         this.§7"@§ = new Vector.<§9o§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§+"G§)
         {
            this.§7"@§.push(§9o§.§""9§(param2.§8Q§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§7"@§)
         {
            _loc8_ = _loc5_.index1 + this.§7i§;
            _loc9_ = _loc5_.index2 + this.§7i§;
            if(_loc8_ < this.§#"5§.length && _loc9_ < this.§#"5§.length)
            {
               _loc10_ = this.§#"5§[_loc8_];
               _loc11_ = this.§#"5§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §&!g§.§[! §)
               {
                  _loc5_.§4"%§ = this.§^!"§.mLevelEngine.mWorld.§,E§(_loc5_.§>F§(_loc10_,_loc11_));
               }
               else
               {
                  this.§ ! §.push(new § !H§(parseInt(_loc10_.uniqueID),parseInt(_loc11_.uniqueID),_loc5_.§="5§));
               }
            }
         }
      }
      
      protected function get §3`§() : Class
      {
         return §3`§;
      }
      
      public function get §-"!§() : Sprite
      {
         return this.§["0§;
      }
      
      public function get mainSprite() : Sprite
      {
         return this.§5!!§;
      }
      
      public function get §""G§() : Sprite
      {
         return this.§2!y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§#"5§.length > 0)
         {
            this.§7k§(0);
         }
         this.§#"5§ = null;
         this.§ ! § = null;
         if(this.§5!!§)
         {
            this.§5!!§.dispose();
            this.§5!!§ = null;
            this.§@!w§ = null;
            this.§["0§ = null;
            this.§for§ = null;
            this.§2!y§ = null;
         }
         while(this.§<!R§.length > 0)
         {
            _loc1_ = this.§<!R§.pop();
            this.§^!"§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function § F§(param1:Boolean) : void
      {
         this.§@!w§.visible = param1;
      }
      
      private function §7!R§() : void
      {
         var _loc3_:§5"A§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§'!=§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§5"A§> = new Vector.<§5"A§>();
         for each(_loc3_ in this.§#"5§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§5!!§);
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
            this.§6"K§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§"!x§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§^!"§.textureManager.getTextureFromBitmapData(_loc10_);
            this.§<!R§.push(_loc12_);
            (_loc13_ = new §'!=§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§@!w§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §"!x§(param1:Vector.<§5"A§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§5"A§ = null;
         var _loc11_:§&-§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§""8§.shape).§@!Z§();
            _loc13_ = new Rectangle(_loc12_[0].x / §5"L§.§@>§ * param6,_loc12_[0].y / §5"L§.§@>§ * param6,(_loc12_[1].x - _loc12_[0].x) / §5"L§.§@>§ * param6,(_loc12_[1].y - _loc12_[0].y) / §5"L§.§@>§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§#"<§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §6"K§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§^!"§.background.§2j§();
         var _loc5_:§6!r§;
         if(_loc5_ = this.§^!"§.backgroundTextureManager.§'"@§(_loc4_))
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
      
      public function §5!?§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §5"A§
      {
         var _loc10_:§]"%§ = §>"-§.§0@§(param2);
         return new §?!s§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §6"$§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §5"A§
      {
         var _loc10_:§5"A§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §1x§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §?"=§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §7!u§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §,W§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §2F§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new § P§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §4!Q§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §;!§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §!!k§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§@"%§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §5"A§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§5"A§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§-r§;
            this.§#"5§[this.§#"5§.length] = _loc11_;
         }
         else
         {
            this.§#"5§[this.§#"5§.length] = _loc11_;
         }
         if(_loc11_ is §!!k§ && !_loc11_.§0"K§())
         {
            this.§for§.addChild(_loc10_);
            ++this.§@"%§;
         }
         else if(_loc11_.front || param9)
         {
            this.§["0§.addChild(_loc10_);
         }
         else
         {
            this.§2!y§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§^!"§.§[S§(_loc11_);
         }
         if(param6)
         {
            this.§^!"§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §""9§(param1:int, param2:§5"A§, param3:§5"A§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc17_:§9o§ = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:§ !H§ = null;
         var _loc15_:int = this.§#"5§.indexOf(param2) - this.§7i§;
         var _loc16_:int = this.§#"5§.indexOf(param3) - this.§7i§;
         if(_loc15_ >= 0 && _loc16_ >= 0)
         {
            _loc17_ = new §9o§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
            this.§7"@§.push(_loc17_);
            _loc17_.§="5§ = param12;
            _loc17_.axisX = param13;
            _loc17_.axisY = param14;
            if(param1 != §&!g§.§[! §)
            {
               _loc17_.§4"%§ = this.§^!"§.mLevelEngine.mWorld.§,E§(_loc17_.§>F§(param2,param3));
            }
            else
            {
               _loc18_ = parseInt(param2.uniqueID);
               _loc19_ = parseInt(param3.uniqueID);
               _loc20_ = new § !H§(_loc18_,_loc19_,param12);
               this.§ ! §.push(_loc20_);
            }
         }
      }
      
      public function §>S§(param1:§9o§) : void
      {
         if(!(param1.§4"%§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§5"A§ = this.§ §(param1.index1 + this.§7i§);
         var _loc3_:§5"A§ = this.§ §(param1.index2 + this.§7i§);
         this.§^!"§.mLevelEngine.mWorld.§!!y§(param1.§4"%§);
         param1.§4"%§ = this.§^!"§.mLevelEngine.mWorld.§,E§(param1.§>F§(_loc2_,_loc3_));
      }
      
      public function §;";§(param1:§5"A§) : Vector.<§9o§>
      {
         var _loc4_:§9o§ = null;
         var _loc2_:Vector.<§9o§> = new Vector.<§9o§>();
         var _loc3_:int = this.§#"5§.indexOf(param1) - this.§7i§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§7"@§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §>!v§() : Vector.<§9o§>
      {
         return this.§7"@§;
      }
      
      public function §>l§(param1:§5"A§) : void
      {
         var _loc2_:int = this.§#"5§.indexOf(param1) - this.§7i§;
         var _loc3_:int = this.§7"@§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§7"@§[_loc3_].index1 == _loc2_ || this.§7"@§[_loc3_].index2 == _loc2_)
            {
               this.§7"@§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §6m§(param1:§5"A§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§ ! §.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§ ! §[_loc3_].targetId.toString() == _loc2_)
            {
               this.§ ! §.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §&!X§(param1:§5"A§, param2:§5"A§) : Boolean
      {
         var _loc3_:int = this.§#"5§.indexOf(param1) - this.§7i§;
         var _loc4_:int = this.§#"5§.indexOf(param2) - this.§7i§;
         var _loc5_:int = this.§7"@§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§7"@§[_loc5_].index1 == _loc3_ && this.§7"@§[_loc5_].index2 == _loc4_ || this.§7"@§[_loc5_].index1 == _loc4_ && this.§7"@§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §5"A§
      {
         var _loc10_:§5"A§ = null;
         var _loc11_:§]"%§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§6"$§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§`X§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§5!?§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §>"-§.§0@§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §>"-§.§0@§(param2);
            }
            if(_loc11_.§^!E§ == §]"%§.§%"#§ || _loc11_.§^!E§ == §]"%§.§;1§)
            {
               _loc10_ = new §^!^§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §5"A§(this,param1,this.§^!"§.mLevelEngine.mWorld,this.§^!"§,this.§7!E§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§?!2§();
         return _loc10_;
      }
      
      protected function §?!2§() : String
      {
         var _loc3_:§5"A§ = null;
         var _loc1_:int = this.§#"5§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§#"5§)
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
      
      public function §;!m§(param1:Number) : void
      {
         var _loc3_:§5"A§ = null;
         var _loc2_:int = this.§#"5§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§#"5§[_loc2_] as §5"A§;
            if(_loc3_)
            {
               if(_loc3_.§!!U§ <= 0)
               {
                  this.§7k§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§+!^§();
                  _loc3_.§]!r§();
               }
            }
            _loc2_--;
         }
         this.§!o§(param1);
      }
      
      protected function §!o§(param1:Number) : void
      {
         this.§]!x§(param1);
         this.§]!@§();
      }
      
      private function §]!x§(param1:Number) : void
      {
         var _loc4_:§ !H§ = null;
         var _loc5_:int = 0;
         var _loc6_:§5"A§ = null;
         if(this.§ ! §.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§ !H§> = this.§ ! §.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§+"+§ && this.§ ! §.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§8!g§("" + _loc5_))
                  {
                     this.§ !"§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §]!@§() : void
      {
         var _loc1_:§9o§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Class = null;
         var _loc5_:Boolean = false;
         for each(_loc1_ in this.§7"@§)
         {
            if(_loc1_.type == §&!g§.§3"8§ || _loc1_.type == §&!g§.§0"<§ && _loc1_.§=B§)
            {
               if(_loc1_.§4"%§ is b2PrismaticJoint)
               {
                  _loc4_ = b2PrismaticJoint;
                  _loc2_ = (_loc1_.§4"%§ as b2PrismaticJoint).§[!m§();
                  _loc3_ = (_loc1_.§4"%§ as b2PrismaticJoint).§%>§();
               }
               else if(_loc1_.§4"%§ is b2RevoluteJoint)
               {
                  _loc4_ = b2RevoluteJoint;
                  _loc2_ = (_loc1_.§4"%§ as b2RevoluteJoint).§=z§();
                  _loc3_ = (_loc1_.§4"%§ as b2RevoluteJoint).§%>§();
               }
               if(_loc5_ = _loc1_.§!e§ && _loc1_.§"!F§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§4"%§ as _loc4_).SetMotorSpeed(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§5"A§> = null) : void
      {
         this.§-">§.push(§0"A§.createExplosion(param1,param2,param3,param4));
         §+m§.§]!N§("TntExplosions","ChannelExplosions");
      }
      
      public function §6!1§(param1:Number, param2:Number) : int
      {
         var _loc4_:§5"A§ = null;
         var _loc3_:int = this.§#"5§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§#"5§[_loc3_])
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
      
      public function §6""§(param1:Number, param2:Number) : §5"A§
      {
         var _loc4_:§5"A§ = null;
         var _loc3_:int = this.§#"5§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§#"5§[_loc3_])
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
      
      public function §]!h§(param1:Number, param2:Number) : Vector.<§5"A§>
      {
         var _loc5_:§5"A§ = null;
         var _loc3_:Vector.<§5"A§> = new Vector.<§5"A§>();
         var _loc4_:int = this.§#"5§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§#"5§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function § §(param1:int) : §5"A§
      {
         return this.§#"5§[param1];
      }
      
      public function §6l§(param1:Number, param2:Number) : void
      {
         var _loc4_:§5"A§ = null;
         var _loc3_:int = this.§#"5§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§#"5§[_loc3_] as §5"A§).§6l§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §&!'§(param1:§5"A§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§5"A§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§!!U§ == param1.§3!A§)
         {
            if(this.§8!q§ < this.§3`§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§8!q§ += param2 * this.§3`§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§`!y§().§23§(param2 * this.§8!q§);
            this.§4!,§ = 0;
         }
         else if(this.§4!,§ == 0)
         {
            this.§4!,§ = this.§^!"§.§^!@§;
         }
         if(param1.§!!b§() || this.§+!D§(param1) || this.§4!,§ > 0 && this.§^!"§.§^!@§ > this.§4!,§ + this.§3`§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§3`§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§3`§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§3`§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §+m§.§]!N§("Mighty_Eagle_Selected_1","ChannelBird");
                  §+m§.§]!N§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§3`§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§`!y§().GetPosition().x - this.§3`§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§`!y§().GetPosition().y - this.§3`§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§3`§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§+!D§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§3`§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§4!,§ = 0;
                  _loc7_.§<!K§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function § X§(param1:§5"A§, param2:Number) : Boolean
      {
         var _loc5_:§5"A§ = null;
         if(this.§3`§.MIGHTY_EAGLE_USE_SHADE && !this.§9D§ && this.mMightyEagleTimer > this.§3`§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§9D§ = true;
            this.§^!"§.§6!3§();
         }
         this.mMightyEagleTimer += param2;
         this.§^!"§.particles.§`"6§(§4! §.§<2§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,param1.§`!y§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§`!y§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§4! §.getParticleMaterialFromEngineMaterial(param1.§=-§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§?F§(this.§3`§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§^!V§)
            {
               this.§^!V§ = false;
               this.§^!"§.§&!>§();
               param1.§!?§(§7!g§.§<q§);
               this.mSardineCanAdded = false;
               param1.§<!K§.§?!O§ = true;
               param1.§<!K§.§=^§();
               for each(_loc5_ in this.§#"5§)
               {
                  if(_loc5_ && _loc5_.§!!D§())
                  {
                     _loc5_.§`!y§().SetAwake(true);
                     _loc5_.§`!y§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§ !W§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§#"5§)
               {
                  if(_loc5_ && _loc5_.§!!D§())
                  {
                     _loc5_.applyDamage(_loc5_.§3!A§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§`!y§().GetPosition().y >= -5.5;
            this.§^!V§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§%S§(param2,new Point(this.§3`§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§3`§.MIGHTY_EAGLE_Y_CHANGE),this.§3`§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §0!%§() : void
      {
         var _loc1_:§0"A§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§5"A§ = null;
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
         while(this.§-">§.length > 0)
         {
            _loc1_ = this.§-">§.shift();
            _loc2_ = _loc1_.§3"H§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§#"5§)
            {
               if(!(_loc1_.§[!l§ != null && _loc1_.§[!l§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.§`!y§().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.§`!y§().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§3"H§)
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
                        _loc6_.§`!y§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§%!§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.applyExplosionDamage(_loc6_,_loc14_);
                  }
               }
            }
            this.§^!"§.particles.§`"6§(this.getMainExplosionCoreName(_loc1_.type),§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.§,!]§,_loc3_,_loc4_,600,"",§4! §.§;"J§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§^!"§.particles.§`"6§(§4! §.§9"C§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,_loc3_,_loc4_,_loc16_,"",§4! §.§;"J§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function applyExplosionDamage(param1:§5"A§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §4! §.§;&§;
      }
      
      public function §8w§(param1:Number) : void
      {
         var _loc2_:§5"A§ = null;
         var _loc3_:int = this.§#"5§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§#"5§[_loc3_];
            if(_loc2_.§`h§())
            {
               if(this.§&!'§(_loc2_,param1))
               {
                  this.§7k§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§0"K§())
            {
               this.§ X§(_loc2_,param1);
            }
            else if(this.§+!D§(_loc2_))
            {
               _loc2_.§!?§(§7!g§.§0"#§);
               this.§7k§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§!?§(§7!g§.§0"#§);
               this.§7k§(_loc3_,false,true,true);
            }
            else if(_loc2_.§3q§() || _loc2_.shouldUpdate())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§0!%§();
      }
      
      private function § !W§() : void
      {
         var _loc1_:§9o§ = null;
         for each(_loc1_ in this.§7"@§)
         {
            if(_loc1_.type != §&!g§.§[! §)
            {
               this.§^!"§.mLevelEngine.mWorld.§!!y§(_loc1_.§4"%§);
            }
         }
      }
      
      public function §!"8§() : Boolean
      {
         var _loc2_:§5"A§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#"5§.length)
         {
            _loc2_ = this.§#"5§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §+!D§(param1:§5"A§) : Boolean
      {
         if(param1 && param1.§""8§.§=!6§() != §=!C§.§"J§ && this.§^!"§.§>9§.§<!c§(param1.§`!y§().GetPosition().x,param1.§`!y§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §7k§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§9o§ = null;
         var _loc7_:§ !H§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§5"A§;
         if((_loc5_ = this.§#"5§[param1]).§!!D§())
         {
            ++this.§3!L§;
         }
         else if(_loc5_.§3q§())
         {
            --this.§@"%§;
         }
         if(_loc5_ == this.§^!"§.activeObject)
         {
            this.§^!"§.activeObject = null;
         }
         if(param2)
         {
            this.§^!"§.addScore(_loc5_.§""8§.score,§-6§.§%"H§,true,_loc5_.§`!y§().GetPosition().x,_loc5_.§`!y§().GetPosition().y - 3,§4! §.§^!T§(_loc5_.§=-§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§^!"§.particles);
         }
         if(param4)
         {
            this.§1!n§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.removeChildFromMainSprite(_loc5_.sprite);
         this.§>l§(_loc5_);
         this.§6m§(_loc5_);
         for each(_loc6_ in this.§7"@§)
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
         for each(_loc7_ in this.§ ! §)
         {
            if(_loc7_.§^K§ == param1)
            {
               _loc7_.§+"+§ = true;
            }
            if(_loc7_.§^K§ >= param1)
            {
               --_loc7_.§^K§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§#"5§[param1] = null;
         this.§#"5§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§5"A§, param2:§3!p§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function removeChildFromMainSprite(param1:Sprite) : void
      {
         if(this.§2!y§.contains(param1))
         {
            this.§2!y§.removeChild(param1);
            return;
         }
         if(this.§for§.contains(param1))
         {
            this.§for§.removeChild(param1);
            return;
         }
         if(this.§@!w§.contains(param1))
         {
            this.§@!w§.removeChild(param1);
            return;
         }
         if(this.§["0§.contains(param1))
         {
            this.§["0§.removeChild(param1);
            return;
         }
      }
      
      protected function §1!n§(param1:§5"A§) : void
      {
         if(param1.§]L§().toUpperCase() == "WHITE_EGG" || param1.§8J§())
         {
            if(param1.§=-§.toUpperCase() == §,W§.§9!;§)
            {
               this.addExplosions(§0"A§.§>"%§,param1.§`!y§().GetPosition().x,param1.§`!y§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§0"A§.§,5§,param1.§`!y§().GetPosition().x,param1.§`!y§().GetPosition().y);
            }
         }
      }
      
      public function § !"§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§7k§(this.§#"5§.indexOf(param1),param2,param3,param4);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§5!!§.x = -param1;
         this.§5!!§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§5"A§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#"5§.length)
         {
            _loc3_ = this.§#"5§[_loc2_] as §5"A§;
            if(_loc3_ && _loc3_.§!!D§() && _loc3_.§!!U§ > 0)
            {
               if(!param1 || _loc3_.§<!K§.mTryToBlink <= 0 && _loc3_.§<!K§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §<"4§(param1:Boolean = false) : int
      {
         var _loc4_:§5"A§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§#"5§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§#"5§[_loc3_] as §5"A§) && _loc4_.§!!D§() && _loc4_.§!!U§ > 0)
            {
               if(!param1 || _loc4_.§<!K§.mTryToBlink <= 0 && _loc4_.§<!K§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §]x§() : int
      {
         var _loc2_:§5"A§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#"5§)
         {
            if(_loc2_ && (_loc2_.§7!_§() || _loc2_.§9!n§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §,!i§() : int
      {
         var _loc2_:§5"A§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#"5§)
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
         var _loc3_:§5"A§ = null;
         var _loc2_:int = this.§#"5§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§#"5§[_loc2_];
            if(_loc3_ && _loc3_.§!!D§() && _loc3_.§!!U§ > 0)
            {
               _loc3_.§<!K§.mTryToScream = §38§.§;""§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §"_§() : Boolean
      {
         var _loc2_:§5"A§ = null;
         var _loc1_:int = this.§#"5§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#"5§[_loc1_] as §5"A§;
            if(_loc2_ && _loc2_.§3q§() && _loc2_.§!!U§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§5"A§ = null;
         var _loc1_:int = this.§#"5§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#"5§[_loc1_] as §5"A§;
            if(_loc2_ && _loc2_.§!!U§ > 0 && _loc2_.§^!E§ != §]"%§.§,!S§)
            {
               if(_loc2_.§>"#§() && !_loc2_.§!!b§())
               {
                  return false;
               }
               if(_loc2_.§3q§() && _loc2_.§!!U§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §8"%§(param1:Boolean = false) : §5"A§
      {
         var _loc7_:§5"A§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§#"5§.length;
         var _loc3_:int = this.§<"4§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§#"5§[_loc6_] as §5"A§) && _loc7_.§!!D§() && _loc7_.§!!U§ > 0)
            {
               if(!param1 || _loc7_.§<!K§.mTryToBlink <= 0 && _loc7_.§<!K§.mTryToScream <= 0)
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
      
      public function §3!e§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§#"5§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§#"5§[_loc2_] as §5"A§).§""8§.score;
            if((this.§#"5§[_loc2_] as §5"A§).§>"#§())
            {
               _loc1_ += §5"L§.§3h§.getValue() * int((this.§#"5§[_loc2_] as §5"A§).§3!A§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§^!"§.slingshot.§3!e§());
      }
      
      public function §+!s§(param1:§5"A§, param2:§5"A§) : Boolean
      {
         if(param2 is §?"=§ && param1 is §?"=§)
         {
            return true;
         }
         if(!param1.§+k§() && !param2.§+k§())
         {
            return true;
         }
         return false;
      }
      
      public function §1?§() : void
      {
         this.mSardineCanAdded = true;
         this.§@"%§ = 0;
      }
      
      public function objectCollision(param1:§5"A§, param2:§5"A§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§0"K§() || param2.§!!D§())
            {
               param2.applyDamage(param2.§3!A§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§0"K§() || param1.§!!D§())
            {
               param1.applyDamage(param1.§3!A§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§3`§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§`h§() || param2.§`h§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§+!s§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§,"<§(param2.§]L§());
         var _loc5_:Number = param1.§"v§(param2.§]L§());
         var _loc6_:Number = param2.§,"<§(param1.§]L§());
         var _loc7_:Number = param2.§"v§(param1.§]L§());
         var _loc8_:Number = param1.§`!y§().GetMass() * param1.§`!y§().GetLinearVelocity().x - param2.§`!y§().GetMass() * param2.§`!y§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§`!y§().GetMass() * param1.§`!y§().GetLinearVelocity().y - param2.§`!y§().GetMass() * param2.§`!y§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§!!U§);
         var _loc14_:Number = Math.max(0,param2.§!!U§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§3q§(),_loc14_ == param2.§3!A§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§3q§(),_loc13_ == param1.§3!A§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§=!y§(new b2Vec2(param2.§`!y§().GetLinearVelocity().x * _loc18_,param2.§`!y§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§=!y§(new b2Vec2(param1.§`!y§().GetLinearVelocity().x * _loc19_,param1.§`!y§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function objectCollisionEnded(param1:§5"A§, param2:§5"A§) : void
      {
      }
      
      public function §32§() : void
      {
         var _loc2_:§5"A§ = null;
         var _loc1_:int = this.§#"5§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#"5§[_loc1_] as §5"A§;
            if(_loc2_ != null && _loc2_.§!!D§())
            {
               this.§7k§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §""2§() : void
      {
         var _loc2_:§5"A§ = null;
         var _loc1_:int = this.§#"5§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#"5§[_loc1_] as §5"A§;
            if(_loc2_ != null && _loc2_.§8J§())
            {
               this.§7k§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §<"C§() : int
      {
         return this.§#"5§.length;
      }
      
      public function §4t§(param1:§#!s§) : void
      {
         var _loc2_:§5"A§ = null;
         var _loc3_:§9o§ = null;
         var _loc4_:§&"!§ = null;
         var _loc5_:§&!g§ = null;
         for each(_loc2_ in this.§#"5§)
         {
            if(!_loc2_.isGround())
            {
               (_loc4_ = new §&"!§()).angle = _loc2_.§#"<§();
               _loc4_.id = _loc2_.§=-§;
               _loc4_.x = _loc2_.§`!y§().GetPosition().x;
               _loc4_.y = _loc2_.§`!y§().GetPosition().y;
               _loc4_.uniqueID = _loc2_.uniqueID;
               param1.addObject(_loc4_);
            }
         }
         for each(_loc3_ in this.§7"@§)
         {
            (_loc5_ = new §&!g§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§!X§,_loc3_.§!e§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§"!F§,_loc3_.motorSpeed,_loc3_.§=B§,_loc3_.maxTorque)).§="5§ = _loc3_.§="5§;
            param1.§@v§(_loc5_);
         }
      }
      
      public function §0"C§() : void
      {
         var _loc1_:int = 0;
         while(this.§#"5§.length > _loc1_)
         {
            if(this.§#"5§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§ !"§(this.§#"5§[_loc1_]);
            }
         }
      }
      
      public function §"!9§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§#"5§.length)
         {
            if(this.§#"5§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§#"5§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§-r§ = param1;
         this.§ F§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§#"5§.length)
         {
            if(this.§#"5§[_loc2_].isTexture())
            {
               this.§#"5§[_loc2_].sprite.visible = !this.§-r§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§1!A§ = param1;
      }
      
      public function §&d§() : Boolean
      {
         return this.§1!A§;
      }
      
      public function §0"$§() : int
      {
         return this.§`X§;
      }
      
      public function §-! §() : int
      {
         return this.§3!L§;
      }
      
      public function §8!g§(param1:String) : §5"A§
      {
         var _loc3_:§5"A§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#"5§.length)
         {
            _loc3_ = this.§#"5§[_loc2_] as §5"A§;
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
