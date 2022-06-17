package §-!!§
{
   import § !D§.§'"u§;
   import § !D§.§;3§;
   import § !D§.§@#z§;
   import §!6§.§4";§;
   import §!6§.Image;
   import §!6§.Sprite;
   import §""'§.Texture;
   import §"$=§.§=$&§;
   import §%A§.§"j§;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §+#B§.§4"[§;
   import §-"i§.§+!7§;
   import §0"=§.b2Joint;
   import §0"=§.b2JointEdge;
   import §0"=§.b2PrismaticJoint;
   import §0"=§.b2RevoluteJoint;
   import §0# §.b2Contact;
   import §8#t§.b2Body;
   import §9$+§.§%L§;
   import §9$+§.§2"<§;
   import §9$+§.§5t§;
   import §9$+§.§9"4§;
   import §9$+§.§<$<§;
   import §;$?§.§0p§;
   import §>"9§.§[#%§;
   import §?§.§+#c§;
   import §?§.§,Y§;
   import §?§.§0F§;
   import §?§.§3"<§;
   import §?§.§7!$§;
   import §?§.§;§;
   import §^"[§.§4!8§;
   import §^"[§.§^!8§;
   import §`# §.b2Vec2;
   import §`n§.§1!f§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7S§ implements § #'§
   {
      
      private static const §13§:Boolean = false;
      
      public static const §5#H§:int = 1000000000;
      
      public static const §;!3§:int = -1;
      
      public static const ID_NEXT_FREE:int = -2;
      
      public static const §2$4§:String = "onDestroy";
       
      
      protected var §3#$§:Vector.<§1#B§>;
      
      protected var §5"h§:Vector.<§0!N§>;
      
      protected var §0"t§:Vector.<§"j§>;
      
      protected var §@k§:§4"[§;
      
      private var §7$@§:int = 1000000000;
      
      public var §&!g§:§'"u§;
      
      protected var §0#a§:Vector.<§]" §>;
      
      protected var §0!_§:§!6§.Sprite;
      
      protected var §9!W§:§!6§.Sprite;
      
      protected var §^"G§:§!6§.Sprite;
      
      protected var §+#y§:§!6§.Sprite;
      
      protected var §3#l§:§!6§.Sprite;
      
      protected var §0@§:§!6§.Sprite;
      
      protected var §`##§:Vector.<Texture>;
      
      protected var § t§:Vector.<§%L§>;
      
      protected var § '§:int = 1;
      
      protected var §,"j§:Vector.<§2"<§>;
      
      protected var §&!6§:int = 0;
      
      protected var §9!h§:int = 0;
      
      private var §["D§:int = 0;
      
      private var §""n§:§9"4§;
      
      protected var §;V§:§8"J§;
      
      private var §#>§:Boolean = true;
      
      private var §;"`§:Boolean = true;
      
      protected var §0!s§:§0p§;
      
      private var §2y§:Boolean = false;
      
      private var §<"]§:Array;
      
      private var § "1§:Array;
      
      public function §7S§(param1:§'"u§, param2:§=$&§, param3:§!6§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         this.§3#$§ = new Vector.<§1#B§>();
         this.§5"h§ = new Vector.<§0!N§>();
         this.§0"t§ = new Vector.<§"j§>();
         this.§@k§ = new §4"[§();
         this.§0#a§ = new Vector.<§]" §>();
         this.§`##§ = new Vector.<Texture>();
         this.§,"j§ = new Vector.<§2"<§>();
         this.§""n§ = new §9"4§();
         super();
         this.§&!g§ = param1;
         this.§0!_§ = param3;
         this.§0!_§.§7!w§ = false;
         this.§;"`§ = true;
         this.§#>§ = true;
         this.§9!W§ = new §!6§.Sprite();
         this.§^"G§ = new §!6§.Sprite();
         this.§+#y§ = new §!6§.Sprite();
         this.§0@§ = new §!6§.Sprite();
         this.§3#l§ = new §!6§.Sprite();
         this.§0!_§.addChild(this.§9!W§);
         this.§0!_§.addChild(this.§^"G§);
         this.§0!_§.addChild(this.§+#y§);
         §1!f§.init(4,2);
         this.§ "1§ = [];
         this.addLevelObjects(param2);
         if(param2.hasGround)
         {
            _loc5_ = (this.§&!g§.§!!,§.§+#G§ + this.§&!g§.§!!,§.§+U§) / 2;
            _loc6_ = 0 + §;3§.§`"?§;
            _loc7_ = 0;
            while(_loc7_ < 5)
            {
               if(this.addObject(param4,_loc5_,_loc6_,0,§7S§.§;!3§) != null)
               {
                  break;
               }
               _loc7_++;
            }
         }
      }
      
      public function get §]#D§() : §!6§.Sprite
      {
         return this.§0@§;
      }
      
      public function get §2#u§() : §!6§.Sprite
      {
         return this.§+#y§;
      }
      
      public function get §!"z§() : §!6§.Sprite
      {
         return this.§^"G§;
      }
      
      public function get backgroundSprite() : §!6§.Sprite
      {
         return this.§3#l§;
      }
      
      public function get §8!&§() : §!6§.Sprite
      {
         return this.§0!_§;
      }
      
      public function get activeObject() : §8"J§
      {
         return this.§;V§;
      }
      
      public function get objectCount() : int
      {
         return this.§3#$§.length;
      }
      
      public function set §8"j§(param1:§0p§) : void
      {
         if(param1 != this.§0!s§)
         {
            this.§0!s§ = param1;
            if(this.§2y§ && this.§0!s§)
            {
               this.§0!s§.levelStarted();
            }
         }
      }
      
      public function levelInitialized() : void
      {
         if(!this.§2y§)
         {
            this.§2y§ = true;
            if(this.§0!s§)
            {
               this.§0!s§.levelStarted();
            }
         }
      }
      
      public function §1"k§(param1:String) : §,Y§
      {
         return this.§&!g§.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§;V§)
         {
            _loc3_ = this.§;V§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      public function §-#Y§(param1:§9"4§) : void
      {
         var _loc2_:Number = 1;
         var _loc3_:§,Y§ = this.§&!g§.levelItemManager.getItem(param1.type);
         if(_loc3_)
         {
            _loc2_ = _loc3_.scale;
         }
         this.addObjectFromModel(param1,param1.id,false,false,false,_loc2_);
      }
      
      protected function addLevelObjects(param1:§=$&§) : void
      {
         var _loc3_:§9"4§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§,Y§ = null;
         var _loc6_:§5t§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§&!g§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.addObjectFromModel(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.generateTerrainTexture();
         this.setTexture(true);
         this.§ t§ = new Vector.<§%L§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§try§)
         {
            _loc6_ = param1.§=-§(_loc2_);
            this.§"#Y§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         §1!f§.dispose();
         while(this.§3#$§.length > 0)
         {
            this.§'!`§(0,false,true);
         }
         while(this.§0"t§.length > 0)
         {
            this.§6"A§(0);
         }
         this.§3#$§ = null;
         this.§5"h§ = null;
         this.§0"t§ = null;
         this.§@k§ = null;
         this.§,"j§ = null;
         this.§ "1§ = null;
         if(this.§0!_§)
         {
            this.§0!_§.dispose();
            this.§0!_§ = null;
         }
         this.§9!W§ = null;
         this.§^"G§ = null;
         if(this.§+#y§)
         {
            this.§+#y§.dispose();
            this.§+#y§ = null;
         }
         if(this.§0@§)
         {
            this.§0@§.dispose();
            this.§0@§ = null;
         }
         if(this.§3#l§)
         {
            this.§3#l§.dispose();
            this.§3#l§ = null;
         }
         while(this.§`##§.length > 0)
         {
            _loc1_ = this.§`##§.pop();
            this.§&!g§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      public function setTexture(param1:Boolean) : void
      {
         this.§9!W§.visible = param1;
         this.§3#l§.visible = param1;
      }
      
      public function generateTerrainTexture() : void
      {
         var _loc5_:§1#B§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:§8"J§ = null;
         var _loc9_:Number = NaN;
         var _loc1_:Rectangle = null;
         var _loc2_:Rectangle = null;
         var _loc3_:Vector.<§8"J§> = new Vector.<§8"J§>();
         var _loc4_:Vector.<§8"J§> = new Vector.<§8"J§>();
         for each(_loc5_ in this.§3#$§)
         {
            if((_loc7_ = _loc5_ as §8"J§) && _loc7_.§"!g§())
            {
               _loc9_ = _loc7_.levelItem.shape.getDimension() / §'"u§.§'#e§;
               _loc6_ = new Rectangle(_loc5_.sprite.x - _loc9_ / 2,_loc5_.sprite.y - _loc9_ / 2,_loc9_,_loc9_);
               if(_loc7_.§1!%§() == §,Y§.§0"Q§)
               {
                  _loc4_.push(_loc7_);
                  if(_loc2_ == null)
                  {
                     _loc2_ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                  }
                  else
                  {
                     _loc2_ = _loc2_.union(_loc6_);
                  }
               }
               else
               {
                  _loc3_.push(_loc7_);
                  if(_loc1_ == null)
                  {
                     _loc1_ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                  }
                  else
                  {
                     _loc1_ = _loc1_.union(_loc6_);
                  }
               }
            }
         }
         if(_loc1_)
         {
            this.§?2§(_loc1_,_loc3_,this.§1d§(),this.§9!W§);
         }
         if(_loc2_)
         {
            this.§?2§(_loc2_,_loc4_,this.§1"8§(),this.§3#l§);
         }
      }
      
      private function §?2§(param1:Rectangle, param2:Vector.<§8"J§>, param3:String, param4:§!6§.Sprite) : void
      {
         var _loc5_:Number = this.§&!g§.camera.borderLeft / §'"u§.§'#e§;
         var _loc6_:Number = this.§&!g§.camera.borderRight / §'"u§.§'#e§;
         var _loc7_:Number = (_loc5_ + _loc6_) / 2;
         var _loc8_:Number = (_loc6_ - _loc5_) / 2;
         _loc5_ = _loc7_ - _loc8_;
         _loc6_ = _loc7_ + _loc8_;
         param1.left = Math.max(param1.left,_loc5_) - 4;
         param1.right = Math.min(param1.right,_loc6_) + 4;
         if(param1.left >= param1.right - 1)
         {
            return;
         }
         var _loc9_:Number = 1;
         while(param1.width > 2048 || param1.height > 2048)
         {
            param1.left /= 1.05;
            param1.top /= 1.05;
            param1.right /= 1.05;
            param1.bottom /= 1.05;
            _loc9_ /= 1.05;
         }
         var _loc10_:int = param1.width;
         var _loc11_:int = param1.height;
         var _loc12_:int = param1.left;
         var _loc13_:int = param1.top;
         var _loc14_:BitmapData = new BitmapData(_loc10_,_loc11_,true,0);
         var _loc15_:Number = this.getLevelTextureScale();
         this.§'"f§(_loc14_.rect,_loc14_,_loc9_ * _loc15_,param3);
         var _loc16_:BitmapData = this.§"# §(param2,_loc10_,_loc11_,_loc12_,_loc13_,_loc9_);
         _loc14_.copyChannel(_loc16_,_loc16_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         var _loc17_:Texture = this.§&!g§.textureManager.getTextureFromBitmapData(_loc14_);
         this.§`##§.push(_loc17_);
         var _loc18_:Image;
         (_loc18_ = new Image(_loc17_)).x = _loc12_ / _loc9_;
         _loc18_.y = _loc13_ / _loc9_;
         _loc18_.scaleX = 1 / _loc9_;
         _loc18_.scaleY = 1 / _loc9_;
         param4.addChild(_loc18_);
         _loc16_.dispose();
      }
      
      private function §"# §(param1:Vector.<§8"J§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§8"J§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§+#c§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §3"<§)
            {
               this.§,#a§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§30§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §;#7§)
            {
               if((_loc12_ as §;#7§).vertices.length == 4)
               {
                  this.§,#a§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§30§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §;#7§).vertices.length == 3)
               {
                  this.§"#y§(_loc12_ as §;#7§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§30§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §0F§)
            {
               this.§`!g§(_loc12_ as §0F§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §,#a§(param1:§+#c§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §'"u§.§'#e§ * param9;
         var _loc13_:Number = param1.getHeight() / §'"u§.§'#e§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §"#y§(param1:§;#7§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §'"u§.§'#e§ * param8,_loc14_.y / §'"u§.§'#e§ * param8);
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
      
      protected function §`!g§(param1:§0F§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc11_:Number = param1.radius / §'"u§.§'#e§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §1d§() : String
      {
         return this.§&!g§.background.§5"j§();
      }
      
      protected function §1"8§() : String
      {
         return this.§&!g§.background.§6<§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §'"f§(param1:Rectangle, param2:BitmapData, param3:Number, param4:String) : void
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
         var _loc5_:§^!8§;
         if(_loc5_ = this.§&!g§.backgroundTextureManager.getTexture(param4))
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
      
      protected function §3!g§(param1:§9"4§, param2:§!6§.Sprite, param3:§4!8§, param4:§,Y§, param5:Number = 1.0, param6:Boolean = true) : §5"W§
      {
         var _loc11_:§5"W§ = null;
         var _loc7_:String = param1.type;
         Number(param1.x);
         Number(param1.y);
         Number(param1.angle);
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §%#>§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §4!2§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §;!r§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §<!r§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §7$'§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §,"q§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §1!4§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §^!o§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §9"<§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §`#9§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §5"W§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§&!6§ > 0;
      }
      
      protected function addObjectPig(param1:§9"4§, param2:§!6§.Sprite, param3:§4!8§, param4:§,Y§, param5:Number = 1.0) : §1$<§
      {
         return new §1$<§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false, param11:Boolean = false, param12:Number = 0.0, param13:b2Vec2 = null, param14:Number = 0.0, param15:Number = 0.0, param16:Boolean = true, param17:Number = 1.0) : §1#B§
      {
         this.§""n§ = new §9"4§();
         this.§""n§.type = param1;
         this.§""n§.x = param2;
         this.§""n§.y = param3;
         this.§""n§.angle = param4;
         this.§""n§.§@2§ = 0;
         this.§""n§.§?!@§ = 0;
         this.§""n§.angularVelocity = param12;
         this.§""n§.angularDamping = param14;
         this.§""n§.linearDamping = param15;
         this.§""n§.awake = param16;
         this.§""n§.health = param17;
         return this.addObjectFromModel(this.§""n§,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function §?#q§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false, param10:Boolean = false) : §1#B§
      {
         this.§""n§ = new §9"4§();
         this.§""n§.type = param1;
         this.§""n§.x = param2;
         this.§""n§.y = param3;
         this.§""n§.angle = param4;
         this.§""n§.§@2§ = param6;
         this.§""n§.§?!@§ = param7;
         return this.addObjectFromModel(this.§""n§,param5,false,false,false,param8,param9,param10);
      }
      
      protected function addObjectFromModel(param1:§9"4§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §1#B§
      {
         if(this.isFoundEasterEgg(param1.type))
         {
            return null;
         }
         var _loc9_:§!6§.Sprite = new §!6§.Sprite();
         var _loc10_:§1#B§;
         if((_loc10_ = this.§3!Q§(param1,param2,_loc9_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc10_ is §8"J§ && (_loc10_ as §8"J§).§"!g§())
         {
            _loc9_.visible = !this.§#>§;
         }
         if(_loc10_ is §5"W§ && !(_loc10_ is §`#9§))
         {
            ++this.§&!6§;
         }
         if(!param7)
         {
            if(param8)
            {
               this.§+#y§.§;r§(_loc9_);
            }
            else
            {
               this.§^"G§.§;r§(_loc9_);
            }
         }
         else
         {
            this.§0@§.§;r§(_loc9_);
         }
         if(param3)
         {
            this.§&!g§.§="-§(_loc10_);
         }
         if(param4)
         {
            this.§;V§ = §8"J§(_loc10_);
         }
         return _loc10_;
      }
      
      protected function isFoundEasterEgg(param1:String) : Boolean
      {
         return false;
      }
      
      private function §3!Q§(param1:§9"4§, param2:int, param3:§!6§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §1#B§
      {
         var _loc7_:Vector.<§<$<§> = null;
         var _loc8_:§<$<§ = null;
         var _loc10_:§8"J§ = null;
         if(param2 == ID_NEXT_FREE)
         {
            param2 = this.§7$@§;
            ++this.§7$@§;
         }
         else
         {
            if(param2 >= §5#H§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §5#H§);
            }
            if(this.§1!8§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§1#B§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §8"J§)
         {
            if((_loc6_ as §8"J§).hasSpecialBehavior)
            {
               _loc7_ = (_loc6_ as §8"J§).§?#=§.getBehaviorsData();
               for each(_loc8_ in _loc7_)
               {
                  if(!this.§&!g§.§7"n§(_loc8_.type,_loc8_.event))
                  {
                     (_loc6_ as §8"J§).§=$E§(this.§&!g§,_loc8_);
                  }
               }
            }
         }
         if(_loc6_ is §5"W§)
         {
            ++this.§["D§;
         }
         if(_loc6_)
         {
            _loc10_ = _loc6_ as §8"J§;
            if(_loc6_ is §"j§)
            {
               this.§0"t§.push(_loc6_);
            }
            else
            {
               if(_loc10_)
               {
                  _loc10_.§7p§(param2);
                  this.§@k§[param1.instanceName] = _loc6_;
               }
               this.§3#$§.push(_loc6_);
               if(_loc6_ is §0!N§)
               {
                  this.§5"h§.push(_loc6_);
               }
            }
            if(this.§0!s§)
            {
               this.§0!s§.§;!o§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function §!"T§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§9"4§, param2:§!6§.Sprite, param3:§4!8§, param4:§,Y§, param5:int, param6:Number = 1.0) : §1#B§
      {
         return new § "O§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function §-$C§(param1:§9"4§, param2:§!6§.Sprite, param3:§4!8§, param4:§,Y§, param5:int, param6:Number = 1.0) : §1#B§
      {
         return new §&"k§(param2,param3,this.§&!g§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:§9"4§, param2:§!6§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §1#B§
      {
         var _loc5_:§,Y§;
         if(!(_loc5_ = this.§&!g§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§!"T§();
         }
         var _loc7_:§4!8§ = this.§&!g§.animationManager.getAnimation(_loc6_);
         var _loc8_:§1#B§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.§3!g§(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §,Y§.§^O§)
         {
            (_loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4)).§;#"§ = true;
         }
         else if(_loc5_.itemType == §,Y§.§^N§ || _loc5_.itemType == §,Y§.§##$§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§]" §.§0"x§,param4);
            }
            else if(_loc5_.itemName == §<!r§.§&#3§)
            {
               _loc8_ = this.§-$C§(param1,param2,_loc7_,_loc5_,§]" §.§+#o§,param4);
            }
            else
            {
               _loc8_ = new §,!h§(param2,_loc7_,this.§&!g§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §8"J§(param2,_loc7_,this.§&!g§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int, param7:String) : void
      {
         this.§&!g§.addScore(param1,§@#z§.§&#'§,param3,param4,param5,param6,param7);
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§&!g§.particles.addParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§&!g§.particles.addSimpleParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function §];§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§&!g§.particles.§];§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §+K§(param1:§8"J§) : void
      {
         var _loc4_:§%L§ = null;
         var _loc5_:§%L§ = null;
         var _loc6_:§1#B§ = null;
         var _loc7_:§1#B§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§ t§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§ t§[_loc3_];
            if(this.§ t§[_loc3_].id1 == _loc2_ || this.§ t§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§8!E§)
               {
                  _loc6_ = _loc4_.§8!E§.§&$#§().GetUserData() as §1#B§;
                  _loc7_ = _loc4_.§8!E§.§&!u§().GetUserData() as §1#B§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§ t§.pop();
               if(_loc3_ < this.§ t§.length)
               {
                  this.§ t§[_loc3_] = _loc5_;
               }
               this.§7#t§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §"#Y§(param1:§5t§) : §%L§
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§%L§ = §%L§.§"#Y§(param1);
         this.§ t§.push(_loc4_);
         var _loc5_:§1#B§ = this.§1!8§(_loc2_);
         var _loc6_:§1#B§ = this.§1!8§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §5t§.§;!H§)
            {
               _loc4_.§8!E§ = this.§&!g§.mLevelEngine.mWorld.§9"^§(_loc4_.§;<§(_loc5_,_loc6_));
               if(_loc4_.type == §5t§.§`O§ && _loc4_.destroyChild)
               {
                  this.§,"j§.push(new §2"<§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
               }
            }
            else
            {
               this.§,"j§.push(new §2"<§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
         return _loc4_;
      }
      
      protected function §7#t§(param1:§%L§) : void
      {
         if(param1.§8!E§)
         {
            this.§&!g§.mLevelEngine.mWorld.§;"C§(param1.§8!E§);
         }
         if(param1.§?$6§)
         {
            if(this.§^"G§.contains(param1.§?$6§))
            {
               this.§^"G§.removeChild(param1.§?$6§,true);
            }
         }
      }
      
      public function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§0#a§.push(§]" §.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
      
      protected function playExplosionSound(param1:int) : void
      {
         §[#%§.playSound("tnt_box_explodes","ChannelExplosions");
      }
      
      public function §2,§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true, param9:Boolean = true) : void
      {
         this.§0#a§.push(§]" §.§%#d§(param1,param2,param3,param4,param5,param6,param7,param8));
         if(param9)
         {
            §[#%§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§&!g§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get §="A§() : Number
      {
         return this.§&!g§.§="A§;
      }
      
      public function §+!J§(param1:Number, param2:Number) : int
      {
         var _loc4_:§8"J§ = null;
         var _loc3_:int = this.§3#$§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§3#$§[_loc3_] as §8"J§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §8"J§
      {
         var _loc4_:§8"J§ = null;
         var _loc3_:int = this.§3#$§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§3#$§[_loc3_] as §8"J§)
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
      
      public function §,"x§(param1:Number, param2:Number) : Vector.<§8"J§>
      {
         var _loc5_:§8"J§ = null;
         var _loc3_:Vector.<§8"J§> = new Vector.<§8"J§>();
         var _loc4_:int = this.§3#$§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§3#$§[_loc4_] as §8"J§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §1#B§
      {
         return this.§3#$§[param1];
      }
      
      public function §1!8§(param1:int) : §8"J§
      {
         var _loc2_:§1#B§ = null;
         var _loc3_:§8"J§ = null;
         for each(_loc2_ in this.§3#$§)
         {
            _loc3_ = _loc2_ as §8"J§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §>"N§(param1:String) : §8"J§
      {
         return this.§@k§[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§3#$§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§3#$§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.updateParticles(param1);
         _loc4_ = this.§0"t§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§0"t§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§8"J§) : §1!f§
      {
         var _loc4_:b2Vec2;
         var _loc5_:Number = (_loc4_ = param3.getBody().GetPosition()).x - param1;
         var _loc6_:Number = _loc4_.y - param2;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         var _loc8_:§1!f§;
         (_loc8_ = §1!f§.getObject()).§5$3§ = _loc7_;
         _loc8_.§?"B§.x = _loc4_.x;
         _loc8_.§?"B§.y = _loc4_.y;
         return _loc8_;
      }
      
      protected function applyExplosionDamage(param1:§8"J§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function ignoreExplosion(param1:§8"J§, param2:int) : Boolean
      {
         return false;
      }
      
      protected function §;"k§() : void
      {
         var _loc2_:§]" § = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc8_:§8"J§ = null;
         var _loc9_:§1!f§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§;"`§)
         {
            return;
         }
         var _loc1_:Point = new Point();
         while(this.§0#a§.length > 0)
         {
            _loc2_ = this.§0#a§.shift();
            _loc3_ = _loc2_.§&$7§;
            _loc4_ = _loc2_.x;
            _loc5_ = _loc2_.y;
            _loc6_ = _loc2_.damage;
            this.shakeCameraOnExplosion(_loc2_.push);
            var _loc14_:int = 0;
            var _loc15_:* = this.§3#$§;
            while(§§hasnext(_loc15_,_loc14_))
            {
               if((_loc8_ = §§nextvalue(_loc14_,_loc15_) as §8"J§) && !this.ignoreExplosion(_loc8_,_loc2_.type))
               {
                  if((_loc9_ = this.getExplosionDistanceToObject(_loc4_,_loc5_,_loc8_)).§5$3§ <= _loc2_.§&$7§)
                  {
                     _loc10_ = _loc2_.push * this.getExplosionDamageMultiplier(_loc9_.§5$3§,_loc2_.§&$7§);
                     if(_loc9_.§5$3§ > 0)
                     {
                        _loc1_.x = _loc9_.§?"B§.x - _loc4_;
                        _loc1_.y = _loc9_.§?"B§.y - _loc5_;
                        _loc1_.normalize(1);
                        _loc11_ = _loc10_ * _loc1_.x;
                        _loc12_ = _loc10_ * _loc1_.y;
                        _loc8_.getBody().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc9_.§?"B§.x,_loc9_.§?"B§.y));
                     }
                  }
                  if(_loc9_.§5$3§ <= _loc2_.damageRadius)
                  {
                     _loc13_ = _loc6_ * this.getExplosionDamageMultiplier(_loc9_.§5$3§,_loc2_.damageRadius);
                     if(isNaN(_loc13_))
                     {
                        _loc13_ = 0;
                     }
                     this.applyExplosionDamage(_loc8_,_loc13_);
                  }
                  §1!f§.§0"L§(_loc9_);
               }
            }
            if(_loc2_.§`"a§)
            {
               this.updateExplosionEffects(_loc2_,_loc4_,_loc5_,_loc3_);
            }
         }
      }
      
      protected function updateExplosionEffects(param1:§]" §, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§&!g§.particles.addParticle(this.getMainExplosionCoreName(param1.type),§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_STATIC_PARTICLE,param2,param3,600,"",§'Y§.§2d§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§&!g§.particles.addParticle(§'Y§.§?!G§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param2,param3,_loc7_,"",§'Y§.§2d§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(0)
         {
         }
         return §'Y§.§&"u§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§8"J§ = null;
         var _loc2_:§1#B§ = null;
         var _loc3_:int = this.§3#$§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§3#$§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§'!`§(_loc3_,true);
            }
            else
            {
               this.§?"_§(_loc2_,param1);
               _loc4_ = _loc2_ as §8"J§;
               if(this.§""?§(_loc2_))
               {
                  this.§'!`§(_loc3_,!(_loc4_ is §5"W§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  this.§'!`§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§`!3§(param1);
         this.§;"k§();
         if(this.§0!s§)
         {
            this.§0!s§.update(param1);
         }
      }
      
      protected function §?"_§(param1:§1#B§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function updateParticles(param1:Number) : void
      {
         var _loc2_:§"j§ = null;
         var _loc3_:int = this.§0"t§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§0"t§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§6"A§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §`!3§(param1:Number) : void
      {
         this.§'q§(param1);
         this.§+!_§();
      }
      
      protected function §'q§(param1:Number) : void
      {
         var _loc3_:§2"<§ = null;
         var _loc4_:§1#B§ = null;
         var _loc5_:§1#B§ = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc2_:int = this.§,"j§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,"j§[_loc2_];
            if(_loc3_.§>"B§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.isOneWayDestroyed)
                  {
                     _loc4_ = this.§1!8§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  if(_loc4_ = this.§1!8§(_loc3_.objectId2))
                  {
                     this.removeObject(_loc4_,true);
                  }
                  this.§,"j§.splice(_loc2_,1);
               }
            }
            else if(_loc3_.distanceToDestroyChild > 0)
            {
               if((_loc4_ = this.§1!8§(_loc3_.objectId1)) && (_loc4_.getBody().GetLinearVelocity().x > 0 || _loc4_.getBody().GetLinearVelocity().y > 0))
               {
                  if(_loc5_ = this.§1!8§(_loc3_.objectId2))
                  {
                     _loc6_ = _loc4_.getBody().GetPosition();
                     _loc7_ = _loc5_.getBody().GetPosition();
                     if(Number(Math.sqrt((_loc6_.x - _loc7_.x) * (_loc6_.x - _loc7_.x) + (_loc6_.y - _loc7_.y) * (_loc6_.y - _loc7_.y))) > _loc3_.distanceToDestroyChild)
                     {
                        _loc3_.§>"B§ = true;
                     }
                  }
               }
            }
            _loc2_--;
         }
      }
      
      private function §="Q§(param1:§%L§) : void
      {
         var _loc2_:§8"J§ = param1.debug_object_1;
         var _loc3_:§8"J§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§1!8§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§1!8§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§?$6§ == null)
         {
            param1.§?$6§ = new §4";§(4,4,4294901760);
            this.§^"G§.addChild(param1.§?$6§);
         }
         param1.§?$6§.x = _loc4_;
         param1.§?$6§.y = _loc5_;
         param1.§?$6§.width = _loc8_;
         param1.§?$6§.rotation = _loc9_;
      }
      
      protected function §6!e§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §+!_§() : void
      {
         var _loc1_:§%L§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§ t§)
         {
            if(§13§)
            {
               this.§="Q§(_loc1_);
            }
            if(_loc1_.§@q§ && _loc1_.§1!^§ && _loc1_.§##3§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §5t§.§<#b§)
               {
                  _loc4_ = (_loc1_.§8!E§ as b2PrismaticJoint).§4!K§();
                  _loc5_ = (_loc1_.§8!E§ as b2PrismaticJoint).§`!N§();
                  _loc6_ = this.§6!e§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§8!E§ as b2PrismaticJoint).§<$7§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §5t§.§0#i§)
               {
                  _loc7_ = (_loc1_.§8!E§ as b2RevoluteJoint).§?" §();
                  if((_loc5_ = (_loc1_.§8!E§ as b2RevoluteJoint).§`!N§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§8!E§ as b2RevoluteJoint).§<$7§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function destroyAllJoints() : void
      {
         var _loc1_:§%L§ = null;
         while(this.§ t§.length > 0)
         {
            _loc1_ = this.§ t§.pop();
            this.§7#t§(_loc1_);
         }
      }
      
      public function §""?§(param1:§1#B§) : Boolean
      {
         this.§!#!§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §7!$§.BODY_TYPE_STATIC) && param1.getBody() && this.§"!4§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            if(param1 is §8"J§)
            {
               §8"J§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §!#!§(param1:§1#B§) : void
      {
      }
      
      public function §2#9§(param1:Number, param2:Number) : Boolean
      {
         return this.§&!g§.camera.§]!]§(param1,param2);
      }
      
      public function §"!4§(param1:Number, param2:Number) : Boolean
      {
         return this.§&!g§.§!!,§.§`"k§(param1,param2);
      }
      
      public function §6"A§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§"j§ = this.§0"t§[param1];
         this.§ #%§(_loc2_.sprite);
         this.§0"t§[param1] = null;
         this.§0"t§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§8"J§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§8"J§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §'!`§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§8"J§ = null;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§1#B§;
         if((_loc4_ = this.§3#$§[param1]) is §1$<§)
         {
            ++this.§9!h§;
         }
         else if(_loc4_ is §5"W§)
         {
            --this.§&!6§;
         }
         if(_loc4_ == this.§;V§)
         {
            this.§;V§ = null;
         }
         if(_loc4_ is §8"J§)
         {
            _loc5_ = _loc4_ as §8"J§;
            if(param2)
            {
               _loc6_ = this.getScoreTextPosition(_loc5_);
               _loc7_ = §'Y§.§!,§(_loc5_.itemName,_loc5_.§;#"§);
               _loc8_ = this.shouldShowScoreText(_loc5_);
               if(_loc5_.levelItem.destroyedScoreInc > 0)
               {
                  this.§&!g§.addScore(_loc5_.levelItem.destroyedScoreInc,§@#z§.§&"O§,_loc8_,_loc6_.x,_loc6_.y,_loc7_,_loc5_.levelItem.floatingScoreFont);
               }
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null,param2);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this,param2);
            }
            this.§+K§(_loc5_);
            this.removeDestroyedAttachedJoints(_loc5_);
            delete this.§@k§[_loc5_.§?#=§.instanceName];
         }
         this.§ #%§(_loc4_.sprite);
         this.§3#$§[param1] = null;
         this.§3#$§.splice(param1,1);
         if(_loc4_ is §0!N§)
         {
            if((_loc9_ = this.§5"h§.indexOf(§0!N§(_loc4_))) >= 0)
            {
               this.§5"h§.splice(_loc9_,1);
            }
         }
         if(this.§0!s§)
         {
            this.§0!s§.§1!k§(_loc4_);
         }
         if(!param3)
         {
            this.§1!k§(_loc4_);
         }
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function removeDestroyedAttachedJoints(param1:§8"J§) : void
      {
         var _loc2_:§2"<§ = null;
         for each(_loc2_ in this.§,"j§)
         {
            if(_loc2_.objectId1 == param1.id || _loc2_.objectId2 == param1.id)
            {
               _loc2_.§>"B§ = true;
            }
         }
      }
      
      protected function §1!k§(param1:§1#B§) : void
      {
         var _loc2_:§8"J§ = null;
         var _loc3_:§9"4§ = null;
         var _loc4_:Vector.<§+!7§> = null;
         var _loc5_:int = 0;
         var _loc6_:§+!7§ = null;
         if(param1 is §8"J§)
         {
            _loc2_ = param1 as §8"J§;
            _loc3_ = _loc2_.§?#=§;
            if(_loc3_)
            {
               if(_loc4_ = _loc3_.getEvents())
               {
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_.length)
                  {
                     if((_loc6_ = _loc4_[_loc5_]).§7#J§ == §2$4§)
                     {
                        this.§&!g§.§7"H§(_loc6_);
                     }
                     _loc5_++;
                  }
               }
            }
         }
      }
      
      protected function § I§(param1:§8"J§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§ $6§(param2,param3,this);
         }
      }
      
      protected function § #%§(param1:§!6§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§1#B§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(param1)
         {
            this.§'!`§(this.§3#$§.indexOf(param1),param2,param3);
         }
      }
      
      public function §-$D§(param1:§1#B§, param2:String) : §1#B§
      {
         var _loc7_:§8"J§ = null;
         var _loc8_:int = 0;
         var _loc3_:int = this.§3#$§.indexOf(param1);
         if(_loc3_ < 0)
         {
            return null;
         }
         var _loc4_:§1#B§;
         var _loc5_:b2Body = (_loc4_ = this.§3#$§[_loc3_]).getBody();
         var _loc6_:§1#B§;
         ((_loc6_ = this.addObject(param2,_loc5_.GetPosition().x,_loc5_.GetPosition().y,_loc5_.GetAngle() / Math.PI * 180,§7S§.ID_NEXT_FREE,false,false,false,1,false)) as §8"J§).§]"0§(_loc4_.getBody());
         (_loc6_ as §8"J§).§6-§(_loc4_.getBody().GetAngularVelocity());
         if(_loc4_ == this.§;V§)
         {
            this.§;V§ = null;
         }
         if(_loc4_ is §8"J§)
         {
            (_loc7_ = _loc4_ as §8"J§).updateBeforeRemoving(null,true);
            this.§+K§(_loc7_);
            this.removeDestroyedAttachedJoints(_loc7_);
            delete this.§@k§[_loc7_.§?#=§.instanceName];
         }
         this.§ #%§(_loc4_.sprite);
         this.§3#$§[_loc3_] = null;
         this.§3#$§.splice(_loc3_,1);
         if(_loc4_ is §0!N§)
         {
            if((_loc8_ = this.§5"h§.indexOf(§0!N§(_loc4_))) >= 0)
            {
               this.§5"h§.splice(_loc8_,1);
            }
         }
         if(this.§0!s§)
         {
            this.§0!s§.§1!k§(_loc4_);
         }
         _loc4_.dispose(false);
         _loc4_ = null;
         return _loc6_;
      }
      
      public function §5#[§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&!g§.§5#a§();
         }
      }
      
      public function §?"G§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§&!g§.§?"G§(param1,param2,param3,param4);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§0!_§.x = -param1;
         this.§0!_§.y = -param2;
         this.§0@§.x = -param1;
         this.§0@§.y = -param2;
         this.§+#y§.x = -param1;
         this.§+#y§.y = -param2;
         this.§3#l§.x = -param1;
         this.§3#l§.y = -param2;
      }
      
      public function isLevelGoalObjectsAlive() : Boolean
      {
         var _loc2_:§1#B§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3#$§.length)
         {
            _loc2_ = this.§3#$§[_loc1_];
            if(_loc2_)
            {
               if(_loc2_.§;#"§)
               {
                  return true;
               }
            }
            _loc1_++;
         }
         return false;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§1#B§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3#$§.length)
         {
            _loc2_ = this.§3#$§[_loc1_];
            if(_loc2_ && _loc2_ is §1$<§ && (_loc2_ as §1$<§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:§1$<§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§3#$§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§3#$§[_loc3_] as §1$<§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§3"P§ && !_loc4_.§"!i§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §,#;§() : Array
      {
         var _loc2_:§8"J§ = null;
         this.§ "1§.length = 0;
         var _loc1_:int = this.§3#$§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3#$§[_loc1_] as §8"J§;
            if(_loc2_ && _loc2_.health > 0)
            {
               if(_loc2_.§9#&§())
               {
                  this.§ "1§.push(_loc1_);
               }
            }
            _loc1_--;
         }
         return this.§ "1§;
      }
      
      public function §,"P§() : int
      {
         var _loc2_:§8"J§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3#$§)
         {
            if(_loc2_ is §,!h§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §`"2§() : int
      {
         var _loc2_:§8"J§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3#$§)
         {
            if(_loc2_ && _loc2_.§"!g§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§1$<§ = null;
         var _loc2_:int = this.§3#$§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3#$§[_loc2_] as §1$<§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §>4§() : Boolean
      {
         var _loc2_:§5"W§ = null;
         var _loc1_:int = this.§3#$§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3#$§[_loc1_] as §5"W§;
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
         var _loc2_:§8"J§ = null;
         var _loc1_:int = this.§3#$§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3#$§[_loc1_] as §8"J§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§&"y§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§=!a§())
               {
                  return false;
               }
               if(_loc2_ is §5"W§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §3!n§(param1:Boolean = false) : §1$<§
      {
         var _loc7_:§1$<§ = null;
         var _loc2_:int = this.§3#$§.length;
         var _loc3_:int = this.getPigCount(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§3#$§[_loc6_] as §1$<§) && _loc7_.health > 0)
            {
               if(!param1 || _loc7_.isNormal)
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
      
      public function §^#`§() : §8"J§
      {
         var _loc3_:§8"J§ = null;
         var _loc4_:int = 0;
         var _loc1_:§8"J§ = null;
         if(this.§<"]§ == null)
         {
            this.§<"]§ = [];
         }
         this.§<"]§.length = 0;
         var _loc2_:int = this.§3#$§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3#$§[_loc2_] as §8"J§;
            if(_loc3_)
            {
               if(_loc3_.health > 0 && _loc3_.§@"q§)
               {
                  this.§<"]§.push(_loc3_);
               }
            }
            _loc2_--;
         }
         if(this.§<"]§.length > 0)
         {
            _loc4_ = Math.random() * this.§<"]§.length;
            _loc1_ = this.§<"]§[_loc4_];
         }
         return _loc1_;
      }
      
      public function §<r§() : int
      {
         var _loc3_:§8"J§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§3#$§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3#$§[_loc2_] as §8"J§;
            if(_loc3_)
            {
               _loc1_ += _loc3_.levelItem.destroyedScoreInc;
               if(_loc3_.isDamageAwardingScore())
               {
                  _loc1_ += _loc3_.levelItem.damageScore;
               }
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§&!g§.slingshot.§<r§());
      }
      
      protected function §-N§(param1:§1#B§, param2:§1#B§) : Boolean
      {
         if(param1 is §8"J§ && param2 is §8"J§ && !(param1 as §8"J§).§;"s§() && !(param2 as §8"J§).§;"s§())
         {
            return false;
         }
         return true;
      }
      
      protected function hasMinimumCollisionSpeed(param1:§1#B§, param2:§1#B§) : Boolean
      {
         return this.§-N§(param1,param2);
      }
      
      public function §1"w§() : void
      {
         this.§&!6§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:§8"J§, param2:§8"J§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §5"W§)
         {
            return 1;
         }
         if(param1 is §5"W§)
         {
            return Number(param1.§7"C§(param2.§[#C§()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(param1:§8"J§, param2:§8"J§) : Number
      {
         if(param2 is §5"W§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §do §(param1:§8"J§, param2:§8"J§) : Number
      {
         var _loc4_:Number = this.getCollisionForceFactor(param1,param2);
         var _loc5_:Number = this.getCollisionForceFactor(param2,param1);
         var _loc6_:Number = param1.getBody().GetMass();
         var _loc7_:Number = param2.getBody().GetMass();
         var _loc8_:b2Vec2 = param1.§2!y§();
         var _loc9_:b2Vec2 = param2.§2!y§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §#"v§(param1:§8"J§, param2:§8"J§) : Boolean
      {
         if(param2 is §4!2§ && param1 is §4!2§)
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§1#B§, param2:§1#B§, param3:b2Contact) : Boolean
      {
         var _loc15_:§%L§ = null;
         var _loc16_:b2JointEdge = null;
         var _loc17_:b2JointEdge = null;
         var _loc18_:b2Joint = null;
         var _loc19_:b2JointEdge = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(!this.§;"`§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§8"J§ = param1 as §8"J§;
         var _loc5_:§8"J§ = param2 as §8"J§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§-"a§)
         {
            _loc5_.applyDamage(_loc5_.§1#H§ * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§-"a§)
         {
            _loc4_.applyDamage(_loc4_.§1#H§ * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(this.§#"v§(_loc4_,_loc5_))
         {
            return false;
         }
         var _loc6_:Number = this.§do §(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         if(!_loc4_.§8$1§ && !_loc5_.§8$1§)
         {
            this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
         }
         var _loc9_:Number = this.getCollisionDamageFactor(_loc4_,_loc5_);
         var _loc10_:Number = this.getCollisionDamageFactor(_loc5_,_loc4_);
         var _loc11_:Number = _loc6_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc9_;
         var _loc13_:Number = _loc11_ > 0 ? Number(_loc4_.applyDamage(_loc11_,this,_loc5_,true)) : Number(_loc4_.health);
         var _loc14_:Number = _loc12_ > 0 ? Number(_loc5_.applyDamage(_loc12_,this,_loc4_,true)) : Number(_loc5_.health);
         loop0:
         for each(_loc15_ in this.§ t§)
         {
            if(_loc15_.breakable && _loc6_ >= _loc15_.breakForce)
            {
               _loc16_ = _loc4_.getBody().GetJointList();
               _loc17_ = _loc5_.getBody().GetJointList();
               if(_loc16_ != null)
               {
                  _loc18_ = _loc16_.joint;
                  _loc19_ = _loc16_.§0!>§;
                  while(_loc18_)
                  {
                     if(_loc18_ == _loc15_.§8!E§)
                     {
                        this.§7#t§(_loc15_);
                        break;
                     }
                     if(!_loc19_)
                     {
                        break;
                     }
                     _loc18_ = _loc19_.joint;
                     _loc19_ = _loc19_.§0!>§;
                  }
               }
               if(_loc17_ != null)
               {
                  _loc18_ = _loc17_.joint;
                  _loc19_ = _loc17_.§0!>§;
                  while(true)
                  {
                     if(_loc18_ && _loc19_)
                     {
                        if(_loc18_ == _loc15_.§8!E§)
                        {
                           break;
                        }
                        if(_loc19_)
                        {
                           continue;
                        }
                     }
                     continue loop0;
                  }
                  this.§7#t§(_loc15_);
               }
            }
         }
         if(_loc13_ < _loc7_)
         {
            _loc5_.causedDamageToObjects();
         }
         if(_loc14_ < _loc8_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc4_ is §5"W§)
         {
            if(_loc14_ <= 0)
            {
               if(!_loc5_.disableBirdPassThrough)
               {
                  _loc20_ = _loc4_.§+O§(_loc5_.§[#C§());
                  this.§;=§(_loc4_ as §5"W§,_loc6_ * _loc9_,_loc8_,_loc20_);
               }
               return false;
            }
         }
         if(_loc5_ is §5"W§)
         {
            if(_loc13_ <= 0)
            {
               if(!_loc4_.disableBirdPassThrough)
               {
                  _loc21_ = _loc5_.§+O§(_loc4_.§[#C§());
                  this.§;=§(_loc5_ as §5"W§,_loc6_ * _loc10_,_loc7_,_loc21_);
               }
               return false;
            }
         }
         return _loc13_ <= 0 && _loc14_ <= 0;
      }
      
      public function objectCollisionEnded(param1:§1#B§, param2:§1#B§) : void
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
      
      protected function §;=§(param1:§5"W§, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§2!y§();
         param1.§6#Q§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §5$9§() : void
      {
         var _loc2_:§8"J§ = null;
         var _loc1_:int = this.§3#$§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3#$§[_loc1_] as §8"J§;
            if(_loc2_ && _loc2_.§;#"§)
            {
               this.§'!`§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §=$=§() : void
      {
         var _loc2_:§8"J§ = null;
         var _loc1_:int = this.§3#$§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3#$§[_loc1_] as §8"J§;
            if(_loc2_ != null && _loc2_.isTnt())
            {
               this.§'!`§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function § "Z§() : int
      {
         return this.§3#$§.length;
      }
      
      public function §^$B§(param1:§=$&§) : void
      {
         var _loc4_:§8"J§ = null;
         var _loc5_:§9"4§ = null;
         var _loc6_:Vector.<§+!7§> = null;
         var _loc7_:§5t§ = null;
         var _loc8_:§%L§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3#$§.length)
         {
            if(_loc4_ = this.§3#$§[_loc2_] as §8"J§)
            {
               if(_loc4_.§7#§)
               {
                  if(!_loc4_.§&"y§())
                  {
                     (_loc5_ = new §9"4§()).angle = _loc4_.§30§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     if(_loc4_.itemName == §!!E§.§9!O§)
                     {
                        _loc5_.type = (_loc4_ as §!!E§).§-"R§;
                     }
                     _loc5_.x = _loc4_.getBody().GetPosition().x;
                     _loc5_.y = _loc4_.getBody().GetPosition().y;
                     if(!_loc4_.§"!g§())
                     {
                        _loc5_.z = _loc4_.§["e§();
                     }
                     if(_loc4_.§-"N§())
                     {
                        _loc5_.linearForce = _loc4_.§-"N§();
                     }
                     if(_loc4_.§?#=§.hasSpecialBehavior)
                     {
                        _loc5_.§-#P§(_loc4_.§?#=§.getBehaviorsData());
                     }
                     if(_loc6_ = _loc4_.§?#=§.getEvents())
                     {
                        _loc5_.§!8§(_loc6_);
                     }
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§ t§.length)
         {
            _loc8_ = this.§ t§[_loc3_];
            (_loc7_ = new §5t§(_loc8_.type,_loc8_.id1,_loc8_.id2,_loc8_.point1,_loc8_.point2,_loc8_.§,$7§,_loc8_.§1!^§,_loc8_.lowerLimit,_loc8_.upperLimit,_loc8_.§##3§,_loc8_.motorSpeed,_loc8_.§@q§,_loc8_.maxTorque,_loc8_.breakable,_loc8_.breakForce,_loc8_.isOneWayDestroyed)).annihilationTime = _loc8_.annihilationTime;
            _loc7_.distanceToDestroyChild = _loc8_.distanceToDestroyChild;
            _loc7_.axisX = _loc8_.axisX;
            _loc7_.axisY = _loc8_.axisY;
            _loc7_.breakable = _loc8_.breakable;
            _loc7_.breakForce = _loc8_.breakForce;
            _loc7_.destroyChild = _loc8_.destroyChild;
            param1.§="<§(_loc7_);
            _loc3_++;
         }
      }
      
      public function § !A§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§3#$§.length)
         {
            if(this.§3#$§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§3#$§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§8"J§ = null;
         this.§#>§ = param1;
         this.setTexture(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3#$§.length)
         {
            _loc3_ = this.§3#$§[_loc2_] as §8"J§;
            if(_loc3_ && _loc3_.§"!g§())
            {
               _loc3_.sprite.visible = !this.§#>§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§;"`§ = param1;
      }
      
      public function §"#-§() : int
      {
         return this.§["D§;
      }
      
      public function § ! §() : int
      {
         return this.§9!h§;
      }
      
      public function §'!'§(param1:§1#B§) : Boolean
      {
         var _loc2_:int = this.§3#$§.indexOf(param1);
         return _loc2_ >= 0;
      }
   }
}
