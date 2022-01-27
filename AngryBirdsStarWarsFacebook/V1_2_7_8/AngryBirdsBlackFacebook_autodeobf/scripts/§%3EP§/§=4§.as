package §>P§
{
   import §1"s§.DisplayObject;
   import §3"$§.§&§;
   import §3"$§.§]!h§;
   import §5!q§.§3"X§;
   import §6"R§.§4!w§;
   import §9!s§.b2Settings;
   import §^>§.b2Vec2;
   import com.angrybirds.§;!e§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=4§ extends §=!,§
   {
       
      
      private var §<#-§:Object;
      
      private var §,B§:Vector.<§3!E§>;
      
      private var §`"e§:Number;
      
      private var §2#+§:Number;
      
      private var §?!c§:Number;
      
      private var §`!I§:Number;
      
      private var §'!L§:Number;
      
      private var §;#%§:int;
      
      private var §^"j§:Boolean;
      
      protected var §+!r§:§?[§;
      
      public function §=4§(param1:Object, param2:int, param3:§1C§, param4:§&s§, param5:int, param6:Boolean = false)
      {
         var _loc8_:Object = null;
         this.§,B§ = new Vector.<§3!E§>();
         this.§<#-§ = param1;
         this.§^"j§ = param1.collision != undefined ? Boolean(param1.collision) : true;
         if(param3 != null)
         {
            this.§`"e§ = param1.density != undefined ? Number(param1.density) : Number(param3.density);
            this.§2#+§ = param1.friction != undefined ? Number(param1.friction) : Number(param3.friction);
            this.§?!c§ = param1.restitution != undefined ? Number(param1.restitution) : Number(param3.restitution);
            this.§`!I§ = param1.strength != undefined ? Number(param1.strength) : Number(param3.strength);
            this.§'!L§ = param1.defence != undefined ? Number(param1.defence) : Number(param3.defence);
         }
         var _loc7_:§"s§;
         if(_loc7_ = param3 as §"s§)
         {
            this.§;#%§ = param1.z_order != undefined ? int(param1.z_order) : int(_loc7_.§^Y§);
         }
         for each(_loc8_ in this.§<#-§.damageSprites)
         {
            this.§,B§.push(new §3!E§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
         }
         this.§,B§.sort(this.§5"!§);
         super(param1.definition,param2,param3,param4,null,param5,"",param1.strength != undefined ? Number(param1.strength) : (!!param3 ? Number(param3.strength) : Number(-1)),param1.scale != undefined ? Number(param1.scale) : Number(1),param6);
      }
      
      override public function get isColliding() : Boolean
      {
         return this.§^"j§;
      }
      
      public function §0#+§(param1:String, param2:Number = 0, param3:Number = 0) : void
      {
         if(this.§+!r§)
         {
            this.§+!r§.§=Y§(param1,param2,param3);
         }
      }
      
      private function §5"!§(param1:§3!E§, param2:§3!E§) : int
      {
         if(param1.§`"m§ > param2.§`"m§)
         {
            return -1;
         }
         return 1;
      }
      
      override public function get shape() : §?"Q§
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc8_:§&2§ = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         var _loc1_:Number = 0.92;
         if(!§%;§)
         {
            _loc5_ = b2Settings.§=c§;
            if(this.isMaterialStatic)
            {
               _loc1_ = 1;
               _loc5_ = 0;
            }
            switch(String(this.§<#-§.type).toLowerCase())
            {
               case "box":
                  if(this.§<#-§.width && this.§<#-§.height)
                  {
                     _loc3_ = this.§<#-§.width;
                     _loc4_ = this.§<#-§.height;
                  }
                  else
                  {
                     _loc2_ = this.§+!&§();
                     _loc3_ = _loc2_.width * §3"X§.§;"l§ * _loc1_;
                     _loc4_ = _loc2_.height * §3"X§.§;"l§ * _loc1_;
                  }
                  _loc3_ -= _loc5_ * 2;
                  _loc4_ -= _loc5_ * 2;
                  §%;§ = new §%=§(_loc3_,_loc4_);
                  break;
               case "circle":
                  _loc6_ = 0;
                  if(this.§<#-§.radius)
                  {
                     _loc6_ = this.§<#-§.radius;
                  }
                  else if(this.§<#-§.width)
                  {
                     _loc6_ = this.§<#-§.width / 2;
                  }
                  else
                  {
                     _loc2_ = this.§+!&§();
                     _loc6_ = (_loc6_ = _loc2_.width * §3"X§.§;"l§ * §"r§ / 2 * _loc1_) - _loc5_ * 2;
                  }
                  §%;§ = new §3t§(_loc6_,new Point(0,0));
                  break;
               case "polygon":
                  if(this.§<#-§.width && this.§<#-§.height)
                  {
                     _loc3_ = this.§<#-§.width;
                     _loc4_ = this.§<#-§.height;
                  }
                  else
                  {
                     _loc2_ = this.§+!&§();
                     _loc3_ = _loc2_.width * §3"X§.§;"l§ * §"r§;
                     _loc4_ = _loc2_.height * §3"X§.§;"l§ * §"r§;
                     if(this.getItemDensity() != 0)
                     {
                        _loc3_ *= _loc1_;
                        _loc4_ *= _loc1_;
                     }
                  }
                  _loc7_ = new Vector.<b2Vec2>(0);
                  for each(_loc12_ in this.§<#-§.vertices)
                  {
                     _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                  }
                  _loc10_ = ((_loc9_ = (_loc8_ = new §&2§(_loc7_)).§!"q§())[0].x + _loc9_[1].x) / 2;
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
                  §%;§ = new §&2§(_loc7_);
                  break;
               default:
                  throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§<#-§.type + "\' for item \'" + this.§<#-§.definition + "\'.");
            }
         }
         return §%;§;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:§3!E§ = null;
         if(this.§,B§.length == 0)
         {
            if(this.§<#-§.animations)
            {
               return [[§4!w§.§-"§,[this.§7P§(0,this.§<#-§.animations[0])]]];
            }
            _loc2_ = [];
            if(this.§<#-§.themeTexture)
            {
               _loc1_ = [this.§<#-§.themeTexture];
            }
            else
            {
               _loc1_ = [this.§<#-§.sprite];
            }
            return [[§4!w§.§-"§,[["1",_loc1_,_loc2_]]]];
         }
         _loc3_ = [["1",[this.§<#-§.sprite]]];
         _loc4_ = 1;
         for each(_loc5_ in this.§,B§)
         {
            if(_loc5_.§`"m§ < 100)
            {
               _loc4_++;
               _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
            }
         }
         return [[§4!w§.§-"§,_loc3_]];
      }
      
      protected function §7P§(param1:int, param2:Object) : Array
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
      
      private function §-#2§() : String
      {
         var _loc1_:String = null;
         if(this.§,B§.length == 0)
         {
            if(this.§<#-§.sprite)
            {
               _loc1_ = this.§<#-§.sprite;
            }
            else if(this.§<#-§.themeTexture)
            {
               _loc1_ = this.§<#-§.themeTexture;
            }
         }
         else
         {
            _loc1_ = this.§,B§[0].spriteName;
         }
         return _loc1_;
      }
      
      private function §8!N§() : §]!h§
      {
         var _loc1_:String = this.§-#2§();
         return §;!e§.§<x§.textureManager.getTexture(_loc1_);
      }
      
      private function §-O§() : DisplayObject
      {
         var _loc1_:String = this.§-#2§();
         return §&#7§.§@"G§(_loc1_,§;!e§.§<x§.textureManager,true);
      }
      
      private function §+!&§() : Rectangle
      {
         var _loc1_:§]!h§ = this.§8!N§();
         if(_loc1_)
         {
            return new Rectangle(0,0,_loc1_.width,_loc1_.height);
         }
         var _loc2_:DisplayObject = this.§-O§();
         if(_loc2_)
         {
            return new Rectangle(0,0,_loc2_.width,_loc2_.height);
         }
         throw new Error("Texture / composite sprite \'" + this.§-#2§() + "\' doesn\'t exist.");
      }
      
      public function getProperty(param1:String, ... rest) : String
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(rest.length == 0)
         {
            return this.§<#-§[param1];
         }
         var _loc3_:Object = this.§<#-§[param1];
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
      
      public function §'"]§(param1:String, ... rest) : Boolean
      {
         var _loc3_:String = this.getProperty.apply(this,[param1].concat(rest));
         if(_loc3_)
         {
            return _loc3_.toLowerCase() == "true";
         }
         return false;
      }
      
      public function get §7"w§() : Boolean
      {
         if(§;!n§ is §"s§)
         {
            return (§;!n§ as §"s§).bouncesLaser;
         }
         return false;
      }
      
      public function get §`# §() : String
      {
         if(§;!n§ is §"s§)
         {
            return (§;!n§ as §"s§).particlesDestroyed;
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.§^k§;
      }
      
      public function get §^k§() : String
      {
         if(§;!n§ is §"s§)
         {
            return (§;!n§ as §"s§).collisionSound;
         }
         return null;
      }
      
      public function get damageSound() : String
      {
         return this.§^!w§;
      }
      
      public function get §^!w§() : String
      {
         if(§;!n§ is §"s§)
         {
            return (§;!n§ as §"s§).damageSound;
         }
         return null;
      }
      
      public function get §["1§() : String
      {
         if(§;!n§ is §"s§)
         {
            return (§;!n§ as §"s§).destroyedSound;
         }
         return null;
      }
      
      public function get §-!=§() : String
      {
         if(§;!n§ is §"s§)
         {
            return (§;!n§ as §"s§).rollingSound;
         }
         return null;
      }
      
      public function get §6#,§() : Boolean
      {
         if(§;!n§ is §"s§)
         {
            return (§;!n§ as §"s§).bouncesLaserTargeted;
         }
         return false;
      }
      
      override public function getItemDensity() : Number
      {
         if(!isNaN(this.§`"e§))
         {
            return this.§`"e§;
         }
         return super.getItemDensity();
      }
      
      override public function getItemFriction() : Number
      {
         if(!isNaN(this.§2#+§))
         {
            return this.§2#+§;
         }
         return super.getItemFriction();
      }
      
      override public function getItemRestitution() : Number
      {
         if(!isNaN(this.§?!c§))
         {
            return this.§?!c§;
         }
         return super.getItemRestitution();
      }
      
      override public function getItemStrength() : Number
      {
         if(!isNaN(this.§`!I§))
         {
            return this.§`!I§;
         }
         return super.getItemStrength();
      }
      
      override public function getItemDefence() : Number
      {
         if(!isNaN(this.§'!L§))
         {
            return this.§'!L§;
         }
         return super.getItemDefence();
      }
      
      override public function getItemZOrder() : int
      {
         if(!isNaN(this.§;#%§))
         {
            return this.§;#%§;
         }
         return 0;
      }
      
      override public function getItemBodyType() : int
      {
         if(this.getItemDensity() > 0)
         {
            return §1C§.§="x§;
         }
         return §1C§.§?a§;
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function §?"A§(param1:String) : String
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
      
      public function §60§() : Number
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
