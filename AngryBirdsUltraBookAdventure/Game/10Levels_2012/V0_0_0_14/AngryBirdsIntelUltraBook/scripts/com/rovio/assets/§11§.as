package com.rovio.assets
{
   public class §11§
   {
      
      public static const §@l§:Boolean = false;
      
      private static var §`!d§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §11§)
         {
            §@l§ = false;
         }
      }
      
      public function §11§()
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!(_loc6_ && §11§))
         {
            §`!d§ = new Array();
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_ || param1)
            {
               if(!_loc6_)
               {
                  if(§§pop() >= param1.length())
                  {
                     if(_loc5_)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           break;
                        }
                        while(true)
                        {
                           §`!d§[_loc3_] = _loc4_;
                           addr93:
                           while(_loc5_ || §11§)
                           {
                              §§push(_loc2_);
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr83:
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr84:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                                 addr83:
                              }
                              §§goto(addr83);
                           }
                           loop3:
                           while(true)
                           {
                              §§push(param1[_loc2_][0]);
                              if(!(_loc6_ && §11§))
                              {
                                 break;
                              }
                              addr134:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop3;
                              }
                           }
                           _loc4_ = §§pop();
                        }
                     }
                     while(!_loc5_)
                     {
                        §§goto(addr93);
                     }
                     continue;
                  }
                  §§push(param1[_loc2_].@id);
                  §§goto(addr134);
               }
               §§goto(addr83);
            }
            §§goto(addr84);
         }
      }
      
      public static function §%!i§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(§@l§);
            if(_loc2_ || _loc3_)
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
                        addr105:
                        while(true)
                        {
                           §§push(§`!d§);
                           addr37:
                           while(true)
                           {
                              §§push(param1);
                              addr38:
                              while(true)
                              {
                                 §§push(§§pop()[§§pop()] == null);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                     addr104:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || §11§)
                        {
                           §§push("Missing text: ");
                           if(_loc2_)
                           {
                              return §§pop() + param1;
                           }
                        }
                        if(_loc3_ && §11§)
                        {
                        }
                        §§goto(addr105);
                     }
                     §§push(§`!d§);
                     if(!_loc3_)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           return §§pop()[§§pop()];
                        }
                        §§goto(addr38);
                     }
                     §§goto(addr37);
                  }
               }
            }
            §§goto(addr104);
         }
         §§goto(addr105);
      }
   }
}
