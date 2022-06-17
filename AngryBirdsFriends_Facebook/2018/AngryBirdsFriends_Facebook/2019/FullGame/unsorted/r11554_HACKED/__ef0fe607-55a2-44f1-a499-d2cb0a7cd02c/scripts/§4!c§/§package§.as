package §4!c§
{
   import § !D§.§@#z§;
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §-!!§.*;
   import §1i§.§<#I§;
   import §1i§.§`#z§;
   import §8#t§.b2World;
   import §?§.§+"%§;
   import §?§.§7E§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §package§
   {
      
      protected static const §,$0§:Number = 1.3;
       
      
      protected var §1K§:Vector.<§7!F§>;
      
      protected var §06§:§<#I§;
      
      public function §package§(param1:b2World)
      {
         this.§1K§ = new Vector.<§7!F§>();
         super();
         this.§06§ = new §<#I§(param1);
      }
      
      public function dispose() : void
      {
         this.§1K§ = null;
      }
      
      public function get §++§() : int
      {
         return this.§1K§.length;
      }
      
      public function §3#h§(param1:int) : §7!F§
      {
         return this.§1K§[param1];
      }
      
      public function §,"N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§7E§, param6:Sprite, param7:§4!8§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§7!F§ = new §7!F§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§1K§.push(_loc10_);
      }
      
      public function §9!%§(param1:Number, param2:§`$&§) : void
      {
         var _loc4_:§7!F§ = null;
         var _loc3_:int = this.§1K§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§1K§[_loc3_];
            if(!this.§]"`§(_loc4_,param1,param2))
            {
               this.§%&§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §%&§(param1:int, param2:§`$&§) : void
      {
         var _loc3_:§7!F§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§1K§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§6"D§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§7S§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§1K§.splice(param1,1);
         }
      }
      
      protected function §]"`§(param1:§7!F§, param2:Number, param3:§`$&§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§`#z§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§-$3§ * param2 / 1000;
            _loc6_ = param1.y + param1.§6"q§ * param2 / 1000;
            _loc7_ = param2;
            this.§06§.§%$E§(param1.§@"'§(§,$0§),param1.§3!D§(§,$0§),_loc5_,_loc6_);
            if(this.§06§.§9#<§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§06§.§9#<§)
            {
               _loc8_ = this.§06§.§>!§(_loc9_);
               if(!param1.§7!E§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§3!R§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§06§.§9#<§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§?#4§();
            _loc10_ = 0;
            while(_loc10_ < this.§06§.§9#<§)
            {
               _loc8_ = this.§06§.§>!§(_loc10_);
               param1.§9#$§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§"!4§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §3!R§(param1:§`#z§, param2:§7!F§, param3:Number, param4:§`$&§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§1#B§;
         if((_loc5_ = param1.§@!u§) is §5"W§)
         {
            this.§&"W§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §8"J§ && §8"J§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.getBody())
         {
            _loc5_.getBody().SetAwake(true);
         }
         if(this.§9"n§(_loc5_))
         {
            this.§9#z§(param1,param2,param4);
            return false;
         }
         if(this.§`$D§(_loc5_) && param2.§@#k§)
         {
            return this.§`!m§(param1,param2,param4);
         }
         if(this.§0"R§(_loc5_))
         {
            return true;
         }
         this.§=";§(param1,param2,param4);
         return true;
      }
      
      private function §&"W§(param1:§`#z§, param2:§7!F§, param3:§`$&§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§<#3§(param2.§>$1§);
         var _loc5_:§8"J§;
         if(_loc5_ = param1.§@!u§ as §8"J§)
         {
            _loc5_.getBody().ApplyImpulse(_loc4_,param1.§-V§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §9#z§(param1:§`#z§, param2:§7!F§, param3:§`$&§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§48§ = null;
         var _loc7_:String = null;
         var _loc8_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§5#F§)
            {
               _loc7_ = null;
               if(param1 && param1.§@!u§ && param1.§@!u§.levelItem)
               {
                  _loc7_ = param1.§@!u§.levelItem.floatingScoreFont;
               }
               param3.addScore(_loc5_,§@#z§.§&#'§,true,param2.x,param2.y - 3,§'Y§.§=,§,_loc7_);
            }
            if(_loc6_ = param3.§8!2§(param2.x,param2.y))
            {
               _loc6_.§1"S§ = true;
               _loc8_ = _loc6_.getBody().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc8_.y - param2.y,_loc8_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§2![§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §`!m§(param1:§`#z§, param2:§7!F§, param3:§`$&§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§8"J§ = param1.§@!u§ as §8"J§;
         var _loc5_:Number = param2.§<"d§;
         if(_loc4_)
         {
            _loc6_ = param2.§7"C§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§2![§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §=";§(param1:§`#z§, param2:§7!F§, param3:§`$&§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§8"J§;
         if(_loc4_ = param1.§@!u§ as §8"J§)
         {
            if(param2.§@#k§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§7"C§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §0"R§(param1:§1#B§) : Boolean
      {
         if(param1.getBody().GetFixtureList().§?"]§())
         {
            return true;
         }
         return false;
      }
      
      private function §9"n§(param1:§1#B§) : Boolean
      {
         var _loc2_:§+"%§ = null;
         if(param1.levelItem is §+"%§)
         {
            _loc2_ = §+"%§(param1.levelItem);
            return _loc2_.§5"T§;
         }
         return false;
      }
      
      private function §`$D§(param1:§1#B§) : Boolean
      {
         var _loc2_:§+"%§ = null;
         if(param1.levelItem is §+"%§)
         {
            _loc2_ = §+"%§(param1.levelItem);
            return _loc2_.§]#P§ || _loc2_.§5"T§;
         }
         return false;
      }
      
      protected function §2![§(param1:§7!F§, param2:Number, param3:Number, param4:§`$&§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§>!Z§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§7S§.ID_NEXT_FREE,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
