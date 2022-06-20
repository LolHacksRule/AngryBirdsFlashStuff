package §;"8§
{
   import §#Z§.Sprite;
   import §%$0§.§`#I§;
   import §-!j§.§>!8§;
   import §-!j§.§@! §;
   import §3#h§.b2World;
   import §4"Y§.§6$A§;
   import §4"Y§.§]!m§;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §?$#§.§-V§;
   import §^0§.*;
   
   public class §6#§
   {
      
      protected static const §3#v§:Number = 1.3;
       
      
      protected var §0!B§:Vector.<§7$5§>;
      
      protected var §!!F§:§]!m§;
      
      public function §6#§(param1:b2World)
      {
         this.§0!B§ = new Vector.<§7$5§>();
         super();
         this.§!!F§ = new §]!m§(param1);
      }
      
      public function dispose() : void
      {
         this.§0!B§ = null;
      }
      
      public function get §'$!§() : int
      {
         return this.§0!B§.length;
      }
      
      public function §["P§(param1:int) : §7$5§
      {
         return this.§0!B§[param1];
      }
      
      public function §-!,§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§>!8§, param6:Sprite, param7:§,`§, param8:Number, param9:Boolean) : void
      {
         var _loc10_:§7$5§ = new §7$5§(param1,param2,param3 / 180 * Math.PI,param4,param5,param6,param7,param8,param9);
         this.§0!B§.push(_loc10_);
      }
      
      public function §,!S§(param1:Number, param2:§;">§) : void
      {
         var _loc4_:§7$5§ = null;
         var _loc3_:int = this.§0!B§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§0!B§[_loc3_];
            if(!this.§'!+§(_loc4_,param1,param2))
            {
               this.§+"e§(_loc3_,param2);
            }
            else
            {
               _loc4_.render();
            }
            _loc3_--;
         }
      }
      
      protected function §+"e§(param1:int, param2:§;">§) : void
      {
         var _loc3_:§7$5§ = null;
         var _loc4_:String = null;
         if(param1 >= 0)
         {
            _loc3_ = this.§0!B§[param1];
            if(_loc3_)
            {
               if(_loc3_.sprite.parent)
               {
                  _loc3_.sprite.parent.removeChild(_loc3_.sprite);
               }
               if(_loc4_ = _loc3_.§;"0§)
               {
                  param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§%"^§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_.dispose();
            }
            this.§0!B§.splice(param1,1);
         }
      }
      
      protected function §'!+§(param1:§7$5§, param2:Number, param3:§;">§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§6$A§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:Boolean = true;
         while(param2 > 0)
         {
            _loc5_ = param1.x + param1.§58§ * param2 / 1000;
            _loc6_ = param1.y + param1.§8!2§ * param2 / 1000;
            _loc7_ = param2;
            this.§!!F§.§0=§(param1.§>! §(§3#v§),param1.§4"q§(§3#v§),_loc5_,_loc6_);
            if(this.§!!F§.§+5§ == 0)
            {
               param1.update(param2);
               break;
            }
            _loc9_ = 0;
            while(_loc9_ < this.§!!F§.§+5§)
            {
               _loc8_ = this.§!!F§.§'$8§(_loc9_);
               if(!param1.§^#g§(_loc8_))
               {
                  _loc7_ = param2 - _loc8_.rayFraction * param2;
                  if(!this.§6S§(_loc8_,param1,param2,param3))
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
               if(_loc9_ == this.§!!F§.§+5§ - 1)
               {
                  param1.update(_loc7_);
                  param2 = 0;
               }
               _loc9_++;
            }
            param1.§'Y§();
            _loc10_ = 0;
            while(_loc10_ < this.§!!F§.§+5§)
            {
               _loc8_ = this.§!!F§.§'$8§(_loc10_);
               param1.§'z§(_loc8_);
               _loc10_++;
            }
         }
         if(param3 && param3.§3#Y§(param1.x,param1.y))
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      protected function §6S§(param1:§6$A§, param2:§7$5§, param3:Number, param4:§;">§) : Boolean
      {
         param2.update(param1.rayFraction * param3);
         var _loc5_:§4!t§;
         if((_loc5_ = param1.§5!]§) is §[# §)
         {
            this.§2#=§(param1,param2,param4);
            return true;
         }
         if(_loc5_ is §=Q§ && §=Q§(_loc5_).defence < 0)
         {
            return true;
         }
         if(_loc5_.getBody())
         {
            _loc5_.getBody().SetAwake(true);
         }
         if(this.§import§(_loc5_))
         {
            this.§ §(param1,param2,param4);
            return false;
         }
         if(this.§=!9§(_loc5_) && param2.§=!%§)
         {
            return this.§9#=§(param1,param2,param4);
         }
         if(this.§"#X§(_loc5_))
         {
            return true;
         }
         this.§^$8§(param1,param2,param4);
         return true;
      }
      
      private function §2#=§(param1:§6$A§, param2:§7$5§, param3:§;">§) : void
      {
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§%!G§(param2.§<<§);
         var _loc5_:§=Q§;
         if(_loc5_ = param1.§5!]§ as §=Q§)
         {
            _loc5_.getBody().ApplyImpulse(_loc4_,param1.§^##§);
            _loc5_.applyDamage(1,param3,null,false);
         }
      }
      
      private function § §(param1:§6$A§, param2:§7$5§, param3:§;">§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:§-"a§ = null;
         var _loc7_:String = null;
         var _loc8_:b2Vec2 = null;
         if(param3)
         {
            if(_loc5_ = param2.§>!+§)
            {
               _loc7_ = null;
               if(param1 && param1.§5!]§ && param1.§5!]§.levelItem)
               {
                  _loc7_ = param1.§5!]§.levelItem.floatingScoreFont;
               }
               param3.addScore(_loc5_,§-V§.§5"§,true,param2.x,param2.y - 3,§`#I§.§1#,§,_loc7_);
            }
            if(_loc6_ = param3.§>!I§(param2.x,param2.y))
            {
               _loc6_.§'"f§ = true;
               _loc8_ = _loc6_.getBody().GetPosition();
               param2.reflectToAngle(Math.atan2(_loc8_.y - param2.y,_loc8_.x - param2.x),param2.speed);
               return;
            }
         }
         var _loc4_:b2Vec2 = param1.normal;
         this.§"$2§(param2,_loc4_.x,_loc4_.y,param3);
      }
      
      private function §9#=§(param1:§6$A§, param2:§7$5§, param3:§;">§) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§=Q§ = param1.§5!]§ as §=Q§;
         var _loc5_:Number = param2.§+z§;
         if(_loc4_)
         {
            _loc6_ = param2.§7p§(_loc4_);
            _loc4_.applyDamage(_loc5_ * _loc6_,param3,null);
         }
         param2.applyDamage(_loc5_);
         if(param2.health > 0)
         {
            _loc7_ = param1.normal;
            this.§"$2§(param2,_loc7_.x,_loc7_.y,param3);
            return false;
         }
         return true;
      }
      
      private function §^$8§(param1:§6$A§, param2:§7$5§, param3:§;">§) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:§=Q§;
         if(_loc4_ = param1.§5!]§ as §=Q§)
         {
            if(param2.§=!%§ || _loc4_.defence < 100000)
            {
               _loc5_ = param2.§7p§(_loc4_);
               _loc6_ = Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health);
               _loc4_.applyDamage(_loc6_ * _loc5_,param3,null);
               param2.applyDamage(_loc6_);
            }
         }
      }
      
      private function §"#X§(param1:§4!t§) : Boolean
      {
         if(param1.getBody().GetFixtureList().§9D§())
         {
            return true;
         }
         return false;
      }
      
      private function §import§(param1:§4!t§) : Boolean
      {
         var _loc2_:§@! § = null;
         if(param1.levelItem is §@! §)
         {
            _loc2_ = §@! §(param1.levelItem);
            return _loc2_.§@"f§;
         }
         return false;
      }
      
      private function §=!9§(param1:§4!t§) : Boolean
      {
         var _loc2_:§@! § = null;
         if(param1.levelItem is §@! §)
         {
            _loc2_ = §@! §(param1.levelItem);
            return _loc2_.§?"$§ || _loc2_.§@"f§;
         }
         return false;
      }
      
      protected function §"$2§(param1:§7$5§, param2:Number, param3:Number, param4:§;">§) : void
      {
         var _loc5_:Number = 2 * (param2 * Math.cos(param1.angle) + param3 * Math.sin(param1.angle));
         var _loc6_:Number = Math.cos(param1.angle) - param2 * _loc5_;
         var _loc7_:Number = Math.sin(param1.angle) - param3 * _loc5_;
         var _loc8_:String;
         if(_loc8_ = param1.§^#J§)
         {
            param4.addObject(_loc8_,param1.x,param1.y,0,§%"^§.ID_NEXT_FREE,false,true,false,1,true);
         }
         param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
      }
   }
}
