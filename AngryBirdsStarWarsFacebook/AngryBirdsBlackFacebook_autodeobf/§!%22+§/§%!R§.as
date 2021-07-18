package §!"+§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§8!D§;
   import §2"Y§.§["$§;
   import §7!F§.§>"G§;
   import §7P§.*;
   import §<a§.§4#P§;
   import §<a§.§8#F§;
   import §[R§.b2Vec2;
   import §^#>§.§&'§;
   import §`!r§.§ U§;
   
   public class §%!R§
   {
      
      protected static const §'!1§:Number = 1.3;
       
      
      protected var §9!u§:Vector.<§'!L§>;
      
      protected var §!!q§:§4#P§;
      
      public function §%!R§(param1:b2World)
      {
         this.§9!u§ = new Vector.<§'!L§>();
         super();
         this.§!!q§ = new §4#P§(param1);
      }
      
      public function dispose() : void
      {
         this.§9!u§ = null;
      }
      
      public function get laserCount() : int
      {
         return this.§9!u§.length;
      }
      
      public function getLaser(param1:int) : §'!L§
      {
         return this.§9!u§[param1];
      }
      
      public function §#!#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§8!D§, param6:Sprite, param7:§>"G§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§'!L§ = new §'!L§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§9!u§.push(_loc10_);
      }
      
      public function §&a§(param1:Number, param2:§,#Z§) : void
      {
         var _loc4_:§'!L§ = null;
         var _loc3_:int = this.§9!u§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§9!u§[_loc3_];
            if(!this.§7#1§(_loc4_,param1,param2))
            {
               this.§'",§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §'",§(param1:int, param2:§,#Z§) : void
      {
         var _loc3_:§'!L§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§9!u§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§!!`§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§;=§.§""3§,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§9!u§.splice(param1,1);
         }
      }
      
      protected function §7#1§(param1:§'!L§, param2:Number, param3:§,#Z§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§8#F§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§&"j§ * param2 / 1000;
            _loc6_ = param1.y + param1.§4#@§ * param2 / 1000;
            _loc7_ = param2;
            this.§!!q§.§@"@§(param1.§@"4§(§'!1§),param1.§"A§(§'!1§),_loc5_,_loc6_);
            if(this.§!!q§.§""h§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§!!q§.§""h§)
            {
               _loc8_ = this.§!!q§.§'"L§(_loc9_);
               if(!param1.§'x§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§@M§(_loc8_,param1,param2,param3))
                  {
                     param2 = _loc7_;
                     break;
                  }
                  if(param1.health == 0)
                  {
                     param2 = 0;
                     _loc4_ = false;
                     break;
                  }
               }
               if(_loc9_ == this.§!!q§.§""h§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§+"^§();
            _loc10_ = 0;
            while(_loc10_ < this.§!!q§.§""h§)
            {
               _loc8_ = this.§!!q§.§'"L§(_loc10_);
               param1.§33§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§%!%§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §@M§(param1:§8#F§, param2:§'!L§, param3:Number, param4:§,#Z§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§7B§;
         if((_loc5_ = param1.§[!@§) is §?"N§)
         {
            this.§>#"§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §&#=§ && §&#=§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.§3!t§())
         {
            _loc5_.§3!t§().SetAwake(true);
         }
         if(this.§&!Q§(_loc5_))
         {
            this.§@`§(param1,param2,param4);
            return false;
         }
         if(this.§4H§(_loc5_) && param2.§3P§)
         {
            return this.§2!l§(param1,param2,param4);
         }
         if(this.§4&§(_loc5_))
         {
            return true;
         }
         this.§-X§(param1,param2,param4);
         return true;
      }
      
      private function §>#"§(param1:§8#F§, param2:§'!L§, param3:§,#Z§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§?1§(param2.§@p§);
         var _loc5_:§&#=§;
         if(_loc5_ = param1.§[!@§ as §&#=§)
         {
            _loc5_.§3!t§().ApplyImpulse(_loc4_,param1.§6;§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §@`§(param1:§8#F§, param2:§'!L§, param3:§,#Z§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§]D§ = null;
         var _loc7_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§&§)
            {
               param3.addScore(_loc5_,§&'§.§'#?§,true,param2.x,param2.y - 3,§ U§.§#!p§);
            }
            if(_loc6_ = param3.§+!U§(param2.x,param2.y))
            {
               _loc6_.§3!$§ = true;
               _loc7_ = _loc6_.§3!t§().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc7_.y - param2.y,_loc7_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§6"O§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §2!l§(param1:§8#F§, param2:§'!L§, param3:§,#Z§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§&#=§ = param1.§[!@§ as §&#=§;
         var _loc5_:Number = param2.§1!s§;
         if(_loc4_)
         {
            _loc6_ = param2.§!!>§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§6"O§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §-X§(param1:§8#F§, param2:§'!L§, param3:§,#Z§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§&#=§;
         if(_loc4_ = param1.§[!@§ as §&#=§)
         {
            if(param2.§3P§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§!!>§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §4&§(param1:§7B§) : Boolean
      {
         if(param1.§3!t§().GetFixtureList().§!W§())
         {
            return true;
         }
         return false;
      }
      
      private function §&!Q§(param1:§7B§) : Boolean
      {
         var _loc2_:§["$§ = null;
         if(param1.levelItem is §["$§)
         {
            _loc2_ = §["$§(param1.levelItem);
            return _loc2_.§^!N§;
         }
         return false;
      }
      
      private function §4H§(param1:§7B§) : Boolean
      {
         var _loc2_:§["$§ = null;
         if(param1.levelItem is §["$§)
         {
            _loc2_ = §["$§(param1.levelItem);
            return _loc2_.§1!<§ || _loc2_.§^!N§;
         }
         return false;
      }
      
      protected function §6"O§(param1:§'!L§, param2:Number, param3:Number, param4:§,#Z§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§,M§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§;=§.§""3§,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
