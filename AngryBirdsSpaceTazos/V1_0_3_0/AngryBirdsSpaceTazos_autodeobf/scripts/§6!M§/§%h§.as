package §6!M§
{
   import §3R§.§1!R§;
   import §4"@§.DisplayObject;
   import §5"D§.§6!!§;
   import §7!C§.§8!w§;
   import §8K§.b2Settings;
   import §[!f§.b2Vec2;
   import §^e§.§7!R§;
   import §^e§.§>b§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%h§ extends §<!r§
   {
       
      
      private var §2"§:Object;
      
      private var §!x§:Vector.<§5!]§>;
      
      private var §0_§:Number;
      
      private var §]!$§:Number;
      
      private var §?>§:Number;
      
      private var §;S§:Number;
      
      private var §-!§:Number;
      
      private var §!"?§:int;
      
      protected var §<G§:§=!T§;
      
      public function §%h§(param1:Object, param2:int, param3:§8!]§, param4:§=!P§, param5:int, param6:Boolean = false)
      {
         var _loc8_:Object = null;
         this.§!x§ = new Vector.<§5!]§>();
         this.§2"§ = param1;
         if(param3 != null)
         {
            this.§0_§ = param1.density != undefined ? Number(param1.density) : Number(param3.density);
            this.§]!$§ = param1.friction != undefined ? Number(param1.friction) : Number(param3.friction);
            this.§?>§ = param1.restitution != undefined ? Number(param1.restitution) : Number(param3.restitution);
            this.§;S§ = param1.strength != undefined ? Number(param1.strength) : Number(param3.strength);
            this.§-!§ = param1.defence != undefined ? Number(param1.defence) : Number(param3.defence);
         }
         var _loc7_:§"!O§;
         if(_loc7_ = param3 as §"!O§)
         {
            this.§!"?§ = param1.z_order != undefined ? int(param1.z_order) : int(_loc7_.§;U§);
         }
         for each(_loc8_ in this.§2"§.damageSprites)
         {
            this.§!x§.push(new §5!]§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
         }
         this.§!x§.sort(this.§!S§);
         super(param1.definition,param2,param3,param4,null,param5,"",param1.strength != undefined ? Number(param1.strength) : (!!param3 ? Number(param3.strength) : Number(-1)),param1.scale != undefined ? Number(param1.scale) : Number(1),param6);
      }
      
      public function playSoundLua(param1:String, param2:Number = 0, param3:Number = 0) : void
      {
         if(this.§<G§)
         {
            this.§<G§.playSound(param1,param2,param3);
         }
      }
      
      private function §!S§(param1:§5!]§, param2:§5!]§) : int
      {
         if(param1.§8!8§ > param2.§8!8§)
         {
            return -1;
         }
         return 1;
      }
      
      override public function get shape() : §7r§
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc8_:§2!c§ = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         var _loc1_:Number = 0.92;
         if(!§`u§)
         {
            _loc5_ = b2Settings.§9=§;
            if(this.isMaterialStatic)
            {
               _loc1_ = 1;
               _loc5_ = 0;
            }
            switch(String(this.§2"§.type).toLowerCase())
            {
               case "box":
                  if(this.§2"§.width && this.§2"§.height)
                  {
                     _loc3_ = this.§2"§.width;
                     _loc4_ = this.§2"§.height;
                  }
                  else
                  {
                     _loc2_ = this.§"a§();
                     _loc3_ = _loc2_.width * §1!R§.§00§ * _loc1_;
                     _loc4_ = _loc2_.height * §1!R§.§00§ * _loc1_;
                  }
                  _loc3_ -= _loc5_ * 2;
                  _loc4_ -= _loc5_ * 2;
                  §`u§ = new §1!K§(_loc3_,_loc4_);
                  break;
               case "circle":
                  _loc6_ = 0;
                  if(this.§2"§.radius)
                  {
                     _loc6_ = this.§2"§.radius;
                  }
                  else if(this.§2"§.width)
                  {
                     _loc6_ = this.§2"§.width / 2;
                  }
                  else
                  {
                     _loc2_ = this.§"a§();
                     _loc6_ = (_loc6_ = _loc2_.width * §1!R§.§00§ * §1!k§ / 2 * _loc1_) - _loc5_ * 2;
                  }
                  §`u§ = new §3!@§(_loc6_,new Point(0,0));
                  break;
               case "polygon":
                  if(this.§2"§.width && this.§2"§.height)
                  {
                     _loc3_ = this.§2"§.width;
                     _loc4_ = this.§2"§.height;
                  }
                  else
                  {
                     _loc2_ = this.§"a§();
                     _loc3_ = _loc2_.width * §1!R§.§00§ * §1!k§;
                     _loc4_ = _loc2_.height * §1!R§.§00§ * §1!k§;
                     if(this.getItemDensity() != 0)
                     {
                        _loc3_ *= _loc1_;
                        _loc4_ *= _loc1_;
                     }
                  }
                  _loc7_ = new Vector.<b2Vec2>(0);
                  for each(_loc12_ in this.§2"§.vertices)
                  {
                     _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                  }
                  _loc10_ = ((_loc9_ = (_loc8_ = new §2!c§(_loc7_)).§^X§())[0].x + _loc9_[1].x) / 2;
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
                  §`u§ = new §2!c§(_loc7_);
                  break;
               default:
                  throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§2"§.type + "\' for item \'" + this.§2"§.definition + "\'.");
            }
         }
         return §`u§;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:§5!]§ = null;
         if(this.§!x§.length == 0)
         {
            _loc2_ = [];
            if(this.§2"§.themeTexture)
            {
               _loc1_ = [this.§2"§.themeTexture];
            }
            else
            {
               _loc1_ = [this.§2"§.sprite];
            }
            if(this.§2"§.animations)
            {
               return [[§6!!§.§[!;§,[this.§-^§(0,this.§2"§.animations[0])]]];
            }
            return [[§6!!§.§[!;§,[["1",_loc1_,_loc2_]]]];
         }
         _loc3_ = [["1",[this.§2"§.sprite]]];
         _loc4_ = 1;
         for each(_loc5_ in this.§!x§)
         {
            if(_loc5_.§8!8§ < 100)
            {
               _loc4_++;
               _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
            }
         }
         return [[§6!!§.§[!;§,_loc3_]];
      }
      
      protected function §-^§(param1:int, param2:Object) : Array
      {
         var _loc13_:Object = null;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc3_:Number = param2.frameTime[0];
         var _loc4_:Number = param2.frameTime[1];
         var _loc5_:Number = (_loc3_ + _loc4_) / 2 * 1000;
         var _loc6_:Array = [];
         var _loc7_:Array = [];
         var _loc8_:Array = [];
         var _loc9_:Object;
         if(_loc9_ = param2.sound)
         {
            _loc8_.push(_loc9_.name);
         }
         var _loc10_:Array;
         var _loc11_:int = (_loc10_ = param2.sprites[param1]).length;
         var _loc12_:int = 0;
         while(_loc12_ < _loc11_)
         {
            if((_loc13_ = _loc10_[_loc12_]).constructor == Object)
            {
               if(_loc13_.sound && _loc8_.length == 0)
               {
                  _loc14_ = _loc13_.sound;
                  _loc8_.push(_loc14_);
               }
            }
            else
            {
               _loc15_ = _loc13_ as String;
               _loc6_.push(_loc15_);
               _loc7_.push(_loc5_);
            }
            _loc12_++;
         }
         return [(param1 + 1).toString(),_loc6_,_loc7_,_loc8_];
      }
      
      private function §+!;§() : String
      {
         var _loc1_:String = null;
         if(this.§!x§.length == 0)
         {
            if(this.§2"§.sprite)
            {
               _loc1_ = this.§2"§.sprite;
            }
            else if(this.§2"§.themeTexture)
            {
               _loc1_ = this.§2"§.themeTexture;
            }
         }
         else
         {
            _loc1_ = this.§!x§[0].spriteName;
         }
         return _loc1_;
      }
      
      private function §@,§() : §7!R§
      {
         var _loc1_:String = this.§+!;§();
         return §8!w§.§5!V§.textureManager.getTexture(_loc1_);
      }
      
      private function §@H§() : DisplayObject
      {
         var _loc1_:String = this.§+!;§();
         return §>b§.§#2§(_loc1_,§8!w§.§5!V§.textureManager,true);
      }
      
      private function §"a§() : Rectangle
      {
         var _loc1_:§7!R§ = this.§@,§();
         if(_loc1_)
         {
            return new Rectangle(0,0,_loc1_.width,_loc1_.height);
         }
         var _loc2_:DisplayObject = this.§@H§();
         if(_loc2_)
         {
            return new Rectangle(0,0,_loc2_.width,_loc2_.height);
         }
         throw new Error("Texture / composite sprite \'" + this.§+!;§() + "\' doesn\'t exist.");
      }
      
      public function §<"H§(param1:String, ... rest) : String
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(rest.length == 0)
         {
            return this.§2"§[param1];
         }
         var _loc3_:Object = this.§2"§[param1];
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
      
      public function §2"@§(param1:String, ... rest) : Number
      {
         var _loc3_:String = this.§<"H§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return parseFloat(_loc3_);
         }
         return NaN;
      }
      
      public function §7!S§(param1:String, ... rest) : Boolean
      {
         var _loc3_:String = this.§<"H§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return _loc3_.toLowerCase() == "true";
         }
         return false;
      }
      
      public function get §%3§() : Boolean
      {
         if(§9j§ is §"!O§)
         {
            return (§9j§ as §"!O§).bouncesLaser;
         }
         return false;
      }
      
      public function get §]!d§() : String
      {
         if(§9j§ is §"!O§)
         {
            return (§9j§ as §"!O§).particlesDestroyed;
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.§""7§;
      }
      
      public function get §""7§() : String
      {
         if(§9j§ is §"!O§)
         {
            return (§9j§ as §"!O§).collisionSound;
         }
         return null;
      }
      
      public function get damageSound() : String
      {
         return this.§<@§;
      }
      
      public function get §<@§() : String
      {
         if(§9j§ is §"!O§)
         {
            return (§9j§ as §"!O§).damageSound;
         }
         return null;
      }
      
      public function get § !^§() : String
      {
         if(§9j§ is §"!O§)
         {
            return (§9j§ as §"!O§).destroyedSound;
         }
         return null;
      }
      
      public function get §8"$§() : String
      {
         if(§9j§ is §"!O§)
         {
            return (§9j§ as §"!O§).rollingSound;
         }
         return null;
      }
      
      public function get §]">§() : Boolean
      {
         if(§9j§ is §"!O§)
         {
            return (§9j§ as §"!O§).bouncesLaserTargeted;
         }
         return false;
      }
      
      override public function getItemDensity() : Number
      {
         if(!isNaN(this.§0_§))
         {
            return this.§0_§;
         }
         return super.getItemDensity();
      }
      
      override public function getItemFriction() : Number
      {
         if(!isNaN(this.§]!$§))
         {
            return this.§]!$§;
         }
         return super.getItemFriction();
      }
      
      override public function getItemRestitution() : Number
      {
         if(!isNaN(this.§?>§))
         {
            return this.§?>§;
         }
         return super.getItemRestitution();
      }
      
      override public function getItemStrength() : Number
      {
         if(!isNaN(this.§;S§))
         {
            return this.§;S§;
         }
         return super.getItemStrength();
      }
      
      override public function getItemDefence() : Number
      {
         if(!isNaN(this.§-!§))
         {
            return this.§-!§;
         }
         return super.getItemDefence();
      }
      
      override public function getItemZOrder() : int
      {
         if(!isNaN(this.§!"?§))
         {
            return this.§!"?§;
         }
         return 0;
      }
      
      override public function getItemBodyType() : int
      {
         if(this.getItemDensity() > 0)
         {
            return §8!]§.§0!Q§;
         }
         return §8!]§.§16§;
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function §6=§(param1:String) : String
      {
         var _loc2_:String = this.§<"H§("definitionAffectedByForce");
         if(!_loc2_)
         {
            _loc2_ = this.§<"H§("definitionHeldByForce");
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
      
      public function §9"!§() : Number
      {
         var _loc1_:Number = this.§2"@§("glowRotation");
         if(isNaN(_loc1_))
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
   }
}
