package com.rovio.assets
{
   public class §1!8§
   {
      
      public static const §-c§:Boolean = false;
      
      private static var §9!&§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §-c§ = false;
         }
      }
      
      public function §1!8§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
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
            §9!&§ = new Array();
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
                     if(!_loc5_)
                     {
                        if(_loc6_ || §1!8§)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(param1[_loc2_][0]);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    break;
                                 }
                                 addr120:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    continue loop2;
                                 }
                              }
                              _loc4_ = §§pop();
                              continue;
                           }
                           §§push(_loc2_);
                           if(_loc6_ || param1)
                           {
                              §§push(§§pop() + 1);
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr75:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                              }
                              addr74:
                           }
                           §§goto(addr75);
                        }
                     }
                     while(!_loc6_)
                     {
                        §§goto(addr112);
                     }
                     continue;
                  }
                  §§push(param1[_loc2_].@id);
                  §§goto(addr120);
               }
               §§goto(addr74);
            }
            §§goto(addr75);
         }
      }
      
      public static function §null §(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(§-c§);
            if(_loc3_ || §1!8§)
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
                           if(!(_loc2_ && param1))
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr92);
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(§9!&§);
                                 addr115:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop2;
                                 }
                              }
                           }
                           else
                           {
                              addr25:
                              §§push(§9!&§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(param1);
                                 if(!_loc2_)
                                 {
                                    return §§pop()[§§pop()];
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop()[§§pop()] == null);
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr115);
                                 }
                                 addr54:
                              }
                           }
                           while(true)
                           {
                              §§goto(addr54);
                           }
                           continue loop0;
                        }
                        §§goto(addr25);
                     }
                     continue;
                     addr66:
                  }
               }
            }
            §§goto(addr115);
         }
         addr92:
         §§push("Missing text: ");
         if(!(_loc2_ && param1))
         {
            return §§pop() + param1;
         }
      }
   }
}
