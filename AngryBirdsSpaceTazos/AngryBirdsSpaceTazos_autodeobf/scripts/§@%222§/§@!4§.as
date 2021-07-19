package §@"2§
{
   import §"!&§.§]!C§;
   import §"!&§.§`D§;
   import §'!&§.b2World;
   import §'4§.§!!t§;
   import §1"H§.§2!V§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import §@!U§.§18§;
   import §@!U§.§8!`§;
   import §]">§.*;
   
   public class §@!4§
   {
      
      protected static const §4"<§:Number = 1.3;
       
      
      protected var §^"6§:Vector.<§1p§>;
      
      protected var §0!8§:§8!`§;
      
      public function §@!4§(param1:b2World)
      {
         this.§^"6§ = new Vector.<§1p§>();
         super();
         this.§0!8§ = new §8!`§(param1);
      }
      
      public function dispose() : void
      {
         this.§^"6§ = null;
      }
      
      public function get §-!y§() : int
      {
         return this.§^"6§.length;
      }
      
      public function §4`§(param1:int) : §1p§
      {
         return this.§^"6§[param1];
      }
      
      public function §,"C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§]!C§, param6:Sprite, param7:§#r§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§1p§ = new §1p§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§^"6§.push(_loc10_);
      }
      
      public function §<"<§(param1:Number, param2:§&"4§) : void
      {
         var _loc4_:§1p§ = null;
         var _loc3_:int = this.§^"6§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§^"6§[_loc3_];
            if(!this.§>!=§(_loc4_,param1,param2))
            {
               this.§&'§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §&'§(param1:int, param2:§&"4§) : void
      {
         var _loc3_:§1p§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§^"6§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§4!i§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§-%§.§;!J§,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§^"6§.splice(param1,1);
         }
      }
      
      protected function §>!=§(param1:§1p§, param2:Number, param3:§&"4§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§18§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§""&§ * param2 / 1000;
            _loc6_ = param1.y + param1.§@6§ * param2 / 1000;
            _loc7_ = param2;
            this.§0!8§.§3n§(param1.§+!I§(§4"<§),param1.§'!#§(§4"<§),_loc5_,_loc6_);
            if(this.§0!8§.§0I§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§0!8§.§0I§)
            {
               _loc8_ = this.§0!8§.§4!w§(_loc9_);
               if(!param1.§#X§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§@A§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§0!8§.§0I§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§`! §();
            _loc10_ = 0;
            while(_loc10_ < this.§0!8§.§0I§)
            {
               _loc8_ = this.§0!8§.§4!w§(_loc10_);
               param1.§'!§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§;!W§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §@A§(param1:§18§, param2:§1p§, param3:Number, param4:§&"4§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§<!=§;
         if((_loc5_ = param1.§,;§) is § 6§)
         {
            this.§6i§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §1!0§ && §1!0§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.§^!z§())
         {
            _loc5_.§^!z§().SetAwake(true);
         }
         if(this.§%x§(_loc5_))
         {
            this.§&!_§(param1,param2,param4);
            return false;
         }
         if(this.§3E§(_loc5_) && param2.§,H§)
         {
            return this.§`"-§(param1,param2,param4);
         }
         if(this.§0!O§(_loc5_))
         {
            return true;
         }
         this.§?!o§(param1,param2,param4);
         return true;
      }
      
      private function §6i§(param1:§18§, param2:§1p§, param3:§&"4§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§-!&§(param2.§-C§);
         var _loc5_:§1!0§;
         if(_loc5_ = param1.§,;§ as §1!0§)
         {
            _loc5_.§^!z§().ApplyImpulse(_loc4_,param1.§+6§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §&!_§(param1:§18§, param2:§1p§, param3:§&"4§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§?!`§ = null;
         var _loc7_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§,!E§)
            {
               param3.addScore(_loc5_,§!!t§.§#!L§,true,param2.x,param2.y - 3,§2!V§.§#!J§);
            }
            if(_loc6_ = param3.§@[§(param2.x,param2.y))
            {
               _loc6_.§@k§ = true;
               _loc7_ = _loc6_.§^!z§().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc7_.y - param2.y,_loc7_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§>R§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §`"-§(param1:§18§, param2:§1p§, param3:§&"4§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§1!0§ = param1.§,;§ as §1!0§;
         var _loc5_:Number = param2.§[!H§;
         if(_loc4_)
         {
            _loc6_ = param2.§^^§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§>R§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §?!o§(param1:§18§, param2:§1p§, param3:§&"4§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§1!0§;
         if(_loc4_ = param1.§,;§ as §1!0§)
         {
            if(param2.§,H§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§^^§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §0!O§(param1:§<!=§) : Boolean
      {
         if(param1.§^!z§().§=s§().§]w§())
         {
            return true;
         }
         return false;
      }
      
      private function §%x§(param1:§<!=§) : Boolean
      {
         var _loc2_:§`D§ = null;
         if(param1.levelItem is §`D§)
         {
            _loc2_ = §`D§(param1.levelItem);
            return _loc2_.§5">§;
         }
         return false;
      }
      
      private function §3E§(param1:§<!=§) : Boolean
      {
         var _loc2_:§`D§ = null;
         if(param1.levelItem is §`D§)
         {
            _loc2_ = §`D§(param1.levelItem);
            return _loc2_.§[X§ || _loc2_.§5">§;
         }
         return false;
      }
      
      protected function §>R§(param1:§1p§, param2:Number, param3:Number, param4:§&"4§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§"E§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§-%§.§;!J§,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
