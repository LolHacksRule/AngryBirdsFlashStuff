package com.rovio.assets
{
   public class TextManager
   {
      
      public static const DEBUG_MODE:Boolean = false;
      
      private static var §-!S§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            DEBUG_MODE = false;
         }
      }
      
      public function TextManager()
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_loc5_)
         {
            §-!S§ = new Array();
         }
         var _loc2_:Number = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc6_ && _loc3_))
            {
               if(!_loc6_)
               {
                  if(§§pop() >= param1.length())
                  {
                     if(!(_loc5_ || TextManager))
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §-!S§[_loc3_] = _loc4_;
                           addr111:
                           _loc4_ = §§pop();
                        }
                     }
                     while(!_loc5_)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param1[_loc2_][0]);
                           if(_loc5_)
                           {
                              break;
                           }
                           addr120:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop3;
                           }
                        }
                        §§goto(addr111);
                     }
                     §§push(_loc2_);
                     if(_loc5_ || param1)
                     {
                        addr91:
                        _loc2_ = §§pop() + 1;
                        continue;
                     }
                     §§goto(addr91);
                  }
                  else
                  {
                     §§push(param1[_loc2_].@id);
                  }
                  §§goto(addr120);
               }
            }
            §§goto(addr91);
         }
      }
      
      public static function §5!!§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(DEBUG_MODE);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr135:
                        while(true)
                        {
                           §§push(§-!S§);
                           while(true)
                           {
                              §§push(param1);
                              addr46:
                              while(true)
                              {
                                 §§push(§§pop()[§§pop()] == null);
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 addr76:
                                 if(_loc2_ && TextManager)
                                 {
                                    continue loop1;
                                 }
                              }
                              addr25:
                              §§push(§-!S§);
                              continue loop0;
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(param1);
                                 if(!_loc3_)
                                 {
                                    §§goto(addr46);
                                 }
                                 return §§pop()[§§pop()];
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr25);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr25);
                  }
               }
            }
         }
         §§push("Missing text: ");
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() + param1;
         }
      }
   }
}
