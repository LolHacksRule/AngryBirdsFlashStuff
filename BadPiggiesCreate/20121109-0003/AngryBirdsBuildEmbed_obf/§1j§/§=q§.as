package §1j§
{
   import §-!0§.§0!k§;
   import §-!0§.§2! §;
   import §-!0§.§=J§;
   
   public class §=q§
   {
      
      private static var §?!]§:§=J§ = null;
      
      private static var §^!0§:Vector.<§0!k§> = null;
      
      private static var §'>§:int = 0;
      
      private static var §>!l§:String = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?!]§ = null;
            if(_loc2_ || §=q§)
            {
               §^!0§ = null;
               if(_loc2_ || _loc1_)
               {
                  addr59:
                  §'>§ = 0;
                  if(_loc2_ || _loc1_)
                  {
                  }
                  §§goto(addr72);
               }
               §>!l§ = null;
               addr72:
               return;
            }
         }
         §§goto(addr59);
      }
      
      public function §=q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §]!j§(param1:§=J§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_ || _loc2_)
         {
            §?!]§ = param1;
            if(_loc4_ || _loc2_)
            {
               if(§^!0§ != null)
               {
                  if(!(_loc3_ && param1))
                  {
                     addr56:
                     _loc2_ = 0;
                     addr58:
                     while(_loc2_ < §^!0§.length)
                     {
                        if(§^!0§[_loc2_].id == param1.info.id)
                        {
                           §'>§ = _loc2_;
                           if(!(_loc3_ && param1))
                           {
                              break;
                           }
                        }
                        else
                        {
                           _loc2_++;
                           if(_loc4_)
                           {
                              continue;
                           }
                           addr103:
                           §^!0§.push(param1.info);
                           if(_loc4_ || §=q§)
                           {
                              §'>§ = 0;
                           }
                        }
                        return;
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr58);
               }
               else
               {
                  §^!0§ = new Vector.<§0!k§>();
               }
               §§goto(addr103);
            }
            §§goto(addr58);
         }
         §§goto(addr56);
      }
      
      public static function get §?!2§() : §2! §
      {
         return §?!]§;
      }
      
      public static function get §"!N§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§^!0§ == null);
            if(_loc2_ || _loc2_)
            {
               §§push(!§§pop());
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§pop();
                        if(_loc2_ || _loc2_)
                        {
                           addr68:
                           if(§^!0§.length > 0)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 §§goto(addr86);
                              }
                           }
                           §§push(§?!]§);
                           if(!(_loc1_ && §=q§))
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr110);
                                 }
                              }
                              return null;
                           }
                           §§goto(addr110);
                        }
                        addr110:
                        return §?!]§.info.id;
                     }
                  }
               }
            }
            §§goto(addr68);
         }
         addr86:
         return §^!0§[§'>§].id;
      }
      
      public static function get §+!T§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§?!]§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  addr25:
                  §§push(§?!]§.info.§'!#§);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
               }
               else
               {
                  §§push("");
               }
               return §§pop();
            }
         }
         §§goto(addr25);
      }
      
      public static function get §-f§() : String
      {
         return §?!]§.info.authorId;
      }
      
      public static function get §9@§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§^!0§ == null);
            if(!(_loc1_ && _loc2_))
            {
               §§push(!§§pop());
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || §=q§)
                     {
                        §§pop();
                        addr52:
                        §§push(§^!0§.length > §'>§ + 1);
                     }
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr52);
      }
      
      public static function §?!+§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            var _loc1_:*;
            §§push((_loc1_ = §§findproperty(§'>§)).§'>§);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               _loc1_.§'>§ = _loc2_;
            }
         }
      }
      
      public static function §[!A§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:§0!k§ = null;
         var _loc4_:Object = null;
         if(_loc6_ || _loc3_)
         {
            §^!0§ = new Vector.<§0!k§>();
            if(!(_loc5_ && _loc2_))
            {
               §§push(param1);
               if(_loc6_)
               {
                  §§push(0);
                  if(!(_loc5_ && §=q§))
                  {
                     if(§§pop()[§§pop()] is String)
                     {
                        if(_loc6_)
                        {
                           addr64:
                           if((param1[0] as String).length > 10)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr77:
                                 _loc2_ = 0;
                                 addr79:
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(param1);
                                       if(_loc6_ || §=q§)
                                       {
                                          if(§§pop() < §§pop().length)
                                          {
                                             _loc4_ = JSON.parse(param1[_loc2_]);
                                             _loc3_ = §0!k§.§7!`§(_loc4_);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §^!0§.push(_loc3_);
                                                if(_loc5_ && param1)
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc2_++;
                                             continue;
                                          }
                                          if(_loc6_ || param1)
                                          {
                                             addr209:
                                             §'>§ = 0;
                                             addr146:
                                          }
                                          §§goto(addr209);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop().length)
                                             {
                                                addr207:
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr209);
                                                }
                                             }
                                             else
                                             {
                                                _loc3_ = §0!k§.§7!`§(param1[_loc2_]);
                                                if(!_loc5_)
                                                {
                                                   §^!0§.push(_loc3_);
                                                   addr203:
                                                   if(_loc6_ || §=q§)
                                                   {
                                                      addr202:
                                                      _loc2_++;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      break loop2;
                                                   }
                                                   addr203:
                                                }
                                                §§goto(addr202);
                                             }
                                          }
                                          addr205:
                                       }
                                       §§goto(addr212);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr205);
                                    §§goto(addr203);
                                 }
                                 §§goto(addr207);
                                 addr204:
                              }
                              §§goto(addr79);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr79);
                     }
                     else if(param1[0] is Object)
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(_loc6_ || §=q§)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc5_ && param1))
                              {
                                 §§goto(addr203);
                              }
                              addr212:
                              return;
                           }
                           §§goto(addr204);
                        }
                     }
                     §§goto(addr209);
                  }
               }
               §§goto(addr64);
            }
         }
         §§goto(addr77);
      }
      
      public static function §0c§() : Vector.<§0!k§>
      {
         return §^!0§;
      }
      
      public static function set §<!@§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §>!l§ = param1;
         }
      }
      
      public static function get §<!@§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§>!l§);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr26);
                  }
               }
               §§push(§>!l§);
            }
            return §§pop();
         }
         addr26:
         return "levelOfDay";
      }
   }
}
