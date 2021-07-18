package §1!K§
{
   public class §;'§
   {
      
      public static const §[f§:Boolean = false;
      
      private static var §,!L§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[f§ = false;
         }
      }
      
      public function §;'§()
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!_loc6_)
         {
            §,!L§ = new Array();
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() >= param1.length())
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  loop1:
                  for(; _loc6_ && param1; while(true)
                  {
                     _loc2_ = §§pop();
                     continue loop1;
                  })
                  {
                     while(true)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           loop3:
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
                                 continue loop3;
                              }
                           }
                           _loc4_ = §§pop();
                        }
                        §,!L§[_loc3_] = _loc4_;
                     }
                     §§push(_loc2_);
                     if(!(_loc6_ && §;'§))
                     {
                        §§push(§§pop() + 1);
                        if(_loc6_)
                        {
                           continue;
                        }
                     }
                     §§push(Number(§§pop()));
                  }
                  continue;
               }
               §§push(param1[_loc2_].@id);
               §§goto(addr119);
            }
            §§goto(addr67);
         }
      }
      
      public static function getText(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§[f§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              return "Missing text: " + param1;
                           }
                           addr98:
                           if(_loc3_)
                           {
                           }
                           loop6:
                           while(true)
                           {
                              §§push(§,!L§);
                              addr37:
                              while(true)
                              {
                                 §§push(param1);
                                 addr38:
                                 while(true)
                                 {
                                    §§push(§§pop()[§§pop()] == null);
                                    if(!(_loc3_ && param1))
                                    {
                                       break;
                                    }
                                    addr97:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop6;
                                    }
                                 }
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    break loop3;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§push(§,!L§);
                        if(_loc2_)
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
                     continue;
                     addr72:
                  }
                  §§goto(addr97);
               }
            }
         }
         §§goto(addr98);
      }
   }
}
