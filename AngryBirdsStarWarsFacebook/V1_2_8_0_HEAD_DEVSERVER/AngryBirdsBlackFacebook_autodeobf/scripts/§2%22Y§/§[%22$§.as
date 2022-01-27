package §2"Y§
{
   import §!!U§.DisplayObject;
   import §5"i§.b2Settings;
   import §7!F§.§8!W§;
   import §7!F§.§^"U§;
   import §7P§.§&#=§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import com.angrybirds.§,!q§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §["$§ extends §"t§
   {
       
      
      private var §@k§:Object;
      
      private var §9"V§:Vector.<§<!r§>;
      
      private var §9!]§:Number;
      
      private var § "E§:Number;
      
      private var §>",§:Number;
      
      private var §>!5§:Number;
      
      private var §4O§:Number;
      
      private var §<#&§:int;
      
      private var §%#Z§:Boolean;
      
      protected var §>"Q§:§%"3§;
      
      public function §["$§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false)
      {
         var _loc8_:Object = null;
         this.§9"V§ = new Vector.<§<!r§>();
         this.§@k§ = param1;
         this.§%#Z§ = param1.collision != undefined ? Boolean(param1.collision) : true;
         if(param3 != null)
         {
            this.§9!]§ = param1.density != undefined ? Number(param1.density) : Number(param3.density);
            this.§ "E§ = param1.friction != undefined ? Number(param1.friction) : Number(param3.friction);
            this.§>",§ = param1.restitution != undefined ? Number(param1.restitution) : Number(param3.restitution);
            this.§>!5§ = param1.strength != undefined ? Number(param1.strength) : Number(param3.strength);
            this.§4O§ = param1.defence != undefined ? Number(param1.defence) : Number(param3.defence);
         }
         var _loc7_:§-!Y§;
         if(_loc7_ = param3 as §-!Y§)
         {
            this.§<#&§ = param1.z_order != undefined ? int(param1.z_order) : int(_loc7_.§3!k§);
         }
         for each(_loc8_ in this.§@k§.damageSprites)
         {
            this.§9"V§.push(new §<!r§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
         }
         this.§9"V§.sort(this.§[#1§);
         super(param1.definition,param2,param3,param4,null,param5,"",param1.strength != undefined ? Number(param1.strength) : (!!param3 ? Number(param3.strength) : Number(-1)),param1.scale != undefined ? Number(param1.scale) : Number(1),param6);
      }
      
      override public function get isColliding() : Boolean
      {
         return this.§%#Z§;
      }
      
      public function §-Z§(param1:String, param2:Number = 0, param3:Number = 0) : void
      {
         if(this.§>"Q§)
         {
            this.§>"Q§.§"#_§(param1,param2,param3);
         }
      }
      
      private function §[#1§(param1:§<!r§, param2:§<!r§) : int
      {
         if(param1.§]1§ > param2.§]1§)
         {
            return -1;
         }
         return 1;
      }
      
      override public function get shape() : §?#^§
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc8_:§,!W§ = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         var _loc1_:Number = 0.92;
         if(!§&"5§)
         {
            _loc5_ = b2Settings.§#"F§;
            if(this.isMaterialStatic)
            {
               _loc1_ = 1;
               _loc5_ = 0;
            }
            switch(String(this.§@k§.type).toLowerCase())
            {
               case "box":
                  if(this.§@k§.width && this.§@k§.height)
                  {
                     _loc3_ = this.§@k§.width;
                     _loc4_ = this.§@k§.height;
                  }
                  else
                  {
                     _loc2_ = this.§=#K§();
                     _loc3_ = _loc2_.width * §#_§.§8]§ * _loc1_;
                     _loc4_ = _loc2_.height * §#_§.§8]§ * _loc1_;
                  }
                  _loc3_ -= _loc5_ * 2;
                  _loc4_ -= _loc5_ * 2;
                  §&"5§ = new §<"+§(_loc3_,_loc4_);
                  break;
               case "circle":
                  _loc6_ = 0;
                  if(this.§@k§.radius)
                  {
                     _loc6_ = this.§@k§.radius;
                  }
                  else if(this.§@k§.width)
                  {
                     _loc6_ = this.§@k§.width / 2;
                  }
                  else
                  {
                     _loc2_ = this.§=#K§();
                     _loc6_ = (_loc6_ = _loc2_.width * §#_§.§8]§ * §8"2§ / 2 * _loc1_) - _loc5_ * 2;
                  }
                  §&"5§ = new §?#Q§(_loc6_,new Point(0,0));
                  break;
               case "polygon":
                  if(this.§@k§.width && this.§@k§.height)
                  {
                     _loc3_ = this.§@k§.width;
                     _loc4_ = this.§@k§.height;
                  }
                  else
                  {
                     _loc2_ = this.§=#K§();
                     _loc3_ = _loc2_.width * §#_§.§8]§ * §8"2§;
                     _loc4_ = _loc2_.height * §#_§.§8]§ * §8"2§;
                     if(this.getItemDensity() != 0)
                     {
                        _loc3_ *= _loc1_;
                        _loc4_ *= _loc1_;
                     }
                  }
                  _loc7_ = new Vector.<b2Vec2>(0);
                  for each(_loc12_ in this.§@k§.vertices)
                  {
                     _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                  }
                  _loc10_ = ((_loc9_ = (_loc8_ = new §,!W§(_loc7_)).§,v§())[0].x + _loc9_[1].x) / 2;
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
                  §&"5§ = new §,!W§(_loc7_);
                  break;
               default:
                  throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§@k§.type + "\' for item \'" + this.§@k§.definition + "\'.");
            }
         }
         return §&"5§;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:§<!r§ = null;
         if(this.§9"V§.length == 0)
         {
            if(this.§@k§.animations)
            {
               return [[§&#=§.§'%§,[this.§"!`§(0,this.§@k§.animations[0])]]];
            }
            _loc2_ = [];
            if(this.§@k§.themeTexture)
            {
               _loc1_ = [this.§@k§.themeTexture];
            }
            else
            {
               _loc1_ = [this.§@k§.sprite];
            }
            return [[§&#=§.§'%§,[["1",_loc1_,_loc2_]]]];
         }
         _loc3_ = [["1",[this.§@k§.sprite]]];
         _loc4_ = 1;
         for each(_loc5_ in this.§9"V§)
         {
            if(_loc5_.§]1§ < 100)
            {
               _loc4_++;
               _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
            }
         }
         return [[§&#=§.§'%§,_loc3_]];
      }
      
      protected function §"!`§(param1:int, param2:Object) : Array
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
      
      private function §8#D§() : String
      {
         var _loc1_:String = null;
         if(this.§9"V§.length == 0)
         {
            if(this.§@k§.sprite)
            {
               _loc1_ = this.§@k§.sprite;
            }
            else if(this.§@k§.themeTexture)
            {
               _loc1_ = this.§@k§.themeTexture;
            }
         }
         else
         {
            _loc1_ = this.§9"V§[0].spriteName;
         }
         return _loc1_;
      }
      
      private function §2]§() : §8!W§
      {
         var _loc1_:String = this.§8#D§();
         return §,!q§.§9!,§.textureManager.getTexture(_loc1_);
      }
      
      private function §9"8§() : DisplayObject
      {
         var _loc1_:String = this.§8#D§();
         return §^"U§.§]!6§(_loc1_,§,!q§.§9!,§.textureManager,true);
      }
      
      private function §=#K§() : Rectangle
      {
         var _loc1_:§8!W§ = this.§2]§();
         if(_loc1_)
         {
            return new Rectangle(0,0,_loc1_.width,_loc1_.height);
         }
         var _loc2_:DisplayObject = this.§9"8§();
         if(_loc2_)
         {
            return new Rectangle(0,0,_loc2_.width,_loc2_.height);
         }
         throw new Error("Texture / composite sprite \'" + this.§8#D§() + "\' doesn\'t exist.");
      }
      
      public function getProperty(param1:String, ... rest) : String
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(rest.length == 0)
         {
            return this.§@k§[param1];
         }
         var _loc3_:Object = this.§@k§[param1];
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
      
      public function getNumberProperty(param1:String, ... rest) : Number
      {
         var _loc3_:String = this.getProperty.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return parseFloat(_loc3_);
         }
         return NaN;
      }
      
      public function §@"8§(param1:String, ... rest) : Boolean
      {
         var _loc3_:String = this.getProperty.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return _loc3_.toLowerCase() == "true";
         }
         return false;
      }
      
      public function get §1!<§() : Boolean
      {
         if(§`!=§ is §-!Y§)
         {
            return (§`!=§ as §-!Y§).bouncesLaser;
         }
         return false;
      }
      
      public function get §%d§() : String
      {
         if(§`!=§ is §-!Y§)
         {
            return (§`!=§ as §-!Y§).particlesDestroyed;
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.§2"?§;
      }
      
      public function get §2"?§() : String
      {
         if(§`!=§ is §-!Y§)
         {
            return (§`!=§ as §-!Y§).collisionSound;
         }
         return null;
      }
      
      public function get damageSound() : String
      {
         return this.§4#V§;
      }
      
      public function get §4#V§() : String
      {
         if(§`!=§ is §-!Y§)
         {
            return (§`!=§ as §-!Y§).damageSound;
         }
         return null;
      }
      
      public function get §31§() : String
      {
         if(§`!=§ is §-!Y§)
         {
            return (§`!=§ as §-!Y§).destroyedSound;
         }
         return null;
      }
      
      public function get §0!C§() : String
      {
         if(§`!=§ is §-!Y§)
         {
            return (§`!=§ as §-!Y§).rollingSound;
         }
         return null;
      }
      
      public function get §^!N§() : Boolean
      {
         if(§`!=§ is §-!Y§)
         {
            return (§`!=§ as §-!Y§).bouncesLaserTargeted;
         }
         return false;
      }
      
      override public function getItemDensity() : Number
      {
         if(!isNaN(this.§9!]§))
         {
            return this.§9!]§;
         }
         return super.getItemDensity();
      }
      
      override public function getItemFriction() : Number
      {
         if(!isNaN(this.§ "E§))
         {
            return this.§ "E§;
         }
         return super.getItemFriction();
      }
      
      override public function getItemRestitution() : Number
      {
         if(!isNaN(this.§>",§))
         {
            return this.§>",§;
         }
         return super.getItemRestitution();
      }
      
      override public function getItemStrength() : Number
      {
         if(!isNaN(this.§>!5§))
         {
            return this.§>!5§;
         }
         return super.getItemStrength();
      }
      
      override public function getItemDefence() : Number
      {
         if(!isNaN(this.§4O§))
         {
            return this.§4O§;
         }
         return super.getItemDefence();
      }
      
      override public function getItemZOrder() : int
      {
         if(!isNaN(this.§<#&§))
         {
            return this.§<#&§;
         }
         return 0;
      }
      
      override public function getItemBodyType() : int
      {
         if(this.getItemDensity() > 0)
         {
            return §&!x§.§7!B§;
         }
         return §&!x§.§&#_§;
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function §@"y§(param1:String) : String
      {
         var _loc2_:String = this.getProperty("definitionAffectedByForce");
         if(!_loc2_)
         {
            _loc2_ = this.getProperty("definitionHeldByForce");
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
      
      public function §'!o§() : Number
      {
         var _loc1_:Number = this.getNumberProperty("glowRotation");
         if(isNaN(_loc1_))
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
   }
}
