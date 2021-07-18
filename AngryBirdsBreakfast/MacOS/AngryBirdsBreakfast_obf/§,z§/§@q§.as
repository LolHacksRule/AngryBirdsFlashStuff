package §,z§
{
   import §@L§.§?!'§;
   
   public class §@q§
   {
      
      public static const §+",§:int = 0;
      
      public static const §5!]§:int = 1;
      
      public static const §]!Q§:int = 2;
      
      public static const §-Q§:int = 3;
      
      public static const §@" §:int = 4;
      
      public static const §2!q§:int = 5;
      
      public static const §8Y§:int = 10;
      
      private static var DEFAULT:§@q§;
      
      private static var §7m§:§@q§;
      
      private static var §^!=§:§@q§;
      
      private static var §?e§:§@q§;
      
      private static var TNT:§@q§;
      
      private static var §?f§:§@q§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §@q§))
         {
            §+",§ = 0;
            loop0:
            while(true)
            {
               §5!]§ = 1;
               loop1:
               while(true)
               {
                  §]!Q§ = 2;
                  while(true)
                  {
                     §-Q§ = 3;
                     while(!(_loc2_ && _loc1_))
                     {
                        §@" § = 4;
                        while(true)
                        {
                           §2!q§ = 5;
                           while(true)
                           {
                              §8Y§ = 10;
                              addr153:
                              while(_loc1_ || _loc1_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                        loop10:
                        while(_loc1_ || _loc2_)
                        {
                           TNT = new §@q§(0,0,10,1500,5,150,§]!Q§);
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc1_)
                                 {
                                    while(true)
                                    {
                                       §?e§ = new §@q§(0,0,8,1500,0,0,§2!q§);
                                       continue loop10;
                                    }
                                 }
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 continue;
                                 return;
                                 addr118:
                                 addr49:
                              }
                              continue loop10;
                           }
                           while(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 §7m§ = new §@q§(0,0,10,500,7.5,600,§5!]§);
                                 §§goto(addr131);
                              }
                              else
                              {
                                 §§goto(addr177);
                              }
                           }
                           §§goto(addr153);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      private var §%!3§:Number;
      
      private var §?!e§:Number;
      
      private var §8J§:Number;
      
      private var §"z§:Number;
      
      private var §=!5§:Number;
      
      private var §2!g§:Number;
      
      private var §^"'§:int;
      
      private var §8V§:int = -1;
      
      public function §@q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && param2))
         {
            super();
            while(true)
            {
               this.§%!3§ = param1;
               addr123:
               while(true)
               {
                  this.§?!e§ = param2;
               }
            }
            addr126:
         }
         loop2:
         while(true)
         {
            this.§8J§ = param3;
            while(true)
            {
               this.§"z§ = param4;
               addr91:
               while(!(_loc10_ && param2))
               {
                  this.§=!5§ = param5;
                  continue loop2;
               }
            }
         }
      }
      
      public static function §0!@§(param1:int, param2:Number, param3:Number) : §@q§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§@q§ = null;
         §§push(param1);
         if(!_loc7_)
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               §§push(§5!]§);
               if(_loc6_)
               {
                  §§push(_loc5_);
                  if(_loc6_ || §@q§)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc7_)
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr112:
                           }
                        }
                        else
                        {
                           addr151:
                           §§push(3);
                           if(!(_loc7_ && param2))
                           {
                              addr159:
                           }
                        }
                        addr165:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = §7m§;
                              break;
                           case 1:
                              _loc4_ = TNT;
                              break;
                           case 2:
                              _loc4_ = §^!=§;
                              break;
                           case 3:
                              _loc4_ = §?f§;
                              break;
                           default:
                              _loc4_ = DEFAULT;
                        }
                        return new §@q§(param2,param3,_loc4_.§'i§,_loc4_.push,_loc4_.§,p§,_loc4_.damage,param1);
                        addr164:
                     }
                     else
                     {
                        §§push(§]!Q§);
                        if(_loc6_ || param1)
                        {
                           §§push(_loc5_);
                           if(_loc6_ || param3)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(1);
                                    if(!(_loc7_ && §@q§))
                                    {
                                       §§goto(addr112);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr151);
                                 }
                                 §§goto(addr164);
                              }
                              else
                              {
                                 §§push(§-Q§);
                                 if(!(_loc7_ && §@q§))
                                 {
                                    addr121:
                                    §§push(_loc5_);
                                    if(_loc6_)
                                    {
                                       addr124:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc6_ || param3)
                                          {
                                             addr132:
                                             §§push(2);
                                             if(!(_loc6_ || param2))
                                             {
                                                §§goto(addr159);
                                             }
                                             else
                                             {
                                                addr140:
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr151);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§@" §);
                                          if(!(_loc7_ && param2))
                                          {
                                             addr150:
                                             if(§§pop() === _loc5_)
                                             {
                                                §§goto(addr151);
                                             }
                                             else
                                             {
                                                §§push(4);
                                             }
                                          }
                                       }
                                       §§goto(addr164);
                                    }
                                 }
                                 §§goto(addr150);
                              }
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr124);
               }
               §§goto(addr140);
            }
            §§goto(addr132);
         }
         §§goto(addr165);
      }
      
      public static function §9D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §@q§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§@q§);
         §§push(param1);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         if(!(_loc8_ && param2))
         {
            §§push(§?!'§.§'!i§);
            if(_loc7_ || param2)
            {
               addr58:
               §§push(§§pop() * §§pop());
               §§push(param5);
            }
            return new §§pop()(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),param6,§8Y§);
         }
         §§goto(addr58);
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function get §'i§() : Number
      {
         return this.§8J§;
      }
      
      public function get push() : Number
      {
         return this.§"z§;
      }
      
      public function get §,p§() : Number
      {
         return this.§=!5§;
      }
      
      public function get damage() : Number
      {
         return this.§2!g§;
      }
      
      public function get type() : int
      {
         return this.§^"'§;
      }
      
      public function get §]S§() : int
      {
         return this.§8V§;
      }
   }
}
