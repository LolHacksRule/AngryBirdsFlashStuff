package §_-e3§
{
   import §_-0S§.§_-z1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-9Y§ extends Sprite
   {
      
      private static var §in§:Boolean = false;
      
      private static const §_-ET§:String = "Mouse_Cursors";
      
      private static var §_-jB§:Sprite;
      
      private static var §_-Lu§:MovieClip;
      
      private static var §_-86§:String;
      
      private static var §_-Nf§:String = "";
      
      private static var §_-zA§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §in§ = false;
            if(!_loc2_)
            {
               §_-ET§ = "Mouse_Cursors";
               if(!(_loc2_ && _loc1_))
               {
                  §_-Nf§ = "";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr59:
                     §_-zA§ = false;
                  }
               }
               return;
            }
         }
         §§goto(addr59);
      }
      
      public function §_-9Y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §_-k6§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(§_-86§ == param1)
            {
               if(_loc6_ || §_-9Y§)
               {
                  §§push(true);
                  if(_loc6_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr35:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               if(_loc6_)
               {
                  §_-86§ = "";
                  §_-zA§ = false;
                  if(_loc6_)
                  {
                     §§push(§in§);
                     if(_loc6_ || param1)
                     {
                        §§push(!§§pop());
                        if(_loc6_ || _loc2_)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc5_ && param1))
                              {
                                 §§pop();
                                 §§push(!§_-Lu§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr82:
                                    if(§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          addr85:
                                          §§push(§_-dM§());
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   addr97:
                                                   Mouse.show();
                                                }
                                                §§goto(addr100);
                                             }
                                          }
                                          §§goto(addr100);
                                       }
                                       §§goto(addr97);
                                    }
                                    var _loc3_:* = 0;
                                    while(_loc3_ < §_-Lu§.numChildren)
                                    {
                                       §_-Lu§.getChildAt(_loc3_).visible = false;
                                       if(!(_loc6_ || _loc2_))
                                       {
                                          break;
                                       }
                                       _loc3_++;
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                    }
                                    var _loc4_:Sprite;
                                    if(!(_loc4_ = §_-Lu§.getChildByName(param1) as Sprite))
                                    {
                                       §_-Lu§.visible = false;
                                       Mouse.show();
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          return false;
                                       }
                                       addr190:
                                       §§push(Boolean(_loc4_.getChildByName(§_-86§ + "_Up")));
                                       if(_loc6_)
                                       {
                                          addr198:
                                          if(§§pop())
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                §_-zA§ = true;
                                                addr209:
                                                if(§_-zA§)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(0);
                                                      if(!_loc5_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            addr224:
                                                            while(true)
                                                            {
                                                               _loc3_++;
                                                               continue loop1;
                                                            }
                                                         }
                                                         addr225:
                                                      }
                                                      while(§§pop() < _loc4_.numChildren)
                                                      {
                                                         _loc4_.getChildAt(_loc3_).visible = false;
                                                         §§goto(addr224);
                                                         §§goto(addr225);
                                                      }
                                                      if(_loc6_ || param1)
                                                      {
                                                      }
                                                      addr251:
                                                      return _loc2_;
                                                      addr250:
                                                   }
                                                   _loc4_.getChildByName(§_-86§ + "_Up").visible = true;
                                                }
                                                §§goto(addr250);
                                             }
                                             §§goto(addr224);
                                          }
                                       }
                                       §§goto(addr209);
                                    }
                                    else
                                    {
                                       §_-86§ = param1;
                                       §_-Lu§.visible = true;
                                       _loc4_.visible = true;
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(true);
                                          if(_loc6_ || _loc3_)
                                          {
                                             _loc2_ = §§pop();
                                             Mouse.hide();
                                             addr181:
                                             §§push(_loc4_.numChildren > 1);
                                             if(_loc4_.numChildren > 1)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§pop();
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr251);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr198);
                                 }
                                 addr100:
                                 return false;
                              }
                           }
                        }
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr85);
               }
               §§goto(addr97);
            }
         }
         §§goto(addr35);
      }
      
      private static function §_-dM§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §_-z1§.§_-tn§(§_-ET§);
         §_-Lu§ = new _loc1_();
         if(§_-Lu§)
         {
            §_-jB§.addChild(§_-Lu§);
            if(_loc3_)
            {
               §_-jB§.mouseChildren = false;
               if(_loc3_ || _loc3_)
               {
                  §_-Lu§.mouseEnabled = false;
                  if(_loc3_)
                  {
                     addr52:
                     §_-jB§.mouseEnabled = false;
                     addr55:
                     §_-Lu§.enabled = false;
                  }
                  §_-Lu§.cacheAsBitmap = true;
                  §§goto(addr61);
               }
               §§goto(addr55);
            }
            §§goto(addr52);
         }
         addr61:
         §§push(§_-Lu§ == null);
         if(!(_loc2_ && _loc3_))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function §_-gZ§() : Boolean
      {
         return §_-d6§("_Down");
      }
      
      public static function §_-TK§() : Boolean
      {
         return §_-d6§("_Up");
      }
      
      private static function §_-d6§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §_-9Y§))
         {
            §§push(!§_-Lu§);
            if(!_loc5_)
            {
               §§push(§§pop());
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     §§goto(addr59);
                  }
                  §§push(§§pop());
               }
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        §§push(!§_-zA§);
                        if(_loc4_)
                        {
                           addr51:
                           if(§§pop())
                           {
                              if(_loc4_ || param1)
                              {
                                 §§goto(addr59);
                              }
                              else
                              {
                                 §§goto(addr61);
                              }
                           }
                           §§goto(addr61);
                        }
                        §§goto(addr59);
                     }
                     addr61:
                     var _loc2_:Sprite = §_-Lu§.getChildByName(§_-86§) as Sprite;
                     if(!_loc5_)
                     {
                        §§push(!_loc2_);
                        if(_loc4_ || §_-9Y§)
                        {
                           if(!§§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§pop();
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(!_loc2_.getChildByName(§_-86§ + param1));
                                    if(!(_loc5_ && param1))
                                    {
                                       addr111:
                                       if(§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr115);
                                          }
                                       }
                                    }
                                    §§goto(addr115);
                                 }
                                 var _loc3_:int = 0;
                                 do
                                 {
                                    if(_loc3_ >= _loc2_.numChildren)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr165);
                                    }
                                    _loc2_.getChildAt(_loc3_).visible = false;
                                    if(_loc5_ && §_-9Y§)
                                    {
                                       break;
                                    }
                                    _loc3_++;
                                 }
                                 while(_loc4_ || _loc3_);
                                 
                                 _loc2_.getChildByName(§_-86§ + param1).visible = true;
                                 addr165:
                                 return true;
                              }
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr115);
                     }
                     addr115:
                     return false;
                  }
               }
            }
            §§goto(addr51);
         }
         addr59:
         if(!_loc5_)
         {
            §§push(§_-86§.length < 1);
         }
         return false;
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§in§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  §§goto(addr32);
               }
            }
            else
            {
               §_-jB§ = new Sprite();
               if(_loc2_)
               {
                  §in§ = true;
               }
            }
            return §_-jB§;
         }
         addr32:
         return §_-jB§;
      }
      
      public static function §_-1L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§in§);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§pop();
                           §§push(!§_-Lu§);
                           if(!_loc4_)
                           {
                              addr54:
                              if(!§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    addr58:
                                    §§pop();
                                    if(_loc3_ || param2)
                                    {
                                       addr69:
                                       if(!§_-Lu§.visible)
                                       {
                                          §§goto(addr70);
                                       }
                                       else
                                       {
                                          §_-jB§.x = param1;
                                          if(_loc3_)
                                          {
                                             addr90:
                                             §_-jB§.y = param2;
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr90);
                                 }
                              }
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr58);
                     }
                  }
                  §§goto(addr54);
               }
               §§goto(addr58);
            }
            §§goto(addr54);
         }
         addr70:
      }
      
      public static function §_-i8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§_-Lu§)
            {
               if(!_loc1_)
               {
                  addr20:
                  if(§_-Lu§.visible)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §_-Nf§ = §_-86§;
                        if(_loc1_ && §_-9Y§)
                        {
                        }
                     }
                     §§goto(addr57);
                  }
               }
               §_-k6§("");
            }
            addr57:
            return;
         }
         §§goto(addr20);
      }
      
      public static function §_-Ud§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§_-Lu§)
            {
               if(_loc1_ || _loc1_)
               {
                  if(!§_-Lu§.visible)
                  {
                     if(_loc1_)
                     {
                        addr43:
                        §_-k6§(§_-Nf§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
