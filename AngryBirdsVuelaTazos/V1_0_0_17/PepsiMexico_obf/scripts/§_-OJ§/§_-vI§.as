package §_-OJ§
{
   public class §_-vI§
   {
      
      public static const §_-PL§:String = "damage";
      
      public static const §_-T7§:String = "removed";
      
      public static const §_-Tc§:String = "extraBird";
      
      private static var §_-jc§:Array;
      
      private static var §_-jA§:Array;
      
      private static var §_-8h§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §_-vI§))
         {
            §_-PL§ = "damage";
            if(!_loc1_)
            {
               §_-T7§ = "removed";
               if(_loc2_ || §_-vI§)
               {
               }
               §§goto(addr53);
            }
            §_-Tc§ = "extraBird";
         }
         addr53:
      }
      
      public function §_-vI§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_ || this)
            {
               addr31:
               init();
            }
            return;
         }
         §§goto(addr31);
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-jc§ = [];
            if(_loc1_ || _loc2_)
            {
               §_-jA§ = [];
               if(!(_loc2_ && §_-vI§))
               {
                  addr54:
                  §_-8h§ = [];
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            if(param1 == 0)
            {
               if(_loc4_)
               {
                  §§goto(addr25);
               }
            }
            var _loc3_:* = param2;
            if(!_loc5_)
            {
               §§push(§_-PL§);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(_loc3_);
                  if(!(_loc5_ && §_-vI§))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(_loc5_ && §_-vI§)
                           {
                           }
                           §§goto(addr148);
                        }
                        else
                        {
                           §§goto(addr121);
                        }
                     }
                     else
                     {
                        §§push(§_-T7§);
                        if(!(_loc5_ && §_-vI§))
                        {
                           addr115:
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              addr118:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    addr121:
                                    §§push(1);
                                    if(!_loc4_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr128:
                                    §§push(2);
                                    if(!(_loc5_ && param2))
                                    {
                                       §§goto(addr143);
                                    }
                                 }
                                 §§goto(addr148);
                              }
                              else
                              {
                                 addr126:
                                 §§push(§_-Tc§);
                                 §§push(_loc3_);
                              }
                              §§goto(addr128);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr128);
                           }
                           else
                           {
                              addr148:
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push(§_-jc§);
                                    if(!_loc4_)
                                    {
                                       addr62:
                                       §§pop().push(param1);
                                       if(_loc5_)
                                       {
                                       }
                                       break;
                                    }
                                    §§push(param1);
                                    if(!(_loc5_ && §_-vI§))
                                    {
                                       §§pop().push(§§pop());
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       break;
                                    }
                                    addr55:
                                    §§pop().push(§§pop());
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    addr65:
                                    break;
                                 case 1:
                                    §§push(§_-jA§);
                                    if(_loc4_ || param2)
                                    {
                                       §§push(param1);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr55);
                                       }
                                       else
                                       {
                                          §§goto(addr62);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr62);
                                    }
                                    §§goto(addr62);
                                 case 2:
                                    §§goto(addr62);
                              }
                              §_-8h§;
                              return;
                              §§push(3);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr118);
               }
               §§goto(addr115);
            }
            §§goto(addr128);
         }
         addr25:
      }
      
      public static function §_-iC§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         §§push(§_-jc§);
         if(!(_loc3_ && §_-vI§))
         {
            §§push(§§pop().toString());
            if(_loc2_ || _loc1_)
            {
               _loc1_ = §§pop();
               §§push(§_-jA§);
               if(_loc2_)
               {
                  addr36:
                  if(§§pop().length > 0)
                  {
                     §§push(_loc1_);
                     §§push(",0,");
                     if(_loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc2_)
                        {
                           _loc1_ = §§pop();
                           if(_loc2_ || _loc1_)
                           {
                              §§push(_loc1_);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(§_-jA§);
                                 if(!_loc3_)
                                 {
                                    _loc1_ = §§pop() + §§pop().toString();
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr83:
                                       if(§_-8h§.length > 0)
                                       {
                                          §§push(_loc1_);
                                          if(_loc2_)
                                          {
                                             addr92:
                                             _loc1_ = §§pop() + ",0,";
                                          }
                                          addr109:
                                          _loc1_ = §§pop();
                                          addr111:
                                          return _loc1_;
                                          addr110:
                                       }
                                       §§goto(addr110);
                                    }
                                    §§push(_loc1_);
                                    if(_loc2_)
                                    {
                                       §§push(§_-8h§);
                                    }
                                    §§goto(addr111);
                                 }
                                 §§push(§§pop() + §§pop().toString());
                                 if(!_loc2_)
                                 {
                                 }
                                 §§goto(addr111);
                              }
                           }
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr109);
         }
         §§goto(addr36);
      }
   }
}
