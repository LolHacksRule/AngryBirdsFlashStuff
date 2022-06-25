package §!!>§
{
   import §'k§.§ >§;
   import §'k§.§#k§;
   import §9W§.Sprite;
   
   public class §#C§
   {
      
      public static const §5C§:int = 0;
      
      public static const §=!7§:int = 1;
      
      public static const §3!0§:int = 2;
      
      public static const §#!'§:int = 3;
      
      public static const §3"§:int = 4;
      
      public static const §2p§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=!7§ = 1;
            if(!(_loc2_ && _loc2_))
            {
               addr41:
               §3!0§ = 2;
               §#!'§ = 3;
               if(!_loc2_)
               {
                  §3"§ = 4;
                  §2p§ = 5;
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      private var §[N§:Vector.<§#Z§>;
      
      private var §!m§:§#k§;
      
      private var §`!8§:§ >§;
      
      public function §#C§(param1:§#k§, param2:§ >§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            if(!_loc5_)
            {
               this.§!m§ = param1;
               if(_loc5_)
               {
               }
               §§goto(addr57);
            }
            this.§`!8§ = param2;
            if(_loc4_ || _loc3_)
            {
               addr57:
               this.§[N§ = new Vector.<§#Z§>();
               §§goto(addr63);
            }
            addr63:
            var _loc3_:int = 0;
            while(_loc3_ < §2p§)
            {
               this.§[N§[_loc3_] = new §#Z§();
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
      
      public function get §!`§() : §#k§
      {
         return this.§!m§;
      }
      
      public function get textureManager() : § >§
      {
         return this.§`!8§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§#Z§ = null;
         if(_loc2_ || _loc3_)
         {
            if(this.§[N§)
            {
               §§goto(addr49);
            }
            §§goto(addr71);
         }
         addr49:
         while(this.§[N§.length)
         {
            _loc1_ = this.§[N§.pop();
            if(_loc2_ || _loc1_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc3_)
         {
            addr71:
            this.§[N§ = null;
         }
      }
      
      public function §=!B§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc17_:§@§ = new §@§(this.§!m§,this.§`!8§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§#Z§;
         if(_loc18_ = this.§?!7§(param3))
         {
            if(!_loc20_)
            {
               _loc18_.§'!;§(_loc17_);
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
      
      public function §'!;§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §!8§
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc16_:§!8§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§#Z§;
         if(_loc17_ = this.§?!7§(param2))
         {
            if(_loc19_)
            {
               _loc17_.§'!;§(_loc16_);
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
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §!8§
      {
         return new §!8§(this.§!m§,this.§`!8§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[N§.length)
         {
            this.§?!7§(_loc2_).update(param1);
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
      
      public function §!a§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§#Z§ = this.§?!7§(param1);
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
      
      public function §`U§(param1:int) : Sprite
      {
         return this.§?!7§(param1).sprite;
      }
      
      public function §?!7§(param1:Number) : §#Z§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§[N§ != null)
            {
               if(_loc3_)
               {
                  §§goto(addr40);
               }
            }
            return null;
         }
         addr40:
         return this.§[N§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            this.§!a§(§5C§);
         }
         var _loc1_:§#Z§ = this.§?!7§(§=!7§);
         var _loc2_:§#Z§ = this.§?!7§(§5C§);
         if(!(_loc4_ && _loc3_))
         {
            _loc1_.§[u§(_loc2_);
            if(_loc3_ || _loc1_)
            {
               _loc2_.sprite.flatten();
            }
         }
      }
      
      public function §-b§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§#Z§ = null;
         for each(_loc3_ in this.§[N§)
         {
            if(!_loc6_)
            {
               _loc3_.§4z§(param1,param2);
            }
         }
      }
   }
}
