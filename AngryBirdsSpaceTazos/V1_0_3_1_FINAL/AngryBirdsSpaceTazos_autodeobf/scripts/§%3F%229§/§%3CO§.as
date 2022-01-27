package §?"9§
{
   import §!u§.§8"#§;
   import §3R§.§+7§;
   import §4"@§.Sprite;
   import §5"D§.*;
   import §6!M§.§%h§;
   import §6!M§.§;!4§;
   import §6!z§.§8"B§;
   import §6!z§.§;!z§;
   import §;`§.b2World;
   import §[!f§.b2Vec2;
   import §^e§.§^5§;
   
   public class §<O§
   {
      
      protected static const §'#§:Number = 1.3;
       
      
      protected var §;d§:Vector.<§ "@§>;
      
      protected var §!!W§:§;!z§;
      
      public function §<O§(param1:b2World)
      {
         this.§;d§ = new Vector.<§ "@§>();
         super();
         this.§!!W§ = new §;!z§(param1);
      }
      
      public function dispose() : void
      {
         this.§;d§ = null;
      }
      
      public function get §0!1§() : int
      {
         return this.§;d§.length;
      }
      
      public function §6"D§(param1:int) : § "@§
      {
         return this.§;d§[param1];
      }
      
      public function §]!u§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§;!4§, param6:Sprite, param7:§^5§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§ "@§ = new § "@§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§;d§.push(_loc10_);
      }
      
      public function §7e§(param1:Number, param2:§-d§) : void
      {
         var _loc4_:§ "@§ = null;
         var _loc3_:int = this.§;d§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§;d§[_loc3_];
            if(!this.§=!l§(_loc4_,param1,param2))
            {
               this.§>+§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §>+§(param1:int, param2:§-d§) : void
      {
         var _loc3_:§ "@§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§;d§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§'!l§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§3!3§.§'!y§,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§;d§.splice(param1,1);
         }
      }
      
      protected function §=!l§(param1:§ "@§, param2:Number, param3:§-d§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§8"B§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§#!x§ * param2 / 1000;
            _loc6_ = param1.y + param1.§]!W§ * param2 / 1000;
            _loc7_ = param2;
            this.§!!W§.§ "-§(param1.§-"8§(§'#§),param1.§`!n§(§'#§),_loc5_,_loc6_);
            if(this.§!!W§.§,§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§!!W§.§,§)
            {
               _loc8_ = this.§!!W§.§+!'§(_loc9_);
               if(!param1.§`s§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§[y§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§!!W§.§,§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§'!F§();
            _loc10_ = 0;
            while(_loc10_ < this.§!!W§.§,§)
            {
               _loc8_ = this.§!!W§.§+!'§(_loc10_);
               param1.§>"8§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§]!j§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §[y§(param1:§8"B§, param2:§ "@§, param3:Number, param4:§-d§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§>q§;
         if((_loc5_ = param1.§8!s§) is §1"G§)
         {
            this.§#q§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §6!!§ && §6!!§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.§9B§())
         {
            _loc5_.§9B§().SetAwake(true);
         }
         if(this.§`"§(_loc5_))
         {
            this.§,!S§(param1,param2,param4);
            return false;
         }
         if(this.§;!J§(_loc5_) && param2.§<9§)
         {
            return this.§]""§(param1,param2,param4);
         }
         if(this.§;!S§(_loc5_))
         {
            return true;
         }
         this.§<!6§(param1,param2,param4);
         return true;
      }
      
      private function §#q§(param1:§8"B§, param2:§ "@§, param3:§-d§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§7!J§(param2.§]W§);
         var _loc5_:§6!!§;
         if(_loc5_ = param1.§8!s§ as §6!!§)
         {
            _loc5_.§9B§().ApplyImpulse(_loc4_,param1.§6!r§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §,!S§(param1:§8"B§, param2:§ "@§, param3:§-d§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§2!k§ = null;
         var _loc7_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§2x§)
            {
               param3.addScore(_loc5_,§+7§.§,O§,true,param2.x,param2.y - 3,§8"#§.§,R§);
            }
            if(_loc6_ = param3.§?"8§(param2.x,param2.y))
            {
               _loc6_.§&!h§ = true;
               _loc7_ = _loc6_.§9B§().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc7_.y - param2.y,_loc7_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§&!z§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §]""§(param1:§8"B§, param2:§ "@§, param3:§-d§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§6!!§ = param1.§8!s§ as §6!!§;
         var _loc5_:Number = param2.§9!D§;
         if(_loc4_)
         {
            _loc6_ = param2.§`E§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§&!z§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §<!6§(param1:§8"B§, param2:§ "@§, param3:§-d§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§6!!§;
         if(_loc4_ = param1.§8!s§ as §6!!§)
         {
            if(param2.§<9§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§`E§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §;!S§(param1:§>q§) : Boolean
      {
         if(param1.§9B§().§@!b§().§-T§())
         {
            return true;
         }
         return false;
      }
      
      private function §`"§(param1:§>q§) : Boolean
      {
         var _loc2_:§%h§ = null;
         if(param1.levelItem is §%h§)
         {
            _loc2_ = §%h§(param1.levelItem);
            return _loc2_.§]">§;
         }
         return false;
      }
      
      private function §;!J§(param1:§>q§) : Boolean
      {
         var _loc2_:§%h§ = null;
         if(param1.levelItem is §%h§)
         {
            _loc2_ = §%h§(param1.levelItem);
            return _loc2_.§%3§ || _loc2_.§]">§;
         }
         return false;
      }
      
      protected function §&!z§(param1:§ "@§, param2:Number, param3:Number, param4:§-d§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§@!Q§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§3!3§.§'!y§,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
