package com.rovio.assets
{
   public class §_-0BK§
   {
      
      public static const §_-na§:Boolean = false;
      
      private static var §_-0Cs§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-na§ = false;
         }
      }
      
      public function §_-0BK§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!(_loc5_ && _loc3_))
         {
            §_-0Cs§ = new Array();
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_ || _loc2_)
            {
               if(§§pop() >= param1.length())
               {
                  if(_loc6_ || §_-0BK§)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(_loc5_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc5_)
                           {
                              addr80:
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                              addr80:
                           }
                        }
                        §§goto(addr80);
                     }
                  }
                  while(_loc5_)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(param1[_loc2_][0]);
                        if(!(_loc5_ && param1))
                        {
                           break;
                        }
                        addr130:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           continue loop3;
                        }
                     }
                     _loc4_ = §§pop();
                     §§goto(addr122);
                  }
                  continue;
               }
               §§push(param1[_loc2_].@id);
               §§goto(addr130);
            }
            §§goto(addr80);
         }
      }
      
      public static function §_-06e§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§_-na§);
            if(_loc3_ || param1)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              if(!(_loc2_ && §_-0BK§))
                              {
                                 §§push("Missing text: ");
                                 if(_loc3_ || param1)
                                 {
                                    return §§pop() + param1;
                                 }
                              }
                              addr111:
                              addr111:
                              while(true)
                              {
                                 §§push(§_-0Cs§);
                              }
                              addr111:
                           }
                           else
                           {
                              addr20:
                              §§push(§_-0Cs§);
                              if(!(_loc2_ && §_-0BK§))
                              {
                                 §§push(param1);
                                 if(_loc3_)
                                 {
                                    return §§pop()[§§pop()];
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop()[§§pop()] == null);
                                    if(_loc3_ || param1)
                                    {
                                       continue loop0;
                                    }
                                    addr110:
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr111);
                                    }
                                    addr38:
                                    while(true)
                                    {
                                       continue loop3;
                                       §§goto(addr111);
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr38);
                        }
                        §§goto(addr20);
                     }
                     continue;
                     addr66:
                  }
               }
            }
            §§goto(addr110);
         }
         §§goto(addr111);
      }
   }
}
