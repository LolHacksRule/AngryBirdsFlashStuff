package §6"u§
{
   import §#g§.§%!a§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §2"u§.§#!u§;
   import §2"u§.§3"X§;
   import §7"T§.§7b§;
   import §7"o§.§=,§;
   import §8#K§.§ !=§;
   import §8#K§.§<5§;
   import §;!=§.*;
   
   public class §?"T§
   {
      
      protected static const §-">§:Number = 1.3;
       
      
      protected var §6"q§:Vector.<§!##§>;
      
      protected var §+!h§:§3"X§;
      
      public function §?"T§(param1:b2World)
      {
         this.§6"q§ = new Vector.<§!##§>();
         super();
         this.§+!h§ = new §3"X§(param1);
      }
      
      public function dispose() : void
      {
         this.§6"q§ = null;
      }
      
      public function get §=!D§() : int
      {
         return this.§6"q§.length;
      }
      
      public function §?$A§(param1:int) : §!##§
      {
         return this.§6"q§[param1];
      }
      
      public function §&#Y§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§ !=§, param6:Sprite, param7:§7b§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§!##§ = new §!##§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§6"q§.push(_loc10_);
      }
      
      public function §?$7§(param1:Number, param2:§-$ §) : void
      {
         var _loc4_:§!##§ = null;
         var _loc3_:int = this.§6"q§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§6"q§[_loc3_];
            if(!this.§+"H§(_loc4_,param1,param2))
            {
               this.§^"M§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §^"M§(param1:int, param2:§-$ §) : void
      {
         var _loc3_:§!##§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§6"q§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§+#C§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§ !i§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§6"q§.splice(param1,1);
         }
      }
      
      protected function §+"H§(param1:§!##§, param2:Number, param3:§-$ §) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§#!u§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§6#&§ * param2 / 1000;
            _loc6_ = param1.y + param1.§;!^§ * param2 / 1000;
            _loc7_ = param2;
            this.§+!h§.§null§(param1.§`@§(§-">§),param1.§3#V§(§-">§),_loc5_,_loc6_);
            if(this.§+!h§.§4#9§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§+!h§.§4#9§)
            {
               _loc8_ = this.§+!h§.§6$E§(_loc9_);
               if(!param1.§5"W§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§!+§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§+!h§.§4#9§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§`$0§();
            _loc10_ = 0;
            while(_loc10_ < this.§+!h§.§4#9§)
            {
               _loc8_ = this.§+!h§.§6$E§(_loc10_);
               param1.§<"c§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§,!'§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §!+§(param1:§#!u§, param2:§!##§, param3:Number, param4:§-$ §) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§'#N§;
         if((_loc5_ = param1.§"L§) is §[!k§)
         {
            this.§"#6§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §>"G§ && §>"G§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.getBody())
         {
            _loc5_.getBody().SetAwake(true);
         }
         if(this.§1"s§(_loc5_))
         {
            this.§5#§(param1,param2,param4);
            return false;
         }
         if(this.§ !t§(_loc5_) && param2.§5$>§)
         {
            return this.§4#w§(param1,param2,param4);
         }
         if(this.§4C§(_loc5_))
         {
            return true;
         }
         this.§3@§(param1,param2,param4);
         return true;
      }
      
      private function §"#6§(param1:§#!u§, param2:§!##§, param3:§-$ §) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§#"I§(param2.§'h§);
         var _loc5_:§>"G§;
         if(_loc5_ = param1.§"L§ as §>"G§)
         {
            _loc5_.getBody().ApplyImpulse(_loc4_,param1.§`"b§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §5#§(param1:§#!u§, param2:§!##§, param3:§-$ §) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§-#+§ = null;
         var _loc7_:String = null;
         var _loc8_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§3X§)
            {
               _loc7_ = null;
               if(param1 && param1.§"L§ && param1.§"L§.levelItem)
               {
                  _loc7_ = param1.§"L§.levelItem.floatingScoreFont;
               }
               param3.addScore(_loc5_,§%!a§.§<!u§,true,param2.x,param2.y - 3,§=,§.§9!>§,_loc7_);
            }
            if(_loc6_ = param3.§8##§(param2.x,param2.y))
            {
               _loc6_.§;"W§ = true;
               _loc8_ = _loc6_.getBody().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc8_.y - param2.y,_loc8_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§%,§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §4#w§(param1:§#!u§, param2:§!##§, param3:§-$ §) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§>"G§ = param1.§"L§ as §>"G§;
         var _loc5_:Number = param2.§?7§;
         if(_loc4_)
         {
            _loc6_ = param2.§-#§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§%,§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §3@§(param1:§#!u§, param2:§!##§, param3:§-$ §) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§>"G§;
         if(_loc4_ = param1.§"L§ as §>"G§)
         {
            if(param2.§5$>§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§-#§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §4C§(param1:§'#N§) : Boolean
      {
         if(param1.getBody().GetFixtureList().§>T§())
         {
            return true;
         }
         return false;
      }
      
      private function §1"s§(param1:§'#N§) : Boolean
      {
         var _loc2_:§<5§ = null;
         if(param1.levelItem is §<5§)
         {
            _loc2_ = §<5§(param1.levelItem);
            return _loc2_.§0$4§;
         }
         return false;
      }
      
      private function § !t§(param1:§'#N§) : Boolean
      {
         var _loc2_:§<5§ = null;
         if(param1.levelItem is §<5§)
         {
            _loc2_ = §<5§(param1.levelItem);
            return _loc2_.§9$E§ || _loc2_.§0$4§;
         }
         return false;
      }
      
      protected function §%,§(param1:§!##§, param2:Number, param3:Number, param4:§-$ §) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§`!2§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§ !i§.ID_NEXT_FREE,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
