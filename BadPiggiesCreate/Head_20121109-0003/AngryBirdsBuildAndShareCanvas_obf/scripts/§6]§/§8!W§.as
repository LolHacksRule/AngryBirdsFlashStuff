package §6]§
{
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §8!W§ extends Sprite
   {
      
      private static var §!"6§:Boolean = false;
      
      private static const §9]§:String = "Mouse_Cursors";
      
      private static var §]<§:Sprite;
      
      private static var §@"1§:MovieClip;
      
      private static var §%2§:String;
      
      private static var §6!@§:String = "";
      
      private static var §;4§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §8!W§)
         {
            §!"6§ = false;
            loop0:
            while(true)
            {
               §9]§ = "Mouse_Cursors";
               addr79:
               while(true)
               {
                  §6!@§ = "";
                  continue loop0;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §8!W§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §9i§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(_loc5_ || §8!W§)
         {
            if(§%2§ == param1)
            {
               if(!_loc6_)
               {
                  §§push(true);
                  if(_loc5_ || _loc2_)
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
               if(!(_loc6_ && param1))
               {
                  §%2§ = "";
                  §;4§ = false;
                  loop0:
                  while(true)
                  {
                     §§push(§!"6§);
                     if(!_loc6_)
                     {
                        §§push(!§§pop());
                     }
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr114:
                              while(true)
                              {
                                 §§push(!§@"1§);
                              }
                           }
                           addr113:
                        }
                        while(true)
                        {
                           loop4:
                           do
                           {
                              if(§§pop())
                              {
                                 §§push(§@E§());
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    §§push(false);
                                    addr105:
                                    continue loop1;
                                    if(_loc5_ || _loc2_)
                                    {
                                       continue loop4;
                                    }
                                 }
                              }
                              var _loc3_:int = 0;
                              addr143:
                              if(_loc3_ < §@"1§.numChildren)
                              {
                                 §@"1§.getChildAt(_loc3_).visible = false;
                                 if(!_loc6_)
                                 {
                                    _loc3_++;
                                    if(_loc5_ || _loc2_)
                                    {
                                    }
                                    addr147:
                                    if(!(_loc4_ = §@"1§.getChildByName(param1) as Sprite))
                                    {
                                       if(_loc5_)
                                       {
                                          §@"1§.visible = false;
                                          if(!_loc6_)
                                          {
                                             Mouse.show();
                                             addr395:
                                             §§push(false);
                                          }
                                          else
                                          {
                                             _loc3_++;
                                             addr176:
                                             addr265:
                                             addr247:
                                             §§push(_loc3_);
                                             if(!(_loc6_ && §8!W§))
                                             {
                                                if(§§pop() >= _loc4_.numChildren)
                                                {
                                                   if(_loc5_ || §8!W§)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            _loc4_.getChildByName(§%2§ + "_Up").visible = true;
                                                            addr221:
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(!(_loc6_ && §8!W§))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc5_ || §8!W§)
                                                                     {
                                                                        addr164:
                                                                        §§push(_loc2_);
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           addr268:
                                                                           if(!(_loc6_ && §8!W§))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr279:
                                                                                    _loc3_ = 0;
                                                                                    §§goto(addr176);
                                                                                    addr280:
                                                                                    addr278:
                                                                                 }
                                                                                 §§goto(addr164);
                                                                              }
                                                                              §§goto(addr391);
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr290:
                                                                              if(§§pop())
                                                                              {
                                                                                 addr292:
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    addr375:
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       §;4§ = true;
                                                                                       addr354:
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          addr266:
                                                                                          §§goto(addr268);
                                                                                          §§push(§;4§);
                                                                                       }
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             Mouse.hide();
                                                                                             addr343:
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§push(_loc4_.numChildren > 1);
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr331:
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§goto(addr268);
                                                                                                         §§push(Boolean(_loc4_.getChildByName(§%2§ + "_Up")));
                                                                                                         addr339:
                                                                                                      }
                                                                                                      _loc2_ = §§pop();
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                   §§goto(addr290);
                                                                                                }
                                                                                                §§goto(addr331);
                                                                                             }
                                                                                             §@"1§.visible = true;
                                                                                             addr388:
                                                                                          }
                                                                                          _loc4_.visible = true;
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                       §§push(true);
                                                                                    }
                                                                                    §%2§ = param1;
                                                                                    §§goto(addr388);
                                                                                 }
                                                                                 §§goto(addr343);
                                                                              }
                                                                              §§goto(addr266);
                                                                           }
                                                                           §§goto(addr331);
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr395);
                                                                  }
                                                                  §§goto(addr339);
                                                               }
                                                               §§goto(addr354);
                                                            }
                                                            if(_loc5_ || §8!W§)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr265);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                _loc4_.getChildAt(_loc3_).visible = false;
                                                §§goto(addr221);
                                             }
                                             §§goto(addr279);
                                          }
                                          addr391:
                                          return §§pop();
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr375);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr147);
                           }
                           while(_loc6_);
                           
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr113);
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr114);
            }
         }
         §§goto(addr40);
      }
      
      private static function §@E§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §69§.§ 0§(§9]§);
         if(_loc2_ || _loc1_)
         {
            §@"1§ = new _loc1_();
            loop0:
            while(§@"1§)
            {
               loop1:
               while(true)
               {
                  §]<§.addChild(§@"1§);
                  loop2:
                  while(!_loc3_)
                  {
                     §]<§.mouseChildren = false;
                     loop3:
                     while(true)
                     {
                        §@"1§.mouseEnabled = false;
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                           addr67:
                           while(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 §@"1§.enabled = false;
                                 while(!_loc3_)
                                 {
                                    §@"1§.cacheAsBitmap = true;
                                    if(!_loc3_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
            §§push(§@"1§ == null);
            if(_loc2_)
            {
               return !§§pop();
            }
         }
         §§goto(addr95);
      }
      
      public static function §for§() : Boolean
      {
         return §0!#§("_Down");
      }
      
      public static function §^!R§() : Boolean
      {
         return §0!#§("_Up");
      }
      
      private static function §0!#§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(!§@"1§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr83:
                        while(true)
                        {
                           addr59:
                           while(true)
                           {
                              §§push(§%2§.length < 1);
                              addr64:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     addr82:
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc4_ || _loc2_))
                     {
                        continue loop1;
                     }
                     if(!§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(§;4§);
                              if(_loc4_)
                              {
                                 §§push(!§§pop());
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr54);
                                                   }
                                                   §§goto(addr83);
                                                }
                                                else
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§goto(addr59);
                                             }
                                             var _loc2_:Sprite = §@"1§.getChildByName(§%2§) as Sprite;
                                             if(_loc4_)
                                             {
                                                §§push(!_loc2_);
                                                if(!_loc5_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr111:
                                                         §§pop();
                                                         if(_loc4_ || param1)
                                                         {
                                                            §§push(!_loc2_.getChildByName(§%2§ + param1));
                                                            if(_loc4_)
                                                            {
                                                               addr127:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc5_ && _loc2_)
                                                                  {
                                                                     addr137:
                                                                     var _loc3_:int = 0;
                                                                     addr145:
                                                                     if(_loc3_ >= _loc2_.numChildren)
                                                                     {
                                                                        if(_loc4_ || §8!W§)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              addr169:
                                                                              if(!(_loc5_ && §8!W§))
                                                                              {
                                                                                 §§goto(addr145);
                                                                              }
                                                                              _loc3_++;
                                                                              §§goto(addr169);
                                                                              addr194:
                                                                           }
                                                                           _loc2_.getChildByName(§%2§ + param1).visible = true;
                                                                        }
                                                                        return true;
                                                                     }
                                                                     _loc2_.getChildAt(_loc3_).visible = false;
                                                                     §§goto(addr194);
                                                                  }
                                                               }
                                                               §§goto(addr137);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         §§push(false);
                                                      }
                                                      addr136:
                                                      return §§pop();
                                                   }
                                                   §§goto(addr127);
                                                }
                                                §§goto(addr111);
                                             }
                                             §§goto(addr137);
                                             addr47:
                                          }
                                          else
                                          {
                                             §§goto(addr82);
                                          }
                                          §§goto(addr83);
                                       }
                                       break;
                                    }
                                    continue loop4;
                                 }
                              }
                              addr54:
                              return false;
                           }
                           §§goto(addr64);
                        }
                     }
                     §§goto(addr47);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr83);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(§!"6§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr74);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr76:
               }
            }
            while(true)
            {
               §]<§ = new Sprite();
               while(!_loc1_)
               {
                  §!"6§ = true;
                  if(!_loc1_)
                  {
                     return §]<§;
                  }
               }
               §§goto(addr76);
            }
         }
         addr74:
         return §]<§;
      }
      
      public static function §;M§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(§!"6§);
            if(_loc4_ || param2)
            {
               §§push(!§§pop());
               if(_loc4_ || param1)
               {
                  addr124:
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop0:
                        while(true)
                        {
                           §§pop();
                           addr127:
                           loop8:
                           while(true)
                           {
                              §§push(!§@"1§);
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       if(!§§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§pop();
                                             addr97:
                                             while(true)
                                             {
                                                §§push(!§@"1§.visible);
                                                if(!(_loc4_ || §8!W§))
                                                {
                                                   continue loop3;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             continue loop8;
                                          }
                                          addr96:
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             do
                                             {
                                                §]<§.x = param1;
                                                do
                                                {
                                                   §]<§.y = param2;
                                                }
                                                while(_loc3_ && _loc3_);
                                                
                                             }
                                             while(_loc3_ && param2);
                                             
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                continue loop8;
                                             }
                                          }
                                          if(_loc4_)
                                          {
                                             return;
                                          }
                                          §§goto(addr97);
                                       }
                                       return;
                                    }
                                    break;
                                 }
                                 continue loop1;
                                 addr91:
                              }
                              §§goto(addr96);
                           }
                        }
                        addr126:
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr124);
         }
         §§goto(addr127);
      }
      
      public static function §?!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §8!W§)
         {
            if(§@"1§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr55:
                  if(§@"1§.visible)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §6!@§ = §%2§;
                        loop0:
                        while(true)
                        {
                           addr29:
                           while(true)
                           {
                              §9i§("");
                              if(!_loc1_)
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                        }
                        addr25:
                        return;
                        addr78:
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr29);
               }
               §§goto(addr78);
            }
            §§goto(addr25);
         }
         §§goto(addr55);
      }
      
      public static function §1"'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§@"1§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  if(!§@"1§.visible)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr63:
                        §9i§(§6!@§);
                     }
                  }
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
   }
}
