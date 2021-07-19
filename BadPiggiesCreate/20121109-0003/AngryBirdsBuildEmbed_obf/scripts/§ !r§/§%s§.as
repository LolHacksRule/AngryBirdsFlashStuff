package § !r§
{
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §%s§ extends Sprite
   {
      
      private static var § !f§:Boolean = false;
      
      private static const §^w§:String = "Mouse_Cursors";
      
      private static var §5!"§:Sprite;
      
      private static var §=K§:MovieClip;
      
      private static var §"q§:String;
      
      private static var §4!A§:String = "";
      
      private static var §]!R§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § !f§ = false;
            if(!_loc2_)
            {
               §§goto(addr33);
            }
            §§goto(addr38);
         }
         addr33:
         if(_loc1_)
         {
            addr38:
            §4!A§ = "";
            if(!_loc2_)
            {
               §]!R§ = false;
            }
         }
      }
      
      public function §%s§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function § do§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(!(_loc5_ && param1))
         {
            if(§"q§ == param1)
            {
               if(_loc6_)
               {
                  addr32:
                  §§push(true);
                  if(!(_loc5_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr41:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               if(!_loc5_)
               {
                  §"q§ = "";
                  if(!_loc5_)
                  {
                     §]!R§ = false;
                     §§push(§ !f§);
                     if(_loc6_)
                     {
                        §§push(!§§pop());
                        if(!(_loc5_ && param1))
                        {
                           addr64:
                           if(!§§pop())
                           {
                              if(!_loc5_)
                              {
                                 addr68:
                                 §§pop();
                                 if(_loc6_)
                                 {
                                    §§push(!§=K§);
                                    if(_loc6_)
                                    {
                                       addr75:
                                       if(§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             addr78:
                                             §§push(§^!@§());
                                             if(!(_loc5_ && §%s§))
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      Mouse.show();
                                                   }
                                                }
                                                else
                                                {
                                                   addr94:
                                                   var _loc3_:* = 0;
                                                   while(_loc3_ < §=K§.numChildren)
                                                   {
                                                      §=K§.getChildAt(_loc3_).visible = false;
                                                      if(!_loc5_)
                                                      {
                                                         _loc3_++;
                                                         if(!(_loc6_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   if(!(_loc4_ = §=K§.getChildByName(param1) as Sprite))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §=K§.visible = false;
                                                         if(!_loc5_)
                                                         {
                                                            Mouse.show();
                                                            return false;
                                                         }
                                                         loop3:
                                                         while(true)
                                                         {
                                                            _loc3_++;
                                                            if(!_loc5_)
                                                            {
                                                               addr253:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  addr254:
                                                                  while(§§pop() < _loc4_.numChildren)
                                                                  {
                                                                     _loc4_.getChildAt(_loc3_).visible = false;
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               addr253:
                                                            }
                                                            addr257:
                                                            _loc4_.getChildByName(§"q§ + "_Up").visible = true;
                                                            §§goto(addr264);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr210:
                                                         §]!R§ = true;
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr215);
                                                         }
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                   else
                                                   {
                                                      §"q§ = param1;
                                                      §=K§.visible = true;
                                                      if(_loc6_ || param1)
                                                      {
                                                         _loc4_.visible = true;
                                                         if(_loc6_)
                                                         {
                                                            §§push(true);
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(!_loc5_)
                                                               {
                                                                  Mouse.hide();
                                                                  §§push(_loc4_.numChildren > 1);
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                                  §§pop();
                                                                  addr207:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr210);
                                                                     }
                                                                     §§goto(addr224);
                                                                  }
                                                                  addr215:
                                                                  §§push(§]!R§);
                                                                  if(_loc6_ || §%s§)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr224:
                                                                        §§push(0);
                                                                        if(_loc6_ || §%s§)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr243:
                                                                           §§goto(addr253);
                                                                        }
                                                                        §§goto(addr254);
                                                                     }
                                                                     §§goto(addr264);
                                                                  }
                                                                  addr264:
                                                                  return _loc2_;
                                                                  §§push(Boolean(_loc4_.getChildByName(§"q§ + "_Up")));
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                            §§goto(addr207);
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                   }
                                                   §§goto(addr243);
                                                }
                                             }
                                             §§goto(addr93);
                                          }
                                          addr93:
                                          return §§pop();
                                          §§push(false);
                                       }
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr64);
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr41);
         }
         §§goto(addr32);
      }
      
      private static function §^!@§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §1F§.§"!_§(§^w§);
         if(!_loc2_)
         {
            §=K§ = new _loc1_();
            if(§=K§)
            {
               if(_loc3_)
               {
                  §5!"§.addChild(§=K§);
                  §5!"§.mouseChildren = false;
                  §=K§.mouseEnabled = false;
                  if(_loc3_)
                  {
                     §5!"§.mouseEnabled = false;
                     if(_loc3_ || _loc3_)
                     {
                     }
                  }
                  §§goto(addr81);
               }
               §=K§.enabled = false;
               if(!_loc2_)
               {
                  addr78:
                  §=K§.cacheAsBitmap = true;
               }
            }
            addr81:
            §§push(§=K§ == null);
            if(!(_loc2_ && _loc3_))
            {
               §§push(!§§pop());
            }
            return §§pop();
         }
         §§goto(addr78);
      }
      
      public static function §[!@§() : Boolean
      {
         return §^l§("_Down");
      }
      
      public static function §<1§() : Boolean
      {
         return §^l§("_Up");
      }
      
      private static function §^l§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(!§=K§);
            §§push(!§=K§);
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  §§pop();
                  if(_loc4_ || §%s§)
                  {
                     addr36:
                     §§push(§"q§.length < 1);
                     if(!(§"q§.length < 1))
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§goto(addr43);
                           }
                           §§goto(addr57);
                        }
                     }
                     §§goto(addr47);
                  }
                  addr43:
                  §§push(!§]!R§);
                  if(_loc4_)
                  {
                     addr47:
                     if(§§pop())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§push(false);
                        }
                        else
                        {
                           §§goto(addr57);
                        }
                     }
                     addr57:
                     var _loc2_:Sprite = §=K§.getChildByName(§"q§) as Sprite;
                     if(!_loc5_)
                     {
                        §§push(!_loc2_);
                        if(!_loc5_)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(!_loc2_.getChildByName(§"q§ + param1));
                                    if(!(_loc5_ && §%s§))
                                    {
                                       §§goto(addr105);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr108);
                              }
                           }
                        }
                        addr105:
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              addr108:
                              §§push(false);
                           }
                           else
                           {
                              §§goto(addr110);
                           }
                        }
                        §§goto(addr110);
                     }
                     addr110:
                     var _loc3_:int = 0;
                     do
                     {
                        if(_loc3_ >= _loc2_.numChildren)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              break;
                           }
                           §§goto(addr157);
                        }
                        _loc2_.getChildAt(_loc3_).visible = false;
                        if(!_loc4_)
                        {
                           break;
                        }
                        _loc3_++;
                     }
                     while(!(_loc5_ && §%s§));
                     
                     _loc2_.getChildByName(§"q§ + param1).visible = true;
                     addr157:
                     return true;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr36);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §%s§))
         {
            if(§ !f§)
            {
               if(_loc1_ || §%s§)
               {
                  return §5!"§;
               }
            }
            §5!"§ = new Sprite();
            if(_loc1_)
            {
               § !f§ = true;
            }
         }
         return §5!"§;
      }
      
      public static function §6!!§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§ !f§);
            if(!(_loc4_ && param1))
            {
               §§push(!§§pop());
               if(_loc3_ || param2)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc4_ && §%s§))
                        {
                           addr55:
                           §§pop();
                           §§push(!§=K§);
                           if(!(_loc4_ && param2))
                           {
                              addr65:
                              if(!§§pop())
                              {
                                 if(_loc3_ || §%s§)
                                 {
                                    §§pop();
                                    if(!_loc4_)
                                    {
                                       addr90:
                                       if(!§=K§.visible)
                                       {
                                          return;
                                       }
                                    }
                                    §5!"§.x = param1;
                                    if(!(_loc4_ && §%s§))
                                    {
                                       §5!"§.y = param2;
                                    }
                                    return;
                                 }
                              }
                           }
                           §§goto(addr90);
                        }
                     }
                  }
                  §§goto(addr65);
               }
               §§goto(addr55);
            }
            §§goto(addr65);
         }
         §§goto(addr55);
      }
      
      public static function §9g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(§=K§)
            {
               if(!_loc2_)
               {
                  if(§=K§.visible)
                  {
                     if(!(_loc2_ && §%s§))
                     {
                        §§goto(addr57);
                     }
                  }
                  § do§("");
               }
            }
            §§goto(addr57);
         }
         addr57:
         §4!A§ = §"q§;
         if(_loc2_ && §%s§)
         {
         }
      }
      
      public static function §,5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§=K§)
            {
               if(_loc1_)
               {
                  if(!§=K§.visible)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        addr42:
                        § do§(§4!A§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
