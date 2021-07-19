package §<!<§
{
   public class § !p§
   {
      
      public static const §>F§:String = "damage";
      
      public static const §8A§:String = "removed";
      
      public static const §+!c§:String = "extraBird";
      
      private static var §06§:Array;
      
      private static var §,K§:Array;
      
      private static var §1!#§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || § !p§)
         {
            §>F§ = "damage";
            if(_loc1_)
            {
               addr38:
               §8A§ = "removed";
               if(_loc1_)
               {
                  §+!c§ = "extraBird";
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function § !p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               addr32:
               init();
            }
            return;
         }
         §§goto(addr32);
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §06§ = [];
            if(!_loc1_)
            {
               §§goto(addr24);
            }
            §§goto(addr29);
         }
         addr24:
         §,K§ = [];
         if(!_loc1_)
         {
            addr29:
            §1!#§ = [];
         }
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1 == 0)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc3_:* = param2;
         if(!_loc5_)
         {
            §§push(§>F§);
            if(_loc4_ || § !p§)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && § !p§))
                     {
                        §§push(0);
                        if(_loc5_ && § !p§)
                        {
                        }
                        §§goto(addr167);
                     }
                     else
                     {
                        §§goto(addr142);
                     }
                  }
                  else
                  {
                     §§push(§8A§);
                     if(!(_loc5_ && param1))
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 addr142:
                                 §§push(1);
                                 if(!(_loc4_ || param2))
                                 {
                                    addr162:
                                 }
                              }
                           }
                           else
                           {
                              addr153:
                              if(§+!c§ !== _loc3_)
                              {
                                 addr167:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §§push(§06§);
                                       if(_loc5_ && § !p§)
                                       {
                                          addr45:
                                          §§push(param1);
                                          if(_loc5_ && _loc3_)
                                          {
                                             addr65:
                                             §§pop().push(§§pop());
                                             if(_loc4_ || _loc3_)
                                             {
                                             }
                                             break;
                                          }
                                          §§pop().push(§§pop());
                                          if(!(_loc5_ && param1))
                                          {
                                             §§goto(addr61);
                                          }
                                          break;
                                       }
                                       §§push(param1);
                                       if(!_loc5_)
                                       {
                                          §§pop().push(§§pop());
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          addr61:
                                          break;
                                       }
                                       §§goto(addr65);
                                    case 1:
                                       §§push(§,K§);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr45);
                                       }
                                       else
                                       {
                                          addr64:
                                          §§push(param1);
                                       }
                                       §§goto(addr65);
                                    case 2:
                                       §§goto(addr64);
                                 }
                                 §1!#§;
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr167);
                           if(!(_loc5_ && param2))
                           {
                              §§goto(addr162);
                           }
                        }
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr167);
               }
            }
            §§goto(addr153);
         }
         §§goto(addr142);
      }
      
      public static function §1$§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(_loc2_)
         {
            §§push(§06§);
            if(_loc2_ || _loc2_)
            {
               _loc1_ = §§pop().toString();
               if(!(_loc3_ && _loc1_))
               {
                  §§push(§,K§);
                  if(_loc2_)
                  {
                     addr41:
                     if(§§pop().length > 0)
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(_loc1_);
                           §§push(",0,");
                           if(_loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc2_)
                              {
                                 _loc1_ = §§pop();
                                 addr69:
                                 §§push(_loc1_);
                                 §§push(§,K§);
                                 if(_loc2_)
                                 {
                                    _loc1_ = §§pop() + §§pop().toString();
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr94:
                                       if(§1!#§.length > 0)
                                       {
                                          addr101:
                                          _loc1_ += ",0,";
                                          addr98:
                                          if(_loc2_ || § !p§)
                                          {
                                             §§goto(addr111);
                                          }
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr98);
                                 }
                                 §§goto(addr111);
                              }
                           }
                           §§goto(addr101);
                        }
                        addr111:
                        §§push(_loc1_ + §1!#§.toString());
                        if(_loc2_)
                        {
                           _loc1_ = §§pop();
                           addr117:
                           §§push(_loc1_);
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr41);
         }
         §§goto(addr69);
      }
   }
}
