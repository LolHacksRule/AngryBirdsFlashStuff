package §%x§
{
   public class §0]§
   {
      
      public static const §-h§:String = "damage";
      
      public static const §@Z§:String = "removed";
      
      public static const §,!-§:String = "extraBird";
      
      private static var §!!A§:Array;
      
      private static var §&u§:Array;
      
      private static var §&6§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-h§ = "damage";
            if(!(_loc1_ && §0]§))
            {
               §@Z§ = "removed";
               if(!(_loc1_ && _loc2_))
               {
                  §,!-§ = "extraBird";
               }
            }
         }
      }
      
      public function §0]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               addr28:
               init();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §!!A§ = [];
            if(_loc1_)
            {
               §&u§ = [];
               if(_loc1_ || §0]§)
               {
                  addr48:
                  §&6§ = [];
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1 == 0)
            {
               if(!_loc4_)
               {
                  return;
               }
            }
         }
         var _loc3_:* = param2;
         if(_loc5_)
         {
            §§push(§-h§);
            if(!_loc4_)
            {
               §§push(_loc3_);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                        }
                        §§goto(addr153);
                     }
                     else
                     {
                        §§goto(addr133);
                     }
                  }
                  else
                  {
                     §§push(§@Z§);
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr133:
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr153);
                              }
                              else
                              {
                                 addr140:
                                 §§push(2);
                                 if(!(_loc4_ && §0]§))
                                 {
                                    §§goto(addr148);
                                 }
                              }
                           }
                           else
                           {
                              addr139:
                              if(§,!-§ === _loc3_)
                              {
                                 §§goto(addr140);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           §§goto(addr140);
                        }
                     }
                     §§goto(addr139);
                  }
                  addr153:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(§!!A§);
                        if(_loc5_ || param2)
                        {
                           §§push(param1);
                           if(_loc4_ && _loc3_)
                           {
                              addr76:
                              §§pop().push(§§pop());
                              if(_loc5_ || param1)
                              {
                              }
                              break;
                           }
                           §§pop().push(§§pop());
                           if(!_loc4_)
                           {
                              break;
                           }
                           addr84:
                           break;
                        }
                        addr51:
                        §§push(param1);
                        if(_loc5_ || §0]§)
                        {
                           §§pop().push(§§pop());
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr76);
                        }
                        §§goto(addr84);
                        §§goto(addr76);
                     case 1:
                        §§push(§&u§);
                        if(_loc5_)
                        {
                           §§goto(addr51);
                        }
                        else
                        {
                           addr75:
                           §§push(param1);
                        }
                        §§goto(addr76);
                     case 2:
                        §§goto(addr75);
                  }
                  §&6§;
                  return;
               }
            }
            §§goto(addr139);
         }
         §§goto(addr140);
      }
      
      public static function §!5§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         §§push(§!!A§);
         if(!(_loc2_ && §0]§))
         {
            §§push(§§pop().toString());
            if(!_loc2_)
            {
               _loc1_ = §§pop();
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§&u§);
                  if(_loc3_ || _loc3_)
                  {
                     addr47:
                     if(§§pop().length > 0)
                     {
                        §§push(_loc1_);
                        §§push(",0,");
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && §0]§))
                           {
                              _loc1_ = §§pop();
                              if(!_loc2_)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§&u§);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(§§pop() + §§pop().toString());
                                       if(_loc3_)
                                       {
                                          _loc1_ = §§pop();
                                          if(_loc3_)
                                          {
                                             addr114:
                                             if(§&6§.length > 0)
                                             {
                                                if(!_loc2_)
                                                {
                                                   addr123:
                                                   _loc1_ += ",0,";
                                                   addr121:
                                                   addr136:
                                                   addr120:
                                                   addr122:
                                                   §§push(_loc1_);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§push(§&6§);
                                                   }
                                                   _loc1_ = §§pop();
                                                }
                                             }
                                             §§goto(addr137);
                                          }
                                          addr137:
                                          return _loc1_;
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr136);
                                    §§push(§§pop() + §§pop().toString());
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr122);
                     }
                  }
                  §§goto(addr114);
               }
            }
            §§goto(addr123);
         }
         §§goto(addr47);
      }
   }
}
