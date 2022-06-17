package §8#K§
{
   import §#g§.§8§;
   import §&$+§.b2Settings;
   import §,#e§.DisplayObject;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §3"V§.§9$8§;
   import §7"T§.§,o§;
   import §7"T§.§4!L§;
   import §;!=§.§>"G§;
   import §?#z§.§]$?§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<5§ extends §&2§
   {
       
      
      private var §4!=§:Object;
      
      private var §?#4§:Vector.<§7#u§>;
      
      private var §7$?§:Number;
      
      private var §^7§:Number;
      
      private var §!!=§:Number;
      
      private var §"#v§:Number;
      
      private var §0#6§:Number;
      
      private var §?#c§:int;
      
      private var §`#]§:Boolean;
      
      private var §<#]§:String;
      
      private var §=#w§:String;
      
      private var §-"M§:String;
      
      protected var §!"`§:§ !q§;
      
      public function §<5§(param1:Object, param2:int, param3:§+#y§, param4:§8$-§, param5:int, param6:Boolean = false)
      {
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         this.§?#4§ = new Vector.<§7#u§>();
         this.§4!=§ = param1;
         this.§`#]§ = param1.collision != undefined ? Boolean(param1.collision) : true;
         if(param3 != null)
         {
            this.§7$?§ = param1.density != undefined ? Number(param1.density) : Number(param3.density);
            this.§^7§ = param1.friction != undefined ? Number(param1.friction) : Number(param3.friction);
            this.§!!=§ = param1.restitution != undefined ? Number(param1.restitution) : Number(param3.restitution);
            this.§"#v§ = param1.strength != undefined ? Number(param1.strength) : Number(param3.strength);
            this.§0#6§ = param1.defence != undefined ? Number(param1.defence) : Number(param3.defence);
         }
         this.§<#]§ = param1.destroyedSound != undefined ? param1.destroyedSound : null;
         this.§=#w§ = param1.damageSound != undefined ? param1.damageSound : null;
         this.§-"M§ = param1.collisionSound != undefined ? param1.collisionSound : null;
         var _loc7_:§!$B§;
         if(_loc7_ = param3 as §!$B§)
         {
            this.§?#c§ = param1.z_order != undefined ? int(param1.z_order) : int(_loc7_.§4#%§);
         }
         for each(_loc8_ in this.§4!=§.damageSprites)
         {
            this.§?#4§.push(new §7#u§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
         }
         this.§?#4§.sort(this.§^!H§);
         _loc9_ = !!param1.particleAmount ? int(param1.particleAmount) : -1;
         super(param1.definition,param2,param3,param4,null,param5,param1.floatingScoreFont,param1.damageScore != undefined ? int(param1.damageScore) : -1,"",param1.strength != undefined ? int(param1.strength) : (!!param3 ? int(param3.strength) : -1),param1.scale != undefined ? Number(param1.scale) : Number(1),param6,"",1,_loc9_,false,param1.levelGoal);
      }
      
      override public function get isColliding() : Boolean
      {
         return this.§`#]§;
      }
      
      public function playSoundLua(param1:String, param2:String = null, param3:Number = 0, param4:Number = 0) : §9$8§
      {
         var _loc5_:§9$8§ = null;
         if(this.§!"`§)
         {
            _loc5_ = this.§!"`§.playSound(param1,param2,param3,param4);
         }
         return _loc5_;
      }
      
      private function §^!H§(param1:§7#u§, param2:§7#u§) : int
      {
         if(param1.§^"L§ > param2.§^"L§)
         {
            return -1;
         }
         return 1;
      }
      
      override public function get shape() : §46§
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc8_:§^r§ = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         var _loc1_:Number = 0.92;
         if(!§"!e§)
         {
            _loc5_ = b2Settings.§!"2§;
            if(this.isMaterialStatic)
            {
               _loc1_ = 1;
               _loc5_ = 0;
            }
            if(this.§4!=§.scale)
            {
               _loc1_ = this.§4!=§.scale;
            }
            switch(String(this.§4!=§.type).toLowerCase())
            {
               case "box":
                  if(this.§4!=§.width && this.§4!=§.height)
                  {
                     if(this.§4!=§.scale)
                     {
                        _loc3_ = this.§4!=§.width * this.§4!=§.scale;
                        _loc4_ = this.§4!=§.height * this.§4!=§.scale;
                     }
                     else
                     {
                        _loc3_ = this.§4!=§.width;
                        _loc4_ = this.§4!=§.height;
                     }
                  }
                  else
                  {
                     _loc2_ = this.§8#,§();
                     _loc3_ = _loc2_.width * §8#3§.§2K§ * _loc1_;
                     _loc4_ = _loc2_.height * §8#3§.§2K§ * _loc1_;
                  }
                  _loc3_ -= _loc5_ * 2;
                  _loc4_ -= _loc5_ * 2;
                  §"!e§ = new §`!j§(_loc3_,_loc4_);
                  break;
               case "circle":
                  _loc6_ = 0;
                  if(this.§4!=§.radius)
                  {
                     _loc6_ = this.§4!=§.radius;
                  }
                  else if(this.§4!=§.width)
                  {
                     _loc6_ = this.§4!=§.width / 2;
                  }
                  else
                  {
                     _loc2_ = this.§8#,§();
                     _loc6_ = (_loc6_ = _loc2_.width * §8#3§.§2K§ * §#!1§ / 2 * _loc1_) - _loc5_ * 2;
                  }
                  §"!e§ = new §=$'§(_loc6_,new Point(0,0));
                  break;
               case "polygon":
                  if(this.§4!=§.width && this.§4!=§.height)
                  {
                     if(this.§4!=§.scale)
                     {
                        _loc3_ = this.§4!=§.width * this.§4!=§.scale;
                        _loc4_ = this.§4!=§.height * this.§4!=§.scale;
                     }
                     else
                     {
                        _loc3_ = this.§4!=§.width;
                        _loc4_ = this.§4!=§.height;
                     }
                  }
                  else
                  {
                     _loc2_ = this.§8#,§();
                     _loc3_ = _loc2_.width * §8#3§.§2K§ * §#!1§;
                     _loc4_ = _loc2_.height * §8#3§.§2K§ * §#!1§;
                     if(this.getItemDensity() != 0)
                     {
                        _loc3_ *= _loc1_;
                        _loc4_ *= _loc1_;
                     }
                  }
                  _loc7_ = new Vector.<b2Vec2>(0);
                  for each(_loc12_ in this.§4!=§.vertices)
                  {
                     _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                  }
                  _loc10_ = ((_loc9_ = (_loc8_ = new §^r§(_loc7_)).§`"2§())[0].x + _loc9_[1].x) / 2;
                  _loc11_ = (_loc9_[0].y + _loc9_[1].y) / 2;
                  for each(_loc13_ in _loc7_)
                  {
                     if(_loc13_.x > _loc10_)
                     {
                        _loc13_.x -= _loc5_;
                     }
                     else if(_loc13_.x < _loc10_)
                     {
                        _loc13_.x += _loc5_;
                     }
                     if(_loc13_.y > _loc11_)
                     {
                        _loc13_.y -= _loc5_;
                     }
                     else if(_loc13_.y < _loc11_)
                     {
                        _loc13_.y += _loc5_;
                     }
                  }
                  §"!e§ = new §^r§(_loc7_);
                  break;
               default:
                  throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§4!=§.type + "\' for item \'" + this.§4!=§.definition + "\'.");
            }
         }
         return §"!e§;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:§7#u§ = null;
         if(this.§4!=§.animations || this.§4!=§.spriteAnimation)
         {
            return this.§1J§(this.§4!=§.animations,this.§4!=§.spriteAnimation);
         }
         if(this.§?#4§.length == 0)
         {
            _loc2_ = [];
            if(this.§4!=§.themeTexture)
            {
               _loc1_ = [this.§4!=§.themeTexture];
            }
            else
            {
               _loc1_ = [this.§4!=§.sprite];
            }
            return [[§>"G§.§+$=§,[["1",_loc1_,_loc2_]]]];
         }
         _loc3_ = [["1",[this.§4!=§.sprite]]];
         _loc4_ = 1;
         for each(_loc5_ in this.§?#4§)
         {
            if(_loc5_.§^"L§ < 100)
            {
               _loc4_++;
               _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
            }
         }
         return [[§>"G§.§+$=§,_loc3_]];
      }
      
      protected function §1J§(param1:Object, param2:Object) : Array
      {
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:uint = 0;
         var _loc10_:Object = null;
         var _loc11_:Array = null;
         var _loc12_:Array = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:Number = NaN;
         var _loc17_:Array = null;
         var _loc18_:Boolean = false;
         var _loc19_:String = null;
         var _loc20_:Object = null;
         var _loc21_:uint = 0;
         var _loc22_:* = null;
         var _loc23_:Object = null;
         var _loc3_:Array = new Array();
         if(param1)
         {
            for each(_loc4_ in param1)
            {
               if(_loc4_.id)
               {
                  _loc5_ = [];
                  if(_loc4_.sound)
                  {
                     _loc8_ = !!_loc4_.sound.channel ? _loc4_.sound.channel : § b§.§1#-§;
                     _loc5_.push([_loc4_.sound.name,_loc8_]);
                  }
                  _loc6_ = [];
                  _loc7_ = [];
                  if(_loc4_.graphic)
                  {
                     _loc9_ = 0;
                     for each(_loc10_ in _loc4_.graphic)
                     {
                        _loc9_++;
                        _loc11_ = [];
                        _loc12_ = _loc10_.frames;
                        _loc13_ = !!_loc10_.max ? int(_loc10_.max) : 100;
                        _loc14_ = _loc10_.min;
                        _loc15_ = 0;
                        while(_loc15_ < _loc12_.length)
                        {
                           _loc11_.push(_loc12_[_loc15_]);
                           _loc16_ = 40;
                           if((_loc17_ = _loc10_.frameTime) != null && _loc17_.length > 0)
                           {
                              if(_loc17_[_loc15_] != null)
                              {
                                 _loc16_ = _loc17_[_loc15_];
                              }
                              else
                              {
                                 _loc16_ = _loc17_[0];
                              }
                           }
                           if(_loc17_ != null)
                           {
                              _loc7_.push(_loc16_);
                           }
                           _loc15_++;
                        }
                        _loc6_.push([_loc9_.toString(),_loc11_,_loc7_]);
                     }
                  }
                  _loc3_.push([_loc4_.id,_loc6_]);
               }
            }
         }
         else if(param2)
         {
            _loc18_ = false;
            _loc19_ = param2.startAnimation;
            _loc20_ = param2.animations;
            _loc21_ = 0;
            for(_loc22_ in _loc20_)
            {
               _loc21_++;
               if(_loc23_ = _loc20_[_loc22_])
               {
                  _loc6_ = [];
                  _loc23_.priority = _loc23_.priority || 1;
                  _loc23_.loop = _loc23_.loop;
                  if(!(_loc17_ = _loc23_.frameTimes))
                  {
                     _loc17_ = [];
                  }
                  if(_loc17_.length == 1 && _loc23_.sprites.length > 1)
                  {
                     _loc15_ = 0;
                     while(_loc15_ < _loc23_.sprites.length)
                     {
                        _loc17_.push(_loc17_[0]);
                        _loc15_++;
                     }
                  }
                  _loc15_ = 0;
                  while(_loc15_ < _loc17_.length)
                  {
                     _loc17_[_loc15_] *= 1000;
                     _loc15_++;
                  }
                  _loc5_ = [];
                  _loc6_.push([_loc21_.toString(),_loc23_.sprites,_loc17_,_loc5_,_loc19_,_loc23_.loop,_loc23_.priority]);
                  _loc3_.push([_loc22_,_loc6_]);
                  if(!_loc18_ && _loc22_ == "normal")
                  {
                     _loc18_ = true;
                  }
               }
            }
            if(!_loc18_)
            {
               (_loc6_ = []).push(["1",[this.§4!=§.sprite],[],[],_loc19_,_loc23_.loop,_loc23_.priority]);
               _loc3_.unshift(["normal",_loc6_]);
            }
         }
         return _loc3_;
      }
      
      protected function §>#p§(param1:int, param2:Object) : Array
      {
         var _loc11_:Object = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc3_:Array = param2.frameTime;
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Array = [];
         var _loc7_:Object;
         if(_loc7_ = param2.sound)
         {
            _loc6_.push(_loc7_.name);
         }
         var _loc8_:Array;
         var _loc9_:int = (_loc8_ = param2.sprites[param1]).length;
         var _loc10_:int = 0;
         while(_loc10_ < _loc9_)
         {
            if((_loc11_ = _loc8_[_loc10_]).constructor == Object)
            {
               if(_loc11_.sound && _loc6_.length == 0)
               {
                  _loc12_ = _loc11_.sound;
                  _loc6_.push(_loc12_);
               }
            }
            else
            {
               _loc13_ = _loc11_ as String;
               _loc4_.push(_loc13_);
               _loc14_ = 40;
               if(_loc3_ != null && _loc3_.length > 0)
               {
                  if(_loc3_[_loc10_] != null)
                  {
                     _loc14_ = _loc3_[_loc10_];
                  }
                  else
                  {
                     _loc14_ = _loc3_[0];
                  }
               }
               if(_loc3_ != null)
               {
                  _loc5_.push(_loc14_);
               }
            }
            _loc10_++;
         }
         return [(param1 + 1).toString(),_loc4_,_loc5_,_loc6_];
      }
      
      protected function §!#J§() : String
      {
         var _loc1_:String = null;
         if(this.§?#4§.length == 0)
         {
            if(this.§4!=§.sprite)
            {
               _loc1_ = this.§4!=§.sprite;
            }
            else if(this.§4!=§.themeTexture)
            {
               _loc1_ = this.§4!=§.themeTexture;
            }
         }
         else
         {
            _loc1_ = this.§?#4§[0].spriteName;
         }
         return _loc1_;
      }
      
      private function §2"x§() : §4!L§
      {
         var _loc1_:String = this.§!#J§();
         return §]$?§.§2#§.textureManager.getTexture(_loc1_);
      }
      
      private function §'G§() : DisplayObject
      {
         var _loc1_:String = this.§!#J§();
         return §,o§.§7#'§(_loc1_,§]$?§.§2#§.textureManager,true);
      }
      
      private function §8#,§() : Rectangle
      {
         var _loc1_:§4!L§ = this.§2"x§();
         if(_loc1_)
         {
            return new Rectangle(0,0,_loc1_.width,_loc1_.height);
         }
         var _loc2_:DisplayObject = this.§'G§();
         if(_loc2_)
         {
            return new Rectangle(0,0,_loc2_.width,_loc2_.height);
         }
         throw new Error("Texture / composite sprite \'" + this.§!#J§() + "\' doesn\'t exist.");
      }
      
      public function §2!t§(param1:String, ... rest) : String
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(rest.length == 0)
         {
            return this.§4!=§[param1];
         }
         var _loc3_:Object = this.§4!=§[param1];
         for each(_loc4_ in rest)
         {
            _loc3_ = _loc3_[_loc4_];
            if(_loc3_ === null)
            {
               return null;
            }
         }
         if(_loc3_ is Array)
         {
            if((_loc5_ = _loc3_ as Array).length == 1)
            {
               _loc3_ = _loc5_[0];
            }
         }
         return String(_loc3_);
      }
      
      public function §!! §(param1:String, ... rest) : Number
      {
         var _loc3_:String = this.§2!t§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return parseFloat(_loc3_);
         }
         return NaN;
      }
      
      public function §^#d§(param1:String, ... rest) : Boolean
      {
         var _loc3_:String = this.§2!t§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return _loc3_.toLowerCase() == "true";
         }
         return false;
      }
      
      public function get §9$E§() : Boolean
      {
         if(§"§ is §!$B§)
         {
            return (§"§ as §!$B§).bouncesLaser;
         }
         return false;
      }
      
      public function get §#"Z§() : String
      {
         if(§"§ is §!$B§)
         {
            return (§"§ as §!$B§).particlesDestroyed;
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.materialCollisionSound;
      }
      
      public function get materialCollisionSound() : String
      {
         var _loc1_:String = this.§-"M§;
         if(_loc1_ == null)
         {
            if(§"§ is §!$B§)
            {
               _loc1_ = (§"§ as §!$B§).collisionSound;
            }
         }
         return _loc1_;
      }
      
      public function get damageSound() : String
      {
         return this.materialDamageSound;
      }
      
      public function get materialDamageSound() : String
      {
         var _loc1_:String = this.§=#w§;
         if(_loc1_ == null)
         {
            if(§"§ is §!$B§)
            {
               _loc1_ = (§"§ as §!$B§).damageSound;
            }
         }
         return _loc1_;
      }
      
      public function get materialDestroyedSound() : String
      {
         var _loc1_:String = this.§<#]§;
         if(_loc1_ == null)
         {
            if(§"§ is §!$B§)
            {
               _loc1_ = (§"§ as §!$B§).destroyedSound;
            }
         }
         return _loc1_;
      }
      
      public function get materialRollingSound() : String
      {
         if(§"§ is §!$B§)
         {
            return (§"§ as §!$B§).rollingSound;
         }
         return null;
      }
      
      public function get soundChannel() : String
      {
         if(§"§ is §!$B§)
         {
            return (§"§ as §!$B§).soundChannel;
         }
         return null;
      }
      
      public function get § `§() : Number
      {
         if(§"§ is §!$B§)
         {
            return (§"§ as §!$B§).forceX;
         }
         return 0;
      }
      
      public function get §'K§() : Number
      {
         if(§"§ is §!$B§)
         {
            return (§"§ as §!$B§).forceY;
         }
         return 0;
      }
      
      public function get §0$4§() : Boolean
      {
         if(§"§ is §!$B§)
         {
            return (§"§ as §!$B§).bouncesLaserTargeted;
         }
         return false;
      }
      
      override public function getItemDensity() : Number
      {
         if(!isNaN(this.§7$?§))
         {
            return this.§7$?§;
         }
         return super.getItemDensity();
      }
      
      override public function getItemFriction() : Number
      {
         if(!isNaN(this.§^7§))
         {
            return this.§^7§;
         }
         return super.getItemFriction();
      }
      
      override public function getItemRestitution() : Number
      {
         if(!isNaN(this.§!!=§))
         {
            return this.§!!=§;
         }
         return super.getItemRestitution();
      }
      
      override public function getItemStrength() : Number
      {
         if(!isNaN(this.§"#v§))
         {
            return this.§"#v§;
         }
         return super.getItemStrength();
      }
      
      override public function getItemDefence() : Number
      {
         if(!isNaN(this.§0#6§))
         {
            return this.§0#6§;
         }
         return super.getItemDefence();
      }
      
      override public function getItemZOrder() : int
      {
         if(!isNaN(this.§?#c§))
         {
            return this.§?#c§;
         }
         return 0;
      }
      
      override public function getItemBodyType() : int
      {
         if(this.getItemDensity() > 0)
         {
            return §+#y§.§#"%§;
         }
         return §+#y§.BODY_TYPE_STATIC;
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function §8"m§(param1:String) : String
      {
         var _loc2_:String = this.§2!t§("definitionAffectedByForce");
         if(!_loc2_)
         {
            _loc2_ = this.§2!t§("definitionHeldByForce");
            if(!_loc2_)
            {
               _loc2_ = "FORCE_GLOW_RED_CIRCLE_L";
            }
            if(param1)
            {
               _loc2_ = _loc2_.replace("RED",param1);
            }
         }
         return _loc2_;
      }
      
      public function §7s§() : Number
      {
         var _loc1_:Number = this.§!! §("glowRotation");
         if(isNaN(_loc1_))
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
      
      override public function hasGraphics() : Boolean
      {
         var _loc1_:§4!L§ = this.§2"x§();
         if(_loc1_)
         {
            return true;
         }
         var _loc2_:DisplayObject = this.§'G§();
         if(_loc2_)
         {
            return true;
         }
         return false;
      }
   }
}
