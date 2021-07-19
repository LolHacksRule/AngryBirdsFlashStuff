package §>^§
{
   import §7'§.§!y§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §;!P§ extends Sprite
   {
      
      private static var §9!#§:Boolean = false;
      
      private static const §2!2§:String = "Mouse_Cursors";
      
      private static var §7E§:Sprite;
      
      private static var §-t§:MovieClip;
      
      private static var § for§:String;
      
      private static var §<5§:String = "";
      
      private static var §-5§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9!#§ = false;
            while(true)
            {
               §2!2§ = "Mouse_Cursors";
               loop1:
               while(_loc1_)
               {
                  §<5§ = "";
                  while(true)
                  {
                     §-5§ = false;
                     if(_loc1_ || §;!P§)
                     {
                        if(_loc1_ || §;!P§)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §;!P§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §#l§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(_loc6_)
         {
            if(§ for§ == param1)
            {
               if(!_loc5_)
               {
                  addr27:
                  §§push(true);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr31:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               if(!_loc5_)
               {
                  § for§ = "";
                  loop5:
                  while(true)
                  {
                     §-5§ = false;
                     §§push(§9!#§);
                     loop2:
                     while(true)
                     {
                        §§push(!§§pop());
                        addr122:
                        addr125:
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              addr124:
                              §§pop();
                              break;
                           }
                           addr102:
                           loop1:
                           while(§§pop())
                           {
                              §§push(§9!T§());
                              do
                              {
                                 if(§§pop())
                                 {
                                    break loop1;
                                 }
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    break loop3;
                                 }
                                 Mouse.show();
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 continue loop5;
                              }
                              while(§§push(false), _loc5_ && §;!P§);
                              
                              return §§pop();
                           }
                        }
                        while(true)
                        {
                           §§push(!§-t§);
                           if(!(_loc5_ && _loc3_))
                           {
                              if(!(_loc5_ && §;!P§))
                              {
                                 if(_loc6_ || param1)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr122);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr106);
                           §§goto(addr125);
                        }
                     }
                  }
               }
               else if(false)
               {
                  §§goto(addr125);
               }
               var _loc3_:* = 0;
               while(_loc3_ < §-t§.numChildren)
               {
                  §-t§.getChildAt(_loc3_).visible = false;
                  if(_loc6_)
                  {
                     _loc3_++;
                     if(!(_loc6_ || _loc2_))
                     {
                        break;
                     }
                  }
               }
               if(!(_loc4_ = §-t§.getChildByName(param1) as Sprite))
               {
                  if(!_loc5_)
                  {
                     §-t§.visible = false;
                     if(!(_loc5_ && _loc3_))
                     {
                        Mouse.show();
                     }
                     else
                     {
                        loop7:
                        while(true)
                        {
                           _loc4_.getChildByName(§ for§ + "_Up").visible = true;
                           loop8:
                           while(true)
                           {
                              if(_loc6_ || §;!P§)
                              {
                                 if(_loc6_)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             if(_loc6_ || §;!P§)
                                             {
                                                if(§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr325:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(_loc4_.getChildByName(§ for§ + "_Up")));
                                                         continue loop11;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(_loc6_)
                                                      {
                                                         §-5§ = true;
                                                         while(true)
                                                         {
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop10;
                                                      addr304:
                                                   }
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(§-5§);
                                                      addr267:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(0);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        addr280:
                                                                        loop21:
                                                                        while(_loc6_ || §;!P§)
                                                                        {
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              if(§§pop() >= _loc4_.numChildren)
                                                                              {
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              addr255:
                                                                              _loc4_.getChildAt(_loc3_).visible = false;
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc6_ || param1))
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    _loc3_++;
                                                                                    continue loop22;
                                                                                 }
                                                                                 addr374:
                                                                                 while(true)
                                                                                 {
                                                                                    §-t§.visible = true;
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_.visible = true;
                                                                                       addr352:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(true);
                                                                                             break loop22;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(_loc6_ || §;!P§)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              break loop21;
                                                                           }
                                                                           break loop10;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ || §;!P§))
                                                                           {
                                                                              §§push(false);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr381:
                                                                           }
                                                                           Mouse.hide();
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        addr361:
                                                                        while(true)
                                                                        {
                                                                           § for§ = param1;
                                                                        }
                                                                     }
                                                                     addr378:
                                                                  }
                                                                  §§goto(addr374);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr325);
                                                               }
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                             §§goto(addr332);
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr267);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr352);
                              }
                              §§goto(addr255);
                           }
                        }
                     }
                     §§goto(addr381);
                  }
                  §§goto(addr378);
               }
               §§goto(addr361);
            }
            §§goto(addr31);
         }
         §§goto(addr27);
      }
      
      private static function §9!T§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §!y§.§%!C§(§2!2§);
         if(!(_loc2_ && _loc2_))
         {
            §-t§ = new _loc1_();
            loop0:
            for(; §-t§; if(_loc2_ && _loc2_)
            {
               continue;
            },§§goto(addr96))
            {
               while(true)
               {
                  §7E§.addChild(§-t§);
                  loop4:
                  for(; !(_loc2_ && §;!P§); if(_loc2_ && §;!P§)
                  {
                     continue;
                  },§§goto(addr58))
                  {
                     §7E§.mouseEnabled = false;
                     loop5:
                     while(true)
                     {
                        §-t§.enabled = false;
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop5;
                           addr96:
                           §-t§.cacheAsBitmap = true;
                           if(_loc3_ || _loc3_)
                           {
                              continue loop4;
                           }
                        }
                        addr135:
                        while(true)
                        {
                           §7E§.mouseChildren = false;
                           while(true)
                           {
                              §-t§.mouseEnabled = false;
                              continue loop4;
                              addr58:
                              if(!(_loc2_ && _loc2_))
                              {
                                 break loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§push(§-t§ == null);
            if(_loc3_)
            {
               return !§§pop();
            }
         }
         §§goto(addr135);
      }
      
      public static function §3l§() : Boolean
      {
         return §-!M§("_Down");
      }
      
      public static function § !>§() : Boolean
      {
         return §-!M§("_Up");
      }
      
      private static function §-!M§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(!§-t§);
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
                              §§push(§ for§.length < 1);
                           }
                        }
                     }
                     addr82:
                  }
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc4_ || _loc3_))
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§-5§);
                                    if(!(_loc5_ && §;!P§))
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc5_ && param1))
                                       {
                                          addr36:
                                          if(_loc5_)
                                          {
                                             continue loop7;
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc4_ || param1)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(false);
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop6;
                                                         }
                                                         return §§pop();
                                                         addr52:
                                                      }
                                                      break loop7;
                                                   }
                                                   continue loop9;
                                                }
                                                if(false)
                                                {
                                                   break;
                                                }
                                             }
                                             var _loc2_:Sprite = §-t§.getChildByName(§ for§) as Sprite;
                                             if(_loc4_)
                                             {
                                                §§push(!_loc2_);
                                                if(!_loc5_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§pop();
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            addr119:
                                                            §§push(!_loc2_.getChildByName(§ for§ + param1));
                                                            if(!(_loc5_ && §;!P§))
                                                            {
                                                               addr132:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr136);
                                                                  }
                                                               }
                                                               var _loc3_:int = 0;
                                                               addr145:
                                                               if(_loc3_ >= _loc2_.numChildren)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        if(!(_loc4_ || param1))
                                                                        {
                                                                           _loc3_++;
                                                                           addr186:
                                                                           §§goto(addr145);
                                                                           addr194:
                                                                        }
                                                                        _loc2_.getChildByName(§ for§ + param1).visible = true;
                                                                        return true;
                                                                        addr173:
                                                                     }
                                                                     §§goto(addr186);
                                                                  }
                                                                  §§goto(addr173);
                                                               }
                                                               _loc2_.getChildAt(_loc3_).visible = false;
                                                               §§goto(addr194);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         addr136:
                                                         return false;
                                                      }
                                                   }
                                                }
                                                §§goto(addr132);
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr59);
                                       }
                                       §§goto(addr52);
                                    }
                                    §§goto(addr36);
                                 }
                                 addr77:
                              }
                              else
                              {
                                 §§goto(addr82);
                              }
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr38);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(§9!#§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr84);
               }
               else
               {
                  while(true)
                  {
                     addr57:
                     while(_loc2_ || _loc1_)
                     {
                        §9!#§ = true;
                        if(!(_loc1_ && §;!P§))
                        {
                           return §7E§;
                        }
                     }
                  }
                  addr86:
               }
            }
            while(true)
            {
               §7E§ = new Sprite();
               §§goto(addr57);
               §§goto(addr86);
            }
         }
         addr84:
         return §7E§;
      }
      
      public static function §0!?§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§9!#§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(!§-t§);
                              if(_loc3_ || param2)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                    addr102:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc3_ || param2))
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop5:
                                       while(!_loc4_)
                                       {
                                          §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             §§push(!§-t§.visible);
                                             if(_loc4_ && param2)
                                             {
                                                continue loop5;
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   break loop6;
                                                }
                                                while(true)
                                                {
                                                   §7E§.x = param1;
                                                   addr46:
                                                   while(!_loc4_)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                          return;
                                       }
                                       continue loop3;
                                       addr112:
                                    }
                                    §§goto(addr86);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr112);
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr102);
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public static function §"!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §;!P§))
         {
            if(§-t§)
            {
               if(!(_loc1_ && §;!P§))
               {
                  if(§-t§.visible)
                  {
                     while(true)
                     {
                        §<5§ = § for§;
                        addr78:
                        while(true)
                        {
                        }
                        addr45:
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        addr25:
                        return;
                        addr52:
                     }
                  }
                  while(true)
                  {
                     §#l§("");
                     if(_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr45);
                  }
                  §§goto(addr52);
               }
               §§goto(addr78);
            }
         }
         §§goto(addr25);
      }
      
      public static function §9^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§-t§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr48:
                  if(!§-t§.visible)
                  {
                     if(!_loc1_)
                     {
                        §#l§(§<5§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr48);
      }
   }
}
