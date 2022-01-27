package §4=§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §2!`§.§;6§;
   import §3"$§.§[a§;
   import §5! §.§#"[§;
   import §5! §.§]$§;
   import §5!q§.§"!A§;
   import §6"R§.*;
   import §>P§.§;+§;
   import §>P§.§=4§;
   import §^>§.b2Vec2;
   
   public class §99§
   {
      
      protected static const §>e§:Number = 1.3;
       
      
      protected var §##'§:Vector.<§=!s§>;
      
      protected var §;";§:§#"[§;
      
      public function §99§(param1:b2World)
      {
         this.§##'§ = new Vector.<§=!s§>();
         super();
         this.§;";§ = new §#"[§(param1);
      }
      
      public function dispose() : void
      {
         this.§##'§ = null;
      }
      
      public function get laserCount() : int
      {
         return this.§##'§.length;
      }
      
      public function getLaser(param1:int) : §=!s§
      {
         return this.§##'§[param1];
      }
      
      public function §^"L§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§;+§, param6:Sprite, param7:§[a§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§=!s§ = new §=!s§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§##'§.push(_loc10_);
      }
      
      public function §8!7§(param1:Number, param2:§ !Q§) : void
      {
         var _loc4_:§=!s§ = null;
         var _loc3_:int = this.§##'§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§##'§[_loc3_];
            if(!this.§#"6§(_loc4_,param1,param2))
            {
               this.§5">§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §5">§(param1:int, param2:§ !Q§) : void
      {
         var _loc3_:§=!s§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§##'§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§75§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§super§.§4"D§,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§##'§.splice(param1,1);
         }
      }
      
      protected function §#"6§(param1:§=!s§, param2:Number, param3:§ !Q§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§]$§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§""F§ * param2 / 1000;
            _loc6_ = param1.y + param1.§<F§ * param2 / 1000;
            _loc7_ = param2;
            this.§;";§.§-"6§(param1.§;b§(§>e§),param1.§1!'§(§>e§),_loc5_,_loc6_);
            if(this.§;";§.§@"i§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§;";§.§@"i§)
            {
               _loc8_ = this.§;";§.§"!h§(_loc9_);
               if(!param1.§]!Y§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§0!2§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§;";§.§@"i§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§6]§();
            _loc10_ = 0;
            while(_loc10_ < this.§;";§.§@"i§)
            {
               _loc8_ = this.§;";§.§"!h§(_loc10_);
               param1.§?#3§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§5#+§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §0!2§(param1:§]$§, param2:§=!s§, param3:Number, param4:§ !Q§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§!z§;
         if((_loc5_ = param1.§^=§) is §%!0§)
         {
            this.§+"A§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §4!w§ && §4!w§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.§?"Z§())
         {
            _loc5_.§?"Z§().SetAwake(true);
         }
         if(this.§;!z§(_loc5_))
         {
            this.§"+§(param1,param2,param4);
            return false;
         }
         if(this.§<" §(_loc5_) && param2.§&!G§)
         {
            return this.§6!L§(param1,param2,param4);
         }
         if(this.§#N§(_loc5_))
         {
            return true;
         }
         this.§;"C§(param1,param2,param4);
         return true;
      }
      
      private function §+"A§(param1:§]$§, param2:§=!s§, param3:§ !Q§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§ !I§(param2.§1?§);
         var _loc5_:§4!w§;
         if(_loc5_ = param1.§^=§ as §4!w§)
         {
            _loc5_.§?"Z§().ApplyImpulse(_loc4_,param1.§[R§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §"+§(param1:§]$§, param2:§=!s§, param3:§ !Q§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§[!R§ = null;
         var _loc7_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§98§)
            {
               param3.addScore(_loc5_,§"!A§.§ m§,true,param2.x,param2.y - 3,§;6§.§1"R§);
            }
            if(_loc6_ = param3.§5H§(param2.x,param2.y))
            {
               _loc6_.§4"n§ = true;
               _loc7_ = _loc6_.§?"Z§().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc7_.y - param2.y,_loc7_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§4!b§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §6!L§(param1:§]$§, param2:§=!s§, param3:§ !Q§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§4!w§ = param1.§^=§ as §4!w§;
         var _loc5_:Number = param2.§="§;
         if(_loc4_)
         {
            _loc6_ = param2.§2!^§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§4!b§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §;"C§(param1:§]$§, param2:§=!s§, param3:§ !Q§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§4!w§;
         if(_loc4_ = param1.§^=§ as §4!w§)
         {
            if(param2.§&!G§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§2!^§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §#N§(param1:§!z§) : Boolean
      {
         if(param1.§?"Z§().GetFixtureList().§##-§())
         {
            return true;
         }
         return false;
      }
      
      private function §;!z§(param1:§!z§) : Boolean
      {
         var _loc2_:§=4§ = null;
         if(param1.levelItem is §=4§)
         {
            _loc2_ = §=4§(param1.levelItem);
            return _loc2_.§6#,§;
         }
         return false;
      }
      
      private function §<" §(param1:§!z§) : Boolean
      {
         var _loc2_:§=4§ = null;
         if(param1.levelItem is §=4§)
         {
            _loc2_ = §=4§(param1.levelItem);
            return _loc2_.§7"w§ || _loc2_.§6#,§;
         }
         return false;
      }
      
      protected function §4!b§(param1:§=!s§, param2:Number, param3:Number, param4:§ !Q§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§3!N§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§super§.§4"D§,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
