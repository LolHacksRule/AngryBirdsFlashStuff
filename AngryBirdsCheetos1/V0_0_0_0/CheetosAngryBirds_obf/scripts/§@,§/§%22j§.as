package §@,§
{
   import §0v§.§-'§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §"j§ extends Sprite
   {
      
      private static var §;G§:Boolean = false;
      
      private static const §]!%§:String = "Mouse_Cursors";
      
      private static var §"i§:Sprite;
      
      private static var §1%§:MovieClip;
      
      private static var §44§:String;
      
      private static var §%!L§:String = "";
      
      private static var §@>§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §;G§ = false;
            loop0:
            while(true)
            {
               §]!%§ = "Mouse_Cursors";
               while(true)
               {
                  §%!L§ = "";
                  loop2:
                  while(!(_loc1_ && _loc2_))
                  {
                     while(true)
                     {
                        §@>§ = false;
                        if(_loc2_ || _loc2_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §"j§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §4!!§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(§44§ == param1)
            {
               if(!(_loc5_ && §"j§))
               {
                  §§push(true);
                  if(!(_loc5_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr38:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               if(_loc6_)
               {
                  §44§ = "";
                  loop7:
                  while(true)
                  {
                     §@>§ = false;
                     addr105:
                     while(!_loc6_)
                     {
                        continue loop7;
                     }
                     §§push(§;G§);
                     loop6:
                     while(true)
                     {
                        §§push(!§§pop());
                        if(!(_loc5_ && param1))
                        {
                           if(!§§pop())
                           {
                              break;
                           }
                           loop2:
                           while(§§pop())
                           {
                              if(_loc6_ || _loc2_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(§@!Y§());
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          break loop2;
                                       }
                                       Mouse.show();
                                       addr86:
                                       §§push(false);
                                       if(_loc6_)
                                       {
                                          if(_loc5_)
                                          {
                                             while(true)
                                             {
                                                if(!(_loc6_ || param1))
                                                {
                                                   break loop6;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop6;
                                             }
                                             addr59:
                                          }
                                          return §§pop();
                                       }
                                    }
                                    addr100:
                                    while(true)
                                    {
                                       §§goto(addr59);
                                       §§goto(addr100);
                                    }
                                    addr56:
                                 }
                                 else
                                 {
                                    §§goto(addr105);
                                 }
                              }
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr86);
                                 }
                                 §§goto(addr100);
                              }
                           }
                           addr112:
                           var _loc3_:* = 0;
                           while(_loc3_ < §1%§.numChildren)
                           {
                              §1%§.getChildAt(_loc3_).visible = false;
                              if(!_loc5_)
                              {
                                 _loc3_++;
                                 if(!(_loc6_ || §"j§))
                                 {
                                    break;
                                 }
                              }
                           }
                           var _loc4_:Sprite;
                           if(!(_loc4_ = §1%§.getChildByName(param1) as Sprite))
                           {
                              if(_loc6_)
                              {
                                 §1%§.visible = false;
                                 if(!_loc5_)
                                 {
                                    Mouse.show();
                                    addr348:
                                    §§push(false);
                                 }
                                 else
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       addr328:
                                       while(true)
                                       {
                                          §44§ = param1;
                                          loop28:
                                          while(true)
                                          {
                                             §1%§.visible = true;
                                             loop29:
                                             while(true)
                                             {
                                                _loc4_.visible = true;
                                                while(true)
                                                {
                                                   §§push(true);
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr316:
                                                      loop10:
                                                      while(true)
                                                      {
                                                         Mouse.hide();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.numChildren > 1);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr306:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(Boolean(_loc4_.getChildByName(§44§ + "_Up")));
                                                                           while(!_loc5_)
                                                                           {
                                                                              if(!(_loc6_ || §"j§))
                                                                              {
                                                                                 §§goto(addr344);
                                                                              }
                                                                           }
                                                                           continue loop12;
                                                                           addr274:
                                                                        }
                                                                        continue loop29;
                                                                     }
                                                                     continue loop29;
                                                                  }
                                                                  addr305:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           §@>§ = true;
                                                                           loop18:
                                                                           while(!_loc5_)
                                                                           {
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc6_ || param1))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(!(_loc5_ && §"j§))
                                                                                       {
                                                                                          if(§§pop() >= _loc4_.numChildren)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             addr201:
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc4_.getChildAt(_loc3_).visible = false;
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_++;
                                                                                             }
                                                                                             addr240:
                                                                                          }
                                                                                          while(_loc5_)
                                                                                          {
                                                                                             §§goto(addr240);
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr248:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             §§push(0);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          continue loop23;
                                                                                       }
                                                                                    }
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop28;
                                                                     }
                                                                     continue loop28;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr243);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr344:
                                 return §§pop();
                              }
                              §§goto(addr316);
                           }
                           §§goto(addr328);
                        }
                        break;
                     }
                     §§pop();
                     §§goto(addr100);
                  }
               }
               else if(false)
               {
                  §§goto(addr56);
               }
               §§goto(addr112);
            }
         }
         §§goto(addr38);
      }
      
      private static function §@!Y§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §-'§.§]`§(§]!%§);
         if(!(_loc3_ && _loc3_))
         {
            §1%§ = new _loc1_();
            loop0:
            while(§1%§)
            {
               while(true)
               {
                  §"i§.addChild(§1%§);
                  addr119:
                  while(true)
                  {
                     §"i§.mouseChildren = false;
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           §1%§.mouseEnabled = false;
                           continue;
                        }
                        continue loop0;
                     }
                  }
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  §"i§.mouseEnabled = false;
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr119);
               }
            }
            §§push(§1%§ == null);
            if(!_loc3_)
            {
               return !§§pop();
            }
         }
         §§goto(addr116);
      }
      
      public static function §%!@§() : Boolean
      {
         return §8!Y§("_Down");
      }
      
      public static function §1!2§() : Boolean
      {
         return §8!Y§("_Up");
      }
      
      private static function §8!Y§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(!§1%§);
            if(_loc4_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     addr87:
                     while(true)
                     {
                        §§pop();
                        addr98:
                        while(true)
                        {
                           addr69:
                           while(true)
                           {
                              §§push(§44§.length < 1);
                           }
                        }
                     }
                     addr87:
                  }
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(§@>§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc4_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc4_ || _loc2_)
                                       {
                                          while(true)
                                          {
                                             addr46:
                                             while(§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!(_loc5_ && §"j§))
                                                   {
                                                      §§push(false);
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                if(!_loc5_)
                                                {
                                                   while(true)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop4;
                                                      }
                                                   }
                                                   addr67:
                                                }
                                                else
                                                {
                                                   §§goto(addr98);
                                                }
                                                §§goto(addr69);
                                             }
                                             break loop4;
                                          }
                                          addr45:
                                       }
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr87);
                                    §§goto(addr98);
                                 }
                                 §§goto(addr46);
                              }
                              var _loc2_:Sprite = §1%§.getChildByName(§44§) as Sprite;
                              if(_loc4_)
                              {
                                 §§push(!_loc2_);
                                 if(_loc4_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§pop();
                                          if(!_loc5_)
                                          {
                                             §§push(!_loc2_.getChildByName(§44§ + param1));
                                             if(_loc4_ || §"j§)
                                             {
                                                §§goto(addr132);
                                             }
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr136);
                                    }
                                 }
                                 addr132:
                                 if(§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       addr136:
                                       return false;
                                       addr135:
                                    }
                                 }
                                 var _loc3_:int = 0;
                                 while(true)
                                 {
                                    if(_loc3_ >= _loc2_.numChildren)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          if(_loc4_ || _loc3_)
                                          {
                                             _loc2_.getChildByName(§44§ + param1).visible = true;
                                             break;
                                          }
                                          _loc3_++;
                                          continue;
                                          addr194:
                                       }
                                       break;
                                    }
                                    _loc2_.getChildAt(_loc3_).visible = false;
                                    §§goto(addr194);
                                 }
                                 return true;
                              }
                              §§goto(addr136);
                           }
                        }
                        §§goto(addr45);
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr87);
         }
         §§goto(addr67);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§;G§)
            {
               if(!(_loc2_ && §"j§))
               {
                  return §"i§;
               }
               while(true)
               {
                  §§goto(addr58);
               }
               addr80:
            }
            while(true)
            {
               §"i§ = new Sprite();
               §§goto(addr80);
            }
         }
         addr58:
         while(true)
         {
            §;G§ = true;
            if(!(_loc2_ && _loc1_))
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return §"i§;
      }
      
      public static function §9Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§;G§);
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc4_ && §"j§))
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
               §§goto(addr120);
            }
         }
         §§goto(addr31);
      }
      
      public static function § g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§1%§)
            {
               if(_loc2_)
               {
                  addr62:
                  if(§1%§.visible)
                  {
                     while(true)
                     {
                        §%!L§ = §44§;
                        addr68:
                        addr20:
                        while(true)
                        {
                        }
                        §§goto(addr47);
                     }
                     addr65:
                  }
                  while(true)
                  {
                     §4!!§("");
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(!(_loc1_ && §"j§))
                     {
                        addr47:
                        return;
                     }
                     §§goto(addr65);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr20);
         }
         §§goto(addr62);
      }
      
      public static function §0l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§1%§)
            {
               if(_loc1_ || _loc1_)
               {
                  if(!§1%§.visible)
                  {
                     if(_loc1_)
                     {
                        addr57:
                        §4!!§(§%!L§);
                     }
                  }
               }
               §§goto(addr57);
            }
            return;
         }
         §§goto(addr57);
      }
   }
}
