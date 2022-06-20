package §+"r§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §+!C§.§2"b§;
   import §1!+§.b2World;
   import §7!j§.§8#B§;
   import §7"&§.§+#p§;
   import §7"&§.§2p§;
   import §<#r§.§4$5§;
   import §<#r§.§[$5§;
   import §>!5§.*;
   import §^$1§.§2"^§;
   
   public class §%"P§
   {
      
      protected static const §?!-§:Number = 1.3;
       
      
      protected var §+d§:Vector.<§["M§>;
      
      protected var §"F§:§[$5§;
      
      public function §%"P§(param1:b2World)
      {
         this.§+d§ = new Vector.<§["M§>();
         super();
         this.§"F§ = new §[$5§(param1);
      }
      
      public function dispose() : void
      {
         this.§+d§ = null;
      }
      
      public function get §1#f§() : int
      {
         return this.§+d§.length;
      }
      
      public function §2w§(param1:int) : §["M§
      {
         return this.§+d§[param1];
      }
      
      public function §,!W§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§2p§, param6:Sprite, param7:§8#B§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§["M§ = new §["M§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§+d§.push(_loc10_);
      }
      
      public function §"!A§(param1:Number, param2:§]G§) : void
      {
         var _loc4_:§["M§ = null;
         var _loc3_:int = this.§+d§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§+d§[_loc3_];
            if(!this.§ ""§(_loc4_,param1,param2))
            {
               this.§[$>§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §[$>§(param1:int, param2:§]G§) : void
      {
         var _loc3_:§["M§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§+d§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§8!U§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§6#-§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§+d§.splice(param1,1);
         }
      }
      
      protected function § ""§(param1:§["M§, param2:Number, param3:§]G§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§4$5§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§-# § * param2 / 1000;
            _loc6_ = param1.y + param1.§%A§ * param2 / 1000;
            _loc7_ = param2;
            this.§"F§.§3"0§(param1.§;!,§(§?!-§),param1.§,#%§(§?!-§),_loc5_,_loc6_);
            if(this.§"F§.§[8§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§"F§.§[8§)
            {
               _loc8_ = this.§"F§.§8#L§(_loc9_);
               if(!param1.§;"]§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§;!J§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§"F§.§[8§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§>!W§();
            _loc10_ = 0;
            while(_loc10_ < this.§"F§.§[8§)
            {
               _loc8_ = this.§"F§.§8#L§(_loc10_);
               param1.§^!t§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§#![§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §;!J§(param1:§4$5§, param2:§["M§, param3:Number, param4:§]G§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§#-§;
         if((_loc5_ = param1.§7n§) is §"7§)
         {
            this.§>"%§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §^"9§ && §^"9§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.getBody())
         {
            _loc5_.getBody().SetAwake(true);
         }
         if(this.§4$7§(_loc5_))
         {
            this.§"s§(param1,param2,param4);
            return false;
         }
         if(this.§?#Q§(_loc5_) && param2.§ " §)
         {
            return this.§1#Z§(param1,param2,param4);
         }
         if(this.§ "P§(_loc5_))
         {
            return true;
         }
         this.§[i§(param1,param2,param4);
         return true;
      }
      
      private function §>"%§(param1:§4$5§, param2:§["M§, param3:§]G§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§@o§(param2.§-"b§);
         var _loc5_:§^"9§;
         if(_loc5_ = param1.§7n§ as §^"9§)
         {
            _loc5_.getBody().ApplyImpulse(_loc4_,param1.§=!t§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §"s§(param1:§4$5§, param2:§["M§, param3:§]G§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§[3§ = null;
         var _loc7_:String = null;
         var _loc8_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§ "M§)
            {
               _loc7_ = null;
               if(param1 && param1.§7n§ && param1.§7n§.levelItem)
               {
                  _loc7_ = param1.§7n§.levelItem.floatingScoreFont;
               }
               param3.addScore(_loc5_,§2"b§.§%$-§,true,param2.x,param2.y - 3,§2"^§.§;!Q§,_loc7_);
            }
            if(_loc6_ = param3.§9#,§(param2.x,param2.y))
            {
               _loc6_.§[!b§ = true;
               _loc8_ = _loc6_.getBody().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc8_.y - param2.y,_loc8_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§4s§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §1#Z§(param1:§4$5§, param2:§["M§, param3:§]G§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§^"9§ = param1.§7n§ as §^"9§;
         var _loc5_:Number = param2.§>#M§;
         if(_loc4_)
         {
            _loc6_ = param2.§=!%§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§4s§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §[i§(param1:§4$5§, param2:§["M§, param3:§]G§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§^"9§;
         if(_loc4_ = param1.§7n§ as §^"9§)
         {
            if(param2.§ " § || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§=!%§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function § "P§(param1:§#-§) : Boolean
      {
         if(param1.getBody().GetFixtureList().§1!`§())
         {
            return true;
         }
         return false;
      }
      
      private function §4$7§(param1:§#-§) : Boolean
      {
         var _loc2_:§+#p§ = null;
         if(param1.levelItem is §+#p§)
         {
            _loc2_ = §+#p§(param1.levelItem);
            return _loc2_.§2$2§;
         }
         return false;
      }
      
      private function §?#Q§(param1:§#-§) : Boolean
      {
         var _loc2_:§+#p§ = null;
         if(param1.levelItem is §+#p§)
         {
            _loc2_ = §+#p§(param1.levelItem);
            return _loc2_.§##?§ || _loc2_.§2$2§;
         }
         return false;
      }
      
      protected function §4s§(param1:§["M§, param2:Number, param3:Number, param4:§]G§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§ !0§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§6#-§.ID_NEXT_FREE,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
