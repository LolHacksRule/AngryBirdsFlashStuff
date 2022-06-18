package §@#§
{
   import §%!9§.b2Vec2;
   import §4o§.§3H§;
   import §6$"§.§ #F§;
   import §6$"§.§#B§;
   import §6$"§.§3#Z§;
   import §6$"§.§4#p§;
   import §6$"§.§9"]§;
   import §6$"§.§["=§;
   import §6$"§.§]"o§;
   import §6$"§.§`#w§;
   import §6V§.§&"g§;
   import §6V§.§0#z§;
   import §7"&§.§>#H§;
   import §>!5§.§4@§;
   import §>!5§.§^"9§;
   import flash.geom.Point;
   
   public class §6z§ extends §]#B§
   {
      
      private static const §]!'§:Number = 4;
       
      
      protected var §0!7§:Number = 4.0;
      
      protected var §]$0§:Vector.<§3#Z§> = null;
      
      protected var §,#a§:§&"g§;
      
      protected var §,V§:Boolean;
      
      public function §6z§()
      {
         super();
         this.§]$0§ = new Vector.<§3#Z§>();
         this.§,#a§ = new §&"g§();
      }
      
      public static function §6#]§(param1:String) : §6z§
      {
         var _loc2_:§6z§ = new §6z§();
         _loc2_.readFromLua(param1);
         return _loc2_;
      }
      
      public function get § #d§() : int
      {
         return this.§]$0§.length;
      }
      
      override public function get hasGround() : Boolean
      {
         return this.§,V§;
      }
      
      public function §%#G§(param1:int) : §3#Z§
      {
         return this.§]$0§[param1];
      }
      
      protected function §1!y§(param1:Object) : void
      {
      }
      
      protected function readFromLua(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc2_:String = §0#z§.§`!m§(param1);
         _loc3_ = §0#z§.§40§(_loc2_);
         this.§1!y§(_loc3_);
         §1"h§ = this.convertName(_loc3_.theme);
         §9L§ = new Vector.<§@"v§>();
         mBirds = new Vector.<§["=§>();
         §2!E§ = new Vector.<§]"o§>();
         _loc4_ = _loc3_.physicsToWorld;
         this.§0!7§ = _loc3_.gravityForceMultiplier !== undefined ? Number(_loc3_.gravityForceMultiplier) : Number(§]!'§);
         if(_loc3_.worldGravity)
         {
            §1#3§ = _loc3_.worldGravity;
         }
         §@X§ = _loc3_.scores.MightyEagle;
         §^"d§ = _loc3_.scores.Gold;
         §4#k§ = _loc3_.scores.Silver;
         var _loc5_:§@"v§ = this.§;u§(_loc3_.castleCameraData,_loc4_,§@"v§.CASTLE);
         var _loc6_:§@"v§ = this.§;u§(_loc3_.birdCameraData,_loc4_,§@"v§.SLINGSHOT);
         §9L§.push(_loc5_);
         §9L§.push(_loc6_);
         var _loc7_:Vector.<String> = this.§6!G§(_loc3_.world,_loc2_);
         this.§<Q§(_loc3_.world,_loc7_);
         var _loc8_:Vector.<String> = this.§1$"§(_loc3_.joints,_loc2_);
         this.§?>§(_loc3_.joints,_loc8_);
         if(_loc3_.slingshotX)
         {
            §]7§ = _loc3_.slingshotX;
         }
         if(_loc3_.slingshotY)
         {
            §5=§ = _loc3_.slingshotY;
         }
      }
      
      private function §6!G§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§0#a§(param1,param2,"world");
      }
      
      private function §1$"§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§0#a§(param1,param2,"joints");
      }
      
      private function §0#a§(param1:Object, param2:String, param3:String) : Vector.<String>
      {
         var _loc5_:§1t§ = null;
         var _loc8_:String = null;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc4_:Array = [];
         var _loc6_:int;
         if((_loc6_ = param2.indexOf("\"" + param3 + "\"")) >= 0)
         {
            _loc8_ = param2.substring(_loc6_);
            for(_loc9_ in param1)
            {
               if(_loc10_ = _loc8_.indexOf("\"" + _loc9_ + "\""))
               {
                  (_loc5_ = new §1t§()).name = _loc9_;
                  _loc5_.index = _loc10_;
                  _loc4_.push(_loc5_);
               }
            }
         }
         _loc4_.sortOn("index",Array.NUMERIC);
         var _loc7_:Vector.<String> = new Vector.<String>();
         for each(_loc5_ in _loc4_)
         {
            _loc7_.push(_loc5_.name);
         }
         return _loc7_;
      }
      
      private function §<Q§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(param1.ground)
         {
            this.§,V§ = true;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in param2)
         {
            if((_loc5_ = param1[_loc4_]).startNumber && _loc5_.name.indexOf("Bird") >= 0)
            {
               this.§"Q§(_loc5_);
            }
            else if(_loc5_.radius)
            {
               this.§4!4§(_loc5_);
            }
            else if(this.§8n§(_loc5_,_loc3_))
            {
               _loc3_++;
            }
         }
      }
      
      private function §"Q§(param1:Object) : void
      {
         var _loc2_:§["=§ = new §["=§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.angle = param1.angle;
         _loc2_.type = this.convertName(param1.definition);
         _loc2_.index = param1.startNumber - 1;
         if(_loc2_.index == 0)
         {
            §]7§ = _loc2_.x;
            §5=§ = _loc2_.y - 8.5;
            §>![§ = _loc2_.angle;
         }
         mBirds.push(_loc2_);
      }
      
      private function §4!4§(param1:Object) : void
      {
         var _loc2_:§3#Z§ = new §3#Z§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.shape = new §>#H§(param1.radius);
         _loc2_.type = param1.definition;
         _loc2_.angle = this.§,N§(param1.angle);
         _loc2_.§1#J§ = param1.gravitationMinForce;
         _loc2_.§;#L§ = param1.gravitationMaxForce;
         _loc2_.§0P§ = this.§0!7§;
         this.§]$0§.push(_loc2_);
      }
      
      protected function shouldIgnoreObject(param1:Object) : Boolean
      {
         if(param1.definition.toUpperCase().indexOf("BLOCK_BONUS_DROID") >= 0)
         {
            return true;
         }
         if(param1.definition.toUpperCase() == "GROUND")
         {
            this.§,V§ = true;
            return true;
         }
         return false;
      }
      
      protected function §8n§(param1:Object, param2:int) : §]"o§
      {
         var _loc3_:§]"o§ = null;
         var _loc4_:§`#w§ = null;
         var _loc5_:§9"]§ = null;
         var _loc6_:§4#p§ = null;
         var _loc7_:Vector.<§#B§> = null;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:Vector.<§3H§> = null;
         var _loc11_:int = 0;
         var _loc12_:Object = null;
         if(this.shouldIgnoreObject(param1))
         {
            return null;
         }
         if(param1.explosionRadius != undefined || param1.explosionForce != undefined || param1.explosionDamageRadius != undefined || param1.explosionDamage != undefined)
         {
            (_loc4_ = new §`#w§()).explosionRadius = param1.explosionRadius;
            _loc4_.explosionForce = param1.explosionForce;
            _loc4_.explosionDamageRadius = param1.explosionDamageRadius;
            _loc4_.explosionDamage = param1.explosionDamage;
            _loc3_ = _loc4_;
         }
         else if(param1.shotPattern != undefined)
         {
            (_loc5_ = new §9"]§()).shotPattern = param1.shotPattern;
            _loc3_ = _loc5_;
         }
         else if(!param1.triggerEvents)
         {
            _loc3_ = new §]"o§();
         }
         else
         {
            (_loc6_ = new §4#p§()).§&"u§.initialize(param1.triggerEvents.onDestroyed);
            _loc3_ = _loc6_;
         }
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
         if(param1.z)
         {
            _loc3_.z = param1.z;
         }
         else
         {
            _loc3_.z = §^"9§.§!"V§;
         }
         _loc3_.angle = this.§,N§(param1.angle);
         _loc3_.type = this.convertName(param1.definition);
         _loc3_.id = param2;
         _loc3_.instanceName = param1.name;
         _loc3_.linearForce = new b2Vec2(!!param1.forceX ? Number(param1.forceX) : Number(0),!!param1.forceY ? Number(param1.forceY) : Number(0));
         if(param1.behaviors)
         {
            _loc7_ = new Vector.<§#B§>();
            _loc8_ = 0;
            while(_loc8_ < param1.behaviors.length)
            {
               _loc9_ = param1.behaviors[_loc8_];
               _loc7_.push(new §#B§(_loc9_.type,_loc9_.name,_loc9_.event));
               _loc8_++;
            }
            _loc3_.§7G§(_loc7_);
         }
         if(param1.events)
         {
            _loc10_ = new Vector.<§3H§>();
            _loc11_ = 0;
            while(_loc11_ < param1.events.length)
            {
               _loc12_ = param1.events[_loc11_];
               _loc10_.push(new §3H§(_loc12_.name,_loc12_.parameters,_loc12_.trigger));
               _loc11_++;
            }
            _loc3_.§#4§(_loc10_);
         }
         if(param1.gravityFilterCategory)
         {
            if(§4@§[param1.gravityFilterCategory] == undefined)
            {
               throw new Error("Unknown gravity filter category \'" + param1.gravityFilterCategory + "\' for object \'" + param1.definition + "\' (id: " + param2 + ")");
            }
            _loc3_.§>#j§ = §4@§[param1.gravityFilterCategory];
         }
         if(param1.themeTexture)
         {
            _loc3_.themeTexture = param1.themeTexture;
         }
         §2!E§.push(_loc3_);
         if(this.§,#a§[param1.name] != null)
         {
            throw new Error("Invalid level! Two objects with the same name: " + param1.name);
         }
         this.§,#a§[param1.name] = param2;
         return _loc3_;
      }
      
      private function §?>§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§ #F§ = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Boolean = false;
         var _loc18_:Number = NaN;
         var _loc19_:Boolean = false;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:int = 0;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param2)
         {
            _loc5_ = (_loc4_ = param1[_loc3_]).type;
            _loc6_ = new Point(_loc4_.x1,_loc4_.y1);
            _loc7_ = new Point(_loc4_.x2,_loc4_.y2);
            _loc8_ = null;
            _loc9_ = _loc4_.end1;
            _loc10_ = _loc4_.end2;
            _loc11_ = this.§,#a§[_loc9_];
            _loc12_ = this.§,#a§[_loc10_];
            if(this.§,#a§[_loc9_] == null || this.§,#a§[_loc10_] == null)
            {
               throw new Error("Invalid joint! Between objects: " + _loc9_ + " and " + _loc10_);
            }
            _loc13_ = _loc4_.collideConnected;
            if(_loc5_ == § #F§.§+!I§ || _loc5_ == § #F§.§<#4§)
            {
               _loc14_ = _loc4_.limit;
               _loc15_ = _loc4_.lowerLimit;
               _loc16_ = _loc4_.upperLimit;
               _loc17_ = _loc4_.motor;
               _loc18_ = _loc4_.motorSpeed;
               _loc19_ = _loc4_.backAndForth;
               _loc20_ = _loc4_.maxTorque;
               _loc8_ = new § #F§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_);
               if(_loc5_ == § #F§.§<#4§)
               {
                  _loc21_ = _loc4_.worldAxisX;
                  _loc22_ = _loc4_.worldAxisY;
                  _loc8_.axisX = _loc21_;
                  _loc8_.axisY = _loc22_;
               }
            }
            else
            {
               _loc8_ = new § #F§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_);
               if(_loc5_ == § #F§.§0M§)
               {
                  _loc23_ = _loc4_.coordType;
                  _loc24_ = _loc4_.dampingRatio;
                  _loc25_ = _loc4_.frequency;
                  _loc8_.coordinateType = _loc23_;
                  _loc8_.dampingRatio = _loc24_;
                  _loc8_.frequency = _loc25_;
               }
            }
            _loc8_.breakable = _loc4_.breakable;
            _loc8_.breakForce = _loc4_.breakForce;
            _loc8_.isOneWayDestroyed = _loc4_.isOneWayDestroyed;
            _loc8_.destroyChild = _loc4_.destroyChild;
            if(_loc4_.type == § #F§.§-#Q§)
            {
               _loc8_.annihilationTime = _loc4_.destroyTimer;
               _loc8_.distanceToDestroyChild = _loc4_.distanceToDestroyChild;
            }
            §7#J§.push(_loc8_);
         }
      }
      
      private function §;u§(param1:Object, param2:Number, param3:String) : §@"v§
      {
         var _loc4_:§@"v§ = new §@"v§();
         var _loc5_:Object = null;
         if(param1.ipad)
         {
            _loc5_ = param1.ipad;
         }
         else
         {
            _loc5_ = param1.iphone;
         }
         var _loc6_:Number = _loc5_.screenWidth;
         var _loc7_:Number = _loc5_.screenHeight;
         var _loc8_:Number = _loc5_.sx;
         var _loc9_:Number = _loc5_.px;
         var _loc10_:Number = _loc5_.py;
         _loc4_.x = _loc9_ / param2;
         _loc4_.y = _loc10_ / param2;
         _loc4_.left = (_loc9_ - 0.5 * _loc6_ / _loc8_) / param2;
         _loc4_.right = (_loc9_ + 0.5 * _loc6_ / _loc8_) / param2;
         _loc4_.top = (_loc10_ - 0.5 * _loc7_ / _loc8_) / param2;
         _loc4_.bottom = (_loc10_ - 0.5 * _loc7_ / _loc8_) / param2;
         _loc4_.scale = _loc8_;
         _loc4_.id = param3;
         return _loc4_;
      }
      
      protected function §,N§(param1:Number) : Number
      {
         return param1 * 180 / Math.PI;
      }
      
      protected function convertName(param1:String) : String
      {
         return param1;
      }
   }
}
