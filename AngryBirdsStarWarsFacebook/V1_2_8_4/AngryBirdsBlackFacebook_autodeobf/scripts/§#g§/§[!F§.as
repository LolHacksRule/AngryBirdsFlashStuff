package §#g§
{
   import §!!k§.§'!j§;
   import §!!k§.§;m§;
   import §!r§.§0N§;
   import §"§.§;!E§;
   import §7!I§.b2Settings;
   import §7"A§.b2Vec2;
   import com.angrybirds.§<!J§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §use§.DisplayObject;
   
   public class §[!F§ extends §["%§
   {
       
      
      private var §"b§:Object;
      
      private var §,"v§:Vector.<§-§>;
      
      private var §^#,§:Number;
      
      private var §4A§:Number;
      
      private var §""=§:Number;
      
      private var §3!G§:Number;
      
      private var §1Y§:Number;
      
      private var §[![§:int;
      
      private var §!"L§:Boolean;
      
      protected var §?$§:§?B§;
      
      public function §[!F§(param1:Object, param2:int, param3:§!+§, param4:§^i§, param5:int, param6:Boolean = false)
      {
         var _loc8_:Object = null;
         this.§,"v§ = new Vector.<§-§>();
         this.§"b§ = param1;
         this.§!"L§ = param1.collision != undefined ? Boolean(param1.collision) : true;
         if(param3 != null)
         {
            this.§^#,§ = param1.density != undefined ? Number(param1.density) : Number(param3.density);
            this.§4A§ = param1.friction != undefined ? Number(param1.friction) : Number(param3.friction);
            this.§""=§ = param1.restitution != undefined ? Number(param1.restitution) : Number(param3.restitution);
            this.§3!G§ = param1.strength != undefined ? Number(param1.strength) : Number(param3.strength);
            this.§1Y§ = param1.defence != undefined ? Number(param1.defence) : Number(param3.defence);
         }
         var _loc7_:§?!c§;
         if(_loc7_ = param3 as §?!c§)
         {
            this.§[![§ = param1.z_order != undefined ? int(param1.z_order) : int(_loc7_.§'u§);
         }
         for each(_loc8_ in this.§"b§.damageSprites)
         {
            this.§,"v§.push(new §-§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
         }
         this.§,"v§.sort(this.§=S§);
         super(param1.definition,param2,param3,param4,null,param5,"",param1.strength != undefined ? Number(param1.strength) : (!!param3 ? Number(param3.strength) : Number(-1)),param1.scale != undefined ? Number(param1.scale) : Number(1),param6);
      }
      
      override public function get isColliding() : Boolean
      {
         return this.§!"L§;
      }
      
      public function §]"J§(param1:String, param2:Number = 0, param3:Number = 0) : void
      {
         if(this.§?$§)
         {
            this.§?$§.§`!A§(param1,param2,param3);
         }
      }
      
      private function §=S§(param1:§-§, param2:§-§) : int
      {
         if(param1.§%"3§ > param2.§%"3§)
         {
            return -1;
         }
         return 1;
      }
      
      override public function get shape() : §'<§
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc8_:§7""§ = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         var _loc1_:Number = 0.92;
         if(!§04§)
         {
            _loc5_ = b2Settings.§8!5§;
            if(this.isMaterialStatic)
            {
               _loc1_ = 1;
               _loc5_ = 0;
            }
            switch(String(this.§"b§.type).toLowerCase())
            {
               case "box":
                  if(this.§"b§.width && this.§"b§.height)
                  {
                     _loc3_ = this.§"b§.width;
                     _loc4_ = this.§"b§.height;
                  }
                  else
                  {
                     _loc2_ = this.§<_§();
                     _loc3_ = _loc2_.width * §;!E§.§0"?§ * _loc1_;
                     _loc4_ = _loc2_.height * §;!E§.§0"?§ * _loc1_;
                  }
                  _loc3_ -= _loc5_ * 2;
                  _loc4_ -= _loc5_ * 2;
                  §04§ = new §1!H§(_loc3_,_loc4_);
                  break;
               case "circle":
                  _loc6_ = 0;
                  if(this.§"b§.radius)
                  {
                     _loc6_ = this.§"b§.radius;
                  }
                  else if(this.§"b§.width)
                  {
                     _loc6_ = this.§"b§.width / 2;
                  }
                  else
                  {
                     _loc2_ = this.§<_§();
                     _loc6_ = (_loc6_ = _loc2_.width * §;!E§.§0"?§ * §#"5§ / 2 * _loc1_) - _loc5_ * 2;
                  }
                  §04§ = new §<b§(_loc6_,new Point(0,0));
                  break;
               case "polygon":
                  if(this.§"b§.width && this.§"b§.height)
                  {
                     _loc3_ = this.§"b§.width;
                     _loc4_ = this.§"b§.height;
                  }
                  else
                  {
                     _loc2_ = this.§<_§();
                     _loc3_ = _loc2_.width * §;!E§.§0"?§ * §#"5§;
                     _loc4_ = _loc2_.height * §;!E§.§0"?§ * §#"5§;
                     if(this.getItemDensity() != 0)
                     {
                        _loc3_ *= _loc1_;
                        _loc4_ *= _loc1_;
                     }
                  }
                  _loc7_ = new Vector.<b2Vec2>(0);
                  for each(_loc12_ in this.§"b§.vertices)
                  {
                     _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                  }
                  _loc10_ = ((_loc9_ = (_loc8_ = new §7""§(_loc7_)).§8f§())[0].x + _loc9_[1].x) / 2;
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
                  §04§ = new §7""§(_loc7_);
                  break;
               default:
                  throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§"b§.type + "\' for item \'" + this.§"b§.definition + "\'.");
            }
         }
         return §04§;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:§-§ = null;
         if(this.§,"v§.length == 0)
         {
            if(this.§"b§.animations)
            {
               return [[§0N§.§'"T§,[this.§5H§(0,this.§"b§.animations[0])]]];
            }
            _loc2_ = [];
            if(this.§"b§.themeTexture)
            {
               _loc1_ = [this.§"b§.themeTexture];
            }
            else
            {
               _loc1_ = [this.§"b§.sprite];
            }
            return [[§0N§.§'"T§,[["1",_loc1_,_loc2_]]]];
         }
         _loc3_ = [["1",[this.§"b§.sprite]]];
         _loc4_ = 1;
         for each(_loc5_ in this.§,"v§)
         {
            if(_loc5_.§%"3§ < 100)
            {
               _loc4_++;
               _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
            }
         }
         return [[§0N§.§'"T§,_loc3_]];
      }
      
      protected function §5H§(param1:int, param2:Object) : Array
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
      
      private function §`"Y§() : String
      {
         var _loc1_:String = null;
         if(this.§,"v§.length == 0)
         {
            if(this.§"b§.sprite)
            {
               _loc1_ = this.§"b§.sprite;
            }
            else if(this.§"b§.themeTexture)
            {
               _loc1_ = this.§"b§.themeTexture;
            }
         }
         else
         {
            _loc1_ = this.§,"v§[0].spriteName;
         }
         return _loc1_;
      }
      
      private function §;h§() : §'!j§
      {
         var _loc1_:String = this.§`"Y§();
         return §<!J§.§=!%§.textureManager.getTexture(_loc1_);
      }
      
      private function §84§() : DisplayObject
      {
         var _loc1_:String = this.§`"Y§();
         return §;m§.§-"p§(_loc1_,§<!J§.§=!%§.textureManager,true);
      }
      
      private function §<_§() : Rectangle
      {
         var _loc1_:§'!j§ = this.§;h§();
         if(_loc1_)
         {
            return new Rectangle(0,0,_loc1_.width,_loc1_.height);
         }
         var _loc2_:DisplayObject = this.§84§();
         if(_loc2_)
         {
            return new Rectangle(0,0,_loc2_.width,_loc2_.height);
         }
         throw new Error("Texture / composite sprite \'" + this.§`"Y§() + "\' doesn\'t exist.");
      }
      
      public function getProperty(param1:String, ... rest) : String
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(rest.length == 0)
         {
            return this.§"b§[param1];
         }
         var _loc3_:Object = this.§"b§[param1];
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
      
      public function §%"=§(param1:String, ... rest) : Boolean
      {
         var _loc3_:String = this.getProperty.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return _loc3_.toLowerCase() == "true";
         }
         return false;
      }
      
      public function get § X§() : Boolean
      {
         if(§0!D§ is §?!c§)
         {
            return (§0!D§ as §?!c§).bouncesLaser;
         }
         return false;
      }
      
      public function get §9#-§() : String
      {
         if(§0!D§ is §?!c§)
         {
            return (§0!D§ as §?!c§).particlesDestroyed;
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.§[#%§;
      }
      
      public function get §[#%§() : String
      {
         if(§0!D§ is §?!c§)
         {
            return (§0!D§ as §?!c§).collisionSound;
         }
         return null;
      }
      
      public function get damageSound() : String
      {
         return this.§+!`§;
      }
      
      public function get §+!`§() : String
      {
         if(§0!D§ is §?!c§)
         {
            return (§0!D§ as §?!c§).damageSound;
         }
         return null;
      }
      
      public function get §9!=§() : String
      {
         if(§0!D§ is §?!c§)
         {
            return (§0!D§ as §?!c§).destroyedSound;
         }
         return null;
      }
      
      public function get §>n§() : String
      {
         if(§0!D§ is §?!c§)
         {
            return (§0!D§ as §?!c§).rollingSound;
         }
         return null;
      }
      
      public function get §4]§() : Boolean
      {
         if(§0!D§ is §?!c§)
         {
            return (§0!D§ as §?!c§).bouncesLaserTargeted;
         }
         return false;
      }
      
      override public function getItemDensity() : Number
      {
         if(!isNaN(this.§^#,§))
         {
            return this.§^#,§;
         }
         return super.getItemDensity();
      }
      
      override public function getItemFriction() : Number
      {
         if(!isNaN(this.§4A§))
         {
            return this.§4A§;
         }
         return super.getItemFriction();
      }
      
      override public function getItemRestitution() : Number
      {
         if(!isNaN(this.§""=§))
         {
            return this.§""=§;
         }
         return super.getItemRestitution();
      }
      
      override public function getItemStrength() : Number
      {
         if(!isNaN(this.§3!G§))
         {
            return this.§3!G§;
         }
         return super.getItemStrength();
      }
      
      override public function getItemDefence() : Number
      {
         if(!isNaN(this.§1Y§))
         {
            return this.§1Y§;
         }
         return super.getItemDefence();
      }
      
      override public function getItemZOrder() : int
      {
         if(!isNaN(this.§[![§))
         {
            return this.§[![§;
         }
         return 0;
      }
      
      override public function getItemBodyType() : int
      {
         if(this.getItemDensity() > 0)
         {
            return §!+§.§'I§;
         }
         return §!+§.§-"7§;
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function §6i§(param1:String) : String
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
      
      public function §<"-§() : Number
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
