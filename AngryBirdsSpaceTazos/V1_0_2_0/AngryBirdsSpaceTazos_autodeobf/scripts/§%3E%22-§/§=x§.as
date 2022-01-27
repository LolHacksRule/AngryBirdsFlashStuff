package §>"-§
{
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §,7§.§9!v§;
   import §8o§.§]!U§;
   import §;"=§.§!!O§;
   import §;"=§.§+C§;
   import §<!%§.§>!§;
   import §<!%§.§]s§;
   import §?!<§.§8R§;
   import §[,§.*;
   
   public class §=x§
   {
      
      protected static const §;!>§:Number = 1.3;
       
      
      protected var §^! §:Vector.<§3C§>;
      
      protected var §6"?§:§>!§;
      
      public function §=x§(param1:b2World)
      {
         this.§^! § = new Vector.<§3C§>();
         super();
         this.§6"?§ = new §>!§(param1);
      }
      
      public function dispose() : void
      {
         this.§^! § = null;
      }
      
      public function get §4!X§() : int
      {
         return this.§^! §.length;
      }
      
      public function §=!q§(param1:int) : §3C§
      {
         return this.§^! §[param1];
      }
      
      public function §8"5§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§!!O§, param6:Sprite, param7:§]!U§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§3C§ = new §3C§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§^! §.push(_loc10_);
      }
      
      public function §#[§(param1:Number, param2:§5r§) : void
      {
         var _loc4_:§3C§ = null;
         var _loc3_:int = this.§^! §.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§^! §[_loc3_];
            if(!this.§"!G§(_loc4_,param1,param2))
            {
               this.§[s§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §[s§(param1:int, param2:§5r§) : void
      {
         var _loc3_:§3C§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§^! §[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§="2§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§]j§.§4"1§,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§^! §.splice(param1,1);
         }
      }
      
      protected function §"!G§(param1:§3C§, param2:Number, param3:§5r§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§]s§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§]H§ * param2 / 1000;
            _loc6_ = param1.y + param1.§#!F§ * param2 / 1000;
            _loc7_ = param2;
            this.§6"?§.§?!5§(param1.§4!D§(§;!>§),param1.§8_§(§;!>§),_loc5_,_loc6_);
            if(this.§6"?§.§'u§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§6"?§.§'u§)
            {
               _loc8_ = this.§6"?§.§`"$§(_loc9_);
               if(!param1.§?H§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§1!x§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§6"?§.§'u§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§^m§();
            _loc10_ = 0;
            while(_loc10_ < this.§6"?§.§'u§)
            {
               _loc8_ = this.§6"?§.§`"$§(_loc10_);
               param1.§2,§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§3J§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §1!x§(param1:§]s§, param2:§3C§, param3:Number, param4:§5r§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§1d§;
         if((_loc5_ = param1.§>!]§) is §#!v§)
         {
            this.§,!S§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §5,§ && §5,§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.§ <§())
         {
            _loc5_.§ <§().SetAwake(true);
         }
         if(this.§]!>§(_loc5_))
         {
            this.§&!A§(param1,param2,param4);
            return false;
         }
         if(this.§0!8§(_loc5_) && param2.§0!K§)
         {
            return this.§+6§(param1,param2,param4);
         }
         if(this.§1%§(_loc5_))
         {
            return true;
         }
         this.§&",§(param1,param2,param4);
         return true;
      }
      
      private function §,!S§(param1:§]s§, param2:§3C§, param3:§5r§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§4z§(param2.§1O§);
         var _loc5_:§5,§;
         if(_loc5_ = param1.§>!]§ as §5,§)
         {
            _loc5_.§ <§().ApplyImpulse(_loc4_,param1.§'!U§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function §&!A§(param1:§]s§, param2:§3C§, param3:§5r§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§0l§ = null;
         var _loc7_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§2!U§)
            {
               param3.addScore(_loc5_,§8R§.§^!g§,true,param2.x,param2.y - 3,§9!v§.§<"#§);
            }
            if(_loc6_ = param3.§'!6§(param2.x,param2.y))
            {
               _loc6_.§-z§ = true;
               _loc7_ = _loc6_.§ <§().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc7_.y - param2.y,_loc7_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§6X§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §+6§(param1:§]s§, param2:§3C§, param3:§5r§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§5,§ = param1.§>!]§ as §5,§;
         var _loc5_:Number = param2.§6"D§;
         if(_loc4_)
         {
            _loc6_ = param2.§-H§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§6X§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §&",§(param1:§]s§, param2:§3C§, param3:§5r§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§5,§;
         if(_loc4_ = param1.§>!]§ as §5,§)
         {
            if(param2.§0!K§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§-H§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §1%§(param1:§1d§) : Boolean
      {
         if(param1.§ <§().§;!G§().§<H§())
         {
            return true;
         }
         return false;
      }
      
      private function §]!>§(param1:§1d§) : Boolean
      {
         var _loc2_:§+C§ = null;
         if(param1.levelItem is §+C§)
         {
            _loc2_ = §+C§(param1.levelItem);
            return _loc2_.§+!D§;
         }
         return false;
      }
      
      private function §0!8§(param1:§1d§) : Boolean
      {
         var _loc2_:§+C§ = null;
         if(param1.levelItem is §+C§)
         {
            _loc2_ = §+C§(param1.levelItem);
            return _loc2_.§<" § || _loc2_.§+!D§;
         }
         return false;
      }
      
      protected function §6X§(param1:§3C§, param2:Number, param3:Number, param4:§5r§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§7u§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§]j§.§4"1§,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
