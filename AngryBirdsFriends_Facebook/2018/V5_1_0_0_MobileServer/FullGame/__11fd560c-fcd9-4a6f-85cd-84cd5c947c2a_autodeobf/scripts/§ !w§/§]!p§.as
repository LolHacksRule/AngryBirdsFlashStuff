package § !w§
{
   import § "%§.b2Vec2;
   import §!'§.§@>§;
   import §4"O§.b2World;
   import §8"L§.§5$=§;
   import §8"L§.§5K§;
   import §8§.*;
   import §?$9§.§=V§;
   import §?$9§.§^#h§;
   import §@0§.§&"A§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §]!p§
   {
      
      protected static const §0!K§:Number = 1.3;
       
      
      protected var §9#$§:Vector.<§7$1§>;
      
      protected var §+#%§:§=V§;
      
      public function §]!p§(param1:b2World)
      {
         this.§9#$§ = new Vector.<§7$1§>();
         super();
         this.§+#%§ = new §=V§(param1);
      }
      
      public function dispose() : void
      {
         this.§9#$§ = null;
      }
      
      public function get §%"s§() : int
      {
         return this.§9#$§.length;
      }
      
      public function §5"y§(param1:int) : §7$1§
      {
         return this.§9#$§[param1];
      }
      
      public function §+#2§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§5K§, param6:Sprite, param7:§0$2§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§7$1§ = new §7$1§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§9#$§.push(_loc10_);
      }
      
      public function §=#p§(param1:Number, param2:§]7§) : void
      {
         var _loc4_:§7$1§ = null;
         var _loc3_:int = this.§9#$§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§9#$§[_loc3_];
            if(!this.§7#r§(_loc4_,param1,param2))
            {
               this.§]$=§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §]$=§(param1:int, param2:§]7§) : void
      {
         var _loc3_:§7$1§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§9#$§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§<!0§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§!#L§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§9#$§.splice(param1,1);
         }
      }
      
      protected function §7#r§(param1:§7$1§, param2:Number, param3:§]7§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§^#h§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§1p§ * param2 / 1000;
            _loc6_ = param1.y + param1.§`!n§ * param2 / 1000;
            _loc7_ = param2;
            this.§+#%§.§"!1§(param1.§%#h§(§0!K§),param1.§4#Z§(§0!K§),_loc5_,_loc6_);
            if(this.§+#%§.§+!6§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§+#%§.§+!6§)
            {
               _loc8_ = this.§+#%§.§-$8§(_loc9_);
               if(!param1.§%#T§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§2!U§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§+#%§.§+!6§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§#!F§();
            _loc10_ = 0;
            while(_loc10_ < this.§+#%§.§+!6§)
            {
               _loc8_ = this.§+#%§.§-$8§(_loc10_);
               param1.§["W§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§6!T§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §2!U§(param1:§^#h§, param2:§7$1§, param3:Number, param4:§]7§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§,#5§;
         if((_loc5_ = param1.§;!;§) is §?$%§)
         {
            this.§,Z§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §4!y§ && §4!y§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.getBody())
         {
            _loc5_.getBody().SetAwake(true);
         }
         if(this.§0!v§(_loc5_))
         {
            this.§#!r§(param1,param2,param4);
            return false;
         }
         if(this.§""<§(_loc5_) && param2.§]Z§)
         {
            return this.§0#o§(param1,param2,param4);
         }
         if(this.§0#^§(_loc5_))
         {
            return true;
         }
         this.§0"]§(param1,param2,param4);
         return true;
      }
      
      private function §,Z§(param1:§^#h§, param2:§7$1§, param3:§]7§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§8!O§(param2.§!!j§);
         var _loc5_:§4!y§;
         if(_loc5_ = param1.§;!;§ as §4!y§)
         {
            _loc5_.getBody().ApplyImpulse(_loc4_,param1.§^!x§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §#!r§(param1:§^#h§, param2:§7$1§, param3:§]7§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§2#'§ = null;
         var _loc7_:String = null;
         var _loc8_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§9"X§)
            {
               _loc7_ = null;
               if(param1 && param1.§;!;§ && param1.§;!;§.levelItem)
               {
                  _loc7_ = param1.§;!;§.levelItem.floatingScoreFont;
               }
               param3.addScore(_loc5_,§&"A§.§!e§,true,param2.x,param2.y - 3,§@>§.§^#J§,_loc7_);
            }
            if(_loc6_ = param3.§7[§(param2.x,param2.y))
            {
               _loc6_.§6I§ = true;
               _loc8_ = _loc6_.getBody().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc8_.y - param2.y,_loc8_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§1N§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §0#o§(param1:§^#h§, param2:§7$1§, param3:§]7§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§4!y§ = param1.§;!;§ as §4!y§;
         var _loc5_:Number = param2.§=#h§;
         if(_loc4_)
         {
            _loc6_ = param2.§2$9§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§1N§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §0"]§(param1:§^#h§, param2:§7$1§, param3:§]7§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§4!y§;
         if(_loc4_ = param1.§;!;§ as §4!y§)
         {
            if(param2.§]Z§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§2$9§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §0#^§(param1:§,#5§) : Boolean
      {
         if(param1.getBody().GetFixtureList().§8r§())
         {
            return true;
         }
         return false;
      }
      
      private function §0!v§(param1:§,#5§) : Boolean
      {
         var _loc2_:§5$=§ = null;
         if(param1.levelItem is §5$=§)
         {
            _loc2_ = §5$=§(param1.levelItem);
            return _loc2_.§=#;§;
         }
         return false;
      }
      
      private function §""<§(param1:§,#5§) : Boolean
      {
         var _loc2_:§5$=§ = null;
         if(param1.levelItem is §5$=§)
         {
            _loc2_ = §5$=§(param1.levelItem);
            return _loc2_.§>$0§ || _loc2_.§=#;§;
         }
         return false;
      }
      
      protected function §1N§(param1:§7$1§, param2:Number, param3:Number, param4:§]7§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§^"l§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§!#L§.ID_NEXT_FREE,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
