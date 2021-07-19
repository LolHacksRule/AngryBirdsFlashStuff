package com.rovio.assets
{
   public class §8!o§
   {
      
      public static const §#"'§:Boolean = false;
      
      private static var §-X§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §8!o§))
         {
            §#"'§ = false;
         }
      }
      
      public function §8!o§()
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
         if(!(_loc5_ && _loc2_))
         {
            §-X§ = new Array();
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
                        if(_loc6_ || _loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §-X§[_loc3_] = _loc4_;
                           addr89:
                           loop2:
                           while(_loc6_)
                           {
                              §§push(_loc2_);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr75:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       continue loop2;
                                    }
                                 }
                                 addr74:
                              }
                              §§goto(addr75);
                           }
                           loop3:
                           while(true)
                           {
                              §§push(param1[_loc2_][0]);
                              if(_loc6_)
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
                           _loc4_ = §§pop();
                        }
                     }
                     while(!(_loc6_ || _loc2_))
                     {
                        §§goto(addr89);
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
      
      public static function §3!f§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§#"'§);
            if(!(_loc3_ && §8!o§))
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
                           if(_loc2_ || §8!o§)
                           {
                              if(_loc2_)
                              {
                                 return "Missing text: " + param1;
                              }
                              addr98:
                              addr98:
                              while(true)
                              {
                                 §§push(§-X§);
                              }
                              addr98:
                           }
                           else
                           {
                              addr19:
                              §§push(§-X§);
                              if(!(_loc3_ && §8!o§))
                              {
                                 §§push(param1);
                                 if(_loc2_)
                                 {
                                    return §§pop()[§§pop()];
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop()[§§pop()] == null);
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    addr97:
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr98);
                                    }
                                    addr37:
                                    while(true)
                                    {
                                       continue loop3;
                                       §§goto(addr98);
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr37);
                        }
                        §§goto(addr19);
                     }
                     continue;
                     addr60:
                  }
               }
            }
            §§goto(addr97);
         }
         §§goto(addr98);
      }
   }
}
