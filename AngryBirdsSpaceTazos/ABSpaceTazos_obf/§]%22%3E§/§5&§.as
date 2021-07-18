package §]">§
{
   import §'4§.§^g§;
   
   public class §5&§
   {
      
      public static const §0!_§:int = 0;
      
      public static const §=R§:int = 1;
      
      public static const §"N§:int = 2;
      
      public static const §=z§:int = 3;
      
      public static const §@y§:int = 4;
      
      public static const §-!Y§:int = 10;
      
      private static var § K§:§5&§;
      
      private static var §=!?§:§5&§;
      
      private static var §]!_§:§5&§;
      
      private static var TNT:§5&§;
      
      private static var §1"7§:§5&§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §0!_§ = 0;
         }
         loop0:
         while(true)
         {
            §=R§ = 1;
            loop1:
            while(true)
            {
               §"N§ = 2;
               while(true)
               {
                  §=z§ = 3;
                  loop3:
                  while(true)
                  {
                     §@y§ = 4;
                     while(true)
                     {
                        §-!Y§ = 10;
                        while(_loc1_ || §5&§)
                        {
                           continue loop1;
                           loop8:
                           while(_loc1_ || §5&§)
                           {
                              continue loop3;
                              if(!(_loc2_ && _loc1_))
                              {
                                 addr54:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    return;
                                 }
                                 addr133:
                                 while(_loc1_)
                                 {
                                    §]!_§ = new §5&§(0,0,15,1750,5,300,§=z§);
                                    continue loop8;
                                    §§goto(addr54);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private var §""4§:Number;
      
      private var §%W§:Number;
      
      private var §9!Y§:Number;
      
      private var §1d§:Number;
      
      private var §^!$§:Number;
      
      private var §5"&§:Number;
      
      private var §!k§:int;
      
      public function §5&§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super();
            loop0:
            while(true)
            {
               this.§""4§ = param1;
               while(true)
               {
                  this.§%W§ = param2;
                  continue loop0;
                  addr65:
                  if(_loc9_ && param3)
                  {
                     continue;
                  }
                  this.§5"&§ = param6;
                  loop6:
                  while(true)
                  {
                     if(!(_loc9_ && param1))
                     {
                        addr41:
                        if(_loc9_ && param1)
                        {
                           break;
                        }
                        continue;
                     }
                     addr63:
                     while(_loc8_)
                     {
                        §§goto(addr65);
                        continue loop6;
                     }
                     continue loop0;
                  }
                  loop4:
                  while(true)
                  {
                     if(_loc8_ || param2)
                     {
                        this.§^!$§ = param5;
                        §§goto(addr63);
                     }
                     else
                     {
                        while(true)
                        {
                           this.§1d§ = param4;
                           continue loop4;
                        }
                        addr89:
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public static function §6w§(param1:int, param2:Number, param3:Number) : §5&§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§5&§ = null;
         §§push(param1);
         if(_loc6_)
         {
            var _loc5_:* = §§pop();
            if(_loc6_ || §5&§)
            {
               §§push(§=R§);
               if(_loc6_)
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc7_ && §5&§))
                        {
                           §§push(0);
                           if(_loc7_ && param2)
                           {
                              addr116:
                              §§push(_loc5_);
                              if(_loc6_)
                              {
                                 addr119:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       addr127:
                                       §§push(2);
                                       if(!_loc7_)
                                       {
                                          addr150:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc4_ = §=!?§;
                                                break;
                                             case 1:
                                                _loc4_ = TNT;
                                                break;
                                             case 2:
                                                _loc4_ = §]!_§;
                                                break;
                                             case 3:
                                                _loc4_ = §1"7§;
                                                break;
                                             default:
                                                _loc4_ = § K§;
                                          }
                                          return new §5&§(param2,param3,_loc4_.§2L§,_loc4_.push,_loc4_.§@P§,_loc4_.damage,param1);
                                          addr149:
                                          addr130:
                                       }
                                    }
                                    else
                                    {
                                       addr141:
                                       §§push(3);
                                       if(_loc6_)
                                       {
                                          addr144:
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§@y§);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(_loc5_);
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr141);
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                           else
                           {
                              addr89:
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr127);
                     }
                     else
                     {
                        §§push(§"N§);
                        if(_loc6_ || §5&§)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              addr101:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr130);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr127);
                                 }
                              }
                              else
                              {
                                 §§push(§=z§);
                                 if(_loc6_)
                                 {
                                    §§goto(addr116);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr101);
               }
               §§goto(addr89);
            }
            §§goto(addr127);
         }
         §§goto(addr150);
      }
      
      public static function §2!"§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §5&§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§5&§);
         §§push(param1);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         if(_loc8_ || param3)
         {
            §§push(§^g§.§5!-§);
            if(!_loc7_)
            {
               addr54:
               §§push(§§pop() * §§pop());
               §§push(param5);
            }
            return new §§pop()(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),param6,§-!Y§);
         }
         §§goto(addr54);
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function get §2L§() : Number
      {
         return this.§9!Y§;
      }
      
      public function get push() : Number
      {
         return this.§1d§;
      }
      
      public function get §@P§() : Number
      {
         return this.§^!$§;
      }
      
      public function get damage() : Number
      {
         return this.§5"&§;
      }
      
      public function get type() : int
      {
         return this.§!k§;
      }
   }
}
