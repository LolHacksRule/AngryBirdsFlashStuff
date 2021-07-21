package §5!V§
{
   public class §]"%§
   {
      
      public static const §>!%§:String = "damage";
      
      public static const §-!R§:String = "removed";
      
      public static const §9"?§:String = "extraBird";
      
      private static var §2!?§:Array;
      
      private static var §5o§:Array;
      
      private static var §;@§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>!%§ = "damage";
            while(true)
            {
               §-!R§ = "removed";
               while(_loc1_ || _loc1_)
               {
                  §9"?§ = "extraBird";
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §]"%§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2!?§ = [];
            do
            {
               §5o§ = [];
               do
               {
                  §;@§ = [];
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §]"%§))
         {
            if(param1 == 0)
            {
               if(!_loc4_)
               {
                  §§goto(addr96);
               }
            }
            var _loc3_:* = param2;
            if(!_loc4_)
            {
               §§push(§>!%§);
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc4_ && param2)
                           {
                              addr150:
                           }
                        }
                        else
                        {
                           addr154:
                           §§push(2);
                           if(!_loc5_)
                           {
                           }
                        }
                        §§goto(addr172);
                     }
                     else
                     {
                        §§push(§-!R§);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(!(_loc4_ && param2))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && param2))
                                 {
                                    addr142:
                                    §§push(1);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§goto(addr150);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr154);
                                 }
                                 §§goto(addr172);
                              }
                              else
                              {
                                 §§goto(addr153);
                              }
                           }
                        }
                        §§goto(addr153);
                     }
                  }
                  §§goto(addr153);
               }
               addr153:
               if(§9"?§ === _loc3_)
               {
                  §§goto(addr154);
               }
               else
               {
                  §§push(3);
               }
               addr172:
               switch(§§pop())
               {
                  case 0:
                     addr89:
                     §2!?§.push(param1);
                     break;
                     addr78:
                     addr90:
                  case 1:
                     addr55:
                     §§push(§5o§);
                     if(_loc5_ || _loc3_)
                     {
                        addr63:
                        §§push(param1);
                        if(!(_loc4_ && param1))
                        {
                           §§pop().push(§§pop());
                           if(!_loc4_)
                           {
                              break;
                           }
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr78);
                     }
                     §§goto(addr89);
                  case 2:
                     §§push(§;@§);
                     if(_loc5_)
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§pop().push(§§pop());
                           if(!(_loc4_ && param2))
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
                                 §§goto(addr90);
                              }
                              §§goto(addr89);
                           }
                           break;
                        }
                        §§goto(addr63);
                        §§goto(addr89);
                     }
                     else
                     {
                        §§goto(addr55);
                     }
               }
               return;
            }
            §§goto(addr142);
         }
         addr96:
      }
      
      public static function §4x§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc3_ && _loc1_))
         {
            §§push(§2!?§);
            loop0:
            while(true)
            {
               §§push(§§pop().toString());
               loop1:
               while(true)
               {
                  _loc1_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(§5o§);
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              loop5:
                              while(_loc2_)
                              {
                                 §§push(",0,");
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr176:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       addr177:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          addr148:
                                          while(true)
                                          {
                                             §§push(§5o§);
                                             addr149:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop().toString());
                                                addr152:
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   addr153:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr126:
                                    §§push(",0,");
                                    if(_loc3_ && §]"%§)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_)
                                    {
                                       _loc1_ = §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          if(!(_loc2_ || _loc1_))
                                          {
                                             continue loop4;
                                          }
                                          §§push(_loc1_);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(§;@§);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() + §§pop().toString());
                                                loop13:
                                                while(_loc2_)
                                                {
                                                   continue loop11;
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         continue loop12;
                                                      }
                                                      continue loop13;
                                                   }
                                                   return §§pop();
                                                }
                                                while(!(_loc3_ && _loc3_))
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(_loc3_ && §]"%§)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§goto(addr126);
                                                   }
                                                   §§goto(addr148);
                                                }
                                                §§goto(addr152);
                                                addr105:
                                             }
                                             break;
                                          }
                                          §§goto(addr149);
                                       }
                                    }
                                    §§goto(addr176);
                                 }
                              }
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           §§push(§;@§);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           if(§§pop().length > 0)
                           {
                              §§goto(addr80);
                           }
                           §§goto(addr26);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr177);
      }
   }
}
