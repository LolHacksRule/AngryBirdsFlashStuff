package §-!&§
{
   public class §%0§
   {
      
      public static const §7Z§:int = 0;
      
      public static const §?N§:int = 1;
      
      public static const §9!'§:int = 2;
      
      public static const §-W§:int = 3;
      
      public static const §%!=§:int = 4;
      
      private static var §4O§:§%0§;
      
      private static var § _§:§%0§;
      
      private static var §!c§:§%0§;
      
      private static var §,s§:§%0§;
      
      private static var §-V§:§%0§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §%0§)
         {
            §7Z§ = 0;
            loop0:
            while(true)
            {
               §?N§ = 1;
               §9!'§ = 2;
               addr147:
               while(true)
               {
                  §-W§ = 3;
                  continue loop0;
                  addr132:
                  § _§ = new §%0§(0,0,10,500,7.5,600,§?N§);
                  do
                  {
                     §!c§ = new §%0§(0,0,15,1750,5,300,§-W§);
                  }
                  while(_loc2_);
                  
                  if(!_loc2_)
                  {
                     §,s§ = new §%0§(0,0,10,1500,5,150,§9!'§);
                     do
                     {
                        §-V§ = new §%0§(0,0,5,10,7,275,§%!=§);
                     }
                     while(_loc2_ && §%0§);
                     
                     return;
                     addr87:
                  }
               }
            }
            addr156:
         }
         while(true)
         {
            §%!=§ = 4;
            §4O§ = new §%0§(0,0,10,500,7.5,600,§7Z§);
            if(_loc2_ && §%0§)
            {
               continue;
            }
            if(_loc1_)
            {
               §§goto(addr132);
            }
            else
            {
               §§goto(addr156);
            }
         }
         §§goto(addr87);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §#u§:Number;
      
      private var §]B§:Number;
      
      private var §default§:Number;
      
      private var §`!L§:Number;
      
      private var §6!'§:int;
      
      public function §%0§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            super();
            while(true)
            {
               this.x = param1;
               while(_loc9_)
               {
                  this.y = param2;
                  loop4:
                  while(true)
                  {
                     this.§`!L§ = param6;
                     if(_loc8_ && param2)
                     {
                        break;
                     }
                     this.§6!'§ = param7;
                     if(!(_loc8_ && param3))
                     {
                        addr40:
                        if(_loc8_ && param3)
                        {
                           while(true)
                           {
                              this.§default§ = param5;
                              continue loop4;
                              §§goto(addr40);
                           }
                           addr89:
                        }
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§#u§ = param3;
            if(_loc8_ && this)
            {
               continue;
            }
            this.§]B§ = param4;
            §§goto(addr89);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §%0§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§%0§ = null;
         §§push(param1);
         if(_loc7_ || param1)
         {
            var _loc5_:* = §§pop();
            if(!(_loc6_ && param2))
            {
               §§push(§?N§);
               if(!_loc6_)
               {
                  §§push(_loc5_);
                  if(!(_loc6_ && §%0§))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && param2))
                        {
                           addr92:
                           §§push(0);
                           if(!(_loc7_ || §%0§))
                           {
                              addr166:
                           }
                        }
                        else
                        {
                           addr153:
                           §§push(2);
                           if(!_loc6_)
                           {
                              §§goto(addr166);
                           }
                        }
                     }
                     else
                     {
                        §§push(§9!'§);
                        if(!(_loc6_ && param1))
                        {
                           §§push(_loc5_);
                           if(!_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_ || param3)
                                 {
                                    §§push(1);
                                    if(_loc7_ || param3)
                                    {
                                       addr179:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc4_ = § _§;
                                             break;
                                          case 1:
                                             _loc4_ = §,s§;
                                             break;
                                          case 2:
                                             _loc4_ = §!c§;
                                             break;
                                          case 3:
                                             _loc4_ = §-V§;
                                             break;
                                          default:
                                             _loc4_ = §4O§;
                                       }
                                       return new §%0§(param2,param3,_loc4_.§>!Q§,_loc4_.push,_loc4_.§7!F§,_loc4_.damage,param1);
                                       addr178:
                                    }
                                    else
                                    {
                                       addr137:
                                       §§push(_loc5_);
                                       if(!(_loc6_ && param2))
                                       {
                                          addr145:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc7_ || param2)
                                             {
                                                §§goto(addr153);
                                             }
                                          }
                                          else
                                          {
                                             addr169:
                                             if(§%!=§ !== _loc5_)
                                             {
                                                §§goto(addr178);
                                                §§push(4);
                                             }
                                          }
                                          §§goto(addr178);
                                          §§goto(addr178);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr153);
                              }
                              else
                              {
                                 §§push(§-W§);
                                 if(!(_loc6_ && param2))
                                 {
                                    §§goto(addr137);
                                 }
                                 §§goto(addr169);
                              }
                           }
                           §§goto(addr169);
                        }
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr145);
               }
               §§goto(addr169);
            }
            §§goto(addr92);
         }
         §§goto(addr179);
      }
      
      public function get §>!Q§() : Number
      {
         return this.§#u§;
      }
      
      public function get push() : Number
      {
         return this.§]B§;
      }
      
      public function get §7!F§() : Number
      {
         return this.§default§;
      }
      
      public function get damage() : Number
      {
         return this.§`!L§;
      }
      
      public function get type() : int
      {
         return this.§6!'§;
      }
   }
}
