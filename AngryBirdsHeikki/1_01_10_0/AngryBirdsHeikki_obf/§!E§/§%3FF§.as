package §!E§
{
   import §2Y§.Sprite;
   import §=!<§.§>"§;
   import §=!<§.§>a§;
   
   public class §?F§
   {
      
      public static const §?!;§:int = 0;
      
      public static const §;!;§:int = 1;
      
      public static const §[s§:int = 2;
      
      public static const §<G§:int = 3;
      
      public static const §"!%§:int = 4;
      
      public static const §=Q§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?!;§ = 0;
            loop0:
            while(true)
            {
               §;!;§ = 1;
               loop1:
               while(true)
               {
                  §[s§ = 2;
                  while(true)
                  {
                     §<G§ = 3;
                     addr63:
                     while(!(_loc2_ && _loc1_))
                     {
                        if(_loc1_)
                        {
                           §"!%§ = 4;
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      private var §>!Y§:Vector.<§7!Y§>;
      
      private var §>!7§:§>"§;
      
      private var §;u§:§>a§;
      
      public function §?F§(param1:§>"§, param2:§>a§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§>!7§ = param1;
               addr56:
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     this.§;u§ = param2;
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§>!Y§ = new Vector.<§7!Y§>();
            if(!_loc4_)
            {
               continue;
            }
            if(!_loc5_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr56);
            }
            §§goto(addr37);
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= §=Q§)
            {
               if(_loc4_ || param1)
               {
                  break;
               }
            }
            else
            {
               this.§>!Y§[_loc3_] = new §7!Y§();
               while(true)
               {
                  _loc3_++;
               }
               addr102:
            }
            while(_loc5_)
            {
               §§goto(addr102);
            }
         }
      }
      
      public function get §?!O§() : §>"§
      {
         return this.§>!7§;
      }
      
      public function get textureManager() : §>a§
      {
         return this.§;u§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§7!Y§ = null;
         if(_loc2_ || this)
         {
            if(this.§>!Y§)
            {
               §§goto(addr29);
            }
            §§goto(addr76);
         }
         addr29:
         while(this.§>!Y§.length)
         {
            _loc1_ = this.§>!Y§.pop();
            if(_loc2_ || _loc1_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_ || _loc2_)
         {
            addr76:
            this.§>!Y§ = null;
         }
      }
      
      public function §6S§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§default§ = new §default§(this.§>!7§,this.§;u§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§7!Y§;
         if(_loc18_ = this.§[;§(param3))
         {
            if(!(_loc19_ && param1))
            {
               _loc18_.addParticle(_loc17_);
               if(!_loc20_)
               {
               }
            }
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §!U§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§!U§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§7!Y§;
         if(_loc17_ = this.§[;§(param2))
         {
            if(!_loc19_)
            {
               _loc17_.addParticle(_loc16_);
               if(!_loc18_)
               {
               }
            }
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §!U§
      {
         return new §!U§(this.§>!7§,this.§;u§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§>!Y§.length)
            {
               if(!(_loc4_ && this))
               {
                  break;
               }
            }
            else
            {
               this.§[;§(_loc2_).update(param1);
               while(true)
               {
                  _loc2_++;
               }
               addr67:
            }
            while(_loc4_)
            {
               §§goto(addr67);
            }
         }
      }
      
      public function §5!S§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7!Y§ = this.§[;§(param1);
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  _loc2_.clear();
               }
            }
         }
      }
      
      public function §]q§(param1:int) : Sprite
      {
         return this.§[;§(param1).sprite;
      }
      
      public function §[;§(param1:Number) : §7!Y§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§>!Y§ != null)
            {
               if(_loc3_)
               {
                  §§goto(addr50);
               }
            }
            return null;
         }
         addr50:
         return this.§>!Y§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§5!S§(§?!;§);
         }
         var _loc1_:§7!Y§ = this.§[;§(§;!;§);
         var _loc2_:§7!Y§ = this.§[;§(§?!;§);
         if(_loc4_ || _loc1_)
         {
            _loc1_.§=!D§(_loc2_);
         }
         do
         {
            _loc2_.sprite.flatten();
         }
         while(_loc3_);
         
      }
      
      public function §+!+§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§7!Y§ = null;
         for each(_loc3_ in this.§>!Y§)
         {
            if(_loc6_ || _loc3_)
            {
               _loc3_.§51§(param1,param2);
            }
         }
      }
   }
}
