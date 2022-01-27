package §3>§
{
   import §&!]§.DisplayObject;
   import §'!a§.b2Settings;
   import §3"#§.§`"8§;
   import §6!n§.b2Vec2;
   import §9!v§.§"[§;
   import §9!v§.§8M§;
   import §9"!§.§^"3§;
   import §>"2§.§8k§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3n§ extends §-"8§
   {
       
      
      private var §`"E§:Object;
      
      private var §9!L§:Vector.<§0>§>;
      
      private var §^]§:Number;
      
      private var §]!!§:Number;
      
      private var §!"§:Number;
      
      private var §3t§:Number;
      
      private var §^!H§:Number;
      
      private var §7N§:int;
      
      protected var §0"0§:§%5§;
      
      public function §3n§(param1:Object, param2:int, param3:§!4§, param4:§=!Z§, param5:int, param6:Boolean = false)
      {
         var _loc8_:Object = null;
         this.§9!L§ = new Vector.<§0>§>();
         this.§`"E§ = param1;
         if(param3 != null)
         {
            this.§^]§ = param1.density != undefined ? Number(param1.density) : Number(param3.density);
            this.§]!!§ = param1.friction != undefined ? Number(param1.friction) : Number(param3.friction);
            this.§!"§ = param1.restitution != undefined ? Number(param1.restitution) : Number(param3.restitution);
            this.§3t§ = param1.strength != undefined ? Number(param1.strength) : Number(param3.strength);
            this.§^!H§ = param1.defence != undefined ? Number(param1.defence) : Number(param3.defence);
         }
         var _loc7_:§1!0§;
         if(_loc7_ = param3 as §1!0§)
         {
            this.§7N§ = param1.z_order != undefined ? int(param1.z_order) : int(_loc7_.§<! §);
         }
         for each(_loc8_ in this.§`"E§.damageSprites)
         {
            this.§9!L§.push(new §0>§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
         }
         this.§9!L§.sort(this.§+!m§);
         super(param1.definition,param2,param3,param4,null,param5,"",param1.strength != undefined ? Number(param1.strength) : (!!param3 ? Number(param3.strength) : Number(-1)),param1.scale != undefined ? Number(param1.scale) : Number(1),param6);
      }
      
      public function playSoundLua(param1:String, param2:Number = 0, param3:Number = 0) : void
      {
         if(this.§0"0§)
         {
            this.§0"0§.playSound(param1,param2,param3);
         }
      }
      
      private function §+!m§(param1:§0>§, param2:§0>§) : int
      {
         if(param1.§[!S§ > param2.§[!S§)
         {
            return -1;
         }
         return 1;
      }
      
      override public function get shape() : §1!'§
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc8_:§'!M§ = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         var _loc1_:Number = 0.92;
         if(!§71§)
         {
            _loc5_ = b2Settings.§1">§;
            if(this.isMaterialStatic)
            {
               _loc1_ = 1;
               _loc5_ = 0;
            }
            switch(String(this.§`"E§.type).toLowerCase())
            {
               case "box":
                  if(this.§`"E§.width && this.§`"E§.height)
                  {
                     _loc3_ = this.§`"E§.width;
                     _loc4_ = this.§`"E§.height;
                  }
                  else
                  {
                     _loc2_ = this.§'!W§();
                     _loc3_ = _loc2_.width * §`"8§.§3!=§ * _loc1_;
                     _loc4_ = _loc2_.height * §`"8§.§3!=§ * _loc1_;
                  }
                  _loc3_ -= _loc5_ * 2;
                  _loc4_ -= _loc5_ * 2;
                  §71§ = new §["<§(_loc3_,_loc4_);
                  break;
               case "circle":
                  _loc6_ = 0;
                  if(this.§`"E§.radius)
                  {
                     _loc6_ = this.§`"E§.radius;
                  }
                  else if(this.§`"E§.width)
                  {
                     _loc6_ = this.§`"E§.width / 2;
                  }
                  else
                  {
                     _loc2_ = this.§'!W§();
                     _loc6_ = (_loc6_ = _loc2_.width * §`"8§.§3!=§ * §&!A§ / 2 * _loc1_) - _loc5_ * 2;
                  }
                  §71§ = new §,!^§(_loc6_,new Point(0,0));
                  break;
               case "polygon":
                  if(this.§`"E§.width && this.§`"E§.height)
                  {
                     _loc3_ = this.§`"E§.width;
                     _loc4_ = this.§`"E§.height;
                  }
                  else
                  {
                     _loc2_ = this.§'!W§();
                     _loc3_ = _loc2_.width * §`"8§.§3!=§ * §&!A§;
                     _loc4_ = _loc2_.height * §`"8§.§3!=§ * §&!A§;
                     if(this.getItemDensity() != 0)
                     {
                        _loc3_ *= _loc1_;
                        _loc4_ *= _loc1_;
                     }
                  }
                  _loc7_ = new Vector.<b2Vec2>(0);
                  for each(_loc12_ in this.§`"E§.vertices)
                  {
                     _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                  }
                  _loc10_ = ((_loc9_ = (_loc8_ = new §'!M§(_loc7_)).§%!n§())[0].x + _loc9_[1].x) / 2;
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
                  §71§ = new §'!M§(_loc7_);
                  break;
               default:
                  throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§`"E§.type + "\' for item \'" + this.§`"E§.definition + "\'.");
            }
         }
         return §71§;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:§0>§ = null;
         if(this.§9!L§.length == 0)
         {
            _loc2_ = [];
            if(this.§`"E§.themeTexture)
            {
               _loc1_ = [this.§`"E§.themeTexture];
            }
            else
            {
               _loc1_ = [this.§`"E§.sprite];
            }
            if(this.§`"E§.animations)
            {
               return [[§^"3§.§4!Z§,[this.§5!2§(0,this.§`"E§.animations[0])]]];
            }
            return [[§^"3§.§4!Z§,[["1",_loc1_,_loc2_]]]];
         }
         _loc3_ = [["1",[this.§`"E§.sprite]]];
         _loc4_ = 1;
         for each(_loc5_ in this.§9!L§)
         {
            if(_loc5_.§[!S§ < 100)
            {
               _loc4_++;
               _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
            }
         }
         return [[§^"3§.§4!Z§,_loc3_]];
      }
      
      protected function §5!2§(param1:int, param2:Object) : Array
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
      
      private function § !+§() : String
      {
         var _loc1_:String = null;
         if(this.§9!L§.length == 0)
         {
            if(this.§`"E§.sprite)
            {
               _loc1_ = this.§`"E§.sprite;
            }
            else if(this.§`"E§.themeTexture)
            {
               _loc1_ = this.§`"E§.themeTexture;
            }
         }
         else
         {
            _loc1_ = this.§9!L§[0].spriteName;
         }
         return _loc1_;
      }
      
      private function §1_§() : §"[§
      {
         var _loc1_:String = this.§ !+§();
         return §8k§.§;!]§.textureManager.getTexture(_loc1_);
      }
      
      private function §!!t§() : DisplayObject
      {
         var _loc1_:String = this.§ !+§();
         return §8M§.§;Q§(_loc1_,§8k§.§;!]§.textureManager,true);
      }
      
      private function §'!W§() : Rectangle
      {
         var _loc1_:§"[§ = this.§1_§();
         if(_loc1_)
         {
            return new Rectangle(0,0,_loc1_.width,_loc1_.height);
         }
         var _loc2_:DisplayObject = this.§!!t§();
         if(_loc2_)
         {
            return new Rectangle(0,0,_loc2_.width,_loc2_.height);
         }
         throw new Error("Texture / composite sprite \'" + this.§ !+§() + "\' doesn\'t exist.");
      }
      
      public function §^"F§(param1:String, ... rest) : String
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(rest.length == 0)
         {
            return this.§`"E§[param1];
         }
         var _loc3_:Object = this.§`"E§[param1];
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
      
      public function §,$§(param1:String, ... rest) : Number
      {
         var _loc3_:String = this.§^"F§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return parseFloat(_loc3_);
         }
         return NaN;
      }
      
      public function § i§(param1:String, ... rest) : Boolean
      {
         var _loc3_:String = this.§^"F§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return _loc3_.toLowerCase() == "true";
         }
         return false;
      }
      
      public function get §[m§() : Boolean
      {
         if(§=!e§ is §1!0§)
         {
            return (§=!e§ as §1!0§).bouncesLaser;
         }
         return false;
      }
      
      public function get §,u§() : String
      {
         if(§=!e§ is §1!0§)
         {
            return (§=!e§ as §1!0§).particlesDestroyed;
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.§!@§;
      }
      
      public function get §!@§() : String
      {
         if(§=!e§ is §1!0§)
         {
            return (§=!e§ as §1!0§).collisionSound;
         }
         return null;
      }
      
      public function get damageSound() : String
      {
         return this.§>B§;
      }
      
      public function get §>B§() : String
      {
         if(§=!e§ is §1!0§)
         {
            return (§=!e§ as §1!0§).damageSound;
         }
         return null;
      }
      
      public function get §0$§() : String
      {
         if(§=!e§ is §1!0§)
         {
            return (§=!e§ as §1!0§).destroyedSound;
         }
         return null;
      }
      
      public function get §3!U§() : String
      {
         if(§=!e§ is §1!0§)
         {
            return (§=!e§ as §1!0§).rollingSound;
         }
         return null;
      }
      
      public function get §+";§() : Boolean
      {
         if(§=!e§ is §1!0§)
         {
            return (§=!e§ as §1!0§).bouncesLaserTargeted;
         }
         return false;
      }
      
      override public function getItemDensity() : Number
      {
         if(!isNaN(this.§^]§))
         {
            return this.§^]§;
         }
         return super.getItemDensity();
      }
      
      override public function getItemFriction() : Number
      {
         if(!isNaN(this.§]!!§))
         {
            return this.§]!!§;
         }
         return super.getItemFriction();
      }
      
      override public function getItemRestitution() : Number
      {
         if(!isNaN(this.§!"§))
         {
            return this.§!"§;
         }
         return super.getItemRestitution();
      }
      
      override public function getItemStrength() : Number
      {
         if(!isNaN(this.§3t§))
         {
            return this.§3t§;
         }
         return super.getItemStrength();
      }
      
      override public function getItemDefence() : Number
      {
         if(!isNaN(this.§^!H§))
         {
            return this.§^!H§;
         }
         return super.getItemDefence();
      }
      
      override public function getItemZOrder() : int
      {
         if(!isNaN(this.§7N§))
         {
            return this.§7N§;
         }
         return 0;
      }
      
      override public function getItemBodyType() : int
      {
         if(this.getItemDensity() > 0)
         {
            return §!4§.§<@§;
         }
         return §!4§.§4y§;
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function §0!!§(param1:String) : String
      {
         var _loc2_:String = this.§^"F§("definitionAffectedByForce");
         if(!_loc2_)
         {
            _loc2_ = this.§^"F§("definitionHeldByForce");
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
      
      public function §2F§() : Number
      {
         var _loc1_:Number = this.§,$§("glowRotation");
         if(isNaN(_loc1_))
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
   }
}
