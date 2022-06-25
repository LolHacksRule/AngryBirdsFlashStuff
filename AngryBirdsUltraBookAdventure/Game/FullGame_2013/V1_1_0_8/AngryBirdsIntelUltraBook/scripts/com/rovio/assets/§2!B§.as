package com.rovio.assets
{
   public class §2!B§
   {
      
      public static const §,!S§:Boolean = false;
      
      private static var §0!=§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!S§ = false;
         }
      }
      
      public function §2!B§()
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_loc6_ || _loc3_)
         {
            §0!=§ = new Array();
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(_loc6_)
               {
                  if(§§pop() >= param1.length())
                  {
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(param1[_loc2_][0]);
                              if(!(_loc5_ && param1))
                              {
                                 break;
                              }
                              addr125:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop1;
                              }
                           }
                           _loc4_ = §§pop();
                           while(true)
                           {
                              §0!=§[_loc3_] = _loc4_;
                           }
                           addr117:
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           addr73:
                           while(true)
                           {
                              §§push(§§pop() + 1);
                              if(_loc6_ || _loc3_)
                              {
                                 addr82:
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 addr82:
                              }
                              §§goto(addr82);
                           }
                        }
                     }
                     while(_loc5_)
                     {
                        §§goto(addr117);
                     }
                     continue;
                  }
                  §§push(param1[_loc2_].@id);
                  §§goto(addr125);
               }
               §§goto(addr73);
            }
            §§goto(addr82);
         }
      }
      
      public static function §5Q§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(§,!S§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr100:
                        addr58:
                        loop2:
                        while(true)
                        {
                           §§push(§0!=§);
                           addr52:
                           while(true)
                           {
                              §§push(param1);
                              addr53:
                              while(true)
                              {
                                 §§push(§§pop()[§§pop()] == null);
                                 if(!_loc3_)
                                 {
                                    break loop2;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop5;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     addr99:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr74);
                        }
                        if(!_loc3_)
                        {
                           addr24:
                           §§push(§0!=§);
                           if(_loc2_ || §2!B§)
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                                 return §§pop()[§§pop()];
                              }
                              §§goto(addr53);
                           }
                           §§goto(addr52);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr24);
                     §§goto(addr58);
                  }
                  continue;
               }
               §§goto(addr99);
            }
         }
         addr74:
         §§push("Missing text: ");
         if(!(_loc3_ && _loc3_))
         {
            return §§pop() + param1;
         }
      }
   }
}
