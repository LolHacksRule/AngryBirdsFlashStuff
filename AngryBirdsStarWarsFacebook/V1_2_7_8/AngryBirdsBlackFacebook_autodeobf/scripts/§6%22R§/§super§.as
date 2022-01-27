package §6"R§
{
   import §'"b§.§?!D§;
   import §+!,§.b2Contact;
   import §,"v§.§@§;
   import §,#+§.§<U§;
   import §1"s§.§#"b§;
   import §1"s§.§-i§;
   import §1"s§.Sprite;
   import §2!`§.§""j§;
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §2",§.b2JointEdge;
   import §2",§.b2PrismaticJoint;
   import §2",§.b2RevoluteJoint;
   import §3"$§.§[a§;
   import §3"$§.§]!h§;
   import §4"F§.§""'§;
   import §4"F§.§&!l§;
   import §4"F§.§?§;
   import §4"F§.§["N§;
   import §4"F§.§^d§;
   import §5!q§.§"!A§;
   import §5!q§.§"!s§;
   import §5!q§.§3"X§;
   import §7A§.§5"2§;
   import §;[§.§<!x§;
   import §<"L§.Texture;
   import §>P§.§%=§;
   import §>P§.§&2§;
   import §>P§.§&s§;
   import §>P§.§1C§;
   import §>P§.§3t§;
   import §>P§.§=!,§;
   import §>P§.§?"Q§;
   import §^>§.b2Vec2;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §super§ implements §""M§
   {
      
      private static const §2!K§:Boolean = false;
      
      public static const §+"%§:int = 1000000000;
      
      public static const §2!M§:int = -1;
      
      public static const §4"D§:int = -2;
       
      
      protected var §,z§:Vector.<§!z§>;
      
      protected var §["M§:Vector.<§-t§>;
      
      protected var §7#7§:Vector.<§""j§>;
      
      protected var §1#$§:§5"2§;
      
      private var §+!z§:int = 1000000000;
      
      public var §]""§:§3"X§;
      
      protected var §#"2§:Vector.<§<!<§>;
      
      protected var §;Q§:§1"s§.Sprite;
      
      protected var §%!X§:§1"s§.Sprite;
      
      protected var §[#5§:§1"s§.Sprite;
      
      protected var §=h§:§1"s§.Sprite;
      
      protected var §#m§:Vector.<Texture>;
      
      protected var §%#-§:Vector.<§&!l§>;
      
      protected var §]g§:int = 1;
      
      protected var §9"§:Vector.<§?#4§>;
      
      protected var §@"z§:int = 0;
      
      private var §4D§:int = 0;
      
      private var §]!w§:int = 0;
      
      private var §4"+§:§^d§;
      
      private var §<!3§:§%!0§;
      
      private var §<t§:Boolean = true;
      
      private var §1"5§:Boolean = true;
      
      private var §9W§:§?!D§;
      
      private var §7"o§:Boolean = false;
      
      public function §super§(param1:§3"X§, param2:§<U§, param3:§1"s§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§,z§ = new Vector.<§!z§>();
         this.§["M§ = new Vector.<§-t§>();
         this.§7#7§ = new Vector.<§""j§>();
         this.§1#$§ = new §5"2§();
         this.§#"2§ = new Vector.<§<!<§>();
         this.§#m§ = new Vector.<Texture>();
         this.§9"§ = new Vector.<§?#4§>();
         this.§4"+§ = new §^d§();
         super();
         this.§]""§ = param1;
         this.§;Q§ = param3;
         this.§;Q§.§#C§ = false;
         this.§1"5§ = true;
         this.§<t§ = true;
         this.§%!X§ = new §1"s§.Sprite();
         this.§[#5§ = new §1"s§.Sprite();
         this.§=h§ = new §1"s§.Sprite();
         this.§;Q§.addChild(this.§%!X§);
         this.§;Q§.addChild(this.§[#5§);
         if(param2.hasGround)
         {
            _loc5_ = (this.§]""§.§;#!§.§-A§ + this.§]""§.§;#!§.§^!u§) / 2;
            _loc6_ = 0 + §"!s§.§&#+§;
            this.addObject(param4,_loc5_,_loc6_,0,§super§.§2!M§);
         }
         this.addLevelObjects(param2);
      }
      
      public function get §1"A§() : §1"s§.Sprite
      {
         return this.§=h§;
      }
      
      public function get §6!>§() : §1"s§.Sprite
      {
         return this.§;Q§;
      }
      
      public function get activeObject() : §4!w§
      {
         return this.§<!3§;
      }
      
      public function get objectCount() : int
      {
         return this.§,z§.length;
      }
      
      public function set §#"s§(param1:§?!D§) : void
      {
         if(param1 != this.§9W§)
         {
            this.§9W§ = param1;
            if(this.§7"o§ && this.§9W§)
            {
               this.§9W§.levelStarted();
            }
         }
      }
      
      public function levelInitialized() : void
      {
         if(!this.§7"o§)
         {
            this.§7"o§ = true;
            if(this.§9W§)
            {
               this.§9W§.levelStarted();
            }
         }
      }
      
      public function §%!`§(param1:String) : §=!,§
      {
         return this.§]""§.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§<!3§)
         {
            _loc3_ = this.§<!3§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function addLevelObjects(param1:§<U§) : void
      {
         var _loc3_:§^d§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§=!,§ = null;
         var _loc6_:§["N§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§]""§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§0+§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§,"n§();
         this.§=L§(true);
         this.§%#-§ = new Vector.<§&!l§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§&_§)
         {
            _loc6_ = param1.§""U§(_loc2_);
            this.§`"A§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§,z§.length > 0)
         {
            this.§[!t§(0,false,true);
         }
         while(this.§7#7§.length > 0)
         {
            this.§-"3§(0);
         }
         this.§,z§ = null;
         this.§["M§ = null;
         this.§7#7§ = null;
         this.§1#$§ = null;
         this.§9"§ = null;
         if(this.§;Q§)
         {
            this.§;Q§.dispose();
            this.§;Q§ = null;
         }
         this.§%!X§ = null;
         this.§[#5§ = null;
         if(this.§=h§)
         {
            this.§=h§.dispose();
            this.§=h§ = null;
         }
         while(this.§#m§.length > 0)
         {
            _loc1_ = this.§#m§.pop();
            this.§]""§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §=L§(param1:Boolean) : void
      {
         this.§%!X§.visible = param1;
      }
      
      private function §,"n§() : void
      {
         var _loc3_:§!z§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§4!w§ = null;
         var _loc6_:§?"Q§ = null;
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
         var _loc21_:§-i§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§4!w§> = new Vector.<§4!w§>();
         for each(_loc3_ in this.§,z§)
         {
            if((_loc5_ = _loc3_ as §4!w§) && _loc5_.§"!1§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.getWidth(),_loc6_.getHeight()) / §3"X§.§;"l§ * Math.sqrt(2);
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
            _loc8_ = this.§]""§.camera.§3#3§ / §3"X§.§;"l§;
            _loc9_ = this.§]""§.camera.§^"V§ / §3"X§.§;"l§;
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
            _loc18_ = this.getLevelTextureScale();
            this.§,!w§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§7!y§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§]""§.textureManager.getTextureFromBitmapData(_loc17_);
            this.§#m§.push(_loc20_);
            (_loc21_ = new §-i§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§%!X§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §7!y§(param1:Vector.<§4!w§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§4!w§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§?"Q§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §%=§)
            {
               this.§5!;§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§4F§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §&2§)
            {
               if((_loc12_ as §&2§).vertices.length == 4)
               {
                  this.§5!;§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§4F§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §&2§).vertices.length == 3)
               {
                  this.§1"v§(_loc12_ as §&2§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§4F§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §3t§)
            {
               this.§3!T§(_loc12_ as §3t§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §5!;§(param1:§?"Q§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §3"X§.§;"l§ * param9;
         var _loc13_:Number = param1.getHeight() / §3"X§.§;"l§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §1"v§(param1:§&2§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §3"X§.§;"l§ * param8,_loc14_.y / §3"X§.§;"l§ * param8);
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
      
      protected function §3!T§(param1:§3t§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §3"X§.§;"l§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §0F§() : String
      {
         return this.§]""§.background.§8!4§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §,!w§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§0F§();
         var _loc5_:§]!h§;
         if(_loc5_ = this.§]""§.backgroundTextureManager.getTexture(_loc4_))
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
      
      protected function addObjectBird(param1:§^d§, param2:§1"s§.Sprite, param3:§[a§, param4:§=!,§, param5:Number = 1.0, param6:Boolean = true) : §%!0§
      {
         var _loc11_:§%!0§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §4"R§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §-e§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §]!F§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §^!C§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §,"h§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §;$§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §9"W§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §7]§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §4;§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §0!6§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §%!0§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§@"z§ > 0;
      }
      
      protected function addObjectPig(param1:§^d§, param2:§1"s§.Sprite, param3:§[a§, param4:§=!,§, param5:Number = 1.0) : §-#'§
      {
         return new §-#'§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §!z§
      {
         this.§4"+§.type = param1;
         this.§4"+§.x = param2;
         this.§4"+§.y = param3;
         this.§4"+§.angle = param4;
         this.§4"+§.§5<§ = 0;
         this.§4"+§.§4#'§ = 0;
         return this.§0+§(this.§4"+§,param5,param6,param7,param8,param9,param10);
      }
      
      public function § "p§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §!z§
      {
         this.§4"+§.type = param1;
         this.§4"+§.x = param2;
         this.§4"+§.y = param3;
         this.§4"+§.angle = param4;
         this.§4"+§.§5<§ = param6;
         this.§4"+§.§4#'§ = param7;
         return this.§0+§(this.§4"+§,param5,false,false,false,param8,param9);
      }
      
      protected function §0+§(param1:§^d§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §!z§
      {
         var _loc8_:§1"s§.Sprite = new §1"s§.Sprite();
         var _loc9_:§!z§;
         if((_loc9_ = this.§&"b§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §4!w§ && (_loc9_ as §4!w§).§"!1§())
         {
            _loc8_.visible = !this.§<t§;
         }
         if(_loc9_ is §%!0§ && !(_loc9_ is §0!6§))
         {
            ++this.§@"z§;
         }
         if(!param7)
         {
            this.§[#5§.§5"?§(_loc8_);
         }
         else
         {
            this.§=h§.§5"?§(_loc8_);
         }
         if(param3)
         {
            this.§]""§.§4^§(_loc9_);
         }
         if(param4 && _loc9_ is §%!0§)
         {
            this.§<!3§ = §%!0§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §&"b§(param1:§^d§, param2:int, param3:§1"s§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §!z§
      {
         var _loc7_:§4!w§ = null;
         if(param2 == §4"D§)
         {
            param2 = this.§+!z§;
            ++this.§+!z§;
         }
         else
         {
            if(param2 >= §+"%§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §+"%§);
            }
            if(this.§ !@§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§!z§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §%!0§)
         {
            ++this.§]!w§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §4!w§;
            if(_loc6_ is §""j§)
            {
               this.§7#7§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§%N§(param2);
                  this.§1#$§[param1.instanceName] = _loc6_;
               }
               this.§,z§.push(_loc6_);
               if(_loc6_ is §-t§)
               {
                  this.§["M§.push(_loc6_);
               }
            }
            if(this.§9W§)
            {
               this.§9W§.§'"-§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function getCommonTextureName() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§^d§, param2:§1"s§.Sprite, param3:§[a§, param4:§=!,§, param5:int, param6:Number = 1.0) : §!z§
      {
         return new §0,§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function §@"D§(param1:§^d§, param2:§1"s§.Sprite, param3:§[a§, param4:§=!,§, param5:int, param6:Number = 1.0) : §!z§
      {
         return new §]"5§(param2,param3,this.§]""§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:§^d§, param2:§1"s§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §!z§
      {
         var _loc5_:§=!,§;
         if(!(_loc5_ = this.§]""§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.getCommonTextureName();
         }
         var _loc7_:§[a§ = this.§]""§.animationManager.getAnimation(_loc6_);
         var _loc8_:§!z§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §=!,§.§="!§)
         {
            _loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §=!,§.§1"H§ || _loc5_.itemType == §=!,§.§ ;§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§<!<§.§,b§,param4);
            }
            else if(_loc5_.itemName == §^!C§.§@M§)
            {
               _loc8_ = this.§@"D§(param1,param2,_loc7_,_loc5_,§<!<§.§2"_§,param4);
            }
            else
            {
               _loc8_ = new §5"v§(param2,_loc7_,this.§]""§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §4!w§(param2,_loc7_,this.§]""§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§]""§.addScore(param1,§"!A§.§ m§,param3,param4,param5,param6);
      }
      
      public function §[#$§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§]""§.particles.§[#$§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §-"8§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§]""§.particles.§-"8§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      protected function §3"z§(param1:§4!w§) : void
      {
         var _loc4_:§&!l§ = null;
         var _loc5_:§&!l§ = null;
         var _loc6_:§!z§ = null;
         var _loc7_:§!z§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§%#-§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§%#-§[_loc3_];
            if(this.§%#-§[_loc3_].id1 == _loc2_ || this.§%#-§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§ "A§)
               {
                  _loc6_ = _loc4_.§ "A§.§5?§().GetUserData() as §!z§;
                  _loc7_ = _loc4_.§ "A§.§1t§().GetUserData() as §!z§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§%#-§.pop();
               if(_loc3_ < this.§%#-§.length)
               {
                  this.§%#-§[_loc3_] = _loc5_;
               }
               this.§+@§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §`"A§(param1:§["N§) : §&!l§
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§&!l§ = §&!l§.§`"A§(param1);
         this.§%#-§.push(_loc4_);
         var _loc5_:§!z§ = this.§ !@§(_loc2_);
         var _loc6_:§!z§ = this.§ !@§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §["N§.§@"#§)
            {
               _loc4_.§ "A§ = this.§]""§.mLevelEngine.mWorld.CreateJoint(_loc4_.§6z§(_loc5_,_loc6_));
            }
            else
            {
               this.§9"§.push(new §?#4§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.§7!n§));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
         return _loc4_;
      }
      
      protected function §+@§(param1:§&!l§) : void
      {
         if(param1.§ "A§)
         {
            this.§]""§.mLevelEngine.mWorld.DestroyJoint(param1.§ "A§);
         }
         if(param1.§<#3§)
         {
            if(this.§[#5§.contains(param1.§<#3§))
            {
               this.§[#5§.removeChild(param1.§<#3§,true);
            }
         }
      }
      
      public function §""L§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§#"2§.push(§<!<§.§"3§(param1,param2,param3));
         this.§4"^§(param1);
      }
      
      protected function §4"^§(param1:int) : void
      {
         §@§.§=Y§("TntExplosions","ChannelExplosions");
      }
      
      public function §7"§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§#"2§.push(§<!<§.§^!8§(param1,param2,param3,param4,param5,param6));
         §@§.§=Y§("TntExplosions","ChannelExplosions");
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§]""§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get timeSpeedMultiplier() : Number
      {
         return this.§]""§.timeSpeedMultiplier;
      }
      
      public function §]1§(param1:Number, param2:Number) : int
      {
         var _loc4_:§4!w§ = null;
         var _loc3_:int = this.§,z§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,z§[_loc3_] as §4!w§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §4!w§
      {
         var _loc4_:§4!w§ = null;
         var _loc3_:int = this.§,z§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§,z§[_loc3_] as §4!w§)
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
      
      public function §]"T§(param1:Number, param2:Number) : Vector.<§4!w§>
      {
         var _loc5_:§4!w§ = null;
         var _loc3_:Vector.<§4!w§> = new Vector.<§4!w§>();
         var _loc4_:int = this.§,z§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§,z§[_loc4_] as §4!w§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §!z§
      {
         return this.§,z§[param1];
      }
      
      public function § !@§(param1:int) : §4!w§
      {
         var _loc2_:§!z§ = null;
         var _loc3_:§4!w§ = null;
         for each(_loc2_ in this.§,z§)
         {
            _loc3_ = _loc2_ as §4!w§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §6A§(param1:String) : §4!w§
      {
         return this.§1#$§[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§,z§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§,z§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§@!b§(param1);
         _loc4_ = this.§7#7§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§7#7§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§4!w§) : §<!x§
      {
         var _loc4_:Number = param3.§?"Z§().GetPosition().x - param1;
         var _loc5_:Number = param3.§?"Z§().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§<!x§;
         (_loc7_ = new §<!x§()).§'"V§ = _loc6_;
         _loc7_.§&#%§ = new Point(param3.§?"Z§().GetPosition().x,param3.§?"Z§().GetPosition().y);
         return _loc7_;
      }
      
      protected function §>u§(param1:§4!w§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function §=l§(param1:§4!w§) : Boolean
      {
         return false;
      }
      
      protected function §""T§() : void
      {
         var _loc1_:§<!<§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§!z§ = null;
         var _loc7_:§4!w§ = null;
         var _loc8_:§<!x§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§1"5§)
         {
            return;
         }
         while(this.§#"2§.length > 0)
         {
            _loc1_ = this.§#"2§.shift();
            _loc2_ = _loc1_.§#!E§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.shakeCameraOnExplosion(_loc1_.push);
            for each(_loc6_ in this.§,z§)
            {
               if((_loc7_ = _loc6_ as §4!w§) && !this.§=l§(_loc7_))
               {
                  if((_loc8_ = this.getExplosionDistanceToObject(_loc3_,_loc4_,_loc7_)).§'"V§ <= _loc1_.§#!E§)
                  {
                     _loc9_ = _loc1_.push * this.getExplosionDamageMultiplier(_loc8_.§'"V§,_loc1_.§#!E§);
                     if(_loc8_.§'"V§ > 0)
                     {
                        (_loc10_ = new Point(_loc8_.§&#%§.x - _loc3_,_loc8_.§&#%§.y - _loc4_)).normalize(1);
                        _loc11_ = _loc9_ * _loc10_.x;
                        _loc12_ = _loc9_ * _loc10_.y;
                        _loc7_.§?"Z§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§&#%§.x,_loc8_.§&#%§.y));
                     }
                  }
                  if(_loc8_.§'"V§ <= _loc1_.§%v§)
                  {
                     _loc13_ = _loc5_ * this.getExplosionDamageMultiplier(_loc8_.§'"V§,_loc1_.§%v§);
                     this.§>u§(_loc7_,_loc13_);
                  }
               }
            }
            this.updateExplosionEffects(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function updateExplosionEffects(param1:§<!<§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§]""§.particles.§[#$§(this.§5%§(param1.type),§#"m§.§=!"§,§;6§.§7!X§,param2,param3,600,"",§;6§.§^X§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§]""§.particles.§[#$§(§;6§.§?"o§,§#"m§.§=!"§,§;6§.§7'§,param2,param3,_loc7_,"",§;6§.§^X§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §5%§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §;6§.§3x§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§4!w§ = null;
         var _loc2_:§!z§ = null;
         var _loc3_:int = this.§,z§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§,z§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§[!t§(_loc3_,true);
            }
            else
            {
               this.updateObject(_loc2_,param1);
               _loc4_ = _loc2_ as §4!w§;
               if(this.§;!O§(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§#!D§(§&s§.§9!x§);
                  }
                  this.§[!t§(_loc3_,!(_loc4_ is §%!0§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§#!D§(§&s§.§9!x§);
                  this.§[!t§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§6"s§(param1);
         this.§""T§();
         if(this.§9W§)
         {
            this.§9W§.update(param1);
         }
      }
      
      protected function updateObject(param1:§!z§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function §@!b§(param1:Number) : void
      {
         var _loc2_:§""j§ = null;
         var _loc3_:int = this.§7#7§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§7#7§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§-"3§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §6"s§(param1:Number) : void
      {
         this.§'"J§(param1);
         this.§8!>§();
      }
      
      protected function §'"J§(param1:Number) : void
      {
         var _loc3_:§?#4§ = null;
         var _loc4_:§!z§ = null;
         var _loc2_:int = this.§9"§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§9"§[_loc2_];
            if(_loc3_.§+"I§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.§-#3§)
                  {
                     _loc4_ = this.§ !@§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  _loc4_ = this.§ !@§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§9"§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §]!Z§(param1:§&!l§) : void
      {
         var _loc2_:§4!w§ = param1.debug_object_1;
         var _loc3_:§4!w§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§ !@§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§ !@§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§<#3§ == null)
         {
            param1.§<#3§ = new §#"b§(4,4,4294901760);
            this.§[#5§.addChild(param1.§<#3§);
         }
         param1.§<#3§.x = _loc4_;
         param1.§<#3§.y = _loc5_;
         param1.§<#3§.width = _loc8_;
         param1.§<#3§.rotation = _loc9_;
      }
      
      protected function §6!?§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §8!>§() : void
      {
         var _loc1_:§&!l§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§%#-§)
         {
            if(§2!K§)
            {
               this.§]!Z§(_loc1_);
            }
            if(_loc1_.§=q§ && _loc1_.§8#,§ && _loc1_.§?o§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §["N§.§>!Z§)
               {
                  _loc4_ = (_loc1_.§ "A§ as b2PrismaticJoint).§4"C§();
                  _loc5_ = (_loc1_.§ "A§ as b2PrismaticJoint).§4"u§();
                  _loc6_ = this.§6!?§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§ "A§ as b2PrismaticJoint).§="c§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §["N§.§^!N§)
               {
                  _loc7_ = (_loc1_.§ "A§ as b2RevoluteJoint).§7!,§();
                  if((_loc5_ = (_loc1_.§ "A§ as b2RevoluteJoint).§4"u§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§ "A§ as b2RevoluteJoint).§="c§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §="f§() : void
      {
         var _loc1_:§&!l§ = null;
         while(this.§%#-§.length > 0)
         {
            _loc1_ = this.§%#-§.pop();
            this.§+@§(_loc1_);
         }
      }
      
      public function §;!O§(param1:§!z§) : Boolean
      {
         this.§###§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §1C§.§?a§) && param1.§?"Z§() && this.§5#+§(param1.§?"Z§().GetPosition().x,param1.§?"Z§().GetPosition().y))
         {
            if(param1 is §4!w§)
            {
               §4!w§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §###§(param1:§!z§) : void
      {
      }
      
      public function §^'§(param1:Number, param2:Number) : Boolean
      {
         return this.§]""§.camera.§>X§(param1,param2);
      }
      
      public function §5#+§(param1:Number, param2:Number) : Boolean
      {
         return this.§]""§.§;#!§.§?!=§(param1,param2);
      }
      
      public function §-"3§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§""j§ = this.§7#7§[param1];
         this.§>U§(_loc2_.sprite);
         this.§7#7§[param1] = null;
         this.§7#7§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§4!w§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§4!w§) : Point
      {
         var _loc2_:Number = param1.§?"Z§().GetPosition().x;
         var _loc3_:Number = param1.§?"Z§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §[!t§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§4!w§ = null;
         var _loc6_:§?#4§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§!z§;
         if((_loc4_ = this.§,z§[param1]) is §-#'§)
         {
            ++this.§4D§;
         }
         else if(_loc4_ is §%!0§)
         {
            --this.§@"z§;
         }
         if(_loc4_ == this.§<!3§)
         {
            this.§<!3§ = null;
         }
         if(_loc4_ is §4!w§)
         {
            _loc5_ = _loc4_ as §4!w§;
            if(param2)
            {
               _loc7_ = this.getScoreTextPosition(_loc5_);
               _loc8_ = §;6§.§@# §(_loc5_.itemName);
               _loc9_ = this.shouldShowScoreText(_loc5_);
               this.§]""§.addScore(_loc5_.levelItem.score,§"!A§.§^%§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this);
            }
            this.§3"z§(_loc5_);
            for each(_loc6_ in this.§9"§)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.§+"I§ = true;
               }
            }
            delete this.§1#$§[_loc5_.§8"J§.instanceName];
         }
         this.§>U§(_loc4_.sprite);
         this.§,z§[param1] = null;
         this.§,z§.splice(param1,1);
         if(_loc4_ is §-t§)
         {
            if((_loc10_ = this.§["M§.indexOf(_loc4_)) >= 0)
            {
               this.§["M§.splice(_loc10_,1);
            }
         }
         if(this.§9W§)
         {
            this.§9W§.§2N§(_loc4_);
         }
         this.§2N§(_loc4_);
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function §2N§(param1:§!z§) : void
      {
         var _loc2_:§4!w§ = null;
         var _loc3_:§""'§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:§4!w§ = null;
         if(param1 is §4!w§)
         {
            _loc2_ = param1 as §4!w§;
            _loc3_ = _loc2_.§8"J§ as §""'§;
            if(_loc3_)
            {
               for(_loc4_ in _loc3_.§&!X§.§`!i§)
               {
                  _loc5_ = _loc3_.§&!X§.§`!i§[_loc4_];
                  _loc6_ = this.§6A§(_loc4_);
                  this.performTriggerActionOnObject(_loc6_,_loc5_,"onDestroyed");
               }
            }
         }
      }
      
      protected function performTriggerActionOnObject(param1:§4!w§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§9"2§(param2,param3,this);
         }
      }
      
      private function §>U§(param1:§1"s§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§!z§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§[!t§(this.§,z§.indexOf(param1),param2);
         }
      }
      
      public function § "5§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]""§.§if §();
         }
      }
      
      public function §6X§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§]""§.§6X§(param1,param2,param3,param4);
      }
      
      public function §6#3§(param1:Number, param2:Number) : void
      {
         this.§;Q§.x = -param1;
         this.§;Q§.y = -param2;
         this.§=h§.x = -param1;
         this.§=h§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§!z§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,z§.length)
         {
            _loc2_ = this.§,z§[_loc1_];
            if(_loc2_ && _loc2_ is §-#'§ && (_loc2_ as §-#'§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §[!r§(param1:Boolean = false) : int
      {
         var _loc4_:§-#'§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§,z§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,z§[_loc3_] as §-#'§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§!!r§ && !_loc4_.§"!J§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §8l§() : int
      {
         var _loc2_:§4!w§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,z§)
         {
            if(_loc2_ is §5"v§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §,!?§() : int
      {
         var _loc2_:§4!w§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,z§)
         {
            if(_loc2_ && _loc2_.§"!1§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§-#'§ = null;
         var _loc2_:int = this.§,z§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,z§[_loc2_] as §-#'§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §&O§() : Boolean
      {
         var _loc2_:§%!0§ = null;
         var _loc1_:int = this.§,z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,z§[_loc1_] as §%!0§;
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
         var _loc2_:§4!w§ = null;
         var _loc1_:int = this.§,z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,z§[_loc1_] as §4!w§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§8!3§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§[d§())
               {
                  return false;
               }
               if(_loc2_ is §%!0§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §`4§(param1:Boolean = false) : §-#'§
      {
         var _loc7_:§-#'§ = null;
         var _loc2_:int = this.§,z§.length;
         var _loc3_:int = this.§[!r§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§,z§[_loc6_] as §-#'§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§!!r§ && !_loc7_.§"!J§)
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
      
      public function §0V§() : int
      {
         var _loc3_:§4!w§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§,z§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,z§[_loc2_] as §4!w§;
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
         return int(_loc1_ + this.§]""§.slingshot.§0V§());
      }
      
      protected function §`S§(param1:§!z§, param2:§!z§) : Boolean
      {
         if(param1 is §4!w§ && param2 is §4!w§ && !(param1 as §4!w§).§54§() && !(param2 as §4!w§).§54§())
         {
            return false;
         }
         return true;
      }
      
      protected function hasMinimumCollisionSpeed(param1:§!z§, param2:§!z§) : Boolean
      {
         return this.§`S§(param1,param2);
      }
      
      public function §5r§() : void
      {
         this.§@"z§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:§4!w§, param2:§4!w§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §%!0§)
         {
            return 1;
         }
         if(param1 is §%!0§)
         {
            return Number(param1.§2!^§(param2.§,T§()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(param1:§4!w§, param2:§4!w§) : Number
      {
         if(param2 is §%!0§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §`"c§(param1:§4!w§, param2:§4!w§) : Number
      {
         var _loc4_:Number = this.getCollisionForceFactor(param1,param2);
         var _loc5_:Number = this.getCollisionForceFactor(param2,param1);
         var _loc6_:Number = param1.§?"Z§().GetMass();
         var _loc7_:Number = param2.§?"Z§().GetMass();
         var _loc8_:b2Vec2 = param1.§2U§();
         var _loc9_:b2Vec2 = param2.§2U§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function objectCollision(param1:§!z§, param2:§!z§, param3:b2Contact) : Boolean
      {
         var _loc13_:§&!l§ = null;
         var _loc14_:b2JointEdge = null;
         var _loc15_:b2JointEdge = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         if(!this.§1"5§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§4!w§ = param1 as §4!w§;
         var _loc5_:§4!w§ = param2 as §4!w§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§@""§)
         {
            _loc5_.applyDamage(_loc5_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§@""§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(_loc4_ is §%!0§ && _loc5_ is §%!0§)
         {
            return true;
         }
         var _loc6_:Number = this.§`"c§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
         var _loc9_:Number = this.getCollisionDamageFactor(_loc4_,_loc5_);
         var _loc10_:Number = this.getCollisionDamageFactor(_loc5_,_loc4_);
         var _loc11_:Number = _loc4_.applyDamage(_loc6_ * _loc10_,this,_loc5_,true);
         var _loc12_:Number = _loc5_.applyDamage(_loc6_ * _loc9_,this,_loc4_,true);
         for each(_loc13_ in this.§%#-§)
         {
            if(_loc13_.isBreakable && _loc6_ >= _loc13_.minBreakForce)
            {
               _loc14_ = _loc4_.§?"Z§().GetJointList();
               _loc15_ = _loc5_.§?"Z§().GetJointList();
               if(_loc14_ != null && _loc14_.§^P§ == _loc13_.§ "A§ || _loc15_ != null && _loc15_.§^P§ == _loc13_.§ "A§)
               {
                  this.§+@§(_loc13_);
               }
            }
         }
         if(_loc11_ < _loc7_)
         {
            _loc5_.causedDamageToObjects();
         }
         if(_loc12_ < _loc8_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc4_ is §%!0§)
         {
            if(_loc12_ <= 0)
            {
               _loc16_ = _loc4_.§%E§(_loc5_.§,T§());
               this.§ $§(_loc4_ as §%!0§,_loc6_ * _loc9_,_loc8_,_loc16_);
               return false;
            }
         }
         if(_loc5_ is §%!0§)
         {
            if(_loc11_ <= 0)
            {
               _loc17_ = _loc5_.§%E§(_loc4_.§,T§());
               this.§ $§(_loc5_ as §%!0§,_loc6_ * _loc10_,_loc7_,_loc17_);
               return false;
            }
         }
         return _loc11_ <= 0 && _loc12_ <= 0;
      }
      
      public function §%&§(param1:§!z§, param2:§!z§) : void
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
      
      protected function § $§(param1:§%!0§, param2:Number, param3:Number, param4:Number) : void
      {
         if(param2 == 0)
         {
            return;
         }
         var _loc5_:Number = (param2 - param3) / param2;
         if(isNaN(_loc5_))
         {
            _loc5_ = 0;
         }
         if((_loc5_ *= param4) > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:b2Vec2 = param1.§2U§();
         param1.§6"x§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §0"&§() : void
      {
         var _loc2_:§4!w§ = null;
         var _loc1_:int = this.§,z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,z§[_loc1_] as §4!w§;
            if(_loc2_ != null && _loc2_ is §-#'§)
            {
               this.§[!t§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §+"k§() : void
      {
         var _loc2_:§4!w§ = null;
         var _loc1_:int = this.§,z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,z§[_loc1_] as §4!w§;
            if(_loc2_ != null && _loc2_.final())
            {
               this.§[!t§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §%"S§() : int
      {
         return this.§,z§.length;
      }
      
      public function §"!3§(param1:§<U§) : void
      {
         var _loc4_:§4!w§ = null;
         var _loc5_:§^d§ = null;
         var _loc6_:§["N§ = null;
         var _loc7_:§&!l§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,z§.length)
         {
            if(_loc4_ = this.§,z§[_loc2_] as §4!w§)
            {
               if(_loc4_.§'"8§)
               {
                  if(!_loc4_.§8!3§())
                  {
                     (_loc5_ = new §^d§()).angle = _loc4_.§4F§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§?"Z§().GetPosition().x;
                     _loc5_.y = _loc4_.§?"Z§().GetPosition().y;
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§%#-§.length)
         {
            _loc7_ = this.§%#-§[_loc3_];
            _loc6_ = new §["N§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§^Q§,_loc7_.§8#,§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§?o§,_loc7_.motorSpeed,_loc7_.§=q§,_loc7_.maxTorque);
            param1.§+"#§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §["e§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§,z§.length)
         {
            if(this.§,z§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§,z§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§4!w§ = null;
         this.§<t§ = param1;
         this.§=L§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,z§.length)
         {
            _loc3_ = this.§,z§[_loc2_] as §4!w§;
            if(_loc3_ && _loc3_.§"!1§())
            {
               _loc3_.sprite.visible = !this.§<t§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§1"5§ = param1;
      }
      
      public function §4+§() : int
      {
         return this.§]!w§;
      }
      
      public function §3Q§() : int
      {
         return this.§4D§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§]""§.damageScoreMultiplier;
      }
   }
}
