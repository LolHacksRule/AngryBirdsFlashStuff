package com.rovio.assets
{
   public class §#h§
   {
      
      public static const §?!2§:Boolean = false;
      
      private static var §#"§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?!2§ = false;
         }
      }
      
      public function §#h§()
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_loc5_)
         {
            §#"§ = new Array();
         }
         var _loc2_:Number = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(!(_loc6_ && _loc2_))
               {
                  if(§§pop() >= param1.length())
                  {
                     if(_loc6_ && param1)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(param1[_loc2_][0]);
                           if(!_loc6_)
                           {
                              break;
                           }
                           addr119:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop1;
                           }
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §#"§[_loc3_] = _loc4_;
                        }
                        addr101:
                     }
                     while(!_loc5_)
                     {
                        §§goto(addr101);
                     }
                     §§push(_loc2_);
                     if(!_loc6_)
                     {
                        addr81:
                        _loc2_ = §§pop() + 1;
                        continue;
                     }
                     §§goto(addr81);
                  }
                  else
                  {
                     §§push(param1[_loc2_].@id);
                  }
                  §§goto(addr119);
               }
            }
            §§goto(addr81);
         }
      }
      
      public static function getText(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§?!2§);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr98:
                        while(true)
                        {
                           §§push(§#"§);
                           addr37:
                           loop3:
                           while(true)
                           {
                              §§push(param1);
                              addr38:
                              while(true)
                              {
                                 §§push(§§pop()[§§pop()] == null);
                                 if(_loc2_ || _loc2_)
                                 {
                                    break loop3;
                                 }
                                 continue loop5;
                              }
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           continue loop5;
                        }
                     }
                     addr97:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           if(_loc2_ || _loc3_)
                           {
                              return "Missing text: " + param1;
                           }
                           §§goto(addr98);
                        }
                        else
                        {
                           while(true)
                           {
                              addr19:
                              while(true)
                              {
                                 §§push(§#"§);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(param1);
                                    if(_loc2_)
                                    {
                                       return §§pop()[§§pop()];
                                    }
                                    §§goto(addr38);
                                 }
                              }
                           }
                           addr90:
                        }
                        §§goto(addr37);
                     }
                     §§goto(addr19);
                  }
               }
            }
            §§goto(addr97);
         }
         §§goto(addr90);
      }
   }
}
