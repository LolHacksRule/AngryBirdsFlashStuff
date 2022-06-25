package §>K§
{
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §7R§ extends Sprite
   {
      
      private static var §%c§:Boolean = false;
      
      private static const §%q§:String = "Mouse_Cursors";
      
      private static var §'!C§:Sprite;
      
      private static var §4!C§:MovieClip;
      
      private static var §+!1§:String;
      
      private static var §5!3§:String = "";
      
      private static var §&!I§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%c§ = false;
            if(!(_loc1_ && _loc1_))
            {
               §%q§ = "Mouse_Cursors";
               if(_loc1_ && §7R§)
               {
               }
               §§goto(addr72);
            }
            §5!3§ = "";
            if(_loc2_ || §7R§)
            {
               §&!I§ = false;
            }
         }
         addr72:
      }
      
      public function §7R§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §-"§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(!_loc5_)
         {
            if(§+!1§ == param1)
            {
               if(_loc6_ || _loc2_)
               {
                  addr32:
                  §§push(true);
                  if(_loc6_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr36:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               §+!1§ = "";
               if(_loc6_)
               {
                  §&!I§ = false;
                  if(_loc6_ || param1)
                  {
                     addr53:
                     §§push(§%c§);
                     if(_loc6_ || _loc2_)
                     {
                        §§push(!§§pop());
                        if(!(_loc5_ && §7R§))
                        {
                           if(!§§pop())
                           {
                              if(_loc6_)
                              {
                                 addr73:
                                 §§pop();
                                 if(!(_loc5_ && §7R§))
                                 {
                                    §§push(!§4!C§);
                                    if(!(_loc5_ && param1))
                                    {
                                       addr90:
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && §7R§))
                                          {
                                             addr98:
                                             §§push(§9D§());
                                             if(_loc6_ || §7R§)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc5_ && param1)
                                                   {
                                                   }
                                                   addr136:
                                                   var _loc3_:* = 0;
                                                   while(_loc3_ < §4!C§.numChildren)
                                                   {
                                                      §4!C§.getChildAt(_loc3_).visible = false;
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         _loc3_++;
                                                         if(_loc5_ && _loc2_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   if(!(_loc4_ = §4!C§.getChildByName(param1) as Sprite))
                                                   {
                                                      §4!C§.visible = false;
                                                      Mouse.show();
                                                      §§push(false);
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §+!1§ = param1;
                                                      §4!C§.visible = true;
                                                      _loc4_.visible = true;
                                                      _loc2_ = true;
                                                      Mouse.hide();
                                                      §§push(_loc4_.numChildren > 1);
                                                      if(_loc4_.numChildren > 1)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§pop();
                                                            §§push(Boolean(_loc4_.getChildByName(§+!1§ + "_Up")));
                                                            if(!_loc5_)
                                                            {
                                                               addr224:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §&!I§ = true;
                                                                  }
                                                               }
                                                               §§push(§&!I§);
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§push(0);
                                                               if(_loc6_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        addr266:
                                                                        while(§§pop() < _loc4_.numChildren)
                                                                        {
                                                                           _loc4_.getChildAt(_loc3_).visible = false;
                                                                           if(!(_loc6_ || _loc2_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc3_++;
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                  }
                                                                  _loc4_.getChildByName(§+!1§ + "_Up").visible = true;
                                                                  addr277:
                                                                  return _loc2_;
                                                                  addr276:
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            §§goto(addr276);
                                                         }
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr277);
                                                }
                                                §§goto(addr136);
                                             }
                                             §§goto(addr135);
                                          }
                                          Mouse.show();
                                          if(_loc6_ || _loc3_)
                                          {
                                             addr135:
                                             return §§pop();
                                             §§push(false);
                                          }
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr98);
                              }
                           }
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr98);
               }
               §§goto(addr53);
            }
            §§goto(addr36);
         }
         §§goto(addr32);
      }
      
      private static function §9D§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §!Q§.§^!H§(§%q§);
         §4!C§ = new _loc1_();
         if(!_loc3_)
         {
            if(§4!C§)
            {
               if(_loc2_)
               {
                  §'!C§.addChild(§4!C§);
                  if(_loc2_ || _loc3_)
                  {
                     §'!C§.mouseChildren = false;
                     addr64:
                     §4!C§.mouseEnabled = false;
                     if(!_loc3_)
                     {
                        addr69:
                        §'!C§.mouseEnabled = false;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr79:
                           §4!C§.enabled = false;
                        }
                        §4!C§.cacheAsBitmap = true;
                        §§goto(addr85);
                     }
                  }
                  §§goto(addr79);
               }
               §§goto(addr64);
            }
            addr85:
            §§push(§4!C§ == null);
            if(_loc2_)
            {
               §§push(!§§pop());
            }
            return §§pop();
         }
         §§goto(addr69);
      }
      
      public static function §05§() : Boolean
      {
         return §0!D§("_Down");
      }
      
      public static function §8h§() : Boolean
      {
         return §0!D§("_Up");
      }
      
      private static function §0!D§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(!§4!C§);
            if(!_loc4_)
            {
               §§push(§§pop());
               if(!(_loc4_ && §7R§))
               {
                  if(!§§pop())
                  {
                     addr32:
                     §§pop();
                     addr46:
                     addr48:
                     if(_loc5_)
                     {
                        §§push(§+!1§.length < 1);
                     }
                     if(!§&!I§)
                     {
                        if(_loc5_ || §7R§)
                        {
                           §§goto(addr57);
                        }
                     }
                     addr58:
                     var _loc2_:Sprite = §4!C§.getChildByName(§+!1§) as Sprite;
                     if(_loc5_)
                     {
                        §§push(!_loc2_);
                        if(!_loc4_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc4_)
                              {
                                 addr85:
                                 §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr93:
                                    §§push(!_loc2_.getChildByName(§+!1§ + param1));
                                    if(!_loc4_)
                                    {
                                       §§goto(addr101);
                                    }
                                 }
                                 §§goto(addr110);
                              }
                           }
                           addr101:
                           if(§§pop())
                           {
                              if(_loc5_ || param1)
                              {
                                 addr110:
                                 return false;
                              }
                           }
                           var _loc3_:int = 0;
                           while(true)
                           {
                              if(_loc3_ >= _loc2_.numChildren)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    _loc2_.getChildByName(§+!1§ + param1).visible = true;
                                    break;
                                 }
                                 break;
                              }
                              _loc2_.getChildAt(_loc3_).visible = false;
                              if(_loc5_)
                              {
                                 _loc3_++;
                                 if(!(_loc5_ || §7R§))
                                 {
                                    break;
                                 }
                              }
                           }
                           return true;
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr93);
                  }
                  §§push(§§pop());
               }
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        §§goto(addr46);
                     }
                     §§goto(addr58);
                  }
                  addr57:
                  return false;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr32);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§%c§)
            {
               if(_loc1_)
               {
                  return §'!C§;
               }
               addr47:
               §%c§ = true;
            }
            else
            {
               §'!C§ = new Sprite();
               if(_loc1_)
               {
                  §§goto(addr47);
               }
            }
         }
         return §'!C§;
      }
      
      public static function §]E§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §7R§))
         {
            §§push(§%c§);
            if(!(_loc3_ && param2))
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           if(!_loc3_)
                           {
                              §§push(!§4!C§);
                              if(_loc4_)
                              {
                                 §§goto(addr58);
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr94);
                        }
                     }
                  }
                  §§goto(addr58);
               }
               §§goto(addr77);
            }
            addr58:
            if(!§§pop())
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr77:
                  §§pop();
                  if(_loc4_)
                  {
                     §§goto(addr83);
                  }
                  §§goto(addr97);
               }
            }
            addr83:
            §§goto(addr80);
         }
         addr80:
         if(!§4!C§.visible)
         {
            if(!(_loc3_ && param1))
            {
               return;
            }
         }
         else
         {
            addr94:
            §'!C§.x = param1;
            addr97:
            §'!C§.y = param2;
         }
      }
      
      public static function §=y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§4!C§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr38:
                  if(§4!C§.visible)
                  {
                     if(_loc2_ || §7R§)
                     {
                        §5!3§ = §+!1§;
                        if(!_loc2_)
                        {
                        }
                     }
                     §§goto(addr56);
                  }
                  §-"§("");
               }
            }
            addr56:
            return;
         }
         §§goto(addr38);
      }
      
      public static function §>y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(§4!C§)
            {
               if(_loc1_ || §7R§)
               {
                  addr42:
                  if(!§4!C§.visible)
                  {
                     if(_loc1_ || _loc1_)
                     {
                     }
                  }
                  §§goto(addr55);
               }
               §-"§(§5!3§);
            }
            addr55:
            return;
         }
         §§goto(addr42);
      }
   }
}
