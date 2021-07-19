package §0v§
{
   public class §##§
   {
      
      public static const §!l§:Boolean = false;
      
      private static var §^a§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!l§ = false;
         }
      }
      
      public function §##§()
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
         if(_loc6_)
         {
            §^a§ = new Array();
         }
         var _loc2_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(!(_loc5_ && param1))
               {
                  if(§§pop() >= param1.length())
                  {
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(param1[_loc2_][0]);
                           if(_loc6_ || param1)
                           {
                              break;
                           }
                           addr135:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop1;
                           }
                        }
                        _loc4_ = §§pop();
                        loop2:
                        while(true)
                        {
                           §^a§[_loc3_] = _loc4_;
                           addr94:
                           while(!(_loc6_ || _loc3_))
                           {
                              continue loop2;
                           }
                           §§push(_loc2_);
                           addr86:
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc2_ = §§pop();
                           continue loop0;
                        }
                     }
                     §§goto(addr94);
                  }
                  else
                  {
                     §§push(param1[_loc2_].@id);
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr86);
         }
      }
      
      public static function getText(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§!l§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr104:
                        loop1:
                        while(true)
                        {
                           §§push(§^a§);
                           addr38:
                           while(true)
                           {
                              §§push(param1);
                              addr39:
                              while(true)
                              {
                                 §§push(§§pop()[§§pop()] == null);
                                 if(!(_loc2_ && §##§))
                                 {
                                    break loop1;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop4;
                        }
                     }
                     addr103:
                  }
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           return "Missing text: " + param1;
                        }
                        if(_loc3_)
                        {
                           while(true)
                           {
                              addr20:
                              while(true)
                              {
                                 §§push(§^a§);
                                 if(!(_loc2_ && §##§))
                                 {
                                    §§push(param1);
                                    if(_loc3_)
                                    {
                                       break loop0;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           addr74:
                        }
                        else
                        {
                           §§goto(addr104);
                        }
                        §§goto(addr38);
                     }
                     §§goto(addr20);
                  }
                  return §§pop()[§§pop()];
               }
            }
            §§goto(addr103);
         }
         §§goto(addr74);
      }
   }
}
