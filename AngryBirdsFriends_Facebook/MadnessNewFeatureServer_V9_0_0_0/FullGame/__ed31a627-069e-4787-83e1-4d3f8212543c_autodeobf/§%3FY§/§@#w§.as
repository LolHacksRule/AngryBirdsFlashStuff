package §?Y§
{
   import §'G§.§;D§;
   import §6!3§.*;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §9X§.§0!I§;
   import §9X§.§]§;
   import §>2§.§ $,§;
   import §?!C§.b2Vec2;
   import §?$<§.§<#x§;
   import §?$<§.§@"q§;
   import §@!S§.b2World;
   
   public class §@#w§
   {
      
      protected static const §0#K§:Number = 1.3;
       
      
      protected var §6"<§:Vector.<§1#?§>;
      
      protected var § #%§:§]#1§;
      
      public function §@#w§(param1:b2World)
      {
         this.§6"<§ = new Vector.<§1#?§>();
         super();
         this.§ #%§ = new §]#1§(param1);
      }
      
      public function dispose() : void
      {
         this.§6"<§ = null;
      }
      
      public function get §>=§() : int
      {
         return this.§6"<§.length;
      }
      
      public function §3H§(param1:int) : §1#?§
      {
         return this.§6"<§[param1];
      }
      
      public function §9"n§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§<#x§, param6:Sprite, param7:§;D§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§1#?§ = new §1#?§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§6"<§.push(_loc10_);
      }
      
      public function §6!?§(param1:Number, param2:§6"&§) : void
      {
         var _loc4_:§1#?§ = null;
         var _loc3_:int = this.§6"<§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§6"<§[_loc3_];
            if(!this.§8!!§(_loc4_,param1,param2))
            {
               this.§#!l§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §#!l§(param1:int, param2:§6"&§) : void
      {
         var _loc3_:§1#?§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§6"<§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§+"v§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§'!§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§6"<§.splice(param1,1);
         }
      }
      
      protected function §8!!§(param1:§1#?§, param2:Number, param3:§6"&§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§0!I§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§4!?§ * param2 / 1000;
            _loc6_ = param1.y + param1.§^"8§ * param2 / 1000;
            _loc7_ = param2;
            this.§ #%§.§;"F§(param1.§@!E§(§0#K§),param1.§5z§(§0#K§),_loc5_,_loc6_);
            if(this.§ #%§.§9"?§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§ #%§.§9"?§)
            {
               _loc8_ = this.§ #%§.§5!K§(_loc9_);
               if(!param1.§>"c§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§,u§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§ #%§.§9"?§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§ "$§();
            _loc10_ = 0;
            while(_loc10_ < this.§ #%§.§9"?§)
            {
               _loc8_ = this.§ #%§.§5!K§(_loc10_);
               param1.§;!i§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§`"=§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §,u§(param1:§0!I§, param2:§1#?§, param3:Number, param4:§6"&§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§!y§;
         if((_loc5_ = param1.§##<§) is §,s§)
         {
            this.§6$2§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §;!U§ && §;!U§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.getBody())
         {
            _loc5_.getBody().SetAwake(true);
         }
         if(this.§4!D§(_loc5_))
         {
            this.§;#E§(param1,param2,param4);
            return false;
         }
         if(this.§6"$§(_loc5_) && param2.§%"O§)
         {
            return this.§6M§(param1,param2,param4);
         }
         if(this.§0y§(_loc5_))
         {
            return true;
         }
         this.§[E§(param1,param2,param4);
         return true;
      }
      
      private function §6$2§(param1:§0!I§, param2:§1#?§, param3:§6"&§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§?$'§(param2.§&!§);
         var _loc5_:§;!U§;
         if(_loc5_ = param1.§##<§ as §;!U§)
         {
            _loc5_.getBody().ApplyImpulse(_loc4_,param1.§4!3§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §;#E§(param1:§0!I§, param2:§1#?§, param3:§6"&§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§-#Q§ = null;
         var _loc7_:String = null;
         var _loc8_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§1k§)
            {
               _loc7_ = null;
               if(param1 && param1.§##<§ && param1.§##<§.levelItem)
               {
                  _loc7_ = param1.§##<§.levelItem.floatingScoreFont;
               }
               param3.addScore(_loc5_,§ $,§.§ ";§,true,param2.x,param2.y - 3,§6!9§.§?#1§,_loc7_);
            }
            if(_loc6_ = param3.§0!-§(param2.x,param2.y))
            {
               _loc6_.§[u§ = true;
               _loc8_ = _loc6_.getBody().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc8_.y - param2.y,_loc8_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§-#m§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §6M§(param1:§0!I§, param2:§1#?§, param3:§6"&§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§;!U§ = param1.§##<§ as §;!U§;
         var _loc5_:Number = param2.§7!H§;
         if(_loc4_)
         {
            _loc6_ = param2.§%!5§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§-#m§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §[E§(param1:§0!I§, param2:§1#?§, param3:§6"&§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§;!U§;
         if(_loc4_ = param1.§##<§ as §;!U§)
         {
            if(param2.§%"O§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§%!5§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §0y§(param1:§!y§) : Boolean
      {
         if(param1.getBody().GetFixtureList().§"!,§())
         {
            return true;
         }
         return false;
      }
      
      private function §4!D§(param1:§!y§) : Boolean
      {
         var _loc2_:§@"q§ = null;
         if(param1.levelItem is §@"q§)
         {
            _loc2_ = §@"q§(param1.levelItem);
            return _loc2_.§ 1§;
         }
         return false;
      }
      
      private function §6"$§(param1:§!y§) : Boolean
      {
         var _loc2_:§@"q§ = null;
         if(param1.levelItem is §@"q§)
         {
            _loc2_ = §@"q§(param1.levelItem);
            return _loc2_.§!#v§ || _loc2_.§ 1§;
         }
         return false;
      }
      
      protected function §-#m§(param1:§1#?§, param2:Number, param3:Number, param4:§6"&§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§&#K§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§'!§.ID_NEXT_FREE,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
