package com.rovio.assets
{
   public class §34§
   {
      
      public static const §#3§:Boolean = false;
      
      private static var §26§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#3§ = false;
         }
      }
      
      public function §34§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
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
         if(_loc6_)
         {
            §26§ = new Array();
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               if(_loc6_)
               {
                  if(§§pop() >= param1.length())
                  {
                     if(_loc6_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(param1[_loc2_][0]);
                           if(_loc6_)
                           {
                              break;
                           }
                           addr115:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop1;
                           }
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §26§[_loc3_] = _loc4_;
                           addr86:
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc6_)
                              {
                                 addr69:
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr70:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       continue loop3;
                                    }
                                 }
                                 addr69:
                              }
                              §§goto(addr69);
                           }
                        }
                        addr97:
                     }
                     while(true)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr86);
                     }
                     continue;
                  }
                  §§push(param1[_loc2_].@id);
                  §§goto(addr115);
               }
               §§goto(addr69);
            }
            §§goto(addr70);
         }
      }
      
      public static function getText(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§#3§);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr93:
                        while(true)
                        {
                           §§push(§26§);
                           addr37:
                           while(true)
                           {
                              §§push(param1);
                              addr48:
                              while(true)
                              {
                                 §§push(§§pop()[§§pop()] == null);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                     addr92:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || §34§)
                        {
                           return "Missing text: " + param1;
                        }
                        if(_loc2_ || §34§)
                        {
                        }
                        §§goto(addr93);
                     }
                     §§push(§26§);
                     if(_loc2_ || param1)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           return §§pop()[§§pop()];
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr37);
                  }
               }
            }
            §§goto(addr92);
         }
         §§goto(addr93);
      }
   }
}
