package com.rovio.assets
{
   public class §8!=§
   {
      
      public static const §+6§:Boolean = false;
      
      private static var §+n§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §+6§ = false;
         }
      }
      
      public function §8!=§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:String = null;
         if(!(_loc6_ && _loc2_))
         {
            §+n§ = new Array();
         }
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() >= param1.length())
               {
                  if(!_loc6_)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §+n§[_loc3_] = _loc4_;
                        loop2:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              addr74:
                              §§push(§§pop() + 1);
                              if(_loc6_)
                              {
                              }
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr85:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          §§push(param1[_loc2_][0]);
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          addr114:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             continue loop4;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                              addr74:
                           }
                           §§goto(addr74);
                        }
                     }
                  }
                  §§goto(addr85);
               }
               else
               {
                  §§push(param1[_loc2_].@id);
               }
               §§goto(addr114);
            }
            §§goto(addr74);
         }
      }
      
      public static function §&!>§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§+6§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  addr97:
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§goto(addr100);
                     }
                     addr99:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           if(!(_loc2_ || §8!=§))
                           {
                              addr100:
                           }
                           §§goto(addr79);
                        }
                        else
                        {
                           addr19:
                           §§push(§+n§);
                           if(_loc2_)
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                                 return §§pop()[§§pop()];
                              }
                              §§goto(addr33);
                           }
                        }
                        §§goto(addr32);
                     }
                     §§goto(addr19);
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr97);
         }
         addr79:
         while(true)
         {
            §§push(§+n§);
            addr32:
            while(true)
            {
               §§push(param1);
               continue loop0;
            }
         }
         §§push("Missing text: ");
         if(!_loc3_)
         {
            return §§pop() + param1;
         }
      }
   }
}
