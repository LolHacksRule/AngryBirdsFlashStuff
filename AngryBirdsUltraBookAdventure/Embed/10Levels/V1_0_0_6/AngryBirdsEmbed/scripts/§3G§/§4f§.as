package §3G§
{
   public class §4f§
   {
      
      public static const §!l§:String = "damage";
      
      public static const §7!#§:String = "removed";
      
      public static const §7!"§:String = "extraBird";
      
      private static var §=%§:Array;
      
      private static var §=C§:Array;
      
      private static var §0!7§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!l§ = "damage";
            if(!_loc2_)
            {
               §7!#§ = "removed";
               if(_loc1_ || _loc2_)
               {
               }
               §§goto(addr46);
            }
            §7!"§ = "extraBird";
         }
         addr46:
      }
      
      public function §4f§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && this))
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
         if(!_loc2_)
         {
            §=%§ = [];
            if(_loc1_ || §4f§)
            {
               §§goto(addr38);
            }
            §§goto(addr48);
         }
         addr38:
         §=C§ = [];
         if(_loc1_ || _loc1_)
         {
            addr48:
            §0!7§ = [];
         }
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1 == 0)
            {
               if(_loc4_)
               {
                  §§goto(addr23);
               }
            }
            var _loc3_:* = param2;
            if(!_loc5_)
            {
               §§push(§!l§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           addr99:
                           §§push(0);
                           if(!(_loc4_ || _loc3_))
                           {
                              addr147:
                           }
                        }
                        else
                        {
                           addr144:
                           §§push(2);
                           if(_loc4_)
                           {
                              §§goto(addr147);
                           }
                        }
                        §§goto(addr152);
                     }
                     else
                     {
                        §§push(§7!#§);
                        if(!_loc5_)
                        {
                           §§goto(addr111);
                        }
                        §§goto(addr142);
                     }
                  }
                  §§goto(addr114);
               }
               addr111:
               §§push(_loc3_);
               if(!_loc5_)
               {
                  addr114:
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && param2))
                     {
                        §§push(1);
                        if(_loc4_ || §4f§)
                        {
                        }
                     }
                     else
                     {
                        §§goto(addr144);
                     }
                     §§goto(addr152);
                  }
                  else
                  {
                     addr142:
                     §§push(§7!"§);
                     §§push(_loc3_);
                  }
                  §§goto(addr144);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr144);
               }
               else
               {
                  §§push(3);
               }
               addr152:
               switch(§§pop())
               {
                  case 0:
                     §§push(§=%§);
                     if(!_loc5_)
                     {
                        §§push(param1);
                        if(!_loc5_)
                        {
                           §§pop().push(§§pop());
                           if(_loc4_ || _loc3_)
                           {
                              break;
                           }
                           addr61:
                           break;
                        }
                     }
                     else
                     {
                        addr74:
                        §§push(param1);
                     }
                     addr75:
                     §§pop().push(§§pop());
                     if(!_loc5_)
                     {
                        break;
                     }
                     break;
                  case 1:
                     §§push(§=C§);
                     if(!_loc5_)
                     {
                        §§push(param1);
                        if(!(_loc5_ && param2))
                        {
                           §§pop().push(§§pop());
                           if(!(_loc5_ && param1))
                           {
                              §§goto(addr61);
                           }
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr74);
                     }
                     §§goto(addr75);
                  case 2:
                     §§goto(addr74);
               }
               §0!7§;
               return;
            }
            §§goto(addr99);
         }
         addr23:
      }
      
      public static function §?;§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(!(_loc2_ && _loc3_))
         {
            §§push(§=%§);
            if(_loc3_ || _loc2_)
            {
               _loc1_ = §§pop().toString();
               §§push(§=C§);
               if(_loc3_)
               {
                  addr40:
                  if(§§pop().length > 0)
                  {
                     §§push(_loc1_);
                     if(!_loc2_)
                     {
                        §§push(",0,");
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              _loc1_ = §§pop();
                              §§push(_loc1_);
                              §§push(§=C§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop() + §§pop().toString());
                                 if(!_loc2_)
                                 {
                                    _loc1_ = §§pop();
                                    addr93:
                                    if(§0!7§.length > 0)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr107:
                                          _loc1_ += ",0,";
                                          addr105:
                                          if(!_loc2_)
                                          {
                                             §§goto(addr112);
                                          }
                                       }
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr112);
                           }
                        }
                        §§goto(addr107);
                     }
                     addr112:
                     §§push(_loc1_ + §0!7§.toString());
                     if(_loc3_)
                     {
                        _loc1_ = §§pop();
                        addr118:
                        §§push(_loc1_);
                     }
                     return §§pop();
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr40);
         }
         §§goto(addr107);
      }
   }
}
