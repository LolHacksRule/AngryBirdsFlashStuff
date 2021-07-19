package com.rovio.assets
{
   public class §[!z§
   {
      
      public static const §7F§:Boolean = false;
      
      private static var §`!L§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7F§ = false;
         }
      }
      
      public function §[!z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!(_loc6_ && _loc3_))
         {
            §`!L§ = new Array();
         }
         var _loc2_:Number = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() >= param1.length())
               {
                  if(_loc5_ || §[!z§)
                  {
                     break;
                  }
                  while(true)
                  {
                     if(_loc5_)
                     {
                        if(_loc5_ || §[!z§)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(param1[_loc2_][0]);
                           if(_loc5_ || param1)
                           {
                              break;
                           }
                           addr139:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop2;
                           }
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §`!L§[_loc3_] = _loc4_;
                        }
                        addr121:
                     }
                     while(!_loc5_)
                     {
                        §§goto(addr121);
                     }
                     §§push(_loc2_);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(§§pop() + 1);
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                     }
                     §§push(Number(§§pop()));
                  }
                  continue;
               }
               §§push(param1[_loc2_].@id);
               §§goto(addr139);
            }
            §§goto(addr87);
         }
      }
      
      public static function §2! §(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §[!z§)
         {
            §§push(§7F§);
            if(_loc3_ || param1)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr109:
                        loop1:
                        while(true)
                        {
                           §§push(§`!L§);
                           addr58:
                           while(true)
                           {
                              §§push(param1);
                              addr59:
                              while(true)
                              {
                                 §§push(§§pop()[§§pop()] == null);
                                 if(!(_loc2_ && §[!z§))
                                 {
                                    break loop1;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop4;
                        }
                     }
                     addr108:
                  }
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || §[!z§)
                        {
                           return "Missing text: " + param1;
                        }
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              addr25:
                              while(true)
                              {
                                 §§push(§`!L§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(param1);
                                    if(!(_loc2_ && §[!z§))
                                    {
                                       break loop0;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           addr84:
                        }
                        else
                        {
                           §§goto(addr109);
                        }
                        §§goto(addr58);
                     }
                     §§goto(addr25);
                  }
                  return §§pop()[§§pop()];
               }
            }
            §§goto(addr108);
         }
         §§goto(addr84);
      }
   }
}
