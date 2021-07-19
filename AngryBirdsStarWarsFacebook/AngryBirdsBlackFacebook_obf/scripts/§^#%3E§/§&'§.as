package §^#>§
{
   public class §&'§
   {
      
      public static const §'#?§:String = "damage";
      
      public static const §8#'§:String = "removed";
      
      public static const §1!W§:String = "extraBird";
      
      private static var §%!o§:Array;
      
      private static var §?"<§:Array;
      
      private static var §>"L§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'#?§ = "damage";
         }
         do
         {
            §8#'§ = "removed";
            do
            {
               §1!W§ = "extraBird";
            }
            while(_loc1_ && _loc1_);
            
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function §&'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         do
         {
            init();
         }
         while(!_loc1_);
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §%!o§ = [];
            while(true)
            {
               §?"<§ = [];
               while(!_loc1_)
               {
                  §>"L§ = [];
                  if(!_loc1_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1 == 0)
            {
               if(!(_loc5_ && _loc3_))
               {
                  return;
               }
               addr96:
            }
            var _loc3_:* = param2;
            if(_loc4_ || §&'§)
            {
               §§push(§'#?§);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && param2))
                        {
                           addr123:
                           §§push(0);
                           if(_loc5_)
                           {
                           }
                           §§goto(addr176);
                        }
                        else
                        {
                           §§goto(addr141);
                        }
                     }
                     else
                     {
                        §§push(§8#'§);
                        if(_loc4_)
                        {
                           addr130:
                           §§push(_loc3_);
                           if(_loc4_ || _loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr141:
                                    §§push(1);
                                    if(!(_loc4_ || §&'§))
                                    {
                                       addr171:
                                    }
                                 }
                              }
                              else
                              {
                                 addr152:
                                 if(§1!W§ !== _loc3_)
                                 {
                                    addr176:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr73:
                                          §%!o§.push(param1);
                                          addr54:
                                          break;
                                          addr72:
                                          addr74:
                                       case 1:
                                          addr58:
                                          §§push(§?"<§);
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr66:
                                             §§pop().push(param1);
                                             break;
                                             addr67:
                                          }
                                          else
                                          {
                                             §§goto(addr72);
                                          }
                                          break;
                                       case 2:
                                          §§push(§>"L§);
                                          if(!_loc5_)
                                          {
                                             §§push(param1);
                                             if(_loc4_ || param2)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§pop().push(§§pop());
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         if(!(_loc5_ && §&'§))
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr74);
                                                         }
                                                         §§goto(addr54);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr67);
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr73);
                                                §§goto(addr73);
                                             }
                                             else
                                             {
                                                §§goto(addr66);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr58);
                                          }
                                          §§goto(addr73);
                                    }
                                    return;
                                    §§push(3);
                                 }
                              }
                              §§goto(addr176);
                              §§goto(addr176);
                           }
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr152);
               }
               §§goto(addr130);
            }
            §§goto(addr123);
         }
         §§goto(addr96);
      }
      
      public static function §2w§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(_loc2_)
         {
            §§push(§%!o§);
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
                     §§push(§?"<§);
                     loop3:
                     while(true)
                     {
                        if(§§pop().length <= 0)
                        {
                           continue;
                        }
                        loop4:
                        while(true)
                        {
                           §§push(_loc1_);
                           while(!(_loc3_ && _loc1_))
                           {
                              §§push(",0,");
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr161:
                                 addr99:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    §§push(",0,");
                                    if(_loc3_ && _loc2_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc3_)
                                    {
                                       _loc1_ = §§pop();
                                       addr111:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(_loc3_)
                                          {
                                             continue loop9;
                                          }
                                          §§push(§>"L§);
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(§§pop() + §§pop().toString());
                                             continue loop9;
                                          }
                                          addr122:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop().toString());
                                          }
                                       }
                                       addr111:
                                    }
                                    else
                                    {
                                       §§goto(addr161);
                                    }
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       addr126:
                                       while(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc2_ || _loc2_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
   }
}
