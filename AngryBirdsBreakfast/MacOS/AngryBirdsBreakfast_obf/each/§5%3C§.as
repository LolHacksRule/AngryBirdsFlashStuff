package each
{
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §5<§ extends Sprite
   {
      
      private static var § !<§:Boolean = false;
      
      private static const §;!&§:String = "Mouse_Cursors";
      
      private static var §4!B§:Sprite;
      
      private static var §"t§:MovieClip;
      
      private static var §-!J§:String;
      
      private static var § A§:String = "";
      
      private static var § get§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            § !<§ = false;
            while(true)
            {
               §;!&§ = "Mouse_Cursors";
            }
            addr78:
         }
         loop1:
         do
         {
            § A§ = "";
            while(_loc2_)
            {
               § get§ = false;
               if(_loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr78);
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §5<§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §`J§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(!(_loc6_ && _loc3_))
         {
            if(§-!J§ == param1)
            {
               if(_loc5_ || param1)
               {
                  addr36:
                  §§push(true);
                  if(_loc5_)
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
                  §-!J§ = "";
                  loop7:
                  while(true)
                  {
                     § get§ = false;
                     loop8:
                     while(true)
                     {
                        §§push(§ !<§);
                        loop9:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop6:
                           while(§§pop())
                           {
                              addr87:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       §§push(§'!5§());
                                       loop3:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc6_ && §5<§)
                                                   {
                                                      continue loop7;
                                                   }
                                                   Mouse.show();
                                                }
                                                continue loop8;
                                                addr101:
                                             }
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop8;
                                             }
                                          }
                                          else
                                          {
                                             addr129:
                                             var _loc3_:* = 0;
                                             while(_loc3_ < §"t§.numChildren)
                                             {
                                                §"t§.getChildAt(_loc3_).visible = false;
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                _loc3_++;
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                             }
                                             if(!(_loc4_ = §"t§.getChildByName(param1) as Sprite))
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §"t§.visible = false;
                                                   if(!_loc6_)
                                                   {
                                                      Mouse.show();
                                                      addr400:
                                                      §§push(false);
                                                   }
                                                   else
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         Mouse.hide();
                                                         loop12:
                                                         for(; _loc5_ || _loc2_; while(!(_loc6_ && _loc3_))
                                                         {
                                                            §§push(0);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr292:
                                                               addr364:
                                                               addr371:
                                                               while(_loc5_ || §5<§)
                                                               {
                                                                  continue loop19;
                                                               }
                                                               if(_loc6_ && _loc2_)
                                                               {
                                                                  loop24:
                                                                  while(_loc6_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §-!J§ = param1;
                                                                        continue loop24;
                                                                     }
                                                                  }
                                                                  §"t§.visible = true;
                                                                  break loop12;
                                                                  addr393:
                                                               }
                                                               §§goto(addr358);
                                                            }
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               _loc4_.getChildByName(§-!J§ + "_Up").visible = true;
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr400);
                                                         })
                                                         {
                                                            §§push(_loc4_.numChildren > 1);
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc6_ && §5<§)
                                                               {
                                                                  addr358:
                                                                  _loc2_ = §§pop();
                                                                  continue loop11;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr344:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(_loc4_.getChildByName(§-!J§ + "_Up")));
                                                                        continue loop22;
                                                                     }
                                                                  }
                                                                  addr343:
                                                               }
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        § get§ = true;
                                                                        addr319:
                                                                        while(!(_loc6_ && §5<§))
                                                                        {
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     addr316:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§ get§);
                                                                     while(_loc5_ || §5<§)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§push(_loc2_);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     §§goto(addr396);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr343);
                                                         }
                                                         while(true)
                                                         {
                                                            _loc4_.visible = true;
                                                            §§goto(addr364);
                                                            §§goto(addr393);
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                   }
                                                   addr396:
                                                   return §§pop();
                                                }
                                                §§goto(addr344);
                                             }
                                             §§goto(addr378);
                                          }
                                       }
                                       continue loop9;
                                    }
                                    §§goto(addr101);
                                 }
                              }
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    break loop6;
                                 }
                                 if(_loc6_)
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr87);
                              }
                           }
                           addr118:
                           addr80:
                           §§pop();
                           while(true)
                           {
                              §§goto(addr83);
                              §§goto(addr118);
                           }
                        }
                     }
                  }
               }
               else if(false)
               {
                  §§goto(addr80);
               }
               §§goto(addr129);
            }
            §§goto(addr40);
         }
         §§goto(addr36);
      }
      
      private static function §'!5§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §<V§.§"!,§(§;!&§);
         if(!_loc3_)
         {
            §"t§ = new _loc1_();
            while(§"t§)
            {
               if(_loc2_ || §5<§)
               {
                  break;
               }
            }
            §§push(§"t§ == null);
            if(!_loc3_)
            {
               return !§§pop();
            }
         }
         loop1:
         while(true)
         {
            §4!B§.addChild(§"t§);
            loop2:
            while(true)
            {
               §4!B§.mouseChildren = false;
               loop3:
               while(true)
               {
                  §"t§.mouseEnabled = false;
                  loop4:
                  while(true)
                  {
                     §4!B§.mouseEnabled = false;
                     while(!_loc3_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §"t§.enabled = false;
                           while(_loc2_)
                           {
                              continue loop4;
                              §"t§.cacheAsBitmap = true;
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     continue loop3;
                  }
               }
            }
         }
      }
      
      public static function mouseDown() : Boolean
      {
         return §]r§("_Down");
      }
      
      public static function mouseUp() : Boolean
      {
         return §]r§("_Up");
      }
      
      private static function §]r§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(!§"t§);
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
                        addr104:
                        while(true)
                        {
                           addr72:
                           while(true)
                           {
                              §§push(§-!J§.length < 1);
                           }
                        }
                     }
                     addr93:
                  }
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc5_ || _loc2_))
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§pop();
                              addr88:
                              while(true)
                              {
                                 §§push(§ get§);
                                 if(!(_loc4_ && param1))
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop6;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(!§§pop());
                                    if(_loc4_)
                                    {
                                       continue loop7;
                                    }
                                 }
                                 if(!_loc5_)
                                 {
                                    §§goto(addr93);
                                 }
                              }
                              §§goto(addr104);
                           }
                           return §§pop();
                        }
                        loop9:
                        while(§§pop())
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§goto(addr48);
                              §§push(false);
                           }
                           else if(!(_loc4_ && _loc3_))
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       break loop9;
                                    }
                                 }
                                 addr70:
                              }
                              else
                              {
                                 §§goto(addr104);
                              }
                              §§goto(addr72);
                           }
                           else
                           {
                              §§goto(addr88);
                           }
                           §§goto(addr88);
                        }
                        var _loc2_:Sprite = §"t§.getChildByName(§-!J§) as Sprite;
                        if(_loc5_ || _loc2_)
                        {
                           §§push(!_loc2_);
                           if(_loc5_ || §5<§)
                           {
                              if(!§§pop())
                              {
                                 if(_loc5_ || §5<§)
                                 {
                                    §§pop();
                                    if(!_loc4_)
                                    {
                                       addr140:
                                       §§push(!_loc2_.getChildByName(§-!J§ + param1));
                                       if(_loc5_)
                                       {
                                          addr148:
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr152);
                                             }
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                    var _loc3_:int = 0;
                                    while(true)
                                    {
                                       if(_loc3_ >= _loc2_.numChildren)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             _loc2_.getChildByName(§-!J§ + param1).visible = true;
                                          }
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          _loc2_.getChildAt(_loc3_).visible = false;
                                          while(true)
                                          {
                                             _loc3_++;
                                          }
                                          addr205:
                                       }
                                       while(!_loc5_)
                                       {
                                          §§goto(addr205);
                                       }
                                    }
                                    return true;
                                 }
                                 addr152:
                                 return false;
                              }
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr140);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§ !<§)
            {
               if(!_loc1_)
               {
                  return §4!B§;
               }
               addr71:
               while(true)
               {
               }
               addr71:
            }
            while(true)
            {
               §4!B§ = new Sprite();
               while(_loc2_ || _loc1_)
               {
                  § !<§ = true;
                  if(_loc2_)
                  {
                     return §4!B§;
                  }
               }
               §§goto(addr71);
            }
         }
         §§goto(addr71);
      }
      
      public static function mouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§ !<§);
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        continue;
                     }
                  }
               }
               §§goto(addr130);
            }
         }
         §§goto(addr67);
      }
      
      public static function §`[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §5<§)
         {
            if(§"t§)
            {
               loop0:
               do
               {
                  if(§"t§.visible)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        § A§ = §-!J§;
                     }
                     loop1:
                     while(true)
                     {
                        addr28:
                        while(true)
                        {
                           §`J§("");
                           if(_loc1_ || §5<§)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr28);
               }
               while(!(_loc1_ || §5<§));
               
               addr59:
            }
            return;
         }
         §§goto(addr59);
      }
      
      public static function §3!X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §5<§)
         {
            if(§"t§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr43:
                  if(!§"t§.visible)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        §`J§(§ A§);
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
