package §+!"§
{
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §@P§ extends Sprite
   {
      
      private static var §<z§:Boolean = false;
      
      private static const §`m§:String = "Mouse_Cursors";
      
      private static var §?H§:Sprite;
      
      private static var §3x§:MovieClip;
      
      private static var §#g§:String;
      
      private static var §'!=§:String = "";
      
      private static var §,!3§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §@P§))
         {
            §<z§ = false;
            if(_loc1_ || _loc2_)
            {
               §`m§ = "Mouse_Cursors";
               if(_loc1_ || §@P§)
               {
                  §'!=§ = "";
                  if(_loc1_ || §@P§)
                  {
                     addr73:
                     §,!3§ = false;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §@P§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §,l§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(_loc5_ || _loc3_)
         {
            if(§#g§ == param1)
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
                  §#g§ = "";
                  if(!_loc6_)
                  {
                     §,!3§ = false;
                     §§push(§<z§);
                     if(!_loc6_)
                     {
                        §§push(!§§pop());
                        if(_loc5_ || §@P§)
                        {
                           if(!§§pop())
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 §§pop();
                                 addr73:
                                 §§push(!§3x§);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    addr82:
                                    if(§§pop())
                                    {
                                       §§push(§&h§());
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
                                    while(_loc3_ < §3x§.numChildren)
                                    {
                                       §3x§.getChildAt(_loc3_).visible = false;
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          _loc3_++;
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                    if(!(_loc4_ = §3x§.getChildByName(param1) as Sprite))
                                    {
                                       if(_loc5_)
                                       {
                                          §3x§.visible = false;
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
                                          _loc4_.getChildByName(§#g§ + "_Up").visible = true;
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
                                                         if(_loc4_.getChildByName(§#g§ + "_Up"))
                                                         {
                                                            addr278:
                                                            if(_loc5_)
                                                            {
                                                               addr225:
                                                               §,!3§ = true;
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
                                                         if(§,!3§)
                                                         {
                                                            if(!(_loc6_ && §@P§))
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
                                       §#g§ = param1;
                                       §3x§.visible = true;
                                       if(_loc5_ || §@P§)
                                       {
                                          _loc4_.visible = true;
                                          if(_loc5_ || §@P§)
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
      
      private static function §&h§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §'!H§.§&!G§(§`m§);
         §3x§ = new _loc1_();
         if(§3x§)
         {
            if(!(_loc3_ && _loc1_))
            {
               §?H§.addChild(§3x§);
               §?H§.mouseChildren = false;
               §3x§.mouseEnabled = false;
               if(!(_loc3_ && _loc2_))
               {
                  addr70:
                  §?H§.mouseEnabled = false;
                  if(!_loc3_)
                  {
                     §3x§.enabled = false;
                  }
               }
               §3x§.cacheAsBitmap = true;
               §§goto(addr81);
            }
            §§goto(addr70);
         }
         addr81:
         §§push(§3x§ == null);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function §@1§() : Boolean
      {
         return §4!@§("_Down");
      }
      
      public static function §-§() : Boolean
      {
         return §4!@§("_Up");
      }
      
      private static function §4!@§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(!§3x§);
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
         §§push(§#g§.length < 1);
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
                     §§push(!§,!3§);
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
                  var _loc2_:Sprite = §3x§.getChildByName(§#g§) as Sprite;
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
                                 §§push(!_loc2_.getChildByName(§#g§ + param1));
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
                           if(_loc4_ && §@P§)
                           {
                              break;
                           }
                           _loc3_++;
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        _loc2_.getChildByName(§#g§ + param1).visible = true;
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
            if(§<z§)
            {
               if(!_loc2_)
               {
                  return §?H§;
               }
            }
            §?H§ = new Sprite();
            if(_loc1_)
            {
               addr47:
               §<z§ = true;
            }
            return §?H§;
         }
         §§goto(addr47);
      }
      
      public static function §`H§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§<z§);
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
                        if(_loc4_ || §@P§)
                        {
                           §§pop();
                           if(!_loc3_)
                           {
                              §§push(!§3x§);
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
                           §§push(!§3x§.visible);
                        }
                     }
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr81);
         }
         addr85:
         §?H§.x = param1;
         §?H§.y = param2;
      }
      
      public static function §62§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§3x§)
            {
               if(!_loc1_)
               {
                  if(§3x§.visible)
                  {
                     if(!_loc1_)
                     {
                        §'!=§ = §#g§;
                        if(!(_loc1_ && §@P§))
                        {
                           addr48:
                           §,l§("");
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
      
      public static function §]T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §@P§)
         {
            if(§3x§)
            {
               if(_loc1_)
               {
                  if(!§3x§.visible)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §,l§(§'!=§);
                     }
                  }
               }
            }
         }
      }
   }
}
