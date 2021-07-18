package §6!d§
{
   import §#w§.§+$-§;
   import §#w§.§="M§;
   import §0m§.b2Vec2;
   import §52§.§6" §;
   import §9$§.Sprite;
   import §=!7§.§=$4§;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §[#a§.*;
   import §`#C§.§4o§;
   import §`#C§.§6!i§;
   
   public class §%"m§
   {
      
      protected static const §<+§:Number = 1.3;
       
      
      protected var §`Z§:Vector.<§"Q§>;
      
      protected var §&#x§:§+$-§;
      
      public function §%"m§(param1:b2World)
      {
         this.§`Z§ = new Vector.<§"Q§>();
         super();
         this.§&#x§ = new §+$-§(param1);
      }
      
      public function dispose() : void
      {
         this.§`Z§ = null;
      }
      
      public function get §>$9§() : int
      {
         return this.§`Z§.length;
      }
      
      public function §9j§(param1:int) : §"Q§
      {
         return this.§`Z§[param1];
      }
      
      public function §7R§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§4o§, param6:Sprite, param7:§`"W§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§"Q§ = new §"Q§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§`Z§.push(_loc10_);
      }
      
      public function §1N§(param1:Number, param2:§[#>§) : void
      {
         var _loc4_:§"Q§ = null;
         var _loc3_:int = this.§`Z§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§`Z§[_loc3_];
            if(!this.§7e§(_loc4_,param1,param2))
            {
               this.§!!"§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §!!"§(param1:int, param2:§[#>§) : void
      {
         var _loc3_:§"Q§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§`Z§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§<$9§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§6"[§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§`Z§.splice(param1,1);
         }
      }
      
      protected function §7e§(param1:§"Q§, param2:Number, param3:§[#>§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§="M§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§"'§ * param2 / 1000;
            _loc6_ = param1.y + param1.§9#,§ * param2 / 1000;
            _loc7_ = param2;
            this.§&#x§.§0#U§(param1.§=!y§(§<+§),param1.§[#X§(§<+§),_loc5_,_loc6_);
            if(this.§&#x§.§7#M§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§&#x§.§7#M§)
            {
               _loc8_ = this.§&#x§.§["D§(_loc9_);
               if(!param1.§3!8§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§%#U§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§&#x§.§7#M§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§4!V§();
            _loc10_ = 0;
            while(_loc10_ < this.§&#x§.§7#M§)
            {
               _loc8_ = this.§&#x§.§["D§(_loc10_);
               param1.§;t§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§=!§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §%#U§(param1:§="M§, param2:§"Q§, param3:Number, param4:§[#>§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§<"H§;
         if((_loc5_ = param1.§%"W§) is §-k§)
         {
            this.§9!K§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §="@§ && §="@§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.getBody())
         {
            _loc5_.getBody().SetAwake(true);
         }
         if(this.§%!S§(_loc5_))
         {
            this.§2#Z§(param1,param2,param4);
            return false;
         }
         if(this.§]"3§(_loc5_) && param2.§[#i§)
         {
            return this.§<"W§(param1,param2,param4);
         }
         if(this.§4X§(_loc5_))
         {
            return true;
         }
         this.§@#W§(param1,param2,param4);
         return true;
      }
      
      private function §9!K§(param1:§="M§, param2:§"Q§, param3:§[#>§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§2#<§(param2.§?#J§);
         var _loc5_:§="@§;
         if(_loc5_ = param1.§%"W§ as §="@§)
         {
            _loc5_.getBody().ApplyImpulse(_loc4_,param1.§6!w§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §2#Z§(param1:§="M§, param2:§"Q§, param3:§[#>§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§;"Y§ = null;
         var _loc7_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§%s§)
            {
               param3.addScore(_loc5_,§6" §.§8#§,true,param2.x,param2.y - 3,§=$4§.§+!K§);
            }
            if(_loc6_ = param3.§""t§(param2.x,param2.y))
            {
               _loc6_.§'"Y§ = true;
               _loc7_ = _loc6_.getBody().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc7_.y - param2.y,_loc7_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§8"$§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §<"W§(param1:§="M§, param2:§"Q§, param3:§[#>§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§="@§ = param1.§%"W§ as §="@§;
         var _loc5_:Number = param2.§2s§;
         if(_loc4_)
         {
            _loc6_ = param2.§!w§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§8"$§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §@#W§(param1:§="M§, param2:§"Q§, param3:§[#>§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§="@§;
         if(_loc4_ = param1.§%"W§ as §="@§)
         {
            if(param2.§[#i§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§!w§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §4X§(param1:§<"H§) : Boolean
      {
         if(param1.getBody().GetFixtureList().§@"G§())
         {
            return true;
         }
         return false;
      }
      
      private function §%!S§(param1:§<"H§) : Boolean
      {
         var _loc2_:§6!i§ = null;
         if(param1.levelItem is §6!i§)
         {
            _loc2_ = §6!i§(param1.levelItem);
            return _loc2_.§]$;§;
         }
         return false;
      }
      
      private function §]"3§(param1:§<"H§) : Boolean
      {
         var _loc2_:§6!i§ = null;
         if(param1.levelItem is §6!i§)
         {
            _loc2_ = §6!i§(param1.levelItem);
            return _loc2_.§;!y§ || _loc2_.§]$;§;
         }
         return false;
      }
      
      protected function §8"$§(param1:§"Q§, param2:Number, param3:Number, param4:§[#>§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§'"F§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§6"[§.ID_NEXT_FREE,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
