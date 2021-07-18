package §?f§
{
   import §4W§.§!]§;
   import §4W§.§3!@§;
   import §`a§.Sprite;
   
   public class §,v§
   {
      
      public static const §&!>§:int = 0;
      
      public static const §`!+§:int = 1;
      
      public static const §'>§:int = 2;
      
      public static const §-!;§:int = 3;
      
      public static const §"%§:int = 4;
      
      public static const §!!E§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&!>§ = 0;
         }
         while(true)
         {
            §`!+§ = 1;
            loop1:
            for(; !_loc2_; if(!(_loc2_ && _loc2_))
            {
               return;
            })
            {
               §'>§ = 2;
               loop2:
               while(true)
               {
                  §-!;§ = 3;
                  while(true)
                  {
                     §"%§ = 4;
                     while(!_loc2_)
                     {
                        if(_loc1_)
                        {
                           §!!E§ = 5;
                           if(_loc1_ || §,v§)
                           {
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      private var §+A§:Vector.<§@!F§>;
      
      private var §6N§:§3!@§;
      
      private var §5<§:§!]§;
      
      public function §,v§(param1:§3!@§, param2:§!]§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§6N§ = param1;
            loop1:
            while(true)
            {
               addr35:
               addr62:
               while(true)
               {
                  this.§5<§ = param2;
                  addr39:
                  while(!_loc5_)
                  {
                     continue loop0;
                  }
                  continue loop1;
               }
               var _loc3_:int = 0;
               addr65:
               if(_loc3_ >= §!!E§)
               {
                  if(!(_loc5_ && param2))
                  {
                     if(!_loc4_)
                     {
                        _loc3_++;
                        addr83:
                        §§goto(addr65);
                        addr102:
                     }
                     return;
                  }
                  §§goto(addr83);
               }
               this.§+A§[_loc3_] = new §@!F§();
               §§goto(addr102);
            }
         }
      }
      
      public function get §"B§() : §3!@§
      {
         return this.§6N§;
      }
      
      public function get §#G§() : §!]§
      {
         return this.§5<§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§@!F§ = null;
         if(_loc2_ || _loc2_)
         {
            if(this.§+A§)
            {
               §§goto(addr29);
            }
            §§goto(addr76);
         }
         addr29:
         while(this.§+A§.length)
         {
            _loc1_ = this.§+A§.pop();
            if(!(_loc3_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_ || _loc1_)
         {
            addr76:
            this.§+A§ = null;
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §-&§
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc16_:§-&§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§@!F§;
         if(_loc17_ = this.§>!P§(param2))
         {
            if(_loc19_ || param2)
            {
               _loc17_.addParticle(_loc16_);
               if(_loc19_ || this)
               {
               }
               §§goto(addr83);
            }
         }
         else
         {
            _loc16_.dispose();
         }
         addr83:
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §-&§
      {
         return new §-&§(this.§6N§,this.§5<§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§+A§.length)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§>!P§(_loc2_).update(param1);
            }
            _loc2_++;
         }
      }
      
      public function §0!"§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@!F§ = this.§>!P§(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_ || param1)
               {
                  addr52:
                  _loc2_.clear();
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §7q§(param1:int) : Sprite
      {
         return this.§>!P§(param1).sprite;
      }
      
      public function §>!P§(param1:Number) : §@!F§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§+A§ != null)
            {
               if(_loc2_)
               {
                  §§goto(addr44);
               }
            }
            return null;
         }
         addr44:
         return this.§+A§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§0!"§(§&!>§);
         }
         var _loc1_:§@!F§ = this.§>!P§(§`!+§);
         var _loc2_:§@!F§ = this.§>!P§(§&!>§);
         if(_loc4_ || _loc1_)
         {
            _loc1_.§[W§(_loc2_);
            do
            {
               _loc2_.sprite.flatten();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function §<R§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§@!F§ = null;
         for each(_loc3_ in this.§+A§)
         {
            if(_loc6_ || param1)
            {
               _loc3_.§?!1§(param1,param2);
            }
         }
      }
   }
}
