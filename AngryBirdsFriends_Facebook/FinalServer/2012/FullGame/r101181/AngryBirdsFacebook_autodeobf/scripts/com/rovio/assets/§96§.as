package com.rovio.assets
{
   public class §96§
   {
      
      public static const §`!y§:Boolean = false;
      
      private static var §9!m§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §`!y§ = false;
         }
      }
      
      public function §96§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
            §9!m§ = new Array();
         }
         var _loc2_:Number = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() >= param1.length())
                  {
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     if(!(_loc5_ && _loc3_))
                     {
                        break;
                     }
                     while(!_loc6_)
                     {
                        while(_loc5_)
                        {
                           do
                           {
                              §§push(param1[_loc2_][0]);
                           }
                           while(_loc5_ && §96§);
                           
                           _loc4_ = §§pop();
                        }
                        §9!m§[_loc3_] = _loc4_;
                     }
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        addr80:
                        _loc2_ = §§pop() + 1;
                        addr79:
                        continue;
                     }
                     §§goto(addr79);
                  }
                  else
                  {
                     §§push(param1[_loc2_].@id);
                  }
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr126);
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr80);
         }
      }
      
      public static function §-W§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§`!y§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           if(_loc2_)
                           {
                              addr19:
                              §§push(§9!m§);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(param1);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    return §§pop()[§§pop()];
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop()[§§pop()] == null);
                                    if(!(_loc3_ && param1))
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    addr109:
                                    while(true)
                                    {
                                       §§pop();
                                       addr110:
                                       while(true)
                                       {
                                          §§push(§9!m§);
                                       }
                                    }
                                 }
                                 continue loop1;
                                 addr53:
                              }
                              while(true)
                              {
                                 §§goto(addr53);
                                 §§goto(addr19);
                              }
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr19);
                     }
                     addr91:
                     §§push("Missing text: ");
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() + param1);
                     }
                     return §§pop();
                     addr82:
                  }
                  §§goto(addr109);
               }
            }
         }
         §§goto(addr91);
      }
   }
}
