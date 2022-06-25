package com.rovio.assets
{
   public class §3!0§
   {
      
      public static const §=!L§:Boolean = false;
      
      private static var § !>§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!L§ = false;
         }
      }
      
      public function §3!0§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
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
         if(_loc6_ || param1)
         {
            § !>§ = new Array();
         }
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < param1.length())
            {
               §§push(param1[_loc2_].@id);
               if(!_loc5_)
               {
                  _loc3_ = §§pop();
                  if(!_loc6_)
                  {
                     continue loop0;
                  }
                  §§push(param1[_loc2_][0]);
               }
               _loc4_ = §§pop();
               if(_loc6_ || _loc2_)
               {
                  § !>§[_loc3_] = _loc4_;
                  if(!_loc6_)
                  {
                     continue loop0;
                  }
               }
               §§push(_loc2_);
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc6_)
                  {
                     continue;
                  }
                  §§push(Number(§§pop()));
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
               }
               _loc2_ = §§pop();
               if(!(_loc6_ || _loc3_))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public static function §'Y§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(§=!L§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || _loc2_)
               {
                  addr50:
                  if(§§pop())
                  {
                     if(_loc3_ || §3!0§)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           addr62:
                           §§push(§ !>§);
                           if(!_loc2_)
                           {
                              §§push(param1);
                              if(!_loc2_)
                              {
                                 addr81:
                                 if(§§pop()[§§pop()] == null)
                                 {
                                    if(!(_loc2_ && §3!0§))
                                    {
                                       §§push("Missing text: ");
                                       if(_loc3_ || §3!0§)
                                       {
                                          return §§pop() + param1;
                                       }
                                    }
                                    addr100:
                                    §§push(§ !>§);
                                    §§push(param1);
                                 }
                                 §§goto(addr100);
                              }
                              return §§pop()[§§pop()];
                           }
                        }
                        §§goto(addr100);
                     }
                  }
               }
               §§goto(addr81);
            }
            §§goto(addr50);
         }
         §§goto(addr62);
      }
   }
}
