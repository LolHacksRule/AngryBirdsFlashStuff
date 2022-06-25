package §6z§
{
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §+!D§ extends Sprite
   {
      
      private static var §6!9§:Boolean = false;
      
      private static const §^!`§:String = "Mouse_Cursors";
      
      private static var §;G§:Sprite;
      
      private static var §'b§:MovieClip;
      
      private static var §&!o§:String;
      
      private static var §!!O§:String = "";
      
      private static var §%z§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6!9§ = false;
            loop0:
            while(true)
            {
               §^!`§ = "Mouse_Cursors";
               while(true)
               {
                  §!!O§ = "";
                  loop2:
                  while(_loc1_ || §+!D§)
                  {
                     while(true)
                     {
                        §%z§ = false;
                        if(_loc1_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §+!D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §,!=§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(_loc5_)
         {
            if(§&!o§ == param1)
            {
               if(!_loc6_)
               {
                  addr26:
                  §§push(true);
                  if(!(_loc6_ && param1))
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
               if(!(_loc6_ && §+!D§))
               {
                  §&!o§ = "";
                  while(true)
                  {
                     §%z§ = false;
                  }
                  addr123:
               }
               loop1:
               while(true)
               {
                  §§push(§6!9§);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(§@'§());
                                    while(!_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop2;
                                       }
                                       if(!§§pop())
                                       {
                                          if(_loc6_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          if(_loc5_)
                                          {
                                             Mouse.show();
                                             continue;
                                          }
                                          §§goto(addr123);
                                       }
                                       else
                                       {
                                          addr124:
                                          var _loc3_:int = 0;
                                          addr143:
                                          if(_loc3_ < §'b§.numChildren)
                                          {
                                             §'b§.getChildAt(_loc3_).visible = false;
                                             if(!_loc6_)
                                             {
                                                _loc3_++;
                                                if(_loc5_ || _loc3_)
                                                {
                                                }
                                                addr147:
                                                if(!(_loc4_ = §'b§.getChildByName(param1) as Sprite))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §'b§.visible = false;
                                                      if(_loc5_)
                                                      {
                                                         Mouse.show();
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr363:
                                                   §&!o§ = param1;
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §'b§.visible = true;
                                                      _loc4_.visible = true;
                                                      addr350:
                                                      _loc2_ = true;
                                                      Mouse.hide();
                                                      addr326:
                                                      addr356:
                                                      addr351:
                                                      addr347:
                                                      addr361:
                                                      §§push(_loc4_.numChildren > 1);
                                                      if(_loc4_.numChildren > 1)
                                                      {
                                                         addr328:
                                                         if(!_loc6_)
                                                         {
                                                            §§pop();
                                                            addr331:
                                                            if(!_loc6_)
                                                            {
                                                               addr307:
                                                               if(_loc4_.getChildByName(§&!o§ + "_Up"))
                                                               {
                                                                  addr308:
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §%z§ = true;
                                                                     addr318:
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr279:
                                                                        §§push(§%z§);
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!(_loc6_ && §+!D§))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr289:
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    addr297:
                                                                                    _loc3_ = 0;
                                                                                    addr195:
                                                                                    addr298:
                                                                                    §§push(_loc3_);
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       if(§§pop() >= _loc4_.numChildren)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                _loc4_.getChildByName(§&!o§ + "_Up").visible = true;
                                                                                                addr223:
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(!(_loc6_ && §+!D§))
                                                                                                            {
                                                                                                               if(_loc5_ || §+!D§)
                                                                                                               {
                                                                                                                  addr164:
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc5_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc6_ && param1)
                                                                                                                     {
                                                                                                                        §§goto(addr326);
                                                                                                                     }
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        return §§pop();
                                                                                                                     }
                                                                                                                     §§goto(addr376);
                                                                                                                  }
                                                                                                                  §§goto(addr279);
                                                                                                               }
                                                                                                               §§goto(addr363);
                                                                                                            }
                                                                                                            §§goto(addr331);
                                                                                                         }
                                                                                                         §§goto(addr308);
                                                                                                      }
                                                                                                      §§goto(addr289);
                                                                                                   }
                                                                                                   addr269:
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      _loc3_++;
                                                                                                      addr253:
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr195);
                                                                                                      }
                                                                                                      §§goto(addr298);
                                                                                                   }
                                                                                                   §§goto(addr318);
                                                                                                }
                                                                                                §§goto(addr253);
                                                                                             }
                                                                                             §§goto(addr356);
                                                                                          }
                                                                                          §§goto(addr223);
                                                                                       }
                                                                                       _loc4_.getChildAt(_loc3_).visible = false;
                                                                                       §§goto(addr269);
                                                                                    }
                                                                                    §§goto(addr297);
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                              §§goto(addr164);
                                                                           }
                                                                           §§goto(addr328);
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                            §§goto(addr363);
                                                         }
                                                         §§goto(addr350);
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                }
                                                addr376:
                                                return §§pop();
                                                §§push(false);
                                             }
                                             §§goto(addr143);
                                          }
                                          §§goto(addr147);
                                       }
                                    }
                                    continue loop3;
                                    addr84:
                                 }
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc5_ || _loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr84);
                                 }
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 addr66:
                                 while(!(_loc6_ && param1))
                                 {
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr124);
                           }
                           return §§pop();
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr35);
         }
         §§goto(addr26);
      }
      
      private static function §@'§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §9!N§.§0!k§(§^!`§);
         if(_loc3_)
         {
            §'b§ = new _loc1_();
            loop0:
            for(; §'b§; while(!(_loc2_ && _loc2_))
            {
               §;G§.mouseChildren = false;
               do
               {
                  §'b§.mouseEnabled = false;
                  do
                  {
                     §;G§.mouseEnabled = false;
                     loop5:
                     while(true)
                     {
                        §'b§.enabled = false;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop5;
                        }
                        §§goto(addr115);
                     }
                  }
                  while(!(_loc3_ || §+!D§));
                  
               }
               while(!(_loc3_ || _loc2_));
               
               if(_loc2_)
               {
                  continue;
               }
            })
            {
               while(true)
               {
                  §;G§.addChild(§'b§);
                  continue loop0;
               }
            }
            §§goto(addr25);
         }
         addr25:
         §§push(§'b§ == null);
         if(_loc3_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      public static function §,3§() : Boolean
      {
         return §53§("_Down");
      }
      
      public static function §&!X§() : Boolean
      {
         return §53§("_Up");
      }
      
      private static function §53§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §§push(!§'b§);
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
                        addr98:
                        while(true)
                        {
                           addr59:
                           while(true)
                           {
                              §§push(§&!o§.length < 1);
                           }
                        }
                     }
                     addr97:
                  }
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc5_ && _loc3_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§pop();
                              addr75:
                              while(_loc4_ || _loc2_)
                              {
                                 §§push(§%z§);
                                 if(!_loc5_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc5_)
                                    {
                                       continue loop7;
                                    }
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop6;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                              }
                              §§goto(addr98);
                           }
                        }
                        loop9:
                        while(§§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§goto(addr45);
                              §§push(false);
                           }
                           else
                           {
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       break loop9;
                                    }
                                 }
                                 addr57:
                              }
                              else
                              {
                                 §§goto(addr75);
                              }
                              §§goto(addr59);
                           }
                           §§goto(addr75);
                        }
                        var _loc2_:Sprite = §'b§.getChildByName(§&!o§) as Sprite;
                        if(_loc4_)
                        {
                           §§push(!_loc2_);
                           if(!(_loc5_ && param1))
                           {
                              if(!§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       §§push(!_loc2_.getChildByName(§&!o§ + param1));
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr137:
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr141);
                                             }
                                          }
                                       }
                                       §§goto(addr141);
                                    }
                                    var _loc3_:int = 0;
                                    while(true)
                                    {
                                       if(_loc3_ >= _loc2_.numChildren)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!(_loc4_ || param1))
                                             {
                                                continue;
                                             }
                                             if(!_loc5_)
                                             {
                                                _loc2_.getChildByName(§&!o§ + param1).visible = true;
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
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr141);
                        }
                        addr141:
                        return false;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §+!D§)
         {
            if(!§6!9§)
            {
               loop0:
               while(true)
               {
                  §;G§ = new Sprite();
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     if(_loc1_)
                     {
                        §6!9§ = true;
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr45);
               }
            }
            return §;G§;
         }
         addr45:
         return §;G§;
      }
      
      public static function §&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(§6!9§);
            if(!_loc4_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(!§'b§);
                           loop4:
                           while(!_loc4_)
                           {
                              addr73:
                              if(_loc4_ && _loc3_)
                              {
                                 continue;
                              }
                              if(!(_loc3_ || param2))
                              {
                                 continue loop2;
                              }
                              while(§§pop())
                              {
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    while(true)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                 }
                                 addr46:
                                 addr109:
                                 addr46:
                                 if(!_loc4_)
                                 {
                                    return;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§push(!§'b§.visible);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§goto(addr73);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop7;
                                       }
                                       addr127:
                                    }
                                 }
                                 continue loop4;
                              }
                              while(true)
                              {
                                 §;G§.x = param1;
                                 do
                                 {
                                    §;G§.y = param2;
                                 }
                                 while(_loc4_ && _loc3_);
                                 
                                 if(_loc4_ && §+!D§)
                                 {
                                    §§goto(addr109);
                                 }
                                 §§goto(addr46);
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        §§goto(addr127);
                     }
                     §§goto(addr87);
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public static function §&!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§'b§)
            {
               if(_loc2_ || _loc1_)
               {
                  if(§'b§.visible)
                  {
                     addr55:
                     while(true)
                     {
                        §!!O§ = §&!o§;
                        addr58:
                        while(true)
                        {
                        }
                     }
                     addr55:
                  }
                  while(true)
                  {
                     §,!=§("");
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            return;
         }
         §§goto(addr55);
      }
      
      public static function §-A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§'b§)
            {
               if(!_loc1_)
               {
                  if(!§'b§.visible)
                  {
                     if(_loc2_ || _loc2_)
                     {
                     }
                  }
                  §§goto(addr46);
               }
               §,!=§(§!!O§);
            }
         }
         addr46:
      }
   }
}
