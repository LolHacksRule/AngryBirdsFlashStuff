package §!r§
{
   import §!!k§.§'!j§;
   import §!!k§.§1!^§;
   import §"§.§+#&§;
   import §"§.§0!0§;
   import §"§.§;!E§;
   import §#g§.§!+§;
   import §#g§.§'<§;
   import §#g§.§1!H§;
   import §#g§.§7""§;
   import §#g§.§<b§;
   import §#g§.§["%§;
   import §#g§.§^i§;
   import §&"s§.Texture;
   import §+d§.§2!g§;
   import §,B§.§for§;
   import §7"A§.b2Vec2;
   import §;"E§.§>"§;
   import §=![§.b2JointEdge;
   import §=![§.b2PrismaticJoint;
   import §=![§.b2RevoluteJoint;
   import §=G§.§0"Z§;
   import §=G§.§6W§;
   import §=G§.§9v§;
   import §=G§.§="x§;
   import §=G§.§=u§;
   import §^9§.§3o§;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import §`"1§.§=Q§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §null §.§>#-§;
   import §use§.§,!u§;
   import §use§.§-"z§;
   import §use§.Sprite;
   
   public class §9"f§ implements §'=§
   {
      
      private static const §,!V§:Boolean = false;
      
      public static const §+@§:int = 1000000000;
      
      public static const §?y§:int = -1;
      
      public static const §["_§:int = -2;
       
      
      protected var §7"q§:Vector.<§?!x§>;
      
      protected var §2!r§:Vector.<§03§>;
      
      protected var §;!p§:Vector.<§3o§>;
      
      protected var §7!_§:§2!g§;
      
      private var §7"N§:int = 1000000000;
      
      public var §+!E§:§;!E§;
      
      protected var §4#0§:Vector.<§3c§>;
      
      protected var §05§:§use§.Sprite;
      
      protected var §>"j§:§use§.Sprite;
      
      protected var §!!T§:§use§.Sprite;
      
      protected var §0#+§:§use§.Sprite;
      
      protected var §9x§:Vector.<Texture>;
      
      protected var §2"?§:Vector.<§0"Z§>;
      
      protected var §1D§:int = 1;
      
      protected var §`!C§:Vector.<§="x§>;
      
      protected var §4!E§:int = 0;
      
      private var §95§:int = 0;
      
      private var §9h§:int = 0;
      
      private var §=l§:§9v§;
      
      private var §>!]§:§;!T§;
      
      private var §%"J§:Boolean = true;
      
      private var §>"R§:Boolean = true;
      
      private var §>?§:§for§;
      
      private var §&!R§:Boolean = false;
      
      public function §9"f§(param1:§;!E§, param2:§>#-§, param3:§use§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§7"q§ = new Vector.<§?!x§>();
         this.§2!r§ = new Vector.<§03§>();
         this.§;!p§ = new Vector.<§3o§>();
         this.§7!_§ = new §2!g§();
         this.§4#0§ = new Vector.<§3c§>();
         this.§9x§ = new Vector.<Texture>();
         this.§`!C§ = new Vector.<§="x§>();
         this.§=l§ = new §9v§();
         super();
         this.§+!E§ = param1;
         this.§05§ = param3;
         this.§05§.§^!G§ = false;
         this.§>"R§ = true;
         this.§%"J§ = true;
         this.§>"j§ = new §use§.Sprite();
         this.§!!T§ = new §use§.Sprite();
         this.§0#+§ = new §use§.Sprite();
         this.§05§.addChild(this.§>"j§);
         this.§05§.addChild(this.§!!T§);
         if(param2.hasGround)
         {
            _loc5_ = (this.§+!E§.§""P§.§ !<§ + this.§+!E§.§""P§.§&"g§) / 2;
            _loc6_ = 0 + §+#&§.§!"U§;
            this.addObject(param4,_loc5_,_loc6_,0,§9"f§.§?y§);
         }
         this.addLevelObjects(param2);
      }
      
      public function get §1!+§() : §use§.Sprite
      {
         return this.§0#+§;
      }
      
      public function get §2F§() : §use§.Sprite
      {
         return this.§05§;
      }
      
      public function get activeObject() : §0N§
      {
         return this.§>!]§;
      }
      
      public function get objectCount() : int
      {
         return this.§7"q§.length;
      }
      
      public function set §6"B§(param1:§for§) : void
      {
         if(param1 != this.§>?§)
         {
            this.§>?§ = param1;
            if(this.§&!R§ && this.§>?§)
            {
               this.§>?§.levelStarted();
            }
         }
      }
      
      public function levelInitialized() : void
      {
         if(!this.§&!R§)
         {
            this.§&!R§ = true;
            if(this.§>?§)
            {
               this.§>?§.levelStarted();
            }
         }
      }
      
      public function §%"@§(param1:String) : §["%§
      {
         return this.§+!E§.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§>!]§)
         {
            _loc3_ = this.§>!]§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function addLevelObjects(param1:§>#-§) : void
      {
         var _loc3_:§9v§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§["%§ = null;
         var _loc6_:§=u§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§+!E§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§<"n§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§["3§();
         this.§!?§(true);
         this.§2"?§ = new Vector.<§0"Z§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§8!;§)
         {
            _loc6_ = param1.§2"D§(_loc2_);
            this.§@"j§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§7"q§.length > 0)
         {
            this.§+!Y§(0,false,true);
         }
         while(this.§;!p§.length > 0)
         {
            this.§`"X§(0);
         }
         this.§7"q§ = null;
         this.§2!r§ = null;
         this.§;!p§ = null;
         this.§7!_§ = null;
         this.§`!C§ = null;
         if(this.§05§)
         {
            this.§05§.dispose();
            this.§05§ = null;
         }
         this.§>"j§ = null;
         this.§!!T§ = null;
         if(this.§0#+§)
         {
            this.§0#+§.dispose();
            this.§0#+§ = null;
         }
         while(this.§9x§.length > 0)
         {
            _loc1_ = this.§9x§.pop();
            this.§+!E§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §!?§(param1:Boolean) : void
      {
         this.§>"j§.visible = param1;
      }
      
      private function §["3§() : void
      {
         var _loc3_:§?!x§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§0N§ = null;
         var _loc6_:§'<§ = null;
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
         var _loc21_:§,!u§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§0N§> = new Vector.<§0N§>();
         for each(_loc3_ in this.§7"q§)
         {
            if((_loc5_ = _loc3_ as §0N§) && _loc5_.§^[§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.getWidth(),_loc6_.getHeight()) / §;!E§.§0"?§ * Math.sqrt(2);
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
            _loc8_ = this.§+!E§.camera.§<!r§ / §;!E§.§0"?§;
            _loc9_ = this.§+!E§.camera.§+"&§ / §;!E§.§0"?§;
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
            this.§3"e§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§8"@§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§+!E§.textureManager.getTextureFromBitmapData(_loc17_);
            this.§9x§.push(_loc20_);
            (_loc21_ = new §,!u§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§>"j§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §8"@§(param1:Vector.<§0N§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§0N§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§'<§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §1!H§)
            {
               this.§["J§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<"g§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §7""§)
            {
               if((_loc12_ as §7""§).vertices.length == 4)
               {
                  this.§["J§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<"g§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §7""§).vertices.length == 3)
               {
                  this.§,R§(_loc12_ as §7""§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<"g§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §<b§)
            {
               this.§@"m§(_loc12_ as §<b§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §["J§(param1:§'<§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §;!E§.§0"?§ * param9;
         var _loc13_:Number = param1.getHeight() / §;!E§.§0"?§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §,R§(param1:§7""§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §;!E§.§0"?§ * param8,_loc14_.y / §;!E§.§0"?§ * param8);
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
      
      protected function §@"m§(param1:§<b§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §;!E§.§0"?§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §0"L§() : String
      {
         return this.§+!E§.background.§8g§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §3"e§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§0"L§();
         var _loc5_:§'!j§;
         if(_loc5_ = this.§+!E§.backgroundTextureManager.getTexture(_loc4_))
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
      
      protected function addObjectBird(param1:§9v§, param2:§use§.Sprite, param3:§1!^§, param4:§["%§, param5:Number = 1.0, param6:Boolean = true) : §;!T§
      {
         var _loc11_:§;!T§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §0"W§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §?"G§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §@k§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §,F§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §9c§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §4-§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §6!G§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §'!m§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §4?§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §0"t§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §;!T§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§4!E§ > 0;
      }
      
      protected function addObjectPig(param1:§9v§, param2:§use§.Sprite, param3:§1!^§, param4:§["%§, param5:Number = 1.0) : §4%§
      {
         return new §4%§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §?!x§
      {
         this.§=l§.type = param1;
         this.§=l§.x = param2;
         this.§=l§.y = param3;
         this.§=l§.angle = param4;
         this.§=l§.§;"?§ = 0;
         this.§=l§.§9"g§ = 0;
         return this.§<"n§(this.§=l§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §]1§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §?!x§
      {
         this.§=l§.type = param1;
         this.§=l§.x = param2;
         this.§=l§.y = param3;
         this.§=l§.angle = param4;
         this.§=l§.§;"?§ = param6;
         this.§=l§.§9"g§ = param7;
         return this.§<"n§(this.§=l§,param5,false,false,false,param8,param9);
      }
      
      protected function §<"n§(param1:§9v§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §?!x§
      {
         var _loc8_:§use§.Sprite = new §use§.Sprite();
         var _loc9_:§?!x§;
         if((_loc9_ = this.§-!2§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §0N§ && (_loc9_ as §0N§).§^[§())
         {
            _loc8_.visible = !this.§%"J§;
         }
         if(_loc9_ is §;!T§ && !(_loc9_ is §0"t§))
         {
            ++this.§4!E§;
         }
         if(!param7)
         {
            this.§!!T§.§]!d§(_loc8_);
         }
         else
         {
            this.§0#+§.§]!d§(_loc8_);
         }
         if(param3)
         {
            this.§+!E§.§]W§(_loc9_);
         }
         if(param4 && _loc9_ is §;!T§)
         {
            this.§>!]§ = §;!T§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §-!2§(param1:§9v§, param2:int, param3:§use§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §?!x§
      {
         var _loc7_:§0N§ = null;
         if(param2 == §["_§)
         {
            param2 = this.§7"N§;
            ++this.§7"N§;
         }
         else
         {
            if(param2 >= §+@§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §+@§);
            }
            if(this.§+S§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§?!x§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §;!T§)
         {
            ++this.§9h§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §0N§;
            if(_loc6_ is §3o§)
            {
               this.§;!p§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§>8§(param2);
                  this.§7!_§[param1.instanceName] = _loc6_;
               }
               this.§7"q§.push(_loc6_);
               if(_loc6_ is §03§)
               {
                  this.§2!r§.push(_loc6_);
               }
            }
            if(this.§>?§)
            {
               this.§>?§.§^"$§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function getCommonTextureName() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§9v§, param2:§use§.Sprite, param3:§1!^§, param4:§["%§, param5:int, param6:Number = 1.0) : §?!x§
      {
         return new §5r§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function §-s§(param1:§9v§, param2:§use§.Sprite, param3:§1!^§, param4:§["%§, param5:int, param6:Number = 1.0) : §?!x§
      {
         return new §0_§(param2,param3,this.§+!E§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:§9v§, param2:§use§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §?!x§
      {
         var _loc5_:§["%§;
         if(!(_loc5_ = this.§+!E§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.getCommonTextureName();
         }
         var _loc7_:§1!^§ = this.§+!E§.animationManager.getAnimation(_loc6_);
         var _loc8_:§?!x§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §["%§.§7##§)
         {
            _loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §["%§.§9!y§ || _loc5_.itemType == §["%§.§^!v§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§3c§.§2!G§,param4);
            }
            else if(_loc5_.itemName == §,F§.§^!D§)
            {
               _loc8_ = this.§-s§(param1,param2,_loc7_,_loc5_,§3c§.§4f§,param4);
            }
            else
            {
               _loc8_ = new §<!^§(param2,_loc7_,this.§+!E§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §0N§(param2,_loc7_,this.§+!E§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§+!E§.addScore(param1,§0!0§.§&#-§,param3,param4,param5,param6);
      }
      
      public function §>#1§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§+!E§.particles.§>#1§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §1#-§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§+!E§.particles.§1#-§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      protected function §[m§(param1:§0N§) : void
      {
         var _loc4_:§0"Z§ = null;
         var _loc5_:§0"Z§ = null;
         var _loc6_:§?!x§ = null;
         var _loc7_:§?!x§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§2"?§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§2"?§[_loc3_];
            if(this.§2"?§[_loc3_].id1 == _loc2_ || this.§2"?§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§ !7§)
               {
                  _loc6_ = _loc4_.§ !7§.§!Q§().GetUserData() as §?!x§;
                  _loc7_ = _loc4_.§ !7§.§>Y§().GetUserData() as §?!x§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§2"?§.pop();
               if(_loc3_ < this.§2"?§.length)
               {
                  this.§2"?§[_loc3_] = _loc5_;
               }
               this.§'#+§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §@"j§(param1:§=u§) : §0"Z§
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§0"Z§ = §0"Z§.§@"j§(param1);
         this.§2"?§.push(_loc4_);
         var _loc5_:§?!x§ = this.§+S§(_loc2_);
         var _loc6_:§?!x§ = this.§+S§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §=u§.§ !+§)
            {
               _loc4_.§ !7§ = this.§+!E§.mLevelEngine.mWorld.CreateJoint(_loc4_.§[!?§(_loc5_,_loc6_));
            }
            else
            {
               this.§`!C§.push(new §="x§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.§"!F§));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
         return _loc4_;
      }
      
      protected function §'#+§(param1:§0"Z§) : void
      {
         if(param1.§ !7§)
         {
            this.§+!E§.mLevelEngine.mWorld.DestroyJoint(param1.§ !7§);
         }
         if(param1.§<v§)
         {
            if(this.§!!T§.contains(param1.§<v§))
            {
               this.§!!T§.removeChild(param1.§<v§,true);
            }
         }
      }
      
      public function §6!C§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§4#0§.push(§3c§.§#"S§(param1,param2,param3));
         this.§]B§(param1);
      }
      
      protected function §]B§(param1:int) : void
      {
         §=Q§.§`!A§("TntExplosions","ChannelExplosions");
      }
      
      public function §?#6§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§4#0§.push(§3c§.§!!S§(param1,param2,param3,param4,param5,param6));
         §=Q§.§`!A§("TntExplosions","ChannelExplosions");
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§+!E§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get timeSpeedMultiplier() : Number
      {
         return this.§+!E§.timeSpeedMultiplier;
      }
      
      public function §["]§(param1:Number, param2:Number) : int
      {
         var _loc4_:§0N§ = null;
         var _loc3_:int = this.§7"q§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7"q§[_loc3_] as §0N§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §0N§
      {
         var _loc4_:§0N§ = null;
         var _loc3_:int = this.§7"q§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§7"q§[_loc3_] as §0N§)
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
      
      public function §&!y§(param1:Number, param2:Number) : Vector.<§0N§>
      {
         var _loc5_:§0N§ = null;
         var _loc3_:Vector.<§0N§> = new Vector.<§0N§>();
         var _loc4_:int = this.§7"q§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§7"q§[_loc4_] as §0N§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §?!x§
      {
         return this.§7"q§[param1];
      }
      
      public function §+S§(param1:int) : §0N§
      {
         var _loc2_:§?!x§ = null;
         var _loc3_:§0N§ = null;
         for each(_loc2_ in this.§7"q§)
         {
            _loc3_ = _loc2_ as §0N§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §5!"§(param1:String) : §0N§
      {
         return this.§7!_§[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§7"q§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§7"q§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§'#3§(param1);
         _loc4_ = this.§;!p§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§;!p§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§0N§) : §>"§
      {
         var _loc4_:Number = param3.§3"s§().GetPosition().x - param1;
         var _loc5_:Number = param3.§3"s§().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§>"§;
         (_loc7_ = new §>"§()).§4!4§ = _loc6_;
         _loc7_.§;!@§ = new Point(param3.§3"s§().GetPosition().x,param3.§3"s§().GetPosition().y);
         return _loc7_;
      }
      
      protected function §%#1§(param1:§0N§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function §<!c§(param1:§0N§) : Boolean
      {
         return false;
      }
      
      protected function §#Q§() : void
      {
         var _loc1_:§3c§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§?!x§ = null;
         var _loc7_:§0N§ = null;
         var _loc8_:§>"§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§>"R§)
         {
            return;
         }
         while(this.§4#0§.length > 0)
         {
            _loc1_ = this.§4#0§.shift();
            _loc2_ = _loc1_.§9"^§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.shakeCameraOnExplosion(_loc1_.push);
            for each(_loc6_ in this.§7"q§)
            {
               if((_loc7_ = _loc6_ as §0N§) && !this.§<!c§(_loc7_))
               {
                  if((_loc8_ = this.getExplosionDistanceToObject(_loc3_,_loc4_,_loc7_)).§4!4§ <= _loc1_.§9"^§)
                  {
                     _loc9_ = _loc1_.push * this.getExplosionDamageMultiplier(_loc8_.§4!4§,_loc1_.§9"^§);
                     if(_loc8_.§4!4§ > 0)
                     {
                        (_loc10_ = new Point(_loc8_.§;!@§.x - _loc3_,_loc8_.§;!@§.y - _loc4_)).normalize(1);
                        _loc11_ = _loc9_ * _loc10_.x;
                        _loc12_ = _loc9_ * _loc10_.y;
                        _loc7_.§3"s§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§;!@§.x,_loc8_.§;!@§.y));
                     }
                  }
                  if(_loc8_.§4!4§ <= _loc1_.§super§)
                  {
                     _loc13_ = _loc5_ * this.getExplosionDamageMultiplier(_loc8_.§4!4§,_loc1_.§super§);
                     this.§%#1§(_loc7_,_loc13_);
                  }
               }
            }
            this.updateExplosionEffects(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function updateExplosionEffects(param1:§3c§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§+!E§.particles.§>#1§(this.§3!L§(param1.type),§^#'§.§&5§,§?"E§.§`"H§,param2,param3,600,"",§?"E§.§?"x§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§+!E§.particles.§>#1§(§?"E§.§6"q§,§^#'§.§&5§,§?"E§.§3y§,param2,param3,_loc7_,"",§?"E§.§?"x§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §3!L§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §?"E§.§5J§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§0N§ = null;
         var _loc2_:§?!x§ = null;
         var _loc3_:int = this.§7"q§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§7"q§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§+!Y§(_loc3_,true);
            }
            else
            {
               this.updateObject(_loc2_,param1);
               _loc4_ = _loc2_ as §0N§;
               if(this.§0r§(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§!5§(§^i§.§=`§);
                  }
                  this.§+!Y§(_loc3_,!(_loc4_ is §;!T§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§!5§(§^i§.§=`§);
                  this.§+!Y§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§^T§(param1);
         this.§#Q§();
         if(this.§>?§)
         {
            this.§>?§.update(param1);
         }
      }
      
      protected function updateObject(param1:§?!x§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function §'#3§(param1:Number) : void
      {
         var _loc2_:§3o§ = null;
         var _loc3_:int = this.§;!p§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§;!p§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§`"X§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §^T§(param1:Number) : void
      {
         this.§&§(param1);
         this.§!h§();
      }
      
      protected function §&§(param1:Number) : void
      {
         var _loc3_:§="x§ = null;
         var _loc4_:§?!x§ = null;
         var _loc2_:int = this.§`!C§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§`!C§[_loc2_];
            if(_loc3_.§9[§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.§7!U§)
                  {
                     _loc4_ = this.§+S§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  _loc4_ = this.§+S§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§`!C§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §]#'§(param1:§0"Z§) : void
      {
         var _loc2_:§0N§ = param1.debug_object_1;
         var _loc3_:§0N§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§+S§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§+S§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§<v§ == null)
         {
            param1.§<v§ = new §-"z§(4,4,4294901760);
            this.§!!T§.addChild(param1.§<v§);
         }
         param1.§<v§.x = _loc4_;
         param1.§<v§.y = _loc5_;
         param1.§<v§.width = _loc8_;
         param1.§<v§.rotation = _loc9_;
      }
      
      protected function §"O§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §!h§() : void
      {
         var _loc1_:§0"Z§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§2"?§)
         {
            if(§,!V§)
            {
               this.§]#'§(_loc1_);
            }
            if(_loc1_.§-!J§ && _loc1_.§!"<§ && _loc1_.§[d§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §=u§.§##%§)
               {
                  _loc4_ = (_loc1_.§ !7§ as b2PrismaticJoint).§6R§();
                  _loc5_ = (_loc1_.§ !7§ as b2PrismaticJoint).§null§();
                  _loc6_ = this.§"O§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§ !7§ as b2PrismaticJoint).§%!v§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §=u§.§3"S§)
               {
                  _loc7_ = (_loc1_.§ !7§ as b2RevoluteJoint).§'R§();
                  if((_loc5_ = (_loc1_.§ !7§ as b2RevoluteJoint).§null§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§ !7§ as b2RevoluteJoint).§%!v§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §<"T§() : void
      {
         var _loc1_:§0"Z§ = null;
         while(this.§2"?§.length > 0)
         {
            _loc1_ = this.§2"?§.pop();
            this.§'#+§(_loc1_);
         }
      }
      
      public function §0r§(param1:§?!x§) : Boolean
      {
         this.§'"q§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §!+§.§-"7§) && param1.§3"s§() && this.§1y§(param1.§3"s§().GetPosition().x,param1.§3"s§().GetPosition().y))
         {
            if(param1 is §0N§)
            {
               §0N§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §'"q§(param1:§?!x§) : void
      {
      }
      
      public function §,!7§(param1:Number, param2:Number) : Boolean
      {
         return this.§+!E§.camera.§`"J§(param1,param2);
      }
      
      public function §1y§(param1:Number, param2:Number) : Boolean
      {
         return this.§+!E§.§""P§.§+"b§(param1,param2);
      }
      
      public function §`"X§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§3o§ = this.§;!p§[param1];
         this.§]M§(_loc2_.sprite);
         this.§;!p§[param1] = null;
         this.§;!p§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§0N§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§0N§) : Point
      {
         var _loc2_:Number = param1.§3"s§().GetPosition().x;
         var _loc3_:Number = param1.§3"s§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §+!Y§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§0N§ = null;
         var _loc6_:§="x§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§?!x§;
         if((_loc4_ = this.§7"q§[param1]) is §4%§)
         {
            ++this.§95§;
         }
         else if(_loc4_ is §;!T§)
         {
            --this.§4!E§;
         }
         if(_loc4_ == this.§>!]§)
         {
            this.§>!]§ = null;
         }
         if(_loc4_ is §0N§)
         {
            _loc5_ = _loc4_ as §0N§;
            if(param2)
            {
               _loc7_ = this.getScoreTextPosition(_loc5_);
               _loc8_ = §?"E§.§@G§(_loc5_.itemName);
               _loc9_ = this.shouldShowScoreText(_loc5_);
               this.§+!E§.addScore(_loc5_.levelItem.score,§0!0§.§[!Y§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this);
            }
            this.§[m§(_loc5_);
            for each(_loc6_ in this.§`!C§)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.§9[§ = true;
               }
            }
            delete this.§7!_§[_loc5_.§4##§.instanceName];
         }
         this.§]M§(_loc4_.sprite);
         this.§7"q§[param1] = null;
         this.§7"q§.splice(param1,1);
         if(_loc4_ is §03§)
         {
            if((_loc10_ = this.§2!r§.indexOf(_loc4_)) >= 0)
            {
               this.§2!r§.splice(_loc10_,1);
            }
         }
         if(this.§>?§)
         {
            this.§>?§.§;"u§(_loc4_);
         }
         this.§;"u§(_loc4_);
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function §;"u§(param1:§?!x§) : void
      {
         var _loc2_:§0N§ = null;
         var _loc3_:§6W§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:§0N§ = null;
         if(param1 is §0N§)
         {
            _loc2_ = param1 as §0N§;
            _loc3_ = _loc2_.§4##§ as §6W§;
            if(_loc3_)
            {
               for(_loc4_ in _loc3_.§<"t§.§###§)
               {
                  _loc5_ = _loc3_.§<"t§.§###§[_loc4_];
                  _loc6_ = this.§5!"§(_loc4_);
                  this.performTriggerActionOnObject(_loc6_,_loc5_,"onDestroyed");
               }
            }
         }
      }
      
      protected function performTriggerActionOnObject(param1:§0N§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§&"6§(param2,param3,this);
         }
      }
      
      private function §]M§(param1:§use§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§?!x§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§+!Y§(this.§7"q§.indexOf(param1),param2);
         }
      }
      
      public function §6"p§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+!E§.§[>§();
         }
      }
      
      public function §6!m§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§+!E§.§6!m§(param1,param2,param3,param4);
      }
      
      public function §7!G§(param1:Number, param2:Number) : void
      {
         this.§05§.x = -param1;
         this.§05§.y = -param2;
         this.§0#+§.x = -param1;
         this.§0#+§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§?!x§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7"q§.length)
         {
            _loc2_ = this.§7"q§[_loc1_];
            if(_loc2_ && _loc2_ is §4%§ && (_loc2_ as §4%§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §1"?§(param1:Boolean = false) : int
      {
         var _loc4_:§4%§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§7"q§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7"q§[_loc3_] as §4%§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§53§ && !_loc4_.§++§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §7b§() : int
      {
         var _loc2_:§0N§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7"q§)
         {
            if(_loc2_ is §<!^§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §<!#§() : int
      {
         var _loc2_:§0N§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7"q§)
         {
            if(_loc2_ && _loc2_.§^[§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§4%§ = null;
         var _loc2_:int = this.§7"q§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7"q§[_loc2_] as §4%§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §6F§() : Boolean
      {
         var _loc2_:§;!T§ = null;
         var _loc1_:int = this.§7"q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7"q§[_loc1_] as §;!T§;
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
         var _loc2_:§0N§ = null;
         var _loc1_:int = this.§7"q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7"q§[_loc1_] as §0N§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§0E§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§;!K§())
               {
                  return false;
               }
               if(_loc2_ is §;!T§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §9!§(param1:Boolean = false) : §4%§
      {
         var _loc7_:§4%§ = null;
         var _loc2_:int = this.§7"q§.length;
         var _loc3_:int = this.§1"?§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§7"q§[_loc6_] as §4%§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§53§ && !_loc7_.§++§)
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
      
      public function §!"T§() : int
      {
         var _loc3_:§0N§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§7"q§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7"q§[_loc2_] as §0N§;
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
         return int(_loc1_ + this.§+!E§.slingshot.§!"T§());
      }
      
      protected function §2Q§(param1:§?!x§, param2:§?!x§) : Boolean
      {
         if(param1 is §0N§ && param2 is §0N§ && !(param1 as §0N§).§76§() && !(param2 as §0N§).§76§())
         {
            return false;
         }
         return true;
      }
      
      protected function hasMinimumCollisionSpeed(param1:§?!x§, param2:§?!x§) : Boolean
      {
         return this.§2Q§(param1,param2);
      }
      
      public function §8n§() : void
      {
         this.§4!E§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:§0N§, param2:§0N§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §;!T§)
         {
            return 1;
         }
         if(param1 is §;!T§)
         {
            return Number(param1.§=!_§(param2.§8!Y§()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(param1:§0N§, param2:§0N§) : Number
      {
         if(param2 is §;!T§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §3!M§(param1:§0N§, param2:§0N§) : Number
      {
         var _loc4_:Number = this.getCollisionForceFactor(param1,param2);
         var _loc5_:Number = this.getCollisionForceFactor(param2,param1);
         var _loc6_:Number = param1.§3"s§().GetMass();
         var _loc7_:Number = param2.§3"s§().GetMass();
         var _loc8_:b2Vec2 = param1.§!" §();
         var _loc9_:b2Vec2 = param2.§!" §();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function objectCollision(param1:§?!x§, param2:§?!x§, param3:b2Contact) : Boolean
      {
         var _loc13_:§0"Z§ = null;
         var _loc14_:b2JointEdge = null;
         var _loc15_:b2JointEdge = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         if(!this.§>"R§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§0N§ = param1 as §0N§;
         var _loc5_:§0N§ = param2 as §0N§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§>+§)
         {
            _loc5_.applyDamage(_loc5_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§>+§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(_loc4_ is §;!T§ && _loc5_ is §;!T§)
         {
            return true;
         }
         var _loc6_:Number = this.§3!M§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
         var _loc9_:Number = this.getCollisionDamageFactor(_loc4_,_loc5_);
         var _loc10_:Number = this.getCollisionDamageFactor(_loc5_,_loc4_);
         var _loc11_:Number = _loc4_.applyDamage(_loc6_ * _loc10_,this,_loc5_,true);
         var _loc12_:Number = _loc5_.applyDamage(_loc6_ * _loc9_,this,_loc4_,true);
         for each(_loc13_ in this.§2"?§)
         {
            if(_loc13_.isBreakable && _loc6_ >= _loc13_.minBreakForce)
            {
               _loc14_ = _loc4_.§3"s§().GetJointList();
               _loc15_ = _loc5_.§3"s§().GetJointList();
               if(_loc14_ != null && _loc14_.§6!_§ == _loc13_.§ !7§ || _loc15_ != null && _loc15_.§6!_§ == _loc13_.§ !7§)
               {
                  this.§'#+§(_loc13_);
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
         if(_loc4_ is §;!T§)
         {
            if(_loc12_ <= 0)
            {
               _loc16_ = _loc4_.§!!W§(_loc5_.§8!Y§());
               this.§]Y§(_loc4_ as §;!T§,_loc6_ * _loc9_,_loc8_,_loc16_);
               return false;
            }
         }
         if(_loc5_ is §;!T§)
         {
            if(_loc11_ <= 0)
            {
               _loc17_ = _loc5_.§!!W§(_loc4_.§8!Y§());
               this.§]Y§(_loc5_ as §;!T§,_loc6_ * _loc10_,_loc7_,_loc17_);
               return false;
            }
         }
         return _loc11_ <= 0 && _loc12_ <= 0;
      }
      
      public function §]A§(param1:§?!x§, param2:§?!x§) : void
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
      
      protected function §]Y§(param1:§;!T§, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§!" §();
         param1.§>%§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §%!L§() : void
      {
         var _loc2_:§0N§ = null;
         var _loc1_:int = this.§7"q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7"q§[_loc1_] as §0N§;
            if(_loc2_ != null && _loc2_ is §4%§)
            {
               this.§+!Y§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §1§() : void
      {
         var _loc2_:§0N§ = null;
         var _loc1_:int = this.§7"q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7"q§[_loc1_] as §0N§;
            if(_loc2_ != null && _loc2_.§-!9§())
            {
               this.§+!Y§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §'"m§() : int
      {
         return this.§7"q§.length;
      }
      
      public function §'!U§(param1:§>#-§) : void
      {
         var _loc4_:§0N§ = null;
         var _loc5_:§9v§ = null;
         var _loc6_:§=u§ = null;
         var _loc7_:§0"Z§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7"q§.length)
         {
            if(_loc4_ = this.§7"q§[_loc2_] as §0N§)
            {
               if(_loc4_.§`!l§)
               {
                  if(!_loc4_.§0E§())
                  {
                     (_loc5_ = new §9v§()).angle = _loc4_.§<"g§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§3"s§().GetPosition().x;
                     _loc5_.y = _loc4_.§3"s§().GetPosition().y;
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§2"?§.length)
         {
            _loc7_ = this.§2"?§[_loc3_];
            _loc6_ = new §=u§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§^4§,_loc7_.§!"<§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§[d§,_loc7_.motorSpeed,_loc7_.§-!J§,_loc7_.maxTorque);
            param1.§3!^§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §1"h§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§7"q§.length)
         {
            if(this.§7"q§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§7"q§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§0N§ = null;
         this.§%"J§ = param1;
         this.§!?§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7"q§.length)
         {
            _loc3_ = this.§7"q§[_loc2_] as §0N§;
            if(_loc3_ && _loc3_.§^[§())
            {
               _loc3_.sprite.visible = !this.§%"J§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§>"R§ = param1;
      }
      
      public function §#"y§() : int
      {
         return this.§9h§;
      }
      
      public function §`!3§() : int
      {
         return this.§95§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§+!E§.damageScoreMultiplier;
      }
   }
}
