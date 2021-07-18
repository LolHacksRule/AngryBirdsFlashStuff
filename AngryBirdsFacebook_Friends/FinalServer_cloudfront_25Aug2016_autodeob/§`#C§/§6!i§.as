package §`#C§
{
   import §0H§.b2Settings;
   import §0m§.b2Vec2;
   import §52§.§#!,§;
   import §8§.§#$+§;
   import §9$§.DisplayObject;
   import §?§.§>"$§;
   import §@"§.§'!u§;
   import §@"§.§+!3§;
   import §[#a§.§="@§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!i§ extends §8K§
   {
       
      
      private var §^t§:Object;
      
      private var §,!]§:Vector.<§<#=§>;
      
      private var §[#W§:Number;
      
      private var §9!$§:Number;
      
      private var §@!B§:Number;
      
      private var §5!=§:Number;
      
      private var §3![§:Number;
      
      private var §<#]§:int;
      
      private var §5#+§:Boolean;
      
      private var §<]§:String;
      
      private var §#§:String;
      
      private var §]"z§:String;
      
      protected var §1!v§:§8!h§;
      
      public function §6!i§(param1:Object, param2:int, param3:§^#A§, param4:§0!y§, param5:int, param6:Boolean = false)
      {
         var _loc8_:Object = null;
         this.§,!]§ = new Vector.<§<#=§>();
         this.§^t§ = param1;
         this.§5#+§ = param1.collision != undefined ? Boolean(param1.collision) : true;
         if(param3 != null)
         {
            this.§[#W§ = param1.density != undefined ? Number(param1.density) : Number(param3.density);
            this.§9!$§ = param1.friction != undefined ? Number(param1.friction) : Number(param3.friction);
            this.§@!B§ = param1.restitution != undefined ? Number(param1.restitution) : Number(param3.restitution);
            this.§5!=§ = param1.strength != undefined ? Number(param1.strength) : Number(param3.strength);
            this.§3![§ = param1.defence != undefined ? Number(param1.defence) : Number(param3.defence);
         }
         this.§<]§ = param1.destroyedSound != undefined ? param1.destroyedSound : null;
         this.§#§ = param1.damageSound != undefined ? param1.damageSound : null;
         this.§]"z§ = param1.collisionSound != undefined ? param1.collisionSound : null;
         var _loc7_:§;">§;
         if(_loc7_ = param3 as §;">§)
         {
            this.§<#]§ = param1.z_order != undefined ? int(param1.z_order) : int(_loc7_.§7!N§);
         }
         for each(_loc8_ in this.§^t§.damageSprites)
         {
            this.§,!]§.push(new §<#=§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
         }
         this.§,!]§.sort(this.§ "y§);
         super(param1.definition,param2,param3,param4,null,param5,param1.damageScore != undefined ? int(param1.damageScore) : -1,"",param1.strength != undefined ? int(param1.strength) : (!!param3 ? int(param3.strength) : -1),param1.scale != undefined ? Number(param1.scale) : Number(1),param6,"",1,false,param1.levelGoal);
      }
      
      override public function get isColliding() : Boolean
      {
         return this.§5#+§;
      }
      
      public function §6!s§(param1:String, param2:String = null, param3:Number = 0, param4:Number = 0) : void
      {
         if(this.§1!v§)
         {
            this.§1!v§.playSound(param1,param2,param3,param4);
         }
      }
      
      private function § "y§(param1:§<#=§, param2:§<#=§) : int
      {
         if(param1.§;!>§ > param2.§;!>§)
         {
            return -1;
         }
         return 1;
      }
      
      override public function get shape() : §-"L§
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         var _loc1_:Number = 0.92;
         if(!§@!Q§)
         {
            _loc5_ = b2Settings.§1M§;
            if(this.isMaterialStatic)
            {
               _loc1_ = 1;
               _loc5_ = 0;
            }
            if(this.§^t§.scale)
            {
               _loc1_ = this.§^t§.scale;
            }
            switch(String(this.§^t§.type).toLowerCase())
            {
               case "box":
                  if(this.§^t§.width && this.§^t§.height)
                  {
                     if(this.§^t§.scale)
                     {
                        _loc3_ = this.§^t§.width * this.§^t§.scale;
                        _loc4_ = this.§^t§.height * this.§^t§.scale;
                     }
                     else
                     {
                        _loc3_ = this.§^t§.width;
                        _loc4_ = this.§^t§.height;
                     }
                  }
                  else
                  {
                     _loc2_ = this.§-!T§();
                     _loc3_ = _loc2_.width * §#!,§.§?$#§ * _loc1_;
                     _loc4_ = _loc2_.height * §#!,§.§?$#§ * _loc1_;
                  }
                  _loc3_ -= _loc5_ * 2;
                  _loc4_ -= _loc5_ * 2;
                  §@!Q§ = new §3"F§(_loc3_,_loc4_);
                  break;
               case "circle":
                  _loc6_ = 0;
                  if(this.§^t§.radius)
                  {
                     _loc6_ = this.§^t§.radius;
                  }
                  else if(this.§^t§.width)
                  {
                     _loc6_ = this.§^t§.width / 2;
                  }
                  else
                  {
                     _loc2_ = this.§-!T§();
                     _loc6_ = (_loc6_ = _loc2_.width * §#!,§.§?$#§ * §]"?§ / 2 * _loc1_) - _loc5_ * 2;
                  }
                  §@!Q§ = new §3#U§(_loc6_,new Point(0,0));
                  break;
               case "polygon":
                  if(this.§^t§.width && this.§^t§.height)
                  {
                     if(this.§^t§.scale)
                     {
                        _loc3_ = this.§^t§.width * this.§^t§.scale;
                        _loc4_ = this.§^t§.height * this.§^t§.scale;
                     }
                     else
                     {
                        _loc3_ = this.§^t§.width;
                        _loc4_ = this.§^t§.height;
                     }
                  }
                  else
                  {
                     _loc2_ = this.§-!T§();
                     _loc3_ = _loc2_.width * §#!,§.§?$#§ * §]"?§;
                     _loc4_ = _loc2_.height * §#!,§.§?$#§ * §]"?§;
                     if(this.getItemDensity() != 0)
                     {
                        _loc3_ *= _loc1_;
                        _loc4_ *= _loc1_;
                     }
                  }
                  _loc7_ = new Vector.<b2Vec2>(0);
                  for each(_loc12_ in this.§^t§.vertices)
                  {
                     _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                  }
                  _loc10_ = ((_loc9_ = new §9#!§(_loc7_).§@i§())[0].x + _loc9_[1].x) / 2;
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
                  §@!Q§ = new §9#!§(_loc7_);
                  break;
               default:
                  throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§^t§.type + "\' for item \'" + this.§^t§.definition + "\'.");
            }
         }
         return §@!Q§;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:§<#=§ = null;
         if(this.§^t§.animations)
         {
            return this.§,!3§(this.§^t§.animations);
         }
         if(this.§,!]§.length == 0)
         {
            _loc2_ = [];
            if(this.§^t§.themeTexture)
            {
               _loc1_ = [this.§^t§.themeTexture];
            }
            else
            {
               _loc1_ = [this.§^t§.sprite];
            }
            return [[§="@§.§0!V§,[["1",_loc1_,_loc2_]]]];
         }
         _loc3_ = [["1",[this.§^t§.sprite]]];
         _loc4_ = 1;
         for each(_loc5_ in this.§,!]§)
         {
            if(_loc5_.§;!>§ < 100)
            {
               _loc4_++;
               _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
            }
         }
         return [[§="@§.§0!V§,_loc3_]];
      }
      
      protected function §,!3§(param1:Object) : Array
      {
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:uint = 0;
         var _loc9_:Object = null;
         var _loc10_:Array = null;
         var _loc11_:Array = null;
         var _loc14_:int = 0;
         var _loc15_:Number = NaN;
         var _loc16_:Array = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in param1)
         {
            if(_loc3_.id)
            {
               _loc4_ = [];
               if(_loc3_.sound)
               {
                  _loc7_ = !!_loc3_.sound.channel ? _loc3_.sound.channel : §#$+§.§#"k§;
                  _loc4_.push([_loc3_.sound.name,_loc7_]);
               }
               _loc5_ = [];
               _loc6_ = [];
               if(_loc3_.graphic)
               {
                  _loc8_ = 0;
                  for each(_loc9_ in _loc3_.graphic)
                  {
                     _loc8_++;
                     _loc10_ = [];
                     _loc11_ = _loc9_.frames;
                     int(!!_loc9_.max ? int(_loc9_.max) : 100);
                     int(_loc9_.min);
                     _loc14_ = 0;
                     while(_loc14_ < _loc11_.length)
                     {
                        _loc10_.push(_loc11_[_loc14_]);
                        _loc15_ = 40;
                        if((_loc16_ = _loc9_.frameTime) != null && _loc16_.length > 0)
                        {
                           if(_loc16_[_loc14_] != null)
                           {
                              _loc15_ = _loc16_[_loc14_];
                           }
                           else
                           {
                              _loc15_ = _loc16_[0];
                           }
                        }
                        if(_loc16_ != null)
                        {
                           _loc6_.push(_loc15_);
                        }
                        _loc14_++;
                     }
                     _loc5_.push([_loc8_.toString(),_loc10_,_loc6_]);
                  }
               }
               _loc2_.push([_loc3_.id,_loc5_]);
            }
         }
         return _loc2_;
      }
      
      protected function §4#a§(param1:int, param2:Object) : Array
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
      
      protected function §+"E§() : String
      {
         var _loc1_:String = null;
         if(this.§,!]§.length == 0)
         {
            if(this.§^t§.sprite)
            {
               _loc1_ = this.§^t§.sprite;
            }
            else if(this.§^t§.themeTexture)
            {
               _loc1_ = this.§^t§.themeTexture;
            }
         }
         else
         {
            _loc1_ = this.§,!]§[0].spriteName;
         }
         return _loc1_;
      }
      
      private function §1#K§() : §+!3§
      {
         var _loc1_:String = this.§+"E§();
         return §>"$§.§3#'§.textureManager.getTexture(_loc1_);
      }
      
      private function §?#N§() : DisplayObject
      {
         var _loc1_:String = this.§+"E§();
         return §'!u§.§9#^§(_loc1_,§>"$§.§3#'§.textureManager,true);
      }
      
      private function §-!T§() : Rectangle
      {
         var _loc1_:§+!3§ = this.§1#K§();
         if(_loc1_)
         {
            return new Rectangle(0,0,_loc1_.width,_loc1_.height);
         }
         var _loc2_:DisplayObject = this.§?#N§();
         if(_loc2_)
         {
            return new Rectangle(0,0,_loc2_.width,_loc2_.height);
         }
         throw new Error("Texture / composite sprite \'" + this.§+"E§() + "\' doesn\'t exist.");
      }
      
      public function §1#c§(param1:String, ... rest) : String
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(rest.length == 0)
         {
            return this.§^t§[param1];
         }
         var _loc3_:Object = this.§^t§[param1];
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
      
      public function §0"[§(param1:String, ... rest) : Number
      {
         var _loc3_:String = this.§1#c§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return parseFloat(_loc3_);
         }
         return NaN;
      }
      
      public function §0#B§(param1:String, ... rest) : Boolean
      {
         var _loc3_:String = this.§1#c§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return _loc3_.toLowerCase() == "true";
         }
         return false;
      }
      
      public function get §;!y§() : Boolean
      {
         if(§4#2§ is §;">§)
         {
            return (§4#2§ as §;">§).bouncesLaser;
         }
         return false;
      }
      
      public function get §#<§() : String
      {
         if(§4#2§ is §;">§)
         {
            return (§4#2§ as §;">§).particlesDestroyed;
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.§!#N§;
      }
      
      public function get §!#N§() : String
      {
         var _loc1_:String = this.§]"z§;
         if(_loc1_ == null)
         {
            if(§4#2§ is §;">§)
            {
               _loc1_ = (§4#2§ as §;">§).collisionSound;
            }
         }
         return _loc1_;
      }
      
      public function get damageSound() : String
      {
         return this.§;1§;
      }
      
      public function get §;1§() : String
      {
         var _loc1_:String = this.§#§;
         if(_loc1_ == null)
         {
            if(§4#2§ is §;">§)
            {
               _loc1_ = (§4#2§ as §;">§).damageSound;
            }
         }
         return _loc1_;
      }
      
      public function get §`#x§() : String
      {
         var _loc1_:String = this.§<]§;
         if(_loc1_ == null)
         {
            if(§4#2§ is §;">§)
            {
               _loc1_ = (§4#2§ as §;">§).destroyedSound;
            }
         }
         return _loc1_;
      }
      
      public function get §3"n§() : String
      {
         if(§4#2§ is §;">§)
         {
            return (§4#2§ as §;">§).rollingSound;
         }
         return null;
      }
      
      public function get soundChannel() : String
      {
         if(§4#2§ is §;">§)
         {
            return (§4#2§ as §;">§).soundChannel;
         }
         return null;
      }
      
      public function get §]$;§() : Boolean
      {
         if(§4#2§ is §;">§)
         {
            return (§4#2§ as §;">§).bouncesLaserTargeted;
         }
         return false;
      }
      
      override public function getItemDensity() : Number
      {
         if(!isNaN(this.§[#W§))
         {
            return this.§[#W§;
         }
         return super.getItemDensity();
      }
      
      override public function getItemFriction() : Number
      {
         if(!isNaN(this.§9!$§))
         {
            return this.§9!$§;
         }
         return super.getItemFriction();
      }
      
      override public function getItemRestitution() : Number
      {
         if(!isNaN(this.§@!B§))
         {
            return this.§@!B§;
         }
         return super.getItemRestitution();
      }
      
      override public function getItemStrength() : Number
      {
         if(!isNaN(this.§5!=§))
         {
            return this.§5!=§;
         }
         return super.getItemStrength();
      }
      
      override public function getItemDefence() : Number
      {
         if(!isNaN(this.§3![§))
         {
            return this.§3![§;
         }
         return super.getItemDefence();
      }
      
      override public function getItemZOrder() : int
      {
         if(!isNaN(this.§<#]§))
         {
            return this.§<#]§;
         }
         return 0;
      }
      
      override public function getItemBodyType() : int
      {
         if(this.getItemDensity() > 0)
         {
            return §^#A§.§=G§;
         }
         return §^#A§.§&M§;
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function §=1§(param1:String) : String
      {
         var _loc2_:String = this.§1#c§("definitionAffectedByForce");
         if(!_loc2_)
         {
            _loc2_ = this.§1#c§("definitionHeldByForce");
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
      
      public function §'X§() : Number
      {
         var _loc1_:Number = this.§0"[§("glowRotation");
         if(isNaN(_loc1_))
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
      
      override public function hasGraphics() : Boolean
      {
         var _loc1_:§+!3§ = this.§1#K§();
         if(_loc1_)
         {
            return true;
         }
         var _loc2_:DisplayObject = this.§?#N§();
         if(_loc2_)
         {
            return true;
         }
         return false;
      }
   }
}
