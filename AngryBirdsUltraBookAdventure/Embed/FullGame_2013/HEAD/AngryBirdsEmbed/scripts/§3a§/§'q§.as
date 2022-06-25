package §3a§
{
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §'q§ extends Sprite
   {
      
      private static var §8d§:Boolean = false;
      
      private static const §9v§:String = "Mouse_Cursors";
      
      private static var §5X§:Sprite;
      
      private static var §"9§:MovieClip;
      
      private static var §1E§:String;
      
      private static var §7!<§:String = "";
      
      private static var §@!>§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §'q§)
         {
            §8d§ = false;
            if(!(_loc2_ && §'q§))
            {
               §9v§ = "Mouse_Cursors";
               if(_loc1_)
               {
                  §§goto(addr48);
               }
            }
            §§goto(addr53);
         }
         addr48:
         if(!_loc2_)
         {
            addr53:
            §@!>§ = false;
         }
      }
      
      public function §'q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §7C§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(_loc6_)
         {
            if(§1E§ == param1)
            {
               if(_loc6_)
               {
                  §§push(true);
                  if(_loc6_ || _loc3_)
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
               §1E§ = "";
               if(!_loc5_)
               {
                  §@!>§ = false;
                  §§push(§8d§);
                  if(!_loc5_)
                  {
                     §§push(!§§pop());
                     if(!(_loc5_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc5_ && param1))
                           {
                              §§pop();
                              §§push(!§"9§);
                              if(_loc6_ || param1)
                              {
                              }
                              addr93:
                              if(!§§pop())
                              {
                                 Mouse.show();
                                 if(_loc6_)
                                 {
                                    §§goto(addr99);
                                 }
                              }
                              addr100:
                              var _loc3_:* = 0;
                              while(_loc3_ < §"9§.numChildren)
                              {
                                 §"9§.getChildAt(_loc3_).visible = false;
                                 if(_loc6_ || param1)
                                 {
                                    _loc3_++;
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              if(!(_loc4_ = §"9§.getChildByName(param1) as Sprite))
                              {
                                 §"9§.visible = false;
                                 Mouse.show();
                                 §§push(false);
                                 if(!_loc5_)
                                 {
                                    return §§pop();
                                 }
                                 addr176:
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && §'q§))
                                    {
                                       §§pop();
                                       §§push(Boolean(_loc4_.getChildByName(§1E§ + "_Up")));
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    §@!>§ = true;
                                 }
                                 §§push(§@!>§);
                                 if(!_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(0);
                                          if(_loc6_)
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                addr217:
                                                _loc4_.getChildAt(_loc3_).visible = false;
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                _loc3_++;
                                             }
                                             addr240:
                                             return _loc2_;
                                             addr226:
                                          }
                                          while(true)
                                          {
                                             if(§§pop() >= _loc4_.numChildren)
                                             {
                                                if(_loc6_)
                                                {
                                                   addr232:
                                                   _loc4_.getChildByName(§1E§ + "_Up").visible = true;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr217);
                                             }
                                             §§goto(addr226);
                                          }
                                       }
                                       §§goto(addr232);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr240);
                              }
                              else
                              {
                                 §1E§ = param1;
                                 §"9§.visible = true;
                                 _loc4_.visible = true;
                                 if(!_loc5_)
                                 {
                                    §§push(true);
                                    if(_loc6_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc6_)
                                       {
                                          Mouse.hide();
                                          §§goto(addr176);
                                          §§push(_loc4_.numChildren > 1);
                                       }
                                       §§goto(addr240);
                                    }
                                    §§goto(addr176);
                                 }
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr93);
                        }
                        if(§§pop())
                        {
                           if(_loc6_ || §'q§)
                           {
                              §§push(§!V§());
                              if(!(_loc5_ && param1))
                              {
                                 §§goto(addr93);
                              }
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr93);
               }
               addr99:
               return false;
            }
         }
         §§goto(addr36);
      }
      
      private static function §!V§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §]!>§.§8!@§(§9v§);
         if(!(_loc2_ && §'q§))
         {
            §"9§ = new _loc1_();
            if(§"9§)
            {
               addr45:
               §5X§.addChild(§"9§);
               if(!(_loc2_ && _loc3_))
               {
                  §5X§.mouseChildren = false;
                  §"9§.mouseEnabled = false;
                  §5X§.mouseEnabled = false;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr82);
               }
               §"9§.enabled = false;
               §"9§.cacheAsBitmap = true;
            }
            addr82:
            §§push(§"9§ == null);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public static function §3!4§() : Boolean
      {
         return §6!!§("_Down");
      }
      
      public static function §5e§() : Boolean
      {
         return §6!!§("_Up");
      }
      
      private static function §6!!§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(!§"9§);
            if(_loc4_ || param1)
            {
               §§push(§§pop());
               if(_loc4_ || §'q§)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           addr45:
                           §§push(§1E§.length < 1);
                           if(!(§1E§.length < 1))
                           {
                              §§pop();
                              if(!(_loc5_ && param1))
                              {
                                 addr57:
                                 addr56:
                                 if(!§@!>§)
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr60);
                                    }
                                 }
                                 var _loc2_:Sprite = §"9§.getChildByName(§1E§) as Sprite;
                                 if(!_loc5_)
                                 {
                                    §§push(!_loc2_);
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§pop();
                                             if(!_loc5_)
                                             {
                                                §§push(!_loc2_.getChildByName(§1E§ + param1));
                                                if(_loc4_)
                                                {
                                                   addr105:
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_)
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
                                                return §§pop();
                                             }
                                             addr110:
                                             var _loc3_:int = 0;
                                             while(true)
                                             {
                                                if(_loc3_ >= _loc2_.numChildren)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr157);
                                                }
                                                _loc2_.getChildAt(_loc3_).visible = false;
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   _loc3_++;
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                             _loc2_.getChildByName(§1E§ + param1).visible = true;
                                             addr157:
                                             return true;
                                          }
                                       }
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr108);
                              }
                           }
                           §§goto(addr57);
                        }
                        addr60:
                        return false;
                     }
                     §§goto(addr56);
                  }
               }
               §§goto(addr45);
            }
            §§goto(addr57);
         }
         §§goto(addr45);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§8d§)
            {
               if(!_loc1_)
               {
                  §§goto(addr33);
               }
            }
            else
            {
               §5X§ = new Sprite();
               if(_loc2_)
               {
                  §8d§ = true;
               }
            }
            return §5X§;
         }
         addr33:
         return §5X§;
      }
      
      public static function §7!G§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(§8d§);
            if(!(_loc4_ && §'q§))
            {
               §§push(!§§pop());
               if(_loc3_ || param2)
               {
                  §§push(§§pop());
                  if(!(_loc4_ && param1))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc4_ && §'q§))
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              §§push(!§"9§);
                              if(_loc3_)
                              {
                                 addr72:
                                 if(!§§pop())
                                 {
                                    if(!(_loc4_ && param2))
                                    {
                                       addr91:
                                       §§pop();
                                       §§push(!§"9§.visible);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    return;
                                 }
                              }
                              §5X§.x = param1;
                              §5X§.y = param2;
                           }
                           §§goto(addr112);
                        }
                     }
                  }
                  §§goto(addr72);
               }
               §§goto(addr91);
            }
            §§goto(addr72);
         }
         addr112:
      }
      
      public static function §4W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§"9§)
            {
               if(!_loc2_)
               {
                  addr32:
                  if(§"9§.visible)
                  {
                     if(_loc1_)
                     {
                        §7!<§ = §1E§;
                        if(_loc2_)
                        {
                        }
                        §§goto(addr45);
                     }
                  }
                  §7C§("");
               }
            }
            addr45:
            return;
         }
         §§goto(addr32);
      }
      
      public static function §&u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§"9§)
            {
               if(!_loc2_)
               {
                  if(!§"9§.visible)
                  {
                     if(_loc1_)
                     {
                        §7C§(§7!<§);
                     }
                  }
               }
            }
         }
      }
   }
}
