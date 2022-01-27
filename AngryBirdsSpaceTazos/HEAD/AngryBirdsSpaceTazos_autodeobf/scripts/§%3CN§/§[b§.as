package §<N§
{
   import §#Z§.§]!Q§;
   import §#Z§.§`!X§;
   import §&!]§.Sprite;
   import §1"?§.§4R§;
   import §3"#§.§ 7§;
   import §3>§.§-f§;
   import §3>§.§3n§;
   import §6!n§.b2Vec2;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import §9"!§.*;
   
   public class §[b§
   {
      
      protected static const §=!-§:Number = 1.3;
       
      
      protected var §]!t§:Vector.<§;!Q§>;
      
      protected var §@A§:§]!Q§;
      
      public function §[b§(param1:b2World)
      {
         this.§]!t§ = new Vector.<§;!Q§>();
         super();
         this.§@A§ = new §]!Q§(param1);
      }
      
      public function dispose() : void
      {
         this.§]!t§ = null;
      }
      
      public function get §&t§() : int
      {
         return this.§]!t§.length;
      }
      
      public function §9!J§(param1:int) : §;!Q§
      {
         return this.§]!t§[param1];
      }
      
      public function §""'§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§-f§, param6:Sprite, param7:§1!_§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§;!Q§ = new §;!Q§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§]!t§.push(_loc10_);
      }
      
      public function §"!<§(param1:Number, param2:§6!i§) : void
      {
         var _loc4_:§;!Q§ = null;
         var _loc3_:int = this.§]!t§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§]!t§[_loc3_];
            if(!this.§;2§(_loc4_,param1,param2))
            {
               this.§'"G§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §'"G§(param1:int, param2:§6!i§) : void
      {
         var _loc3_:§;!Q§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§]!t§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§;7§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§"" §.§%A§,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§]!t§.splice(param1,1);
         }
      }
      
      protected function §;2§(param1:§;!Q§, param2:Number, param3:§6!i§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§`!X§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§`"$§ * param2 / 1000;
            _loc6_ = param1.y + param1.§-u§ * param2 / 1000;
            _loc7_ = param2;
            this.§@A§.§8L§(param1.§?Z§(§=!-§),param1.§=7§(§=!-§),_loc5_,_loc6_);
            if(this.§@A§.§32§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§@A§.§32§)
            {
               _loc8_ = this.§@A§.§;!h§(_loc9_);
               if(!param1.§0!$§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§,",§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§@A§.§32§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§ z§();
            _loc10_ = 0;
            while(_loc10_ < this.§@A§.§32§)
            {
               _loc8_ = this.§@A§.§;!h§(_loc10_);
               param1.§[x§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§ !!§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §,",§(param1:§`!X§, param2:§;!Q§, param3:Number, param4:§6!i§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§,%§;
         if((_loc5_ = param1.§ "G§) is §!!H§)
         {
            this.§#z§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §^"3§ && §^"3§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.§`I§())
         {
            _loc5_.§`I§().SetAwake(true);
         }
         if(this.§2"D§(_loc5_))
         {
            this.§9!#§(param1,param2,param4);
            return false;
         }
         if(this.§%"'§(_loc5_) && param2.§&"=§)
         {
            return this.§^!n§(param1,param2,param4);
         }
         if(this.§!"G§(_loc5_))
         {
            return true;
         }
         this.§9$§(param1,param2,param4);
         return true;
      }
      
      private function §#z§(param1:§`!X§, param2:§;!Q§, param3:§6!i§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§#!;§(param2.§4g§);
         var _loc5_:§^"3§;
         if(_loc5_ = param1.§ "G§ as §^"3§)
         {
            _loc5_.§`I§().ApplyImpulse(_loc4_,param1.§5"B§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §9!#§(param1:§`!X§, param2:§;!Q§, param3:§6!i§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§>![§ = null;
         var _loc7_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§>w§)
            {
               param3.addScore(_loc5_,§ 7§.§#U§,true,param2.x,param2.y - 3,§4R§.§+!;§);
            }
            if(_loc6_ = param3.§ ,§(param2.x,param2.y))
            {
               _loc6_.§9!n§ = true;
               _loc7_ = _loc6_.§`I§().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc7_.y - param2.y,_loc7_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§`r§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §^!n§(param1:§`!X§, param2:§;!Q§, param3:§6!i§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§^"3§ = param1.§ "G§ as §^"3§;
         var _loc5_:Number = param2.§;"$§;
         if(_loc4_)
         {
            _loc6_ = param2.§0"$§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§`r§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §9$§(param1:§`!X§, param2:§;!Q§, param3:§6!i§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§^"3§;
         if(_loc4_ = param1.§ "G§ as §^"3§)
         {
            if(param2.§&"=§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§0"$§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §!"G§(param1:§,%§) : Boolean
      {
         if(param1.§`I§().§!Y§().§7!5§())
         {
            return true;
         }
         return false;
      }
      
      private function §2"D§(param1:§,%§) : Boolean
      {
         var _loc2_:§3n§ = null;
         if(param1.levelItem is §3n§)
         {
            _loc2_ = §3n§(param1.levelItem);
            return _loc2_.§+";§;
         }
         return false;
      }
      
      private function §%"'§(param1:§,%§) : Boolean
      {
         var _loc2_:§3n§ = null;
         if(param1.levelItem is §3n§)
         {
            _loc2_ = §3n§(param1.levelItem);
            return _loc2_.§[m§ || _loc2_.§+";§;
         }
         return false;
      }
      
      protected function §`r§(param1:§;!Q§, param2:Number, param3:Number, param4:§6!i§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§""!§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§"" §.§%A§,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
