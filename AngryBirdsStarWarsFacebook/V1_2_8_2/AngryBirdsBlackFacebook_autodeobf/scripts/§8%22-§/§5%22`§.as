package §8"-§
{
   import §!!k§.§1!^§;
   import §!r§.*;
   import §"§.§0!0§;
   import §#g§.§5!M§;
   import §#g§.§[!F§;
   import §,"K§.§3l§;
   import §,"K§.§;!z§;
   import §7"A§.b2Vec2;
   import §>"_§.b2World;
   import §^9§.§?"E§;
   import §use§.Sprite;
   
   public class §5"`§
   {
      
      protected static const §;"<§:Number = 1.3;
       
      
      protected var §5#"§:Vector.<§@"W§>;
      
      protected var §!"w§:§;!z§;
      
      public function §5"`§(param1:b2World)
      {
         this.§5#"§ = new Vector.<§@"W§>();
         super();
         this.§!"w§ = new §;!z§(param1);
      }
      
      public function dispose() : void
      {
         this.§5#"§ = null;
      }
      
      public function get laserCount() : int
      {
         return this.§5#"§.length;
      }
      
      public function getLaser(param1:int) : §@"W§
      {
         return this.§5#"§[param1];
      }
      
      public function §=-§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§5!M§, param6:Sprite, param7:§1!^§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§@"W§ = new §@"W§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§5#"§.push(_loc10_);
      }
      
      public function §6C§(param1:Number, param2:§<!F§) : void
      {
         var _loc4_:§@"W§ = null;
         var _loc3_:int = this.§5#"§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§5#"§[_loc3_];
            if(!this.§1"9§(_loc4_,param1,param2))
            {
               this.§,"H§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §,"H§(param1:int, param2:§<!F§) : void
      {
         var _loc3_:§@"W§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§5#"§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§#!u§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§9"f§.§["_§,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§5#"§.splice(param1,1);
         }
      }
      
      protected function §1"9§(param1:§@"W§, param2:Number, param3:§<!F§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§3l§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§<#"§ * param2 / 1000;
            _loc6_ = param1.y + param1.§;!L§ * param2 / 1000;
            _loc7_ = param2;
            this.§!"w§.§'#,§(param1.§;"w§(§;"<§),param1.§9! §(§;"<§),_loc5_,_loc6_);
            if(this.§!"w§.§=!V§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§!"w§.§=!V§)
            {
               _loc8_ = this.§!"w§.§;f§(_loc9_);
               if(!param1.§7">§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§[!L§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§!"w§.§=!V§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§#!<§();
            _loc10_ = 0;
            while(_loc10_ < this.§!"w§.§=!V§)
            {
               _loc8_ = this.§!"w§.§;f§(_loc10_);
               param1.§8!u§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§1y§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §[!L§(param1:§3l§, param2:§@"W§, param3:Number, param4:§<!F§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§?!x§;
         if((_loc5_ = param1.§-"G§) is §;!T§)
         {
            this.§8!-§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §0N§ && §0N§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.§3"s§())
         {
            _loc5_.§3"s§().SetAwake(true);
         }
         if(this.§,!N§(_loc5_))
         {
            this.§-!O§(param1,param2,param4);
            return false;
         }
         if(this.§?!y§(_loc5_) && param2.§7B§)
         {
            return this.§2"U§(param1,param2,param4);
         }
         if(this.§5"B§(_loc5_))
         {
            return true;
         }
         this.§9#2§(param1,param2,param4);
         return true;
      }
      
      private function §8!-§(param1:§3l§, param2:§@"W§, param3:§<!F§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§ 6§(param2.§="1§);
         var _loc5_:§0N§;
         if(_loc5_ = param1.§-"G§ as §0N§)
         {
            _loc5_.§3"s§().ApplyImpulse(_loc4_,param1.§2S§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §-!O§(param1:§3l§, param2:§@"W§, param3:§<!F§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§^#2§ = null;
         var _loc7_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§10§)
            {
               param3.addScore(_loc5_,§0!0§.§&#-§,true,param2.x,param2.y - 3,§?"E§.§"!Q§);
            }
            if(_loc6_ = param3.§`!G§(param2.x,param2.y))
            {
               _loc6_.§!;§ = true;
               _loc7_ = _loc6_.§3"s§().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc7_.y - param2.y,_loc7_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§^#4§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §2"U§(param1:§3l§, param2:§@"W§, param3:§<!F§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§0N§ = param1.§-"G§ as §0N§;
         var _loc5_:Number = param2.§,!?§;
         if(_loc4_)
         {
            _loc6_ = param2.§=!_§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§^#4§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §9#2§(param1:§3l§, param2:§@"W§, param3:§<!F§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§0N§;
         if(_loc4_ = param1.§-"G§ as §0N§)
         {
            if(param2.§7B§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§=!_§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §5"B§(param1:§?!x§) : Boolean
      {
         if(param1.§3"s§().GetFixtureList().§]!a§())
         {
            return true;
         }
         return false;
      }
      
      private function §,!N§(param1:§?!x§) : Boolean
      {
         var _loc2_:§[!F§ = null;
         if(param1.levelItem is §[!F§)
         {
            _loc2_ = §[!F§(param1.levelItem);
            return _loc2_.§4]§;
         }
         return false;
      }
      
      private function §?!y§(param1:§?!x§) : Boolean
      {
         var _loc2_:§[!F§ = null;
         if(param1.levelItem is §[!F§)
         {
            _loc2_ = §[!F§(param1.levelItem);
            return _loc2_.§ X§ || _loc2_.§4]§;
         }
         return false;
      }
      
      protected function §^#4§(param1:§@"W§, param2:Number, param3:Number, param4:§<!F§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§%!V§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§9"f§.§["_§,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
