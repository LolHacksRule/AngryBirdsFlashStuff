package §5t§
{
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §`"+§ extends Sprite
   {
      
      private static var §!b§:Boolean = false;
      
      private static const §6"V§:String = "Mouse_Cursors";
      
      private static var §'r§:Sprite;
      
      private static var §##T§:MovieClip;
      
      private static var §0z§:String;
      
      private static var §+!M§:String = "";
      
      private static var §##<§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §!b§ = false;
         }
         loop0:
         do
         {
            §6"V§ = "Mouse_Cursors";
            while(true)
            {
               §+!M§ = "";
               while(!_loc1_)
               {
                  §##<§ = false;
                  if(!_loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §`"+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §-G§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(!(_loc6_ && _loc3_))
         {
            if(§0z§ == param1)
            {
               if(!(_loc6_ && _loc3_))
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
               if(!(_loc6_ && §`"+§))
               {
                  §0z§ = "";
                  loop8:
                  while(true)
                  {
                     §##<§ = false;
                     addr129:
                     loop4:
                     while(true)
                     {
                        §§push(§!b§);
                        if(_loc5_ || param1)
                        {
                           §§push(!§§pop());
                           if(!(_loc6_ && §`"+§))
                           {
                              if(!§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr122:
                                    addr71:
                                    while(!_loc5_)
                                    {
                                       continue loop8;
                                    }
                                    addr124:
                                    while(true)
                                    {
                                       §§push(!§##T§);
                                       addr74:
                                       addr61:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             break loop4;
                                          }
                                          continue loop7;
                                       }
                                       return §§pop();
                                       §§goto(addr124);
                                    }
                                 }
                                 addr121:
                              }
                              break;
                           }
                        }
                        §§goto(addr121);
                        continue loop8;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§5]§());
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             Mouse.show();
                                             continue;
                                          }
                                          §§goto(addr129);
                                       }
                                       break;
                                    }
                                    continue;
                                 }
                                 addr134:
                                 var _loc3_:* = 0;
                                 while(_loc3_ < §##T§.numChildren)
                                 {
                                    §##T§.getChildAt(_loc3_).visible = false;
                                    if(_loc6_ && _loc2_)
                                    {
                                       break;
                                    }
                                    _loc3_++;
                                    if(!(_loc5_ || §`"+§))
                                    {
                                       break;
                                    }
                                 }
                                 if(!(_loc4_ = §##T§.getChildByName(param1) as Sprite))
                                 {
                                    if(!_loc6_)
                                    {
                                       §##T§.visible = false;
                                       if(_loc5_ || _loc3_)
                                       {
                                          Mouse.show();
                                       }
                                       else
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop11:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc5_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(§§pop() >= _loc4_.numChildren)
                                                         {
                                                            if(!(_loc6_ && §`"+§))
                                                            {
                                                               _loc4_.getChildByName(§0z§ + "_Up").visible = true;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     do
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          §§push(Boolean(_loc4_.getChildByName(§0z§ + "_Up")));
                                                                                          loop20:
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         §##<§ = true;
                                                                                                         addr304:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         addr304:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §0z§ = param1;
                                                                                                            addr378:
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §##T§.visible = true;
                                                                                                               addr356:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc5_ || param1))
                                                                                                                  {
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  _loc4_.visible = true;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ || §`"+§))
                                                                                                                     {
                                                                                                                        §§push(false);
                                                                                                                        break loop20;
                                                                                                                        addr385:
                                                                                                                     }
                                                                                                                     §§push(true);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        addr339:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           Mouse.hide();
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr365:
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(_loc4_.numChildren > 1);
                                                                                                         if(_loc6_ && _loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      §§goto(addr339);
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                                §§goto(addr304);
                                                                                             }
                                                                                          }
                                                                                          return §§pop();
                                                                                          addr281:
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                    addr322:
                                                                                 }
                                                                                 §§goto(addr338);
                                                                              }
                                                                           }
                                                                           §§goto(addr281);
                                                                        }
                                                                     }
                                                                     while(!§§pop());
                                                                     
                                                                     if(_loc5_)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr344);
                                                               }
                                                               else
                                                               {
                                                                  addr257:
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc3_++;
                                                                  addr241:
                                                                  if(_loc5_ || §`"+§)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr304);
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                         else
                                                         {
                                                            _loc4_.getChildAt(_loc3_).visible = false;
                                                         }
                                                         §§goto(addr257);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr322);
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                       §§goto(addr385);
                                    }
                                    §§goto(addr378);
                                 }
                                 §§goto(addr365);
                              }
                              §§goto(addr122);
                              addr87:
                           }
                           while(true)
                           {
                              §§push(false);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr87);
                           }
                           if(_loc6_ && param1)
                           {
                              §§goto(addr74);
                           }
                           §§goto(addr61);
                        }
                     }
                  }
               }
               else if(false)
               {
                  §§goto(addr71);
               }
               §§goto(addr134);
            }
            §§goto(addr40);
         }
         §§goto(addr36);
      }
      
      private static function §5]§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §5_§.§`"G§(§6"V§);
         if(!_loc2_)
         {
            §##T§ = new _loc1_();
            loop0:
            while(§##T§)
            {
               loop1:
               while(true)
               {
                  §'r§.addChild(§##T§);
                  loop2:
                  while(true)
                  {
                     §'r§.mouseChildren = false;
                     loop3:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        §##T§.mouseEnabled = false;
                        loop4:
                        while(true)
                        {
                           §'r§.mouseEnabled = false;
                           while(!_loc2_)
                           {
                              §##T§.enabled = false;
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§push(§##T§ == null);
            if(_loc3_)
            {
               return !§§pop();
            }
         }
         §§goto(addr97);
      }
      
      public static function §^U§() : Boolean
      {
         return §]§("_Down");
      }
      
      public static function §<"o§() : Boolean
      {
         return §]§("_Up");
      }
      
      private static function §]§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(!§##T§);
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
                        addr88:
                        while(true)
                        {
                           addr64:
                           while(true)
                           {
                              §§push(§0z§.length < 1);
                           }
                        }
                     }
                     addr87:
                  }
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              loop6:
                              while(_loc4_ || param1)
                              {
                                 §§push(§##<§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc5_ && §`"+§))
                                    {
                                       while(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(false);
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop5;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr87);
                                             }
                                             addr46:
                                          }
                                          else
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop6;
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr64);
                                          }
                                       }
                                       var _loc2_:Sprite = §##T§.getChildByName(§0z§) as Sprite;
                                       if(_loc4_)
                                       {
                                          §§push(!_loc2_);
                                          if(!_loc5_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr116);
                                                }
                                             }
                                             §§goto(addr137);
                                          }
                                          addr116:
                                          §§pop();
                                          if(!(_loc5_ && param1))
                                          {
                                             addr124:
                                             §§push(!_loc2_.getChildByName(§0z§ + param1));
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr137:
                                                if(§§pop())
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      §§goto(addr146);
                                                   }
                                                }
                                                var _loc3_:int = 0;
                                                addr155:
                                                if(_loc3_ >= _loc2_.numChildren)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      _loc2_.getChildByName(§0z§ + param1).visible = true;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      addr179:
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr155);
                                                      }
                                                      _loc3_++;
                                                      §§goto(addr179);
                                                      addr199:
                                                   }
                                                   return true;
                                                }
                                                _loc2_.getChildAt(_loc3_).visible = false;
                                                §§goto(addr199);
                                             }
                                             §§goto(addr146);
                                          }
                                          addr146:
                                          return false;
                                       }
                                       §§goto(addr124);
                                       addr41:
                                    }
                                 }
                                 §§goto(addr46);
                              }
                              §§goto(addr88);
                           }
                        }
                        §§goto(addr41);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!§!b§)
            {
               loop0:
               while(true)
               {
                  §'r§ = new Sprite();
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           break;
                        }
                        §!b§ = true;
                        if(_loc1_)
                        {
                           return §'r§;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         return §'r§;
      }
      
      public static function §1"L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§!b§);
            if(!_loc3_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr111:
                        while(true)
                        {
                           §§pop();
                           addr112:
                           while(true)
                           {
                              §§push(!§##T§);
                              addr86:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        addr111:
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           break;
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
                                 §§push(!§##T§.visible);
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop6:
                                                do
                                                {
                                                   §'r§.x = param1;
                                                   while(_loc4_)
                                                   {
                                                      §'r§.y = param2;
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break loop5;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                                while(!(_loc3_ && _loc3_));
                                                
                                                §§goto(addr112);
                                             }
                                             return;
                                          }
                                          return;
                                          addr72:
                                       }
                                       §§goto(addr111);
                                       §§goto(addr112);
                                    }
                                    break;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr86);
                           }
                        }
                        §§goto(addr72);
                     }
                  }
               }
            }
            §§goto(addr111);
         }
         §§goto(addr112);
      }
      
      public static function §+#`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§##T§)
            {
               do
               {
                  if(§##T§.visible)
                  {
                     while(true)
                     {
                        §+!M§ = §0z§;
                        addr73:
                        while(true)
                        {
                        }
                     }
                     addr70:
                  }
                  while(true)
                  {
                     §-G§("");
                     if(!(_loc1_ && §`"+§))
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr73);
                  }
               }
               while(!(_loc2_ || _loc2_));
               
               addr54:
            }
            return;
         }
         §§goto(addr54);
      }
      
      public static function §9!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§##T§)
            {
               if(!_loc1_)
               {
                  if(!§##T§.visible)
                  {
                     if(_loc2_ || §`"+§)
                     {
                        addr58:
                        §-G§(§+!M§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr58);
      }
   }
}
