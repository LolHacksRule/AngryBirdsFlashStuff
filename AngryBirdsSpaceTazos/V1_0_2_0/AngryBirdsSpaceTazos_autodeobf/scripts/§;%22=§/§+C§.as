package §;"=§
{
   import §&!S§.b2Vec2;
   import §'!&§.DisplayObject;
   import §+!9§.§;0§;
   import §8o§.§!">§;
   import §8o§.§]" §;
   import §?!<§.§'!1§;
   import §@!@§.b2Settings;
   import §[,§.§5,§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+C§ extends §]"<§
   {
       
      
      private var §,![§:Object;
      
      private var §," §:Vector.<§^!+§>;
      
      private var §7!&§:Number;
      
      private var §;!5§:Number;
      
      private var §@"!§:Number;
      
      private var §9!`§:Number;
      
      private var §^!^§:Number;
      
      private var §`"F§:int;
      
      protected var §5"<§:§-_§;
      
      public function §+C§(param1:Object, param2:int, param3:§"!=§, param4:§"!Y§, param5:int, param6:Boolean = false)
      {
         var _loc8_:Object = null;
         this.§," § = new Vector.<§^!+§>();
         this.§,![§ = param1;
         if(param3 != null)
         {
            this.§7!&§ = param1.density != undefined ? Number(param1.density) : Number(param3.density);
            this.§;!5§ = param1.friction != undefined ? Number(param1.friction) : Number(param3.friction);
            this.§@"!§ = param1.restitution != undefined ? Number(param1.restitution) : Number(param3.restitution);
            this.§9!`§ = param1.strength != undefined ? Number(param1.strength) : Number(param3.strength);
            this.§^!^§ = param1.defence != undefined ? Number(param1.defence) : Number(param3.defence);
         }
         var _loc7_:§;"4§;
         if(_loc7_ = param3 as §;"4§)
         {
            this.§`"F§ = param1.z_order != undefined ? int(param1.z_order) : int(_loc7_.§`!S§);
         }
         for each(_loc8_ in this.§,![§.damageSprites)
         {
            this.§," §.push(new §^!+§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
         }
         this.§," §.sort(this.§^" §);
         super(param1.definition,param2,param3,param4,null,param5,"",param1.strength != undefined ? Number(param1.strength) : (!!param3 ? Number(param3.strength) : Number(-1)),param1.scale != undefined ? Number(param1.scale) : Number(1),param6);
      }
      
      public function playSoundLua(param1:String, param2:Number = 0, param3:Number = 0) : void
      {
         if(this.§5"<§)
         {
            this.§5"<§.playSound(param1,param2,param3);
         }
      }
      
      private function §^" §(param1:§^!+§, param2:§^!+§) : int
      {
         if(param1.§?!h§ > param2.§?!h§)
         {
            return -1;
         }
         return 1;
      }
      
      override public function get shape() : §3!R§
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc8_:§ !'§ = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         var _loc1_:Number = 0.92;
         if(!§<"7§)
         {
            _loc5_ = b2Settings.§0§;
            if(this.isMaterialStatic)
            {
               _loc1_ = 1;
               _loc5_ = 0;
            }
            switch(String(this.§,![§.type).toLowerCase())
            {
               case "box":
                  if(this.§,![§.width && this.§,![§.height)
                  {
                     _loc3_ = this.§,![§.width;
                     _loc4_ = this.§,![§.height;
                  }
                  else
                  {
                     _loc2_ = this.§6Y§();
                     _loc3_ = _loc2_.width * §'!1§.§<!@§ * _loc1_;
                     _loc4_ = _loc2_.height * §'!1§.§<!@§ * _loc1_;
                  }
                  _loc3_ -= _loc5_ * 2;
                  _loc4_ -= _loc5_ * 2;
                  §<"7§ = new §5"5§(_loc3_,_loc4_);
                  break;
               case "circle":
                  _loc6_ = 0;
                  if(this.§,![§.radius)
                  {
                     _loc6_ = this.§,![§.radius;
                  }
                  else if(this.§,![§.width)
                  {
                     _loc6_ = this.§,![§.width / 2;
                  }
                  else
                  {
                     _loc2_ = this.§6Y§();
                     _loc6_ = (_loc6_ = _loc2_.width * §'!1§.§<!@§ * §-!Y§ / 2 * _loc1_) - _loc5_ * 2;
                  }
                  §<"7§ = new §9!B§(_loc6_,new Point(0,0));
                  break;
               case "polygon":
                  if(this.§,![§.width && this.§,![§.height)
                  {
                     _loc3_ = this.§,![§.width;
                     _loc4_ = this.§,![§.height;
                  }
                  else
                  {
                     _loc2_ = this.§6Y§();
                     _loc3_ = _loc2_.width * §'!1§.§<!@§ * §-!Y§;
                     _loc4_ = _loc2_.height * §'!1§.§<!@§ * §-!Y§;
                     if(this.getItemDensity() != 0)
                     {
                        _loc3_ *= _loc1_;
                        _loc4_ *= _loc1_;
                     }
                  }
                  _loc7_ = new Vector.<b2Vec2>(0);
                  for each(_loc12_ in this.§,![§.vertices)
                  {
                     _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                  }
                  _loc10_ = ((_loc9_ = (_loc8_ = new § !'§(_loc7_)).§2-§())[0].x + _loc9_[1].x) / 2;
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
                  §<"7§ = new § !'§(_loc7_);
                  break;
               default:
                  throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§,![§.type + "\' for item \'" + this.§,![§.definition + "\'.");
            }
         }
         return §<"7§;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:§^!+§ = null;
         if(this.§," §.length == 0)
         {
            _loc2_ = [];
            if(this.§,![§.themeTexture)
            {
               _loc1_ = [this.§,![§.themeTexture];
            }
            else
            {
               _loc1_ = [this.§,![§.sprite];
            }
            if(this.§,![§.animations)
            {
               return [[§5,§.§+!d§,[this.§^A§(0,this.§,![§.animations[0])]]];
            }
            return [[§5,§.§+!d§,[["1",_loc1_,_loc2_]]]];
         }
         _loc3_ = [["1",[this.§,![§.sprite]]];
         _loc4_ = 1;
         for each(_loc5_ in this.§," §)
         {
            if(_loc5_.§?!h§ < 100)
            {
               _loc4_++;
               _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
            }
         }
         return [[§5,§.§+!d§,_loc3_]];
      }
      
      protected function §^A§(param1:int, param2:Object) : Array
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
      
      private function §[!n§() : String
      {
         var _loc1_:String = null;
         if(this.§," §.length == 0)
         {
            if(this.§,![§.sprite)
            {
               _loc1_ = this.§,![§.sprite;
            }
            else if(this.§,![§.themeTexture)
            {
               _loc1_ = this.§,![§.themeTexture;
            }
         }
         else
         {
            _loc1_ = this.§," §[0].spriteName;
         }
         return _loc1_;
      }
      
      private function §7<§() : §!">§
      {
         var _loc1_:String = this.§[!n§();
         return §;0§.§@!^§.textureManager.getTexture(_loc1_);
      }
      
      private function §9!h§() : DisplayObject
      {
         var _loc1_:String = this.§[!n§();
         return §]" §.§6?§(_loc1_,§;0§.§@!^§.textureManager,true);
      }
      
      private function §6Y§() : Rectangle
      {
         var _loc1_:§!">§ = this.§7<§();
         if(_loc1_)
         {
            return new Rectangle(0,0,_loc1_.width,_loc1_.height);
         }
         var _loc2_:DisplayObject = this.§9!h§();
         if(_loc2_)
         {
            return new Rectangle(0,0,_loc2_.width,_loc2_.height);
         }
         throw new Error("Texture / composite sprite \'" + this.§[!n§() + "\' doesn\'t exist.");
      }
      
      public function §[D§(param1:String, ... rest) : String
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(rest.length == 0)
         {
            return this.§,![§[param1];
         }
         var _loc3_:Object = this.§,![§[param1];
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
      
      public function §0f§(param1:String, ... rest) : Number
      {
         var _loc3_:String = this.§[D§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return parseFloat(_loc3_);
         }
         return NaN;
      }
      
      public function §!!u§(param1:String, ... rest) : Boolean
      {
         var _loc3_:String = this.§[D§.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return _loc3_.toLowerCase() == "true";
         }
         return false;
      }
      
      public function get §<" §() : Boolean
      {
         if(§7!u§ is §;"4§)
         {
            return (§7!u§ as §;"4§).bouncesLaser;
         }
         return false;
      }
      
      public function get §+3§() : String
      {
         if(§7!u§ is §;"4§)
         {
            return (§7!u§ as §;"4§).particlesDestroyed;
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.§+%§;
      }
      
      public function get §+%§() : String
      {
         if(§7!u§ is §;"4§)
         {
            return (§7!u§ as §;"4§).collisionSound;
         }
         return null;
      }
      
      public function get damageSound() : String
      {
         return this.§?!_§;
      }
      
      public function get §?!_§() : String
      {
         if(§7!u§ is §;"4§)
         {
            return (§7!u§ as §;"4§).damageSound;
         }
         return null;
      }
      
      public function get §?!r§() : String
      {
         if(§7!u§ is §;"4§)
         {
            return (§7!u§ as §;"4§).destroyedSound;
         }
         return null;
      }
      
      public function get §?"<§() : String
      {
         if(§7!u§ is §;"4§)
         {
            return (§7!u§ as §;"4§).rollingSound;
         }
         return null;
      }
      
      public function get §+!D§() : Boolean
      {
         if(§7!u§ is §;"4§)
         {
            return (§7!u§ as §;"4§).bouncesLaserTargeted;
         }
         return false;
      }
      
      override public function getItemDensity() : Number
      {
         if(!isNaN(this.§7!&§))
         {
            return this.§7!&§;
         }
         return super.getItemDensity();
      }
      
      override public function getItemFriction() : Number
      {
         if(!isNaN(this.§;!5§))
         {
            return this.§;!5§;
         }
         return super.getItemFriction();
      }
      
      override public function getItemRestitution() : Number
      {
         if(!isNaN(this.§@"!§))
         {
            return this.§@"!§;
         }
         return super.getItemRestitution();
      }
      
      override public function getItemStrength() : Number
      {
         if(!isNaN(this.§9!`§))
         {
            return this.§9!`§;
         }
         return super.getItemStrength();
      }
      
      override public function getItemDefence() : Number
      {
         if(!isNaN(this.§^!^§))
         {
            return this.§^!^§;
         }
         return super.getItemDefence();
      }
      
      override public function getItemZOrder() : int
      {
         if(!isNaN(this.§`"F§))
         {
            return this.§`"F§;
         }
         return 0;
      }
      
      override public function getItemBodyType() : int
      {
         if(this.getItemDensity() > 0)
         {
            return §"!=§.§>!B§;
         }
         return §"!=§.§]">§;
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function §6-§(param1:String) : String
      {
         var _loc2_:String = this.§[D§("definitionAffectedByForce");
         if(!_loc2_)
         {
            _loc2_ = this.§[D§("definitionHeldByForce");
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
      
      public function §6<§() : Number
      {
         var _loc1_:Number = this.§0f§("glowRotation");
         if(isNaN(_loc1_))
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
   }
}
