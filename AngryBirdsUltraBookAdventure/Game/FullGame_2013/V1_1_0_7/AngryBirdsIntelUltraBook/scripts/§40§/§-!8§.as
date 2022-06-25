package §40§
{
   public class §-!8§
   {
      
      public static const §6!K§:String = "damage";
      
      public static const §const§:String = "removed";
      
      public static const §'!b§:String = "extraBird";
      
      private static var §?#§:Array;
      
      private static var §+H§:Array;
      
      private static var §]!§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §6!K§ = "damage";
            while(true)
            {
               §const§ = "removed";
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            §'!b§ = "extraBird";
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §-!8§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            do
            {
               init();
            }
            while(!_loc1_);
            
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?#§ = [];
         }
         do
         {
            §+H§ = [];
            do
            {
               §]!§ = [];
            }
            while(!(_loc1_ || _loc2_));
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            if(param1 == 0)
            {
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr106);
               }
            }
            var _loc3_:* = param2;
            if(_loc5_ || _loc3_)
            {
               §§push(§6!K§);
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           addr129:
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr167:
                           }
                        }
                        else
                        {
                           addr164:
                           §§push(2);
                           if(_loc5_)
                           {
                              §§goto(addr167);
                           }
                        }
                        §§goto(addr172);
                     }
                     else
                     {
                        §§push(§const§);
                        if(!(_loc4_ && §-!8§))
                        {
                           §§goto(addr151);
                        }
                        §§goto(addr162);
                     }
                  }
                  §§goto(addr154);
               }
               addr151:
               §§push(_loc3_);
               if(!_loc4_)
               {
                  addr154:
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        §§goto(addr164);
                     }
                     §§goto(addr172);
                  }
                  else
                  {
                     addr162:
                     §§push(§'!b§);
                     §§push(_loc3_);
                  }
                  §§goto(addr164);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr164);
               }
               else
               {
                  §§push(3);
               }
               addr172:
               switch(§§pop())
               {
                  case 0:
                     addr92:
                     §?#§.push(param1);
                     addr91:
                     if(_loc5_)
                     {
                        addr56:
                        break;
                     }
                     break;
                  case 1:
                     addr60:
                     §§push(§+H§);
                     if(!(_loc4_ && param2))
                     {
                        addr68:
                        §§push(param1);
                        if(_loc5_ || _loc3_)
                        {
                           §§pop().push(§§pop());
                           break;
                           addr86:
                        }
                     }
                     else
                     {
                        §§goto(addr91);
                     }
                     §§goto(addr92);
                  case 2:
                     §§push(§]!§);
                     if(_loc5_)
                     {
                        §§push(param1);
                        if(_loc5_ || §-!8§)
                        {
                           §§pop().push(§§pop());
                           if(!(_loc4_ && §-!8§))
                           {
                              if(!(_loc4_ && param1))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr86);
                              }
                           }
                           break;
                        }
                        §§goto(addr68);
                        §§goto(addr56);
                     }
                     else
                     {
                        §§goto(addr60);
                     }
               }
               return;
            }
            §§goto(addr129);
         }
         addr106:
      }
      
      public static function §#$§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(!(_loc2_ && §-!8§))
         {
            §§push(§?#§);
            loop0:
            while(true)
            {
               §§push(§§pop().toString());
               addr172:
               while(true)
               {
                  _loc1_ = §§pop();
               }
               loop3:
               while(true)
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop().length > 0)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(_loc1_);
                           loop5:
                           while(!(_loc2_ && _loc3_))
                           {
                              §§push(",0,");
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr167:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr168:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       addr129:
                                       while(true)
                                       {
                                          §§push(§+H§);
                                          addr130:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop().toString());
                                             addr133:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                addr144:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    §§push(",0,");
                                    if(!(_loc3_ || §-!8§))
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc2_ && §-!8§))
                                    {
                                       _loc1_ = §§pop();
                                       loop16:
                                       while(!(_loc2_ && §-!8§))
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(_loc1_);
                                                while(true)
                                                {
                                                   if(_loc3_ || §-!8§)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(§]!§);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() + §§pop().toString());
                                                            while(!_loc2_)
                                                            {
                                                               _loc1_ = §§pop();
                                                               if(!(_loc3_ || §-!8§))
                                                               {
                                                                  continue loop16;
                                                               }
                                                               addr70:
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§goto(addr31);
                                                                        }
                                                                        §§goto(addr60);
                                                                     }
                                                                     addr27:
                                                                  }
                                                                  §§goto(addr144);
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop15;
                                                                  §§goto(addr70);
                                                               }
                                                               §§goto(addr173);
                                                               continue loop16;
                                                            }
                                                            §§goto(addr129);
                                                            addr60:
                                                         }
                                                         §§goto(addr130);
                                                      }
                                                      break;
                                                   }
                                                   continue loop15;
                                                   addr31:
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                §§goto(addr133);
                                             }
                                             else
                                             {
                                                addr173:
                                                while(true)
                                                {
                                                }
                                                addr173:
                                             }
                                             §§push(§+H§);
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr167);
                                    }
                                    §§goto(addr168);
                                 }
                              }
                           }
                           §§goto(addr172);
                        }
                     }
                     while(true)
                     {
                        §§push(§]!§);
                        if(_loc2_)
                        {
                           break;
                        }
                        if(§§pop().length > 0)
                        {
                           §§goto(addr97);
                        }
                        §§goto(addr27);
                        §§goto(addr144);
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr173);
      }
   }
}
