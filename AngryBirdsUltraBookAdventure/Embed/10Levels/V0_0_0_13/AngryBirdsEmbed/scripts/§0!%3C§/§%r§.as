package §0!<§
{
   import com.rovio.assets.§,u§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §%r§ extends Sprite
   {
      
      private static var §>H§:Boolean = false;
      
      private static const §;X§:String = "Mouse_Cursors";
      
      private static var §,!;§:Sprite;
      
      private static var §'!4§:MovieClip;
      
      private static var §+Z§:String;
      
      private static var §5v§:String = "";
      
      private static var §1T§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §%r§))
         {
            §>H§ = false;
            if(_loc1_ || _loc2_)
            {
               §;X§ = "Mouse_Cursors";
               if(_loc1_ || §%r§)
               {
                  §5v§ = "";
                  if(_loc1_ || §%r§)
                  {
                     addr73:
                     §1T§ = false;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §%r§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §2!2§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(_loc5_ || _loc3_)
         {
            if(§+Z§ == param1)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(true);
                  if(!_loc6_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr40:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               if(!_loc6_)
               {
                  §+Z§ = "";
                  if(!_loc6_)
                  {
                     §1T§ = false;
                     §§push(§>H§);
                     if(!_loc6_)
                     {
                        §§push(!§§pop());
                        if(_loc5_ || §%r§)
                        {
                           if(!§§pop())
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 §§pop();
                                 addr73:
                                 §§push(!§'!4§);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    addr82:
                                    if(§§pop())
                                    {
                                       §§push(§-H§());
                                       if(_loc5_)
                                       {
                                          addr87:
                                          if(!§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr90:
                                                Mouse.show();
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§goto(addr100);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr100);
                                    }
                                    var _loc3_:* = 0;
                                    while(_loc3_ < §'!4§.numChildren)
                                    {
                                       §'!4§.getChildAt(_loc3_).visible = false;
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          _loc3_++;
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                    if(!(_loc4_ = §'!4§.getChildByName(param1) as Sprite))
                                    {
                                       if(_loc5_)
                                       {
                                          §'!4§.visible = false;
                                          Mouse.show();
                                          if(!_loc6_)
                                          {
                                             return false;
                                          }
                                          loop1:
                                          while(true)
                                          {
                                             _loc3_++;
                                             addr279:
                                             while(true)
                                             {
                                                if(§§pop() >= _loc4_.numChildren)
                                                {
                                                   break loop1;
                                                }
                                                _loc4_.getChildAt(_loc3_).visible = false;
                                                continue loop1;
                                             }
                                          }
                                          addr282:
                                          _loc4_.getChildByName(§+Z§ + "_Up").visible = true;
                                          return _loc2_;
                                          addr277:
                                       }
                                       else
                                       {
                                          addr177:
                                          _loc2_ = true;
                                          if(_loc5_ || param1)
                                          {
                                             Mouse.hide();
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(_loc4_.numChildren > 1);
                                                if(_loc4_.numChildren > 1)
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§pop();
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr222:
                                                         addr216:
                                                         if(_loc4_.getChildByName(§+Z§ + "_Up"))
                                                         {
                                                            addr278:
                                                            if(_loc5_)
                                                            {
                                                               addr225:
                                                               §1T§ = true;
                                                               if(_loc6_ && _loc3_)
                                                               {
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr279);
                                                               §§goto(addr277);
                                                            }
                                                            addr278:
                                                         }
                                                         if(§1T§)
                                                         {
                                                            if(!(_loc6_ && §%r§))
                                                            {
                                                               §§push(0);
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     addr270:
                                                                     §§goto(addr278);
                                                                  }
                                                                  §§goto(addr282);
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr282);
                                                   }
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr278);
                                    }
                                    else
                                    {
                                       §+Z§ = param1;
                                       §'!4§.visible = true;
                                       if(_loc5_ || §%r§)
                                       {
                                          _loc4_.visible = true;
                                          if(_loc5_ || §%r§)
                                          {
                                             §§goto(addr177);
                                          }
                                          §§goto(addr216);
                                       }
                                    }
                                    §§goto(addr225);
                                 }
                              }
                              addr100:
                              return false;
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr90);
               }
               §§goto(addr73);
            }
         }
         §§goto(addr40);
      }
      
      private static function §-H§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §,u§.§'[§(§;X§);
         §'!4§ = new _loc1_();
         if(§'!4§)
         {
            if(!(_loc3_ && _loc1_))
            {
               §,!;§.addChild(§'!4§);
               §,!;§.mouseChildren = false;
               §'!4§.mouseEnabled = false;
               if(!(_loc3_ && _loc2_))
               {
                  addr70:
                  §,!;§.mouseEnabled = false;
                  if(!_loc3_)
                  {
                     §'!4§.enabled = false;
                  }
               }
               §'!4§.cacheAsBitmap = true;
               §§goto(addr81);
            }
            §§goto(addr70);
         }
         addr81:
         §§push(§'!4§ == null);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function §'m§() : Boolean
      {
         return §1b§("_Down");
      }
      
      public static function §[m§() : Boolean
      {
         return §1b§("_Up");
      }
      
      private static function §1b§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(!§'!4§);
            if(_loc5_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           §§goto(addr37);
                        }
                        §§goto(addr55);
                     }
                  }
               }
               §§goto(addr43);
            }
            §§goto(addr52);
         }
         addr37:
         §§push(§+Z§.length < 1);
         if(!_loc4_)
         {
            addr43:
            if(!§§pop())
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr52:
                  §§pop();
                  if(!_loc4_)
                  {
                     addr55:
                     §§push(!§1T§);
                     if(_loc5_)
                     {
                        addr59:
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              §§goto(addr63);
                           }
                        }
                     }
                     §§goto(addr63);
                  }
                  var _loc2_:Sprite = §'!4§.getChildByName(§+Z§) as Sprite;
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(!_loc2_);
                     if(_loc5_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr104:
                                 §§push(!_loc2_.getChildByName(§+Z§ + param1));
                                 if(!_loc4_)
                                 {
                                    §§goto(addr112);
                                 }
                              }
                              §§goto(addr116);
                           }
                        }
                        addr112:
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              §§goto(addr116);
                           }
                        }
                        var _loc3_:int = 0;
                        while(true)
                        {
                           if(_loc3_ >= _loc2_.numChildren)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr159);
                           }
                           _loc2_.getChildAt(_loc3_).visible = false;
                           if(_loc4_ && §%r§)
                           {
                              break;
                           }
                           _loc3_++;
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        _loc2_.getChildByName(§+Z§ + param1).visible = true;
                        addr159:
                        return true;
                     }
                     addr116:
                     return false;
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr59);
         }
         addr63:
         return false;
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(§>H§)
            {
               if(!_loc2_)
               {
                  return §,!;§;
               }
            }
            §,!;§ = new Sprite();
            if(_loc1_)
            {
               addr47:
               §>H§ = true;
            }
            return §,!;§;
         }
         §§goto(addr47);
      }
      
      public static function §06§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§>H§);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(_loc4_ || param1)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_ || §%r§)
                        {
                           §§pop();
                           if(!_loc3_)
                           {
                              §§push(!§'!4§);
                              if(!_loc3_)
                              {
                                 addr68:
                                 if(!§§pop())
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       §§pop();
                                    }
                                    addr81:
                                    if(§§pop())
                                    {
                                       return;
                                    }
                                    §§goto(addr85);
                                 }
                              }
                           }
                           §§goto(addr81);
                           §§push(!§'!4§.visible);
                        }
                     }
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr81);
         }
         addr85:
         §,!;§.x = param1;
         §,!;§.y = param2;
      }
      
      public static function §@!A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§'!4§)
            {
               if(!_loc1_)
               {
                  if(§'!4§.visible)
                  {
                     if(!_loc1_)
                     {
                        §5v§ = §+Z§;
                        if(!(_loc1_ && §%r§))
                        {
                           addr48:
                           §2!2§("");
                        }
                     }
                  }
               }
               §§goto(addr48);
            }
            return;
         }
         §§goto(addr48);
      }
      
      public static function §@p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §%r§)
         {
            if(§'!4§)
            {
               if(_loc1_)
               {
                  if(!§'!4§.visible)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §2!2§(§5v§);
                     }
                  }
               }
            }
         }
      }
   }
}
