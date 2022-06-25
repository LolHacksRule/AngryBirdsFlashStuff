package com.rovio.assets
{
   public class §-!D§
   {
      
      public static const §??§:Boolean = false;
      
      private static var §7!D§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §??§ = false;
         }
      }
      
      public function §-!D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
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
         if(!_loc5_)
         {
            §7!D§ = new Array();
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() < param1.length())
               {
                  §§push(param1[_loc2_].@id);
                  if(_loc6_ || §-!D§)
                  {
                     _loc3_ = §§pop();
                     if(_loc5_ && param1)
                     {
                        break;
                     }
                     §§push(param1[_loc2_][0]);
                  }
                  _loc4_ = §§pop();
                  if(!(_loc6_ || §-!D§))
                  {
                     break;
                  }
                  §7!D§[_loc3_] = _loc4_;
                  if(!(_loc5_ && §-!D§))
                  {
                     §§push(_loc2_);
                     if(_loc5_ && §-!D§)
                     {
                        continue;
                     }
                     §§push(§§pop() + 1);
                     if(_loc5_)
                     {
                        continue;
                     }
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        continue;
                     }
                     _loc2_ = §§pop();
                     if(_loc6_ || §-!D§)
                     {
                        break;
                     }
                  }
               }
               return;
            }
         }
      }
      
      public static function §6"§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§??§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        §§pop();
                        if(!(_loc3_ && §-!D§))
                        {
                           addr56:
                           §§push(§7!D§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(param1);
                              if(!(_loc3_ && param1))
                              {
                                 addr85:
                                 if(§§pop()[§§pop()] == null)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr88);
                                    }
                                 }
                                 addr95:
                                 §§push(§7!D§);
                                 §§push(param1);
                              }
                              return §§pop()[§§pop()];
                           }
                           §§goto(addr95);
                        }
                        addr88:
                        §§push("Missing text: ");
                        if(!_loc3_)
                        {
                           return §§pop() + param1;
                        }
                     }
                  }
               }
            }
            §§goto(addr85);
         }
         §§goto(addr56);
      }
   }
}
