package §0! §
{
   import § `§.§2w§;
   import § `§.§5L§;
   import §]@§.Sprite;
   
   public class §<2§
   {
      
      public static const §`!J§:int = 0;
      
      public static const §&!H§:int = 1;
      
      public static const §^#§:int = 2;
      
      public static const §]!X§:int = 3;
      
      public static const §<X§:int = 4;
      
      public static const §^!K§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!J§ = 0;
            while(true)
            {
               §&!H§ = 1;
               addr56:
               if(!(_loc2_ || §<2§))
               {
                  continue;
               }
               §^!K§ = 5;
               addr63:
               if(_loc2_)
               {
                  addr30:
                  if(!(_loc1_ && _loc1_))
                  {
                     addr47:
                     if(_loc1_)
                     {
                        while(true)
                        {
                           §^#§ = 2;
                           addr83:
                           while(true)
                           {
                              §]!X§ = 3;
                              while(true)
                              {
                                 §<X§ = 4;
                                 addr54:
                                 while(!_loc1_)
                                 {
                                    §§goto(addr56);
                                    §§goto(addr63);
                                 }
                              }
                              §§goto(addr30);
                           }
                           §§goto(addr47);
                        }
                        addr88:
                     }
                     return;
                  }
                  §§goto(addr83);
               }
               §§goto(addr54);
            }
         }
         §§goto(addr88);
      }
      
      private var §1Q§:Vector.<§"!0§>;
      
      private var §>n§:§5L§;
      
      private var §8!M§:§2w§;
      
      public function §<2§(param1:§5L§, param2:§2w§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            while(true)
            {
               this.§>n§ = param1;
            }
            addr67:
         }
         while(true)
         {
            while(true)
            {
               this.§8!M§ = param2;
               do
               {
                  this.§1Q§ = new Vector.<§"!0§>();
               }
               while(_loc4_);
               
               if(!(_loc5_ || param1))
               {
                  break;
               }
               if(!_loc4_)
               {
                  if(true)
                  {
                     var _loc3_:int = 0;
                     while(true)
                     {
                        if(_loc3_ >= §^!K§)
                        {
                           if(!_loc5_)
                           {
                              continue;
                           }
                           if(_loc5_ || param1)
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§1Q§[_loc3_] = new §"!0§();
                        }
                        _loc3_++;
                     }
                  }
                  continue;
                  return;
               }
               §§goto(addr67);
            }
         }
      }
      
      public function get §true§() : §5L§
      {
         return this.§>n§;
      }
      
      public function get §=]§() : §2w§
      {
         return this.§8!M§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§"!0§ = null;
         if(!_loc3_)
         {
            if(this.§1Q§)
            {
               §§goto(addr24);
            }
            §§goto(addr71);
         }
         addr24:
         while(this.§1Q§.length)
         {
            _loc1_ = this.§1Q§.pop();
            if(!(_loc3_ && this))
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_ || _loc1_)
         {
            addr71:
            this.§1Q§ = null;
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7o§
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc16_:§7o§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§"!0§;
         if(_loc17_ = this.§1x§(param2))
         {
            if(!(_loc18_ && this))
            {
               _loc17_.addParticle(_loc16_);
               if(!_loc19_)
               {
               }
               §§goto(addr78);
            }
         }
         else
         {
            _loc16_.dispose();
         }
         addr78:
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7o§
      {
         return new §7o§(this.§>n§,this.§8!M§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§1Q§.length)
            {
               if(_loc3_ || param1)
               {
                  break;
               }
               loop1:
               while(!(_loc3_ || _loc2_))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§1x§(_loc2_).update(param1);
            §§goto(addr72);
         }
      }
      
      public function §-!9§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"!0§ = this.§1x§(param1);
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && param1))
               {
                  _loc2_.clear();
               }
            }
         }
      }
      
      public function §`Q§(param1:int) : Sprite
      {
         return this.§1x§(param1).sprite;
      }
      
      public function §1x§(param1:Number) : §"!0§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§1Q§ != null)
            {
               if(_loc3_)
               {
                  §§goto(addr45);
               }
            }
            return null;
         }
         addr45:
         return this.§1Q§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§-!9§(§`!J§);
         }
         var _loc1_:§"!0§ = this.§1x§(§&!H§);
         var _loc2_:§"!0§ = this.§1x§(§`!J§);
         if(_loc3_)
         {
            _loc1_.§"!6§(_loc2_);
            do
            {
               _loc2_.sprite.flatten();
            }
            while(_loc4_ && _loc1_);
            
         }
      }
      
      public function §<!=§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§"!0§ = null;
         for each(_loc3_ in this.§1Q§)
         {
            if(_loc6_)
            {
               _loc3_.§;!H§(param1,param2);
            }
         }
      }
   }
}
