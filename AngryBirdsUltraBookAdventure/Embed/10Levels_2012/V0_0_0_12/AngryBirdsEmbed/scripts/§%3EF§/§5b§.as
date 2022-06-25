package §>F§
{
   import §-!0§.§'!3§;
   import §-!0§.§`Q§;
   import §?^§.Sprite;
   
   public class §5b§
   {
      
      public static const §do§:int = 0;
      
      public static const §[M§:int = 1;
      
      public static const §3!!§:int = 2;
      
      public static const §?D§:int = 3;
      
      public static const §%Z§:int = 4;
      
      public static const §-d§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[M§ = 1;
            if(!(_loc2_ && _loc2_))
            {
               addr41:
               §3!!§ = 2;
               §?D§ = 3;
               if(!_loc2_)
               {
                  §%Z§ = 4;
                  §-d§ = 5;
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      private var §&!=§:Vector.<§=n§>;
      
      private var § 3§:§`Q§;
      
      private var § 7§:§'!3§;
      
      public function §5b§(param1:§`Q§, param2:§'!3§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            if(!_loc5_)
            {
               this.§ 3§ = param1;
               if(_loc5_)
               {
               }
               §§goto(addr57);
            }
            this.§ 7§ = param2;
            if(_loc4_ || _loc3_)
            {
               addr57:
               this.§&!=§ = new Vector.<§=n§>();
               §§goto(addr63);
            }
            addr63:
            var _loc3_:int = 0;
            while(_loc3_ < §-d§)
            {
               this.§&!=§[_loc3_] = new §=n§();
               if(!_loc4_)
               {
                  break;
               }
               _loc3_++;
               if(!(_loc4_ || param1))
               {
                  break;
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function get §+!!§() : §`Q§
      {
         return this.§ 3§;
      }
      
      public function get textureManager() : §'!3§
      {
         return this.§ 7§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§=n§ = null;
         if(_loc2_ || _loc3_)
         {
            if(this.§&!=§)
            {
               §§goto(addr49);
            }
            §§goto(addr71);
         }
         addr49:
         while(this.§&!=§.length)
         {
            _loc1_ = this.§&!=§.pop();
            if(_loc2_ || _loc1_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc3_)
         {
            addr71:
            this.§&!=§ = null;
         }
      }
      
      public function §9!§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc17_:§!x§ = new §!x§(this.§ 3§,this.§ 7§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§=n§;
         if(_loc18_ = this.§?N§(param3))
         {
            if(!_loc20_)
            {
               _loc18_.§ t§(_loc17_);
               if(!_loc19_)
               {
               }
            }
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function § t§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2S§
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc16_:§2S§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§=n§;
         if(_loc17_ = this.§?N§(param2))
         {
            if(_loc19_)
            {
               _loc17_.§ t§(_loc16_);
               if(_loc18_)
               {
               }
               §§goto(addr73);
            }
         }
         else
         {
            _loc16_.dispose();
         }
         addr73:
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2S§
      {
         return new §2S§(this.§ 3§,this.§ 7§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!=§.length)
         {
            this.§?N§(_loc2_).update(param1);
            if(!_loc4_)
            {
               _loc2_++;
               if(!_loc3_)
               {
                  break;
               }
            }
         }
      }
      
      public function §9!=§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=n§ = this.§?N§(param1);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  addr32:
                  _loc2_.clear();
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function §;!6§(param1:int) : Sprite
      {
         return this.§?N§(param1).sprite;
      }
      
      public function §?N§(param1:Number) : §=n§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§&!=§ != null)
            {
               if(_loc3_)
               {
                  §§goto(addr40);
               }
            }
            return null;
         }
         addr40:
         return this.§&!=§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            this.§9!=§(§do§);
         }
         var _loc1_:§=n§ = this.§?N§(§[M§);
         var _loc2_:§=n§ = this.§?N§(§do§);
         if(!(_loc4_ && _loc3_))
         {
            _loc1_.§;q§(_loc2_);
            if(_loc3_ || _loc1_)
            {
               _loc2_.sprite.flatten();
            }
         }
      }
      
      public function §^-§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§=n§ = null;
         for each(_loc3_ in this.§&!=§)
         {
            if(!_loc6_)
            {
               _loc3_.§>8§(param1,param2);
            }
         }
      }
   }
}
