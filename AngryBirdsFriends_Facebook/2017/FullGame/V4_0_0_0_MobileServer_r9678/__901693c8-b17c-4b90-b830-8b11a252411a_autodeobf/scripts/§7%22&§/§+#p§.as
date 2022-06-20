package §7"&§
{
   import §%!9§.b2Vec2;
   import §&!v§.DisplayObject;
   import §+!C§.§!!S§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §7!j§.§'#'§;
   import §7!j§.§[#%§;
   import §9#K§.b2Settings;
   import §>!5§.§^"9§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+#p§ extends §!"v§
   {
       
      
      private var §@#q§:Object;
      
      private var §#"k§:Vector.<§'"^§>;
      
      private var §2!+§:Number;
      
      private var §3d§:Number;
      
      private var §4#g§:Number;
      
      private var §&#D§:Number;
      
      private var §6"l§:Number;
      
      private var §,"j§:int;
      
      private var §2"S§:Boolean;
      
      private var §=!u§:String;
      
      private var §2$7§:String;
      
      private var §<!A§:String;
      
      protected var §="l§:§8"G§;
      
      public function §+#p§(param1:Object, param2:int, param3:§^"Q§, param4:§>"f§, param5:int, param6:Boolean = false)
      {
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         this.§#"k§ = new Vector.<§'"^§>();
         this.§@#q§ = param1;
         this.§2"S§ = param1.collision != undefined ? Boolean(param1.collision) : true;
         if(param3 != null)
         {
            this.§2!+§ = param1.density != undefined ? Number(param1.density) : Number(param3.density);
            this.§3d§ = param1.friction != undefined ? Number(param1.friction) : Number(param3.friction);
            this.§4#g§ = param1.restitution != undefined ? Number(param1.restitution) : Number(param3.restitution);
            this.§&#D§ = param1.strength != undefined ? Number(param1.strength) : Number(param3.strength);
            this.§6"l§ = param1.defence != undefined ? Number(param1.defence) : Number(param3.defence);
         }
         this.§=!u§ = param1.destroyedSound != undefined ? param1.destroyedSound : null;
         this.§2$7§ = param1.damageSound != undefined ? param1.damageSound : null;
         this.§<!A§ = param1.collisionSound != undefined ? param1.collisionSound : null;
         var _loc7_:§<q§;
         if(_loc7_ = param3 as §<q§)
         {
            this.§,"j§ = param1.z_order != undefined ? int(param1.z_order) : int(_loc7_.§3"1§);
         }
         for each(_loc8_ in this.§@#q§.damageSprites)
         {
            this.§#"k§.push(new §'"^§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
         }
         this.§#"k§.sort(this.§!"@§);
         _loc9_ = !!param1.particleAmount ? int(param1.particleAmount) : -1;
         super(param1.definition,param2,param3,param4,null,param5,param1.floatingScoreFont,param1.damageScore != undefined ? int(param1.damageScore) : -1,"",param1.strength != undefined ? int(param1.strength) : (!!param3 ? int(param3.strength) : -1),param1.scale != undefined ? Number(param1.scale) : Number(1),param6,"",1,_loc9_,false,param1.levelGoal);
      }
      
      override public function get isColliding() : Boolean
      {
         return this.§2"S§;
      }
      
      public function §51§(param1:String, param2:String = null, param3:Number = 0, param4:Number = 0) : void
      {
         if(this.§="l§)
         {
            this.§="l§.playSound(param1,param2,param3,param4);
         }
      }
      
      private function §!"@§(param1:§'"^§, param2:§'"^§) : int
      {
         if(param1.§^#G§ > param2.§^#G§)
         {
            return -1;
         }
         return 1;
      }
      
      override public function get shape() : §]"k§
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc8_:§#h§ = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         var _loc1_:Number = 0.92;
         if(!§@"u§)
         {
            _loc5_ = b2Settings.§1#d§;
            if(this.isMaterialStatic)
            {
               _loc1_ = 1;
               _loc5_ = 0;
            }
            if(this.§@#q§.scale)
            {
               _loc1_ = this.§@#q§.scale;
            }
            switch(String(this.§@#q§.type).toLowerCase())
            {
               case "box":
                  if(this.§@#q§.width && this.§@#q§.height)
                  {
                     if(this.§@#q§.scale)
                     {
                        _loc3_ = this.§@#q§.width * this.§@#q§.scale;
                        _loc4_ = this.§@#q§.height * this.§@#q§.scale;
                     }
                     else
                     {
                        _loc3_ = this.§@#q§.width;
                        _loc4_ = this.§@#q§.height;
                     }
                  }
                  else
                  {
                     _loc2_ = this.§0"j§();
                     _loc3_ = _loc2_.width * §!!S§.§,"3§ * _loc1_;
                     _loc4_ = _loc2_.height * §!!S§.§,"3§ * _loc1_;
                  }
                  _loc3_ -= _loc5_ * 2;
                  _loc4_ -= _loc5_ * 2;
                  §@"u§ = new §>"N§(_loc3_,_loc4_);
                  break;
               case "circle":
                  _loc6_ = 0;
                  if(this.§@#q§.radius)
                  {
                     _loc6_ = this.§@#q§.radius;
                  }
                  else if(this.§@#q§.width)
                  {
                     _loc6_ = this.§@#q§.width / 2;
                  }
                  else
                  {
                     _loc2_ = this.§0"j§();
                     _loc6_ = (_loc6_ = _loc2_.width * §!!S§.§,"3§ * § "A§ / 2 * _loc1_) - _loc5_ * 2;
                  }
                  §@"u§ = new §>#H§(_loc6_,new Point(0,0));
                  break;
               case "polygon":
                  if(this.§@#q§.width && this.§@#q§.height)
                  {
                     if(this.§@#q§.scale)
                     {
                        _loc3_ = this.§@#q§.width * this.§@#q§.scale;
                        _loc4_ = this.§@#q§.height * this.§@#q§.scale;
                     }
                     else
                     {
                        _loc3_ = this.§@#q§.width;
                        _loc4_ = this.§@#q§.height;
                     }
                  }
                  else
                  {
                     _loc2_ = this.§0"j§();
                     _loc3_ = _loc2_.width * §!!S§.§,"3§ * § "A§;
                     _loc4_ = _loc2_.height * §!!S§.§,"3§ * § "A§;
                     if(this.getItemDensity() != 0)
                     {
                        _loc3_ *= _loc1_;
                        _loc4_ *= _loc1_;
                     }
                  }
                  _loc7_ = new Vector.<b2Vec2>(0);
                  for each(_loc12_ in this.§@#q§.vertices)
                  {
                     _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                  }
                  _loc10_ = ((_loc9_ = (_loc8_ = new §#h§(_loc7_)).§1"U§())[0].x + _loc9_[1].x) / 2;
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
                  §@"u§ = new §#h§(_loc7_);
                  break;
               default:
                  throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§@#q§.type + "\' for item \'" + this.§@#q§.definition + "\'.");
            }
         }
         return §@"u§;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:§'"^§ = null;
         if(this.§@#q§.animations || this.§@#q§.spriteAnimation)
         {
            return this.§9!1§(this.§@#q§.animations,this.§@#q§.spriteAnimation);
         }
         if(this.§#"k§.length == 0)
         {
            _loc2_ = [];
            if(this.§@#q§.themeTexture)
            {
               _loc1_ = [this.§@#q§.themeTexture];
            }
            else
            {
               _loc1_ = [this.§@#q§.sprite];
            }
            return [[§^"9§.§5!G§,[["1",_loc1_,_loc2_]]]];
         }
         _loc3_ = [["1",[this.§@#q§.sprite]]];
         _loc4_ = 1;
         for each(_loc5_ in this.§#"k§)
         {
            if(_loc5_.§^#G§ < 100)
            {
               _loc4_++;
               _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
            }
         }
         return [[§^"9§.§5!G§,_loc3_]];
      }
      
      protected function §9!1§(param1:Object, param2:Object) : Array
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
                     _loc8_ = !!_loc4_.sound.channel ? _loc4_.sound.channel : §!#&§.§>#c§;
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
               (_loc6_ = []).push(["1",[this.§@#q§.sprite],[],[],_loc19_,_loc23_.loop,_loc23_.priority]);
               _loc3_.unshift(["normal",_loc6_]);
            }
         }
         return _loc3_;
      }
      
      protected function §'t§(param1:int, param2:Object) : Array
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
      
      protected function § #]§() : String
      {
         var _loc1_:String = null;
         if(this.§#"k§.length == 0)
         {
            if(this.§@#q§.sprite)
            {
               _loc1_ = this.§@#q§.sprite;
            }
            else if(this.§@#q§.themeTexture)
            {
               _loc1_ = this.§@#q§.themeTexture;
            }
         }
         else
         {
            _loc1_ = this.§#"k§[0].spriteName;
         }
         return _loc1_;
      }
      
      private function §[g§() : §'#'§
      {
         var _loc1_:String = this.§ #]§();
         return §!#A§.§#F§.textureManager.getTexture(_loc1_);
      }
      
      private function §#O§() : DisplayObject
      {
         var _loc1_:String = this.§ #]§();
         return §[#%§.§&G§(_loc1_,§!#A§.§#F§.textureManager,true);
      }
      
      private function §0"j§() : Rectangle
      {
         var _loc1_:§'#'§ = this.§[g§();
         if(_loc1_)
         {
            return new Rectangle(0,0,_loc1_.width,_loc1_.height);
         }
         var _loc2_:DisplayObject = this.§#O§();
         if(_loc2_)
         {
            return new Rectangle(0,0,_loc2_.width,_loc2_.height);
         }
         throw new Error("Texture / composite sprite \'" + this.§ #]§() + "\' doesn\'t exist.");
      }
      
      public function §=#a§(param1:String, ... rest) : String
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(rest.length == 0)
         {
            return this.§@#q§[param1];
         }
         var _loc3_:Object = this.§@#q§[param1];
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
      
      public function §6-§(param1:String, ... rest) : Number
      {
         var _loc3_:String = this.§=#a§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return parseFloat(_loc3_);
         }
         return NaN;
      }
      
      public function §<"G§(param1:String, ... rest) : Boolean
      {
         var _loc3_:String = this.§=#a§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return _loc3_.toLowerCase() == "true";
         }
         return false;
      }
      
      public function get §##?§() : Boolean
      {
         if(§2!M§ is §<q§)
         {
            return (§2!M§ as §<q§).bouncesLaser;
         }
         return false;
      }
      
      public function get §]"V§() : String
      {
         if(§2!M§ is §<q§)
         {
            return (§2!M§ as §<q§).particlesDestroyed;
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.§&!a§;
      }
      
      public function get §&!a§() : String
      {
         var _loc1_:String = this.§<!A§;
         if(_loc1_ == null)
         {
            if(§2!M§ is §<q§)
            {
               _loc1_ = (§2!M§ as §<q§).collisionSound;
            }
         }
         return _loc1_;
      }
      
      public function get damageSound() : String
      {
         return this.§4"1§;
      }
      
      public function get §4"1§() : String
      {
         var _loc1_:String = this.§2$7§;
         if(_loc1_ == null)
         {
            if(§2!M§ is §<q§)
            {
               _loc1_ = (§2!M§ as §<q§).damageSound;
            }
         }
         return _loc1_;
      }
      
      public function get §9!+§() : String
      {
         var _loc1_:String = this.§=!u§;
         if(_loc1_ == null)
         {
            if(§2!M§ is §<q§)
            {
               _loc1_ = (§2!M§ as §<q§).destroyedSound;
            }
         }
         return _loc1_;
      }
      
      public function get §5-§() : String
      {
         if(§2!M§ is §<q§)
         {
            return (§2!M§ as §<q§).rollingSound;
         }
         return null;
      }
      
      public function get soundChannel() : String
      {
         if(§2!M§ is §<q§)
         {
            return (§2!M§ as §<q§).soundChannel;
         }
         return null;
      }
      
      public function get §[J§() : Number
      {
         if(§2!M§ is §<q§)
         {
            return (§2!M§ as §<q§).forceX;
         }
         return 0;
      }
      
      public function get §-#L§() : Number
      {
         if(§2!M§ is §<q§)
         {
            return (§2!M§ as §<q§).forceY;
         }
         return 0;
      }
      
      public function get §2$2§() : Boolean
      {
         if(§2!M§ is §<q§)
         {
            return (§2!M§ as §<q§).bouncesLaserTargeted;
         }
         return false;
      }
      
      override public function getItemDensity() : Number
      {
         if(!isNaN(this.§2!+§))
         {
            return this.§2!+§;
         }
         return super.getItemDensity();
      }
      
      override public function getItemFriction() : Number
      {
         if(!isNaN(this.§3d§))
         {
            return this.§3d§;
         }
         return super.getItemFriction();
      }
      
      override public function getItemRestitution() : Number
      {
         if(!isNaN(this.§4#g§))
         {
            return this.§4#g§;
         }
         return super.getItemRestitution();
      }
      
      override public function getItemStrength() : Number
      {
         if(!isNaN(this.§&#D§))
         {
            return this.§&#D§;
         }
         return super.getItemStrength();
      }
      
      override public function getItemDefence() : Number
      {
         if(!isNaN(this.§6"l§))
         {
            return this.§6"l§;
         }
         return super.getItemDefence();
      }
      
      override public function getItemZOrder() : int
      {
         if(!isNaN(this.§,"j§))
         {
            return this.§,"j§;
         }
         return 0;
      }
      
      override public function getItemBodyType() : int
      {
         if(this.getItemDensity() > 0)
         {
            return §^"Q§.§1#o§;
         }
         return §^"Q§.§2n§;
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function §-g§(param1:String) : String
      {
         var _loc2_:String = this.§=#a§("definitionAffectedByForce");
         if(!_loc2_)
         {
            _loc2_ = this.§=#a§("definitionHeldByForce");
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
      
      public function §]b§() : Number
      {
         var _loc1_:Number = this.§6-§("glowRotation");
         if(isNaN(_loc1_))
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
      
      override public function hasGraphics() : Boolean
      {
         var _loc1_:§'#'§ = this.§[g§();
         if(_loc1_)
         {
            return true;
         }
         var _loc2_:DisplayObject = this.§#O§();
         if(_loc2_)
         {
            return true;
         }
         return false;
      }
   }
}
