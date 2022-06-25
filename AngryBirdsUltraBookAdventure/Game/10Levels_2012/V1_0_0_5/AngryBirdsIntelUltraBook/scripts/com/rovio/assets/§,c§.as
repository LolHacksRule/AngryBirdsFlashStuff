package com.rovio.assets
{
   public class §,c§
   {
      
      public static const §,!$§:Boolean = false;
      
      private static var §'!o§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §,!$§ = false;
         }
      }
      
      public function §,c§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
         if(!(_loc6_ && _loc2_))
         {
            §'!o§ = new Array();
         }
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() >= param1.length())
               {
                  if(!_loc6_)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc6_ && _loc3_))
                        {
                           addr79:
                           §§push(§§pop() + 1);
                           if(_loc5_ || §,c§)
                           {
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr90:
                              while(_loc6_)
                              {
                                 while(_loc6_)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(param1[_loc2_][0]);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       addr119:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          continue loop4;
                                       }
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           addr79:
                        }
                        §§goto(addr79);
                     }
                  }
                  §§goto(addr90);
               }
               else
               {
                  §§push(param1[_loc2_].@id);
               }
               §§goto(addr119);
            }
            §§goto(addr79);
         }
      }
      
      public static function §%!o§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(§,!$§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && §,c§))
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr101:
                        loop5:
                        while(true)
                        {
                           §§push(§'!o§);
                           addr48:
                           addr59:
                           loop2:
                           while(true)
                           {
                              §§push(param1);
                              addr49:
                              while(true)
                              {
                                 §§push(§§pop()[§§pop()] == null);
                                 if(_loc3_ || _loc2_)
                                 {
                                    break loop2;
                                 }
                                 continue loop4;
                              }
                              continue loop5;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr100:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           if(_loc3_)
                           {
                              §§push("Missing text: ");
                              if(_loc3_ || _loc3_)
                              {
                                 return §§pop() + param1;
                              }
                           }
                           §§goto(addr101);
                        }
                        else
                        {
                           addr25:
                           §§push(§'!o§);
                           if(!_loc2_)
                           {
                              §§push(param1);
                              if(!_loc2_)
                              {
                                 return §§pop()[§§pop()];
                              }
                              §§goto(addr49);
                           }
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr25);
                     §§goto(addr59);
                  }
                  continue;
               }
               §§goto(addr100);
            }
         }
         §§goto(addr101);
      }
   }
}
