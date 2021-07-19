package §[#a§
{
   import §#v§.§-"R§;
   import §,#L§.§!#%§;
   import §,#L§.§'!5§;
   import §,#L§.§8"y§;
   import §,#L§.§=#O§;
   import §,#L§.§?W§;
   import §-W§.§9#Z§;
   import §0m§.b2Vec2;
   import §1&§.Texture;
   import §52§.§#!,§;
   import §52§.§1E§;
   import §52§.§6" §;
   import §6§.§,"s§;
   import §8§.§#$+§;
   import §9$§.Image;
   import §9$§.Sprite;
   import §9$§.§],§;
   import §;"R§.b2Contact;
   import §;$%§.§"c§;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=!7§.§@#f§;
   import §=#n§.b2Body;
   import §>!#§.§'"R§;
   import §@!O§.b2JointEdge;
   import §@!O§.b2PrismaticJoint;
   import §@!O§.b2RevoluteJoint;
   import §@"§.§+!3§;
   import §@"§.§`"W§;
   import §`#C§.§-"L§;
   import §`#C§.§0!y§;
   import §`#C§.§3"F§;
   import §`#C§.§3#U§;
   import §`#C§.§8K§;
   import §`#C§.§9#!§;
   import §`#C§.§^#A§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6"[§ implements §7!O§
   {
      
      private static const §#$ §:Boolean = false;
      
      public static const §#E§:int = 1000000000;
      
      public static const §@A§:int = -1;
      
      public static const ID_NEXT_FREE:int = -2;
      
      public static const §@#7§:String = "onDestroy";
       
      
      protected var §3!2§:Vector.<§<"H§>;
      
      protected var §&"n§:Vector.<§%#T§>;
      
      protected var §%"b§:Vector.<§@#f§>;
      
      protected var §+#D§:§'"R§;
      
      private var §9P§:int = 1000000000;
      
      public var §,#2§:§#!,§;
      
      protected var §^!<§:Vector.<§<#;§>;
      
      protected var §8"f§:§9$§.Sprite;
      
      protected var §+#j§:§9$§.Sprite;
      
      protected var §<"9§:§9$§.Sprite;
      
      protected var §8"v§:§9$§.Sprite;
      
      protected var §6M§:§9$§.Sprite;
      
      protected var §@#K§:§9$§.Sprite;
      
      protected var §@#x§:Vector.<Texture>;
      
      protected var §#$2§:Vector.<§=#O§>;
      
      protected var §`r§:int = 1;
      
      protected var §]"2§:Vector.<§'!5§>;
      
      protected var §<"[§:int = 0;
      
      private var §+#R§:int = 0;
      
      private var §?"8§:int = 0;
      
      private var §'>§:§!#%§;
      
      private var §^e§:§-k§;
      
      private var §+"6§:Boolean = true;
      
      private var §1$;§:Boolean = true;
      
      private var §#!+§:§9#Z§;
      
      private var §=r§:Boolean = false;
      
      private var §"! §:Array;
      
      private var §5#w§:Array;
      
      public function §6"[§(param1:§#!,§, param2:§-"R§, param3:§9$§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§3!2§ = new Vector.<§<"H§>();
         this.§&"n§ = new Vector.<§%#T§>();
         this.§%"b§ = new Vector.<§@#f§>();
         this.§+#D§ = new §'"R§();
         this.§^!<§ = new Vector.<§<#;§>();
         this.§@#x§ = new Vector.<Texture>();
         this.§]"2§ = new Vector.<§'!5§>();
         this.§'>§ = new §!#%§();
         super();
         this.§,#2§ = param1;
         this.§8"f§ = param3;
         this.§8"f§.§0$6§ = false;
         this.§1$;§ = true;
         this.§+"6§ = true;
         this.§+#j§ = new §9$§.Sprite();
         this.§<"9§ = new §9$§.Sprite();
         this.§8"v§ = new §9$§.Sprite();
         this.§@#K§ = new §9$§.Sprite();
         this.§6M§ = new §9$§.Sprite();
         this.§8"f§.addChild(this.§+#j§);
         this.§8"f§.addChild(this.§<"9§);
         this.§8"f§.addChild(this.§8"v§);
         §"c§.init(4,2);
         if(param2.hasGround)
         {
            _loc5_ = (this.§,#2§.§8!X§.§9!m§ + this.§,#2§.§8!X§.§6"4§) / 2;
            _loc6_ = 0 + §1E§.§1!n§;
            this.addObject(param4,_loc5_,_loc6_,0,§6"[§.§@A§);
         }
         this.§5#w§ = [];
         this.addLevelObjects(param2);
      }
      
      public function get §<#^§() : §9$§.Sprite
      {
         return this.§@#K§;
      }
      
      public function get §>u§() : §9$§.Sprite
      {
         return this.§8"v§;
      }
      
      public function get §]#0§() : §9$§.Sprite
      {
         return this.§<"9§;
      }
      
      public function get backgroundSprite() : §9$§.Sprite
      {
         return this.§6M§;
      }
      
      public function get final() : §9$§.Sprite
      {
         return this.§8"f§;
      }
      
      public function get activeObject() : §="@§
      {
         return this.§^e§;
      }
      
      public function get objectCount() : int
      {
         return this.§3!2§.length;
      }
      
      public function set §!!+§(param1:§9#Z§) : void
      {
         if(param1 != this.§#!+§)
         {
            this.§#!+§ = param1;
            if(this.§=r§ && this.§#!+§)
            {
               this.§#!+§.levelStarted();
            }
         }
      }
      
      public function levelInitialized() : void
      {
         if(!this.§=r§)
         {
            this.§=r§ = true;
            if(this.§#!+§)
            {
               this.§#!+§.levelStarted();
            }
         }
      }
      
      public function §[!`§(param1:String) : §8K§
      {
         return this.§,#2§.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§^e§)
         {
            _loc3_ = this.§^e§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      public function §'$&§(param1:§!#%§) : void
      {
         var _loc2_:Number = 1;
         var _loc3_:§8K§ = this.§,#2§.levelItemManager.getItem(param1.type);
         if(_loc3_)
         {
            _loc2_ = _loc3_.scale;
         }
         this.addObjectFromModel(param1,param1.id,false,false,false,_loc2_);
      }
      
      protected function addLevelObjects(param1:§-"R§) : void
      {
         var _loc3_:§!#%§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§8K§ = null;
         var _loc6_:§8"y§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§,#2§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.addObjectFromModel(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§@#i§();
         this.§6$6§(true);
         this.§#$2§ = new Vector.<§=#O§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§-#r§)
         {
            _loc6_ = param1.§^#J§(_loc2_);
            this.§;#6§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         §"c§.dispose();
         while(this.§3!2§.length > 0)
         {
            this.§!"n§(0,false,true);
         }
         while(this.§%"b§.length > 0)
         {
            this.§^3§(0);
         }
         this.§3!2§ = null;
         this.§&"n§ = null;
         this.§%"b§ = null;
         this.§+#D§ = null;
         this.§]"2§ = null;
         this.§5#w§ = null;
         if(this.§8"f§)
         {
            this.§8"f§.dispose();
            this.§8"f§ = null;
         }
         this.§+#j§ = null;
         this.§<"9§ = null;
         if(this.§8"v§)
         {
            this.§8"v§.dispose();
            this.§8"v§ = null;
         }
         if(this.§@#K§)
         {
            this.§@#K§.dispose();
            this.§@#K§ = null;
         }
         if(this.§6M§)
         {
            this.§6M§.dispose();
            this.§6M§ = null;
         }
         while(this.§@#x§.length > 0)
         {
            _loc1_ = this.§@#x§.pop();
            this.§,#2§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §6$6§(param1:Boolean) : void
      {
         this.§+#j§.visible = param1;
         this.§6M§.visible = param1;
      }
      
      private function §@#i§() : void
      {
         var _loc5_:§<"H§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:§="@§ = null;
         var _loc9_:Number = NaN;
         var _loc1_:Rectangle = null;
         var _loc2_:Rectangle = null;
         var _loc3_:Vector.<§="@§> = new Vector.<§="@§>();
         var _loc4_:Vector.<§="@§> = new Vector.<§="@§>();
         for each(_loc5_ in this.§3!2§)
         {
            if((_loc7_ = _loc5_ as §="@§) && _loc7_.§?#C§())
            {
               _loc9_ = _loc7_.levelItem.shape.getDimension() / §#!,§.§?$#§;
               _loc6_ = new Rectangle(_loc5_.sprite.x - _loc9_ / 2,_loc5_.sprite.y - _loc9_ / 2,_loc9_,_loc9_);
               if(_loc7_.§1#a§() == §8K§.§1";§)
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
            this.§["B§(_loc1_,_loc3_,this.§7"X§(),this.§+#j§);
         }
         if(_loc2_)
         {
            this.§["B§(_loc2_,_loc4_,this.§ #'§(),this.§6M§);
         }
      }
      
      private function §["B§(param1:Rectangle, param2:Vector.<§="@§>, param3:String, param4:§9$§.Sprite) : void
      {
         var _loc5_:Number = this.§,#2§.camera.borderLeft / §#!,§.§?$#§;
         var _loc6_:Number = this.§,#2§.camera.borderRight / §#!,§.§?$#§;
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
         this.§9"n§(_loc14_.rect,_loc14_,_loc9_ * _loc15_,param3);
         var _loc16_:BitmapData = this.§;w§(param2,_loc10_,_loc11_,_loc12_,_loc13_,_loc9_);
         _loc14_.copyChannel(_loc16_,_loc16_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         var _loc17_:Texture = this.§,#2§.textureManager.getTextureFromBitmapData(_loc14_);
         this.§@#x§.push(_loc17_);
         var _loc18_:Image;
         (_loc18_ = new Image(_loc17_)).x = _loc12_ / _loc9_;
         _loc18_.y = _loc13_ / _loc9_;
         _loc18_.scaleX = 1 / _loc9_;
         _loc18_.scaleY = 1 / _loc9_;
         param4.addChild(_loc18_);
         _loc16_.dispose();
      }
      
      private function §;w§(param1:Vector.<§="@§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§="@§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§-"L§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §3"F§)
            {
               this.§#"h§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§^!Y§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §9#!§)
            {
               if((_loc12_ as §9#!§).vertices.length == 4)
               {
                  this.§#"h§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§^!Y§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §9#!§).vertices.length == 3)
               {
                  this.§?#G§(_loc12_ as §9#!§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§^!Y§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §3#U§)
            {
               this.§1#n§(_loc12_ as §3#U§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §#"h§(param1:§-"L§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §#!,§.§?$#§ * param9;
         var _loc13_:Number = param1.getHeight() / §#!,§.§?$#§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §?#G§(param1:§9#!§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §#!,§.§?$#§ * param8,_loc14_.y / §#!,§.§?$#§ * param8);
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
      
      protected function §1#n§(param1:§3#U§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc11_:Number = param1.radius / §#!,§.§?$#§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §7"X§() : String
      {
         return this.§,#2§.background.§6!m§();
      }
      
      protected function § #'§() : String
      {
         return this.§,#2§.background.§^"1§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §9"n§(param1:Rectangle, param2:BitmapData, param3:Number, param4:String) : void
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
         var _loc5_:§+!3§;
         if(_loc5_ = this.§,#2§.backgroundTextureManager.getTexture(param4))
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
      
      protected function §?#s§(param1:§!#%§, param2:§9$§.Sprite, param3:§`"W§, param4:§8K§, param5:Number = 1.0, param6:Boolean = true) : §-k§
      {
         var _loc11_:§-k§ = null;
         var _loc7_:String = param1.type;
         Number(param1.x);
         Number(param1.y);
         Number(param1.angle);
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §,W§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §!!n§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §-#p§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §""G§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §`"g§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §9!c§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §`!!§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §"$7§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §4!d§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §8"i§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §-k§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§<"[§ > 0;
      }
      
      protected function addObjectPig(param1:§!#%§, param2:§9$§.Sprite, param3:§`"W§, param4:§8K§, param5:Number = 1.0) : §3a§
      {
         return new §3a§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false, param11:Boolean = false, param12:Number = 0.0, param13:b2Vec2 = null, param14:Number = 0.0, param15:Number = 0.0, param16:Boolean = true, param17:Number = 1.0) : §<"H§
      {
         this.§'>§.type = param1;
         this.§'>§.x = param2;
         this.§'>§.y = param3;
         this.§'>§.angle = param4;
         this.§'>§.§2#R§ = 0;
         this.§'>§.§<"7§ = 0;
         this.§'>§.angularVelocity = param12;
         this.§'>§.angularDamping = param14;
         this.§'>§.linearDamping = param15;
         this.§'>§.awake = param16;
         this.§'>§.health = param17;
         return this.addObjectFromModel(this.§'>§,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function §%!0§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false, param10:Boolean = false) : §<"H§
      {
         this.§'>§.type = param1;
         this.§'>§.x = param2;
         this.§'>§.y = param3;
         this.§'>§.angle = param4;
         this.§'>§.§2#R§ = param6;
         this.§'>§.§<"7§ = param7;
         return this.addObjectFromModel(this.§'>§,param5,false,false,false,param8,param9,param10);
      }
      
      protected function addObjectFromModel(param1:§!#%§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §<"H§
      {
         var _loc9_:§9$§.Sprite = new §9$§.Sprite();
         var _loc10_:§<"H§;
         if((_loc10_ = this.§-#,§(param1,param2,_loc9_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc10_ is §="@§ && (_loc10_ as §="@§).§?#C§())
         {
            _loc9_.visible = !this.§+"6§;
         }
         if(_loc10_ is §-k§ && !(_loc10_ is §8"i§))
         {
            ++this.§<"[§;
         }
         if(!param7)
         {
            if(param8)
            {
               this.§8"v§.§,!,§(_loc9_);
            }
            else
            {
               this.§<"9§.§,!,§(_loc9_);
            }
         }
         else
         {
            this.§@#K§.§,!,§(_loc9_);
         }
         if(param3)
         {
            this.§,#2§.§&!y§(_loc10_);
         }
         if(param4 && _loc10_ is §-k§)
         {
            this.§^e§ = §-k§(_loc10_);
         }
         return _loc10_;
      }
      
      private function §-#,§(param1:§!#%§, param2:int, param3:§9$§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §<"H§
      {
         var _loc7_:Vector.<§?W§> = null;
         var _loc8_:§?W§ = null;
         var _loc10_:§="@§ = null;
         if(param2 == ID_NEXT_FREE)
         {
            param2 = this.§9P§;
            ++this.§9P§;
         }
         else
         {
            if(param2 >= §#E§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §#E§);
            }
            if(this.§"#y§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§<"H§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §="@§)
         {
            if((_loc6_ as §="@§).hasSpecialBehavior)
            {
               _loc7_ = (_loc6_ as §="@§).§&,§.getBehaviorsData();
               for each(_loc8_ in _loc7_)
               {
                  if(!this.§,#2§.§1!P§(_loc8_.type,_loc8_.event))
                  {
                     (_loc6_ as §="@§).§-"k§(this.§,#2§,_loc8_);
                  }
               }
            }
         }
         if(_loc6_ is §-k§)
         {
            ++this.§?"8§;
         }
         if(_loc6_)
         {
            _loc10_ = _loc6_ as §="@§;
            if(_loc6_ is §@#f§)
            {
               this.§%"b§.push(_loc6_);
            }
            else
            {
               if(_loc10_)
               {
                  _loc10_.§4"c§(param2);
                  this.§+#D§[param1.instanceName] = _loc6_;
               }
               this.§3!2§.push(_loc6_);
               if(_loc6_ is §%#T§)
               {
                  this.§&"n§.push(_loc6_);
               }
            }
            if(this.§#!+§)
            {
               this.§#!+§.§6!Z§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function §0!'§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§!#%§, param2:§9$§.Sprite, param3:§`"W§, param4:§8K§, param5:int, param6:Number = 1.0) : §<"H§
      {
         return new § "r§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function §`$5§(param1:§!#%§, param2:§9$§.Sprite, param3:§`"W§, param4:§8K§, param5:int, param6:Number = 1.0) : §<"H§
      {
         return new §=#i§(param2,param3,this.§,#2§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:§!#%§, param2:§9$§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §<"H§
      {
         var _loc5_:§8K§;
         if(!(_loc5_ = this.§,#2§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§0!'§();
         }
         var _loc7_:§`"W§ = this.§,#2§.animationManager.getAnimation(_loc6_);
         var _loc8_:§<"H§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.§?#s§(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §8K§.§=l§)
         {
            (_loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4)).§8#6§ = true;
         }
         else if(_loc5_.itemType == §8K§.§,"i§ || _loc5_.itemType == §8K§.§?"^§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§<#;§.§`Q§,param4);
            }
            else if(_loc5_.itemName == §""G§.§default§)
            {
               _loc8_ = this.§`$5§(param1,param2,_loc7_,_loc5_,§<#;§.§%$&§,param4);
            }
            else
            {
               _loc8_ = new §=,§(param2,_loc7_,this.§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §="@§(param2,_loc7_,this.§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§,#2§.addScore(param1,§6" §.§8#§,param3,param4,param5,param6);
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§,#2§.particles.addParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§,#2§.particles.addSimpleParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function §"!=§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§,#2§.particles.§"!=§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      protected function §-]§(param1:§="@§) : void
      {
         var _loc4_:§=#O§ = null;
         var _loc5_:§=#O§ = null;
         var _loc6_:§<"H§ = null;
         var _loc7_:§<"H§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§#$2§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§#$2§[_loc3_];
            if(this.§#$2§[_loc3_].id1 == _loc2_ || this.§#$2§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§&#X§)
               {
                  _loc6_ = _loc4_.§&#X§.§+#0§().GetUserData() as §<"H§;
                  _loc7_ = _loc4_.§&#X§.§4#M§().GetUserData() as §<"H§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§#$2§.pop();
               if(_loc3_ < this.§#$2§.length)
               {
                  this.§#$2§[_loc3_] = _loc5_;
               }
               this.§02§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §;#6§(param1:§8"y§) : §=#O§
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§=#O§ = §=#O§.§;#6§(param1);
         this.§#$2§.push(_loc4_);
         var _loc5_:§<"H§ = this.§"#y§(_loc2_);
         var _loc6_:§<"H§ = this.§"#y§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §8"y§.§[!J§)
            {
               _loc4_.§&#X§ = this.§,#2§.mLevelEngine.mWorld.§'#J§(_loc4_.§1Z§(_loc5_,_loc6_));
               if(_loc4_.type == §8"y§.§!![§ && _loc4_.destroyChild)
               {
                  this.§]"2§.push(new §'!5§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
               }
            }
            else
            {
               this.§]"2§.push(new §'!5§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
         return _loc4_;
      }
      
      protected function §02§(param1:§=#O§) : void
      {
         if(param1.§&#X§)
         {
            this.§,#2§.mLevelEngine.mWorld.§!#n§(param1.§&#X§);
         }
         if(param1.§"#F§)
         {
            if(this.§<"9§.contains(param1.§"#F§))
            {
               this.§<"9§.removeChild(param1.§"#F§,true);
            }
         }
      }
      
      public function §#Q§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§^!<§.push(§<#;§.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
      
      protected function playExplosionSound(param1:int) : void
      {
         §#$+§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §!!c§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true, param9:Boolean = true) : void
      {
         this.§^!<§.push(§<#;§.§&"T§(param1,param2,param3,param4,param5,param6,param7,param8));
         if(param9)
         {
            §#$+§.playSound("TntExplosions","ChannelExplosions");
         }
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§,#2§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get §[$#§() : Number
      {
         return this.§,#2§.§[$#§;
      }
      
      public function §>#!§(param1:Number, param2:Number) : int
      {
         var _loc4_:§="@§ = null;
         var _loc3_:int = this.§3!2§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§3!2§[_loc3_] as §="@§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §="@§
      {
         var _loc4_:§="@§ = null;
         var _loc3_:int = this.§3!2§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§3!2§[_loc3_] as §="@§)
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
      
      public function §7r§(param1:Number, param2:Number) : Vector.<§="@§>
      {
         var _loc5_:§="@§ = null;
         var _loc3_:Vector.<§="@§> = new Vector.<§="@§>();
         var _loc4_:int = this.§3!2§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§3!2§[_loc4_] as §="@§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §<"H§
      {
         return this.§3!2§[param1];
      }
      
      public function §"#y§(param1:int) : §="@§
      {
         var _loc2_:§<"H§ = null;
         var _loc3_:§="@§ = null;
         for each(_loc2_ in this.§3!2§)
         {
            _loc3_ = _loc2_ as §="@§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §1$&§(param1:String) : §="@§
      {
         return this.§+#D§[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§3!2§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§3!2§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.updateParticles(param1);
         _loc4_ = this.§%"b§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§%"b§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§="@§) : §"c§
      {
         var _loc4_:b2Vec2;
         var _loc5_:Number = (_loc4_ = param3.getBody().GetPosition()).x - param1;
         var _loc6_:Number = _loc4_.y - param2;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         var _loc8_:§"c§;
         (_loc8_ = §"c§.getObject()).§-!i§ = _loc7_;
         _loc8_.§<#L§.x = _loc4_.x;
         _loc8_.§<#L§.y = _loc4_.y;
         return _loc8_;
      }
      
      protected function applyExplosionDamage(param1:§="@§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function ignoreExplosion(param1:§="@§, param2:int) : Boolean
      {
         return false;
      }
      
      protected function §-"<§() : void
      {
         var _loc2_:§<#;§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc8_:§="@§ = null;
         var _loc9_:§"c§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§1$;§)
         {
            return;
         }
         var _loc1_:Point = new Point();
         while(this.§^!<§.length > 0)
         {
            _loc2_ = this.§^!<§.shift();
            _loc3_ = _loc2_.§""S§;
            _loc4_ = _loc2_.x;
            _loc5_ = _loc2_.y;
            _loc6_ = _loc2_.damage;
            this.shakeCameraOnExplosion(_loc2_.push);
            var _loc14_:int = 0;
            var _loc15_:* = this.§3!2§;
            while(§§hasnext(_loc15_,_loc14_))
            {
               if((_loc8_ = §§nextvalue(_loc14_,_loc15_) as §="@§) && !this.ignoreExplosion(_loc8_,_loc2_.type))
               {
                  if((_loc9_ = this.getExplosionDistanceToObject(_loc4_,_loc5_,_loc8_)).§-!i§ <= _loc2_.§""S§)
                  {
                     _loc10_ = _loc2_.push * this.getExplosionDamageMultiplier(_loc9_.§-!i§,_loc2_.§""S§);
                     if(_loc9_.§-!i§ > 0)
                     {
                        _loc1_.x = _loc9_.§<#L§.x - _loc4_;
                        _loc1_.y = _loc9_.§<#L§.y - _loc5_;
                        _loc1_.normalize(1);
                        _loc11_ = _loc10_ * _loc1_.x;
                        _loc12_ = _loc10_ * _loc1_.y;
                        _loc8_.getBody().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc9_.§<#L§.x,_loc9_.§<#L§.y));
                     }
                  }
                  if(_loc9_.§-!i§ <= _loc2_.damageRadius)
                  {
                     _loc13_ = _loc6_ * this.getExplosionDamageMultiplier(_loc9_.§-!i§,_loc2_.damageRadius);
                     if(isNaN(_loc13_))
                     {
                        _loc13_ = 0;
                     }
                     this.applyExplosionDamage(_loc8_,_loc13_);
                  }
                  §"c§.§8!^§(_loc9_);
               }
            }
            if(_loc2_.§]§)
            {
               this.updateExplosionEffects(_loc2_,_loc4_,_loc5_,_loc3_);
            }
         }
      }
      
      protected function updateExplosionEffects(param1:§<#;§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§,#2§.particles.addParticle(this.getMainExplosionCoreName(param1.type),§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.§;";§,param2,param3,600,"",§=$4§.§[!Q§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§,#2§.particles.addParticle(§=$4§.§+#X§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param2,param3,_loc7_,"",§=$4§.§[!Q§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(0)
         {
         }
         return §=$4§.§<"=§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§="@§ = null;
         var _loc2_:§<"H§ = null;
         var _loc3_:int = this.§3!2§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§3!2§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§!"n§(_loc3_,true);
            }
            else
            {
               this.§&!+§(_loc2_,param1);
               _loc4_ = _loc2_ as §="@§;
               if(this.§7#`§(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§&!N§(§0!y§.§#5§);
                  }
                  this.§!"n§(_loc3_,!(_loc4_ is §-k§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§&!N§(§0!y§.§#5§);
                  this.§!"n§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§"#C§(param1);
         this.§-"<§();
         if(this.§#!+§)
         {
            this.§#!+§.update(param1);
         }
      }
      
      protected function §&!+§(param1:§<"H§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function updateParticles(param1:Number) : void
      {
         var _loc2_:§@#f§ = null;
         var _loc3_:int = this.§%"b§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§%"b§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§^3§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §"#C§(param1:Number) : void
      {
         this.§-#2§(param1);
         this.§-#_§();
      }
      
      protected function §-#2§(param1:Number) : void
      {
         var _loc3_:§'!5§ = null;
         var _loc4_:§<"H§ = null;
         var _loc5_:§<"H§ = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc2_:int = this.§]"2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]"2§[_loc2_];
            if(_loc3_.§6!6§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.isOneWayDestroyed)
                  {
                     _loc4_ = this.§"#y§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  _loc4_ = this.§"#y§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§]"2§.splice(_loc2_,1);
               }
            }
            else if(_loc3_.distanceToDestroyChild > 0)
            {
               if((_loc4_ = this.§"#y§(_loc3_.objectId1)).getBody().GetLinearVelocity().x > 0 || _loc4_.getBody().GetLinearVelocity().y > 0)
               {
                  _loc5_ = this.§"#y§(_loc3_.objectId2);
                  _loc6_ = _loc4_.getBody().GetPosition();
                  _loc7_ = _loc5_.getBody().GetPosition();
                  if(Number(Math.sqrt((_loc6_.x - _loc7_.x) * (_loc6_.x - _loc7_.x) + (_loc6_.y - _loc7_.y) * (_loc6_.y - _loc7_.y))) > _loc3_.distanceToDestroyChild)
                  {
                     _loc3_.§6!6§ = true;
                  }
               }
            }
            _loc2_--;
         }
      }
      
      private function §[N§(param1:§=#O§) : void
      {
         var _loc2_:§="@§ = param1.debug_object_1;
         var _loc3_:§="@§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§"#y§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§"#y§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§"#F§ == null)
         {
            param1.§"#F§ = new §],§(4,4,4294901760);
            this.§<"9§.addChild(param1.§"#F§);
         }
         param1.§"#F§.x = _loc4_;
         param1.§"#F§.y = _loc5_;
         param1.§"#F§.width = _loc8_;
         param1.§"#F§.rotation = _loc9_;
      }
      
      protected function §#$3§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §-#_§() : void
      {
         var _loc1_:§=#O§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§#$2§)
         {
            if(§#$ §)
            {
               this.§[N§(_loc1_);
            }
            if(_loc1_.§83§ && _loc1_.§=I§ && _loc1_.§`$§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §8"y§.§?#§)
               {
                  _loc4_ = (_loc1_.§&#X§ as b2PrismaticJoint).§-",§();
                  _loc5_ = (_loc1_.§&#X§ as b2PrismaticJoint).§#!O§();
                  _loc6_ = this.§#$3§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§&#X§ as b2PrismaticJoint).§`#+§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §8"y§.§6#N§)
               {
                  _loc7_ = (_loc1_.§&#X§ as b2RevoluteJoint).§!#a§();
                  if((_loc5_ = (_loc1_.§&#X§ as b2RevoluteJoint).§#!O§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§&#X§ as b2RevoluteJoint).§`#+§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function destroyAllJoints() : void
      {
         var _loc1_:§=#O§ = null;
         while(this.§#$2§.length > 0)
         {
            _loc1_ = this.§#$2§.pop();
            this.§02§(_loc1_);
         }
      }
      
      public function §7#`§(param1:§<"H§) : Boolean
      {
         this.§3$2§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §^#A§.§&M§) && param1.getBody() && this.§=!§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            if(param1 is §="@§)
            {
               §="@§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §3$2§(param1:§<"H§) : void
      {
      }
      
      public function §%!W§(param1:Number, param2:Number) : Boolean
      {
         return this.§,#2§.camera.§[I§(param1,param2);
      }
      
      public function §=!§(param1:Number, param2:Number) : Boolean
      {
         return this.§,#2§.§8!X§.§]""§(param1,param2);
      }
      
      public function §^3§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§@#f§ = this.§%"b§[param1];
         this.§%$1§(_loc2_.sprite);
         this.§%"b§[param1] = null;
         this.§%"b§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§="@§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§="@§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §!"n§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§="@§ = null;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§<"H§;
         if((_loc4_ = this.§3!2§[param1]) is §3a§)
         {
            ++this.§+#R§;
         }
         else if(_loc4_ is §-k§)
         {
            --this.§<"[§;
         }
         if(_loc4_ == this.§^e§)
         {
            this.§^e§ = null;
         }
         if(_loc4_ is §="@§)
         {
            _loc5_ = _loc4_ as §="@§;
            if(param2)
            {
               _loc6_ = this.getScoreTextPosition(_loc5_);
               _loc7_ = §=$4§.§2"]§(_loc5_.itemName,_loc5_.§8#6§);
               _loc8_ = this.shouldShowScoreText(_loc5_);
               if(_loc5_.levelItem.destroyedScoreInc > 0)
               {
                  this.§,#2§.addScore(_loc5_.levelItem.destroyedScoreInc,§6" §.§^#w§,_loc8_,_loc6_.x,_loc6_.y,_loc7_);
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
            this.§-]§(_loc5_);
            this.removeDestroyedAttachedJoints(_loc5_);
            delete this.§+#D§[_loc5_.§&,§.instanceName];
         }
         this.§%$1§(_loc4_.sprite);
         this.§3!2§[param1] = null;
         this.§3!2§.splice(param1,1);
         if(_loc4_ is §%#T§)
         {
            if((_loc9_ = this.§&"n§.indexOf(§%#T§(_loc4_))) >= 0)
            {
               this.§&"n§.splice(_loc9_,1);
            }
         }
         if(this.§#!+§)
         {
            this.§#!+§.§>"@§(_loc4_);
         }
         if(!param3)
         {
            this.§>"@§(_loc4_);
         }
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function removeDestroyedAttachedJoints(param1:§="@§) : void
      {
         var _loc2_:§'!5§ = null;
         for each(_loc2_ in this.§]"2§)
         {
            if(_loc2_.objectId1 == param1.id || _loc2_.objectId2 == param1.id)
            {
               _loc2_.§6!6§ = true;
            }
         }
      }
      
      protected function §>"@§(param1:§<"H§) : void
      {
         var _loc2_:§="@§ = null;
         var _loc3_:§!#%§ = null;
         var _loc4_:Vector.<§,"s§> = null;
         var _loc5_:int = 0;
         var _loc6_:§,"s§ = null;
         if(param1 is §="@§)
         {
            _loc2_ = param1 as §="@§;
            _loc3_ = _loc2_.§&,§;
            if(_loc3_)
            {
               if(_loc4_ = _loc3_.getEvents())
               {
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_.length)
                  {
                     if((_loc6_ = _loc4_[_loc5_]).§0"$§ == §@#7§)
                     {
                        this.§,#2§.§""x§(_loc6_);
                     }
                     _loc5_++;
                  }
               }
            }
         }
      }
      
      protected function §3!g§(param1:§="@§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§1!e§(param2,param3,this);
         }
      }
      
      private function §%$1§(param1:§9$§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§<"H§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(param1)
         {
            this.§!"n§(this.§3!2§.indexOf(param1),param2,param3);
         }
      }
      
      public function §<!H§(param1:§<"H§, param2:String) : §<"H§
      {
         var _loc7_:§="@§ = null;
         var _loc8_:int = 0;
         var _loc3_:int = this.§3!2§.indexOf(param1);
         if(_loc3_ < 0)
         {
            return null;
         }
         var _loc4_:§<"H§;
         var _loc5_:b2Body = (_loc4_ = this.§3!2§[_loc3_]).getBody();
         var _loc6_:§<"H§;
         ((_loc6_ = this.addObject(param2,_loc5_.GetPosition().x,_loc5_.GetPosition().y,_loc5_.GetAngle() / Math.PI * 180,§6"[§.ID_NEXT_FREE,false,false,false,1,false)) as §="@§).§9!V§(_loc4_.getBody());
         (_loc6_ as §="@§).§!!i§(_loc4_.getBody().GetAngularVelocity());
         if(_loc4_ == this.§^e§)
         {
            this.§^e§ = null;
         }
         if(_loc4_ is §="@§)
         {
            (_loc7_ = _loc4_ as §="@§).updateBeforeRemoving(null,true);
            this.§-]§(_loc7_);
            this.removeDestroyedAttachedJoints(_loc7_);
            delete this.§+#D§[_loc7_.§&,§.instanceName];
         }
         this.§%$1§(_loc4_.sprite);
         this.§3!2§[_loc3_] = null;
         this.§3!2§.splice(_loc3_,1);
         if(_loc4_ is §%#T§)
         {
            if((_loc8_ = this.§&"n§.indexOf(§%#T§(_loc4_))) >= 0)
            {
               this.§&"n§.splice(_loc8_,1);
            }
         }
         if(this.§#!+§)
         {
            this.§#!+§.§>"@§(_loc4_);
         }
         _loc4_.dispose(false);
         _loc4_ = null;
         return _loc6_;
      }
      
      public function §4"q§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§,#2§.§4y§();
         }
      }
      
      public function § !A§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§,#2§.§ !A§(param1,param2,param3,param4);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§8"f§.x = -param1;
         this.§8"f§.y = -param2;
         this.§@#K§.x = -param1;
         this.§@#K§.y = -param2;
         this.§8"v§.x = -param1;
         this.§8"v§.y = -param2;
         this.§6M§.x = -param1;
         this.§6M§.y = -param2;
      }
      
      public function isLevelGoalObjectsAlive() : Boolean
      {
         var _loc2_:§<"H§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!2§.length)
         {
            _loc2_ = this.§3!2§[_loc1_];
            if(_loc2_)
            {
               if(_loc2_.§8#6§)
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
         var _loc2_:§<"H§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!2§.length)
         {
            _loc2_ = this.§3!2§[_loc1_];
            if(_loc2_ && _loc2_ is §3a§ && (_loc2_ as §3a§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:§3a§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§3!2§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§3!2§[_loc3_] as §3a§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§'#d§ && !_loc4_.§?#"§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §#R§() : Array
      {
         var _loc2_:§="@§ = null;
         this.§5#w§.length = 0;
         var _loc1_:int = this.§3!2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!2§[_loc1_] as §="@§;
            if(_loc2_ && _loc2_.health > 0)
            {
               if(_loc2_.§=!8§())
               {
                  this.§5#w§.push(_loc1_);
               }
            }
            _loc1_--;
         }
         return this.§5#w§;
      }
      
      public function §0!4§() : int
      {
         var _loc2_:§="@§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3!2§)
         {
            if(_loc2_ is §=,§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §[#g§() : int
      {
         var _loc2_:§="@§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3!2§)
         {
            if(_loc2_ && _loc2_.§?#C§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§3a§ = null;
         var _loc2_:int = this.§3!2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3!2§[_loc2_] as §3a§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §,!w§() : Boolean
      {
         var _loc2_:§-k§ = null;
         var _loc1_:int = this.§3!2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!2§[_loc1_] as §-k§;
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
         var _loc2_:§="@§ = null;
         var _loc1_:int = this.§3!2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!2§[_loc1_] as §="@§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§=P§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§[!K§())
               {
                  return false;
               }
               if(_loc2_ is §-k§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §="A§(param1:Boolean = false) : §3a§
      {
         var _loc7_:§3a§ = null;
         var _loc2_:int = this.§3!2§.length;
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
            if((_loc7_ = this.§3!2§[_loc6_] as §3a§) && _loc7_.health > 0)
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
      
      public function §'"b§() : §="@§
      {
         var _loc3_:§="@§ = null;
         var _loc4_:int = 0;
         var _loc1_:§="@§ = null;
         if(this.§"! § == null)
         {
            this.§"! § = [];
         }
         this.§"! §.length = 0;
         var _loc2_:int = this.§3!2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3!2§[_loc2_] as §="@§;
            if(_loc3_)
            {
               if(_loc3_.health > 0 && _loc3_.§8;§)
               {
                  this.§"! §.push(_loc3_);
               }
            }
            _loc2_--;
         }
         if(this.§"! §.length > 0)
         {
            _loc4_ = Math.random() * this.§"! §.length;
            _loc1_ = this.§"! §[_loc4_];
         }
         return _loc1_;
      }
      
      public function §%"+§() : int
      {
         var _loc3_:§="@§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§3!2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3!2§[_loc2_] as §="@§;
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
         return int(_loc1_ + this.§,#2§.slingshot.§%"+§());
      }
      
      protected function §&$7§(param1:§<"H§, param2:§<"H§) : Boolean
      {
         if(param1 is §="@§ && param2 is §="@§ && !(param1 as §="@§).§7!H§() && !(param2 as §="@§).§7!H§())
         {
            return false;
         }
         return true;
      }
      
      protected function hasMinimumCollisionSpeed(param1:§<"H§, param2:§<"H§) : Boolean
      {
         return this.§&$7§(param1,param2);
      }
      
      public function §5!C§() : void
      {
         this.§<"[§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:§="@§, param2:§="@§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §-k§)
         {
            return 1;
         }
         if(param1 is §-k§)
         {
            return Number(param1.§!w§(param2.§5"J§()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(param1:§="@§, param2:§="@§) : Number
      {
         if(param2 is §-k§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §6"%§(param1:§="@§, param2:§="@§) : Number
      {
         var _loc4_:Number = this.getCollisionForceFactor(param1,param2);
         var _loc5_:Number = this.getCollisionForceFactor(param2,param1);
         var _loc6_:Number = param1.getBody().GetMass();
         var _loc7_:Number = param2.getBody().GetMass();
         var _loc8_:b2Vec2 = param1.§]"^§();
         var _loc9_:b2Vec2 = param2.§]"^§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §>#V§(param1:§="@§, param2:§="@§) : Boolean
      {
         if(param2 is §!!n§ && param1 is §!!n§)
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§<"H§, param2:§<"H§, param3:b2Contact) : Boolean
      {
         var _loc15_:§=#O§ = null;
         var _loc16_:b2JointEdge = null;
         var _loc17_:b2JointEdge = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(!this.§1$;§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§="@§ = param1 as §="@§;
         var _loc5_:§="@§ = param2 as §="@§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§%"Q§)
         {
            _loc5_.applyDamage(_loc5_.§2!w§ * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§%"Q§)
         {
            _loc4_.applyDamage(_loc4_.§2!w§ * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(this.§>#V§(_loc4_,_loc5_))
         {
            return false;
         }
         var _loc6_:Number = this.§6"%§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         if(!_loc4_.§4$3§ && !_loc5_.§4$3§)
         {
            this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
         }
         var _loc9_:Number = this.getCollisionDamageFactor(_loc4_,_loc5_);
         var _loc10_:Number = this.getCollisionDamageFactor(_loc5_,_loc4_);
         var _loc11_:Number = _loc6_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc9_;
         var _loc13_:Number = _loc11_ > 0 ? Number(_loc4_.applyDamage(_loc11_,this,_loc5_,true)) : Number(_loc4_.health);
         var _loc14_:Number = _loc12_ > 0 ? Number(_loc5_.applyDamage(_loc12_,this,_loc4_,true)) : Number(_loc5_.health);
         for each(_loc15_ in this.§#$2§)
         {
            if(_loc15_.breakable && _loc6_ >= _loc15_.breakForce)
            {
               _loc16_ = _loc4_.getBody().GetJointList();
               _loc17_ = _loc5_.getBody().GetJointList();
               if(_loc16_ != null && _loc16_.joint == _loc15_.§&#X§ || _loc17_ != null && _loc17_.joint == _loc15_.§&#X§)
               {
                  this.§02§(_loc15_);
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
         if(_loc4_ is §-k§)
         {
            if(_loc14_ <= 0)
            {
               if(!_loc5_.disableBirdPassThrough)
               {
                  _loc18_ = _loc4_.§@^§(_loc5_.§5"J§());
                  this.§4"H§(_loc4_ as §-k§,_loc6_ * _loc9_,_loc8_,_loc18_);
               }
               return false;
            }
         }
         if(_loc5_ is §-k§)
         {
            if(_loc13_ <= 0)
            {
               if(!_loc4_.disableBirdPassThrough)
               {
                  _loc19_ = _loc5_.§@^§(_loc4_.§5"J§());
                  this.§4"H§(_loc5_ as §-k§,_loc6_ * _loc10_,_loc7_,_loc19_);
               }
               return false;
            }
         }
         return _loc13_ <= 0 && _loc14_ <= 0;
      }
      
      public function §]!p§(param1:§<"H§, param2:§<"H§) : void
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
      
      protected function §4"H§(param1:§-k§, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§]"^§();
         param1.§[i§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §%"s§() : void
      {
         var _loc2_:§="@§ = null;
         var _loc1_:int = this.§3!2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!2§[_loc1_] as §="@§;
            if(_loc2_ && _loc2_.§8#6§)
            {
               this.§!"n§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §9!v§() : void
      {
         var _loc2_:§="@§ = null;
         var _loc1_:int = this.§3!2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!2§[_loc1_] as §="@§;
            if(_loc2_ != null && _loc2_.isTnt())
            {
               this.§!"n§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §0y§() : int
      {
         return this.§3!2§.length;
      }
      
      public function §[!F§(param1:§-"R§) : void
      {
         var _loc4_:§="@§ = null;
         var _loc5_:§!#%§ = null;
         var _loc6_:Vector.<§,"s§> = null;
         var _loc7_:§8"y§ = null;
         var _loc8_:§=#O§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3!2§.length)
         {
            if(_loc4_ = this.§3!2§[_loc2_] as §="@§)
            {
               if(_loc4_.§""s§)
               {
                  if(!_loc4_.§=P§())
                  {
                     (_loc5_ = new §!#%§()).angle = _loc4_.§^!Y§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     if(_loc4_.itemName == §0!H§.§%!H§)
                     {
                        _loc5_.type = (_loc4_ as §0!H§).§ o§;
                     }
                     _loc5_.x = _loc4_.getBody().GetPosition().x;
                     _loc5_.y = _loc4_.getBody().GetPosition().y;
                     if(!_loc4_.§?#C§())
                     {
                        _loc5_.z = _loc4_.§]]§();
                     }
                     if(_loc4_.§-"F§())
                     {
                        _loc5_.linearForce = _loc4_.§-"F§();
                     }
                     if(_loc4_.§&,§.hasSpecialBehavior)
                     {
                        _loc5_.§%$#§(_loc4_.§&,§.getBehaviorsData());
                     }
                     if(_loc6_ = _loc4_.§&,§.getEvents())
                     {
                        _loc5_.§6Y§(_loc6_);
                     }
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§#$2§.length)
         {
            _loc8_ = this.§#$2§[_loc3_];
            (_loc7_ = new §8"y§(_loc8_.type,_loc8_.id1,_loc8_.id2,_loc8_.point1,_loc8_.point2,_loc8_.§%"_§,_loc8_.§=I§,_loc8_.lowerLimit,_loc8_.upperLimit,_loc8_.§`$§,_loc8_.motorSpeed,_loc8_.§83§,_loc8_.maxTorque,_loc8_.breakable,_loc8_.breakForce,_loc8_.isOneWayDestroyed)).annihilationTime = _loc8_.annihilationTime;
            _loc7_.distanceToDestroyChild = _loc8_.distanceToDestroyChild;
            _loc7_.axisX = _loc8_.axisX;
            _loc7_.axisY = _loc8_.axisY;
            _loc7_.breakable = _loc8_.breakable;
            _loc7_.breakForce = _loc8_.breakForce;
            _loc7_.destroyChild = _loc8_.destroyChild;
            param1.§ !L§(_loc7_);
            _loc3_++;
         }
      }
      
      public function §0#v§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§3!2§.length)
         {
            if(this.§3!2§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§3!2§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§="@§ = null;
         this.§+"6§ = param1;
         this.§6$6§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3!2§.length)
         {
            _loc3_ = this.§3!2§[_loc2_] as §="@§;
            if(_loc3_ && _loc3_.§?#C§())
            {
               _loc3_.sprite.visible = !this.§+"6§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§1$;§ = param1;
      }
      
      public function §9"f§() : int
      {
         return this.§?"8§;
      }
      
      public function §&#5§() : int
      {
         return this.§+#R§;
      }
      
      public function §?$ §(param1:§<"H§) : Boolean
      {
         var _loc2_:int = this.§3!2§.indexOf(param1);
         return _loc2_ >= 0;
      }
   }
}
