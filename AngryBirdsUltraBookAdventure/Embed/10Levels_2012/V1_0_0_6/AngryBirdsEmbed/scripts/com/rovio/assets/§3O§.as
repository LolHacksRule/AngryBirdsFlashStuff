package com.rovio.assets
{
   public class §3O§
   {
      
      public static const §<!+§:Boolean = false;
      
      private static var §`b§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<!+§ = false;
         }
      }
      
      public function §3O§()
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
            §`b§ = new Array();
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
                  if(_loc6_ || §3O§)
                  {
                     _loc3_ = §§pop();
                     if(_loc5_ && param1)
                     {
                        break;
                     }
                     §§push(param1[_loc2_][0]);
                  }
                  _loc4_ = §§pop();
                  if(!(_loc6_ || §3O§))
                  {
                     break;
                  }
                  §`b§[_loc3_] = _loc4_;
                  if(!(_loc5_ && §3O§))
                  {
                     §§push(_loc2_);
                     if(_loc5_ && §3O§)
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
                     if(_loc6_ || §3O§)
                     {
                        break;
                     }
                  }
               }
               return;
            }
         }
      }
      
      public static function §<!A§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§<!+§);
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
                        if(!(_loc3_ && §3O§))
                        {
                           addr56:
                           §§push(§`b§);
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
                                 §§push(§`b§);
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
