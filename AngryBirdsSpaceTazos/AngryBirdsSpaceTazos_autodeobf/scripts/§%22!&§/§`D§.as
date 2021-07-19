package §"!&§
{
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §4&§.§ j§;
   import §4&§.§'!"§;
   import §7!8§.DisplayObject;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §]">§.§1!0§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`D§ extends §8X§
   {
       
      
      private var §3" §:Object;
      
      private var §?",§:Vector.<§ o§>;
      
      private var §9!C§:Number;
      
      private var §0!%§:Number;
      
      private var §>!5§:Number;
      
      private var §6$§:Number;
      
      private var §`!2§:Number;
      
      private var §%!e§:int;
      
      protected var §9"3§:§="D§;
      
      public function §`D§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false)
      {
         var _loc8_:Object = null;
         this.§?",§ = new Vector.<§ o§>();
         this.§3" § = param1;
         if(param3 != null)
         {
            this.§9!C§ = param1.density != undefined ? Number(param1.density) : Number(param3.density);
            this.§0!%§ = param1.friction != undefined ? Number(param1.friction) : Number(param3.friction);
            this.§>!5§ = param1.restitution != undefined ? Number(param1.restitution) : Number(param3.restitution);
            this.§6$§ = param1.strength != undefined ? Number(param1.strength) : Number(param3.strength);
            this.§`!2§ = param1.defence != undefined ? Number(param1.defence) : Number(param3.defence);
         }
         var _loc7_:§]!<§;
         if(_loc7_ = param3 as §]!<§)
         {
            this.§%!e§ = param1.z_order != undefined ? int(param1.z_order) : int(_loc7_.§&"=§);
         }
         for each(_loc8_ in this.§3" §.damageSprites)
         {
            this.§?",§.push(new § o§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
         }
         this.§?",§.sort(this.§<G§);
         super(param1.definition,param2,param3,param4,null,param5,"",param1.strength != undefined ? Number(param1.strength) : (!!param3 ? Number(param3.strength) : Number(-1)),param1.scale != undefined ? Number(param1.scale) : Number(1),param6);
      }
      
      public function playSoundLua(param1:String, param2:Number = 0, param3:Number = 0) : void
      {
         if(this.§9"3§)
         {
            this.§9"3§.playSound(param1,param2,param3);
         }
      }
      
      private function §<G§(param1:§ o§, param2:§ o§) : int
      {
         if(param1.§]!V§ > param2.§]!V§)
         {
            return -1;
         }
         return 1;
      }
      
      override public function get shape() : set
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc8_:§"!Y§ = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         var _loc1_:Number = 0.92;
         if(!§?!g§)
         {
            _loc5_ = b2Settings.§4I§;
            if(this.isMaterialStatic)
            {
               _loc1_ = 1;
               _loc5_ = 0;
            }
            switch(String(this.§3" §.type).toLowerCase())
            {
               case "box":
                  if(this.§3" §.width && this.§3" §.height)
                  {
                     _loc3_ = this.§3" §.width;
                     _loc4_ = this.§3" §.height;
                  }
                  else
                  {
                     _loc2_ = this.§>!4§();
                     _loc3_ = _loc2_.width * §^g§.§5!-§ * _loc1_;
                     _loc4_ = _loc2_.height * §^g§.§5!-§ * _loc1_;
                  }
                  _loc3_ -= _loc5_ * 2;
                  _loc4_ -= _loc5_ * 2;
                  §?!g§ = new §>!0§(_loc3_,_loc4_);
                  break;
               case "circle":
                  _loc6_ = 0;
                  if(this.§3" §.radius)
                  {
                     _loc6_ = this.§3" §.radius;
                  }
                  else if(this.§3" §.width)
                  {
                     _loc6_ = this.§3" §.width / 2;
                  }
                  else
                  {
                     _loc2_ = this.§>!4§();
                     _loc6_ = (_loc6_ = _loc2_.width * §^g§.§5!-§ * §=T§ / 2 * _loc1_) - _loc5_ * 2;
                  }
                  §?!g§ = new §="A§(_loc6_,new Point(0,0));
                  break;
               case "polygon":
                  if(this.§3" §.width && this.§3" §.height)
                  {
                     _loc3_ = this.§3" §.width;
                     _loc4_ = this.§3" §.height;
                  }
                  else
                  {
                     _loc2_ = this.§>!4§();
                     _loc3_ = _loc2_.width * §^g§.§5!-§ * §=T§;
                     _loc4_ = _loc2_.height * §^g§.§5!-§ * §=T§;
                     if(this.getItemDensity() != 0)
                     {
                        _loc3_ *= _loc1_;
                        _loc4_ *= _loc1_;
                     }
                  }
                  _loc7_ = new Vector.<b2Vec2>(0);
                  for each(_loc12_ in this.§3" §.vertices)
                  {
                     _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                  }
                  _loc10_ = ((_loc9_ = (_loc8_ = new §"!Y§(_loc7_)).§<f§())[0].x + _loc9_[1].x) / 2;
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
                  §?!g§ = new §"!Y§(_loc7_);
                  break;
               default:
                  throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§3" §.type + "\' for item \'" + this.§3" §.definition + "\'.");
            }
         }
         return §?!g§;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:§ o§ = null;
         if(this.§?",§.length == 0)
         {
            _loc2_ = [];
            if(this.§3" §.themeTexture)
            {
               _loc1_ = [this.§3" §.themeTexture];
            }
            else
            {
               _loc1_ = [this.§3" §.sprite];
            }
            if(this.§3" §.animations)
            {
               return [[§1!0§.§,!Y§,[this.§ "+§(0,this.§3" §.animations[0])]]];
            }
            return [[§1!0§.§,!Y§,[["1",_loc1_,_loc2_]]]];
         }
         _loc3_ = [["1",[this.§3" §.sprite]]];
         _loc4_ = 1;
         for each(_loc5_ in this.§?",§)
         {
            if(_loc5_.§]!V§ < 100)
            {
               _loc4_++;
               _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
            }
         }
         return [[§1!0§.§,!Y§,_loc3_]];
      }
      
      protected function § "+§(param1:int, param2:Object) : Array
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
      
      private function §2!3§() : String
      {
         var _loc1_:String = null;
         if(this.§?",§.length == 0)
         {
            if(this.§3" §.sprite)
            {
               _loc1_ = this.§3" §.sprite;
            }
            else if(this.§3" §.themeTexture)
            {
               _loc1_ = this.§3" §.themeTexture;
            }
         }
         else
         {
            _loc1_ = this.§?",§[0].spriteName;
         }
         return _loc1_;
      }
      
      private function §2r§() : §'!"§
      {
         var _loc1_:String = this.§2!3§();
         return §9q§.§>!L§.textureManager.getTexture(_loc1_);
      }
      
      private function §1l§() : DisplayObject
      {
         var _loc1_:String = this.§2!3§();
         return § j§.§8!x§(_loc1_,§9q§.§>!L§.textureManager,true);
      }
      
      private function §>!4§() : Rectangle
      {
         var _loc1_:§'!"§ = this.§2r§();
         if(_loc1_)
         {
            return new Rectangle(0,0,_loc1_.width,_loc1_.height);
         }
         var _loc2_:DisplayObject = this.§1l§();
         if(_loc2_)
         {
            return new Rectangle(0,0,_loc2_.width,_loc2_.height);
         }
         throw new Error("Texture / composite sprite \'" + this.§2!3§() + "\' doesn\'t exist.");
      }
      
      public function §0%§(param1:String, ... rest) : String
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(rest.length == 0)
         {
            return this.§3" §[param1];
         }
         var _loc3_:Object = this.§3" §[param1];
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
      
      public function §=c§(param1:String, ... rest) : Number
      {
         var _loc3_:String = this.§0%§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return parseFloat(_loc3_);
         }
         return NaN;
      }
      
      public function §-0§(param1:String, ... rest) : Boolean
      {
         var _loc3_:String = this.§0%§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return _loc3_.toLowerCase() == "true";
         }
         return false;
      }
      
      public function get §[X§() : Boolean
      {
         if(§[B§ is §]!<§)
         {
            return (§[B§ as §]!<§).bouncesLaser;
         }
         return false;
      }
      
      public function get §<!5§() : String
      {
         if(§[B§ is §]!<§)
         {
            return (§[B§ as §]!<§).particlesDestroyed;
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.§0!N§;
      }
      
      public function get §0!N§() : String
      {
         if(§[B§ is §]!<§)
         {
            return (§[B§ as §]!<§).collisionSound;
         }
         return null;
      }
      
      public function get damageSound() : String
      {
         return this.§>!i§;
      }
      
      public function get §>!i§() : String
      {
         if(§[B§ is §]!<§)
         {
            return (§[B§ as §]!<§).damageSound;
         }
         return null;
      }
      
      public function get §'!T§() : String
      {
         if(§[B§ is §]!<§)
         {
            return (§[B§ as §]!<§).destroyedSound;
         }
         return null;
      }
      
      public function get §;Z§() : String
      {
         if(§[B§ is §]!<§)
         {
            return (§[B§ as §]!<§).rollingSound;
         }
         return null;
      }
      
      public function get §5">§() : Boolean
      {
         if(§[B§ is §]!<§)
         {
            return (§[B§ as §]!<§).bouncesLaserTargeted;
         }
         return false;
      }
      
      override public function getItemDensity() : Number
      {
         if(!isNaN(this.§9!C§))
         {
            return this.§9!C§;
         }
         return super.getItemDensity();
      }
      
      override public function getItemFriction() : Number
      {
         if(!isNaN(this.§0!%§))
         {
            return this.§0!%§;
         }
         return super.getItemFriction();
      }
      
      override public function getItemRestitution() : Number
      {
         if(!isNaN(this.§>!5§))
         {
            return this.§>!5§;
         }
         return super.getItemRestitution();
      }
      
      override public function getItemStrength() : Number
      {
         if(!isNaN(this.§6$§))
         {
            return this.§6$§;
         }
         return super.getItemStrength();
      }
      
      override public function getItemDefence() : Number
      {
         if(!isNaN(this.§`!2§))
         {
            return this.§`!2§;
         }
         return super.getItemDefence();
      }
      
      override public function getItemZOrder() : int
      {
         if(!isNaN(this.§%!e§))
         {
            return this.§%!e§;
         }
         return 0;
      }
      
      override public function getItemBodyType() : int
      {
         if(this.getItemDensity() > 0)
         {
            return §<s§.§6x§;
         }
         return §<s§.§%!2§;
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function § ""§(param1:String) : String
      {
         var _loc2_:String = this.§0%§("definitionAffectedByForce");
         if(!_loc2_)
         {
            _loc2_ = this.§0%§("definitionHeldByForce");
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
      
      public function §'v§() : Number
      {
         var _loc1_:Number = this.§=c§("glowRotation");
         if(isNaN(_loc1_))
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
   }
}
