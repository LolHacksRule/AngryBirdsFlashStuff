package §6A§
{
   public class §0!'§
   {
      
      public static const §36§:String = "damage";
      
      public static const §=!E§:String = "removed";
      
      public static const §[]§:String = "extraBird";
      
      private static var §%6§:Array;
      
      private static var §;J§:Array;
      
      private static var § !#§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §36§ = "damage";
            if(!_loc2_)
            {
               §=!E§ = "removed";
               if(_loc1_)
               {
                  addr28:
                  §[]§ = "extraBird";
               }
               return;
            }
         }
         §§goto(addr28);
      }
      
      public function §0!'§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            if(_loc2_)
            {
               init();
            }
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §0!'§))
         {
            §%6§ = [];
            if(!(_loc1_ && §0!'§))
            {
               §;J§ = [];
               if(_loc2_ || _loc2_)
               {
                  addr54:
                  § !#§ = [];
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || §0!'§)
         {
            if(param1 == 0)
            {
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr33);
               }
            }
            var _loc3_:* = param2;
            if(!_loc5_)
            {
               §§push(§36§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(0);
                           if(!(_loc4_ || param2))
                           {
                              addr155:
                           }
                        }
                        else
                        {
                           addr159:
                           §§push(2);
                           if(!_loc4_)
                           {
                           }
                        }
                        §§goto(addr167);
                     }
                     else
                     {
                        §§push(§=!E§);
                        if(!_loc5_)
                        {
                           §§goto(addr121);
                        }
                        §§goto(addr157);
                     }
                  }
                  §§goto(addr129);
               }
               addr121:
               §§push(_loc3_);
               if(!(_loc5_ && _loc3_))
               {
                  addr129:
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(1);
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr155);
                        }
                     }
                     else
                     {
                        §§goto(addr159);
                     }
                     §§goto(addr167);
                  }
                  else
                  {
                     addr157:
                     §§push(§[]§);
                     §§push(_loc3_);
                  }
                  §§goto(addr159);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr159);
               }
               else
               {
                  §§push(3);
               }
               addr167:
               switch(§§pop())
               {
                  case 0:
                     §§push(§%6§);
                     if(!(_loc4_ || param2))
                     {
                        addr60:
                        §§push(param1);
                        if(_loc5_)
                        {
                           addr80:
                           §§pop().push(§§pop());
                           if(_loc4_ || §0!'§)
                           {
                           }
                           break;
                        }
                        §§pop().push(§§pop());
                        if(!_loc5_)
                        {
                           break;
                        }
                        break;
                     }
                     §§push(param1);
                     if(_loc4_ || param1)
                     {
                        §§pop().push(§§pop());
                        if(!_loc5_)
                        {
                           break;
                        }
                        break;
                     }
                     §§goto(addr80);
                  case 1:
                     §§push(§;J§);
                     if(_loc4_)
                     {
                        §§goto(addr60);
                     }
                     else
                     {
                        addr69:
                        §§push(param1);
                     }
                     §§goto(addr80);
                  case 2:
                     §§goto(addr69);
               }
               § !#§;
               return;
            }
            §§goto(addr159);
         }
         addr33:
      }
      
      public static function §^;§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(_loc3_)
         {
            §§push(§%6§);
            if(_loc3_ || §0!'§)
            {
               §§push(§§pop().toString());
               if(!_loc2_)
               {
                  _loc1_ = §§pop();
                  §§push(§;J§);
                  if(_loc3_)
                  {
                     if(§§pop().length > 0)
                     {
                        §§push(_loc1_);
                        if(!(_loc2_ && §0!'§))
                        {
                           §§push(",0,");
                           if(_loc3_ || §0!'§)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc2_)
                              {
                                 _loc1_ = §§pop();
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(_loc1_);
                                    §§push(§;J§);
                                    if(_loc3_)
                                    {
                                       addr84:
                                       _loc1_ = §§pop() + §§pop().toString();
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr92);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr119);
                              }
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr84);
                     }
                     addr92:
                     §§goto(addr93);
                  }
                  addr93:
                  if(§ !#§.length > 0)
                  {
                     if(!_loc2_)
                     {
                        addr111:
                        _loc1_ += ",0,";
                        if(!(_loc2_ && _loc1_))
                        {
                           addr119:
                           §§push(_loc1_);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr128:
                              §§push(§§pop() + § !#§.toString());
                           }
                           _loc1_ = §§pop();
                        }
                     }
                     §§goto(addr119);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr92);
         }
         §§goto(addr111);
      }
   }
}
