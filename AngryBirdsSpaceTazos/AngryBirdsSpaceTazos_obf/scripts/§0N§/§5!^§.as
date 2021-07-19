package §0N§
{
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §5!^§ extends Sprite
   {
      
      private static var §]n§:Boolean = false;
      
      private static const §6!z§:String = "Mouse_Cursors";
      
      private static var §,![§:Sprite;
      
      private static var § !r§:MovieClip;
      
      private static var §^O§:String;
      
      private static var §'"3§:String = "";
      
      private static var §<!x§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §]n§ = false;
            loop0:
            while(true)
            {
               §6!z§ = "Mouse_Cursors";
               loop1:
               while(true)
               {
                  §'"3§ = "";
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        §<!x§ = false;
                        if(_loc1_ || §5!^§)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §5!^§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §<!w§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(_loc5_)
         {
            if(§^O§ == param1)
            {
               if(!(_loc6_ && _loc2_))
               {
                  addr31:
                  §§push(true);
                  if(!_loc6_)
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
               if(_loc5_ || §5!^§)
               {
                  §^O§ = "";
                  loop0:
                  while(true)
                  {
                     §<!x§ = false;
                     §§push(§]n§);
                     loop1:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    §§push(!§ !r§);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             continue loop0;
                                          }
                                       }
                                       continue loop0;
                                       addr84:
                                    }
                                    else
                                    {
                                       addr95:
                                    }
                                    loop5:
                                    for(; _loc5_ || §5!^§; while(true)
                                    {
                                       §§push(false);
                                       if(!_loc6_)
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          continue loop3;
                                       }
                                       continue loop5;
                                    },return §§pop())
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             Mouse.show();
                                             continue;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue loop2;
                                    var _loc3_:int = 0;
                                    addr153:
                                    if(_loc3_ < § !r§.numChildren)
                                    {
                                       § !r§.getChildAt(_loc3_).visible = false;
                                       if(_loc5_ || param1)
                                       {
                                          _loc3_++;
                                          if(_loc5_ || param1)
                                          {
                                          }
                                          addr157:
                                          if(!(_loc4_ = § !r§.getChildByName(param1) as Sprite))
                                          {
                                             if(_loc5_)
                                             {
                                                § !r§.visible = false;
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   Mouse.show();
                                                }
                                                addr375:
                                                §§push(false);
                                             }
                                             else
                                             {
                                                § !r§.visible = true;
                                                _loc4_.visible = true;
                                                addr335:
                                                _loc2_ = true;
                                                Mouse.hide();
                                                addr325:
                                                §§push(_loc4_.numChildren > 1);
                                                if(_loc4_.numChildren > 1)
                                                {
                                                   addr327:
                                                   §§pop();
                                                   addr305:
                                                   §§push(Boolean(_loc4_.getChildByName(§^O§ + "_Up")));
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                   }
                                                   return §§pop();
                                                   addr328:
                                                }
                                                addr351:
                                                addr341:
                                                addr336:
                                                addr332:
                                                addr346:
                                                if(§§pop())
                                                {
                                                   addr314:
                                                   §<!x§ = true;
                                                   if(_loc5_)
                                                   {
                                                      addr290:
                                                      if(§<!x§)
                                                      {
                                                         addr292:
                                                         _loc3_ = 0;
                                                         addr291:
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr214:
                                                               §§push(_loc3_);
                                                               if(!(_loc6_ && §5!^§))
                                                               {
                                                                  if(§§pop() >= _loc4_.numChildren)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       _loc4_.getChildByName(§^O§ + "_Up").visible = true;
                                                                                       addr255:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             addr189:
                                                                                             §§push(_loc2_);
                                                                                             if(!(_loc6_ && §5!^§))
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(_loc6_ && §5!^§)
                                                                                                         {
                                                                                                            §§goto(addr335);
                                                                                                         }
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      §§goto(addr325);
                                                                                                   }
                                                                                                   §§goto(addr327);
                                                                                                }
                                                                                                §§goto(addr305);
                                                                                             }
                                                                                             §§goto(addr290);
                                                                                          }
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             addr348:
                                                                                             §^O§ = param1;
                                                                                             §§goto(addr351);
                                                                                          }
                                                                                          §§goto(addr375);
                                                                                       }
                                                                                       §§goto(addr291);
                                                                                    }
                                                                                    §§goto(addr341);
                                                                                 }
                                                                                 §§goto(addr314);
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           addr278:
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 _loc3_++;
                                                                                 addr267:
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§goto(addr214);
                                                                                 }
                                                                                 §§goto(addr336);
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        §§goto(addr267);
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                                  _loc4_.getChildAt(_loc3_).visible = false;
                                                                  §§goto(addr278);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            §§goto(addr346);
                                                         }
                                                         §§goto(addr328);
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   §§goto(addr335);
                                                }
                                                §§goto(addr290);
                                             }
                                             §§goto(addr327);
                                          }
                                          §§goto(addr348);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr157);
                                 }
                              }
                           }
                           §§goto(addr84);
                        }
                     }
                  }
               }
               §§goto(addr112);
            }
            §§goto(addr35);
         }
         §§goto(addr31);
      }
      
      private static function §@"B§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = § !h§.§["3§(§6!z§);
         if(_loc3_)
         {
            § !r§ = new _loc1_();
            loop0:
            for(; § !r§; while(!(_loc2_ && _loc3_))
            {
               §,![§.mouseChildren = false;
               §§goto(addr99);
            })
            {
               while(true)
               {
                  §,![§.addChild(§ !r§);
                  continue loop0;
                  loop5:
                  while(_loc3_ || _loc2_)
                  {
                     § !r§.enabled = false;
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop5;
                     }
                     while(true)
                     {
                        §,![§.mouseEnabled = false;
                        continue loop5;
                     }
                  }
               }
            }
            §§push(§ !r§ == null);
            if(!(_loc2_ && _loc1_))
            {
               return !§§pop();
            }
         }
         §§goto(addr94);
      }
      
      public static function §-!,§() : Boolean
      {
         return §3!a§("_Down");
      }
      
      public static function §!!x§() : Boolean
      {
         return §3!a§("_Up");
      }
      
      private static function §3!a§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(!§ !r§);
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
                        addr93:
                        while(true)
                        {
                           addr67:
                           while(true)
                           {
                              §§push(§^O§.length < 1);
                           }
                        }
                     }
                     addr92:
                  }
                  loop3:
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
                           for(; _loc4_; if(_loc5_ && §5!^§)
                           {
                              continue;
                           },§§push(!§§pop()),if(_loc4_ || _loc3_)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§goto(addr52);
                                    }
                                    else if(false)
                                    {
                                       break;
                                    }
                                 }
                                 var _loc2_:Sprite = § !r§.getChildByName(§^O§) as Sprite;
                                 if(_loc4_)
                                 {
                                    §§push(!_loc2_);
                                    if(!(_loc5_ && §5!^§))
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             addr126:
                                             §§pop();
                                             if(_loc4_ || §5!^§)
                                             {
                                                §§push(!_loc2_.getChildByName(§^O§ + param1));
                                                if(!_loc5_)
                                                {
                                                   addr142:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         addr152:
                                                         var _loc3_:int = 0;
                                                         addr160:
                                                         if(_loc3_ >= _loc2_.numChildren)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_ || §5!^§)
                                                               {
                                                                  if(!(_loc4_ || _loc2_))
                                                                  {
                                                                     _loc3_++;
                                                                     addr201:
                                                                     §§goto(addr160);
                                                                     addr209:
                                                                  }
                                                                  _loc2_.getChildByName(§^O§ + param1).visible = true;
                                                                  return true;
                                                                  addr188:
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                         _loc2_.getChildAt(_loc3_).visible = false;
                                                         §§goto(addr209);
                                                      }
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr151);
                                             }
                                             §§push(false);
                                          }
                                          addr151:
                                          return §§pop();
                                       }
                                       §§goto(addr142);
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr67);
                              addr43:
                           },§§goto(addr60))
                           {
                              §§pop();
                              while(true)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§<!x§);
                                    if(!_loc5_)
                                    {
                                       continue loop5;
                                    }
                                    addr60:
                                    addr60:
                                    if(_loc5_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc4_)
                                    {
                                       break loop3;
                                    }
                                    §§goto(addr92);
                                 }
                                 break;
                                 addr52:
                                 if(_loc5_ && §5!^§)
                                 {
                                    continue;
                                 }
                                 §§goto(addr60);
                                 §§push(false);
                              }
                              §§goto(addr93);
                           }
                           continue loop0;
                        }
                        §§goto(addr43);
                     }
                     continue loop1;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr93);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§]n§)
            {
               do
               {
                  §,![§ = new Sprite();
                  do
                  {
                     §]n§ = true;
                  }
                  while(_loc1_);
                  
               }
               while(!_loc2_);
               
               if(_loc2_)
               {
                  return §,![§;
               }
            }
         }
         return §,![§;
      }
      
      public static function §#`§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(§]n§);
            if(!_loc3_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(!§ !r§);
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(_loc4_ || param2)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc3_ && param1))
                                    {
                                       if(!§§pop())
                                       {
                                          break loop5;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop7:
                                             do
                                             {
                                                §,![§.x = param1;
                                                while(!_loc3_)
                                                {
                                                   §,![§.y = param2;
                                                   if(_loc4_)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                             while(!_loc4_);
                                             
                                             return;
                                          }
                                          addr68:
                                          if(!(_loc3_ && param2))
                                          {
                                             break;
                                          }
                                          addr102:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(!§ !r§.visible);
                                                if(!(_loc4_ || param1))
                                                {
                                                   break loop5;
                                                }
                                                continue loop6;
                                             }
                                             continue loop5;
                                             §§goto(addr68);
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr75);
                                    }
                                    break;
                                 }
                                 continue loop1;
                                 addr89:
                              }
                              continue loop9;
                           }
                           while(!_loc3_)
                           {
                              §§pop();
                              §§goto(addr102);
                           }
                           continue loop0;
                        }
                        addr121:
                     }
                     §§goto(addr89);
                  }
               }
            }
            §§goto(addr121);
         }
         addr75:
      }
      
      public static function §6;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§ !r§)
            {
               if(!_loc2_)
               {
                  if(§ !r§.visible)
                  {
                     if(_loc1_)
                     {
                        addr64:
                        §'"3§ = §^O§;
                     }
                     while(true)
                     {
                        §§goto(addr23);
                     }
                  }
                  addr23:
                  §§goto(addr19);
               }
               §§goto(addr64);
            }
            addr19:
            while(true)
            {
               §<!w§("");
               if(!(_loc2_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr64);
      }
      
      public static function §<"F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§ !r§)
            {
               if(_loc1_)
               {
                  if(!§ !r§.visible)
                  {
                     if(_loc1_ || §5!^§)
                     {
                        §<!w§(§'"3§);
                     }
                  }
               }
            }
         }
      }
   }
}
