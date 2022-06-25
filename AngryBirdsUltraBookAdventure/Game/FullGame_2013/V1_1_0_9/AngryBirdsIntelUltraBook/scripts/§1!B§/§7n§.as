package §1!B§
{
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §7n§ extends Sprite
   {
      
      private static var §5!S§:Boolean = false;
      
      private static const §@#§:String = "Mouse_Cursors";
      
      private static var §&![§:Sprite;
      
      private static var §%5§:MovieClip;
      
      private static var §"l§:String;
      
      private static var §&!E§:String = "";
      
      private static var §2]§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §5!S§ = false;
            while(true)
            {
               §@#§ = "Mouse_Cursors";
               addr55:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               return;
               addr62:
            }
         }
         while(true)
         {
            §&!E§ = "";
            while(!_loc1_)
            {
               §2]§ = false;
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr55);
            }
         }
         §§goto(addr62);
      }
      
      public function §7n§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §!!-§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(_loc5_ || _loc3_)
         {
            if(§"l§ == param1)
            {
               if(_loc5_ || _loc2_)
               {
                  addr36:
                  §§push(true);
                  if(!(_loc6_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr45:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               if(_loc5_ || §7n§)
               {
                  §"l§ = "";
                  §2]§ = false;
                  loop7:
                  while(true)
                  {
                     §§push(§5!S§);
                     loop5:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              addr138:
                              §§pop();
                              addr139:
                              while(true)
                              {
                                 §§push(!§%5§);
                                 addr97:
                                 while(true)
                                 {
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr139);
                              }
                              addr94:
                           }
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || §7n§)
                                 {
                                    if(_loc6_ && _loc3_)
                                    {
                                       continue loop7;
                                    }
                                    §§push(§&w§());
                                    while(!§§pop())
                                    {
                                       Mouse.show();
                                       §§push(false);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop6;
                                             }
                                             §§goto(addr138);
                                          }
                                          break loop2;
                                       }
                                    }
                                    var _loc3_:int = 0;
                                    while(_loc3_ < §%5§.numChildren)
                                    {
                                       §%5§.getChildAt(_loc3_).visible = false;
                                       if(_loc6_ && _loc2_)
                                       {
                                          break;
                                       }
                                       _loc3_++;
                                       if(_loc6_ && _loc3_)
                                       {
                                          break;
                                       }
                                    }
                                    if(!(_loc4_ = §%5§.getChildByName(param1) as Sprite))
                                    {
                                       if(!_loc6_)
                                       {
                                          §%5§.visible = false;
                                          if(_loc5_)
                                          {
                                             Mouse.show();
                                          }
                                          else
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(Boolean(_loc4_.getChildByName(§"l§ + "_Up")));
                                                loop10:
                                                while(true)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(_loc5_)
                                                            {
                                                               §2]§ = true;
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            loop14:
                                                            while(_loc6_)
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc4_.visible = true;
                                                                  continue loop14;
                                                               }
                                                            }
                                                            addr385:
                                                            _loc2_ = true;
                                                            loop15:
                                                            while(true)
                                                            {
                                                               Mouse.hide();
                                                               addr382:
                                                               §§push(_loc4_.numChildren > 1);
                                                               addr356:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr358:
                                                                     §§pop();
                                                                     addr359:
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr386:
                                                            addr345:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§2]§);
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr356);
                                                }
                                             }
                                          }
                                          §§goto(addr406);
                                          §§push(false);
                                       }
                                       §§goto(addr403);
                                    }
                                    §§goto(addr400);
                                 }
                                 while(!(_loc6_ && §7n§))
                                 {
                                    §§goto(addr130);
                                 }
                                 §§goto(addr138);
                              }
                           }
                           §§goto(addr97);
                        }
                     }
                  }
               }
               else if(false)
               {
                  §§goto(addr94);
               }
               §§goto(addr149);
            }
            §§goto(addr45);
         }
         §§goto(addr36);
      }
      
      private static function §&w§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §,!j§.§!!N§(§@#§);
         if(!(_loc2_ && _loc3_))
         {
            §%5§ = new _loc1_();
            loop0:
            while(§%5§)
            {
               if(_loc3_)
               {
                  §&![§.addChild(§%5§);
               }
               while(_loc3_ || _loc3_)
               {
                  §&![§.mouseChildren = false;
                  loop2:
                  while(_loc3_ || _loc3_)
                  {
                     §%5§.mouseEnabled = false;
                     do
                     {
                        if(_loc3_ || _loc3_)
                        {
                           continue;
                        }
                        continue loop2;
                     }
                     while(§&![§.mouseEnabled = false, do
                     {
                        §%5§.enabled = false;
                        do
                        {
                           §%5§.cacheAsBitmap = true;
                        }
                        while(!(_loc3_ || _loc1_));
                        
                     }
                     while(!(_loc3_ || _loc2_));
                     , !_loc3_);
                     
                     break loop0;
                  }
               }
            }
            §§push(§%5§ == null);
            if(_loc3_ || §7n§)
            {
               return !§§pop();
            }
         }
         §§goto(addr75);
      }
      
      public static function §@1§() : Boolean
      {
         return §+!2§("_Down");
      }
      
      public static function §3F§() : Boolean
      {
         return §+!2§("_Up");
      }
      
      private static function §+!2§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(!§%5§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr98:
                        while(true)
                        {
                           addr59:
                           loop6:
                           while(true)
                           {
                              §§push(§"l§.length < 1);
                              addr64:
                              while(true)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    break loop6;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  loop3:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc4_ || §7n§))
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
                              §§push(§2]§);
                              if(_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(!§§pop());
                                 if(_loc4_ || param1)
                                 {
                                    while(true)
                                    {
                                       addr34:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             var _loc2_:Sprite = §%5§.getChildByName(§"l§) as Sprite;
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(!_loc2_);
                                                if(!(_loc5_ && §7n§))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc4_ || §7n§)
                                                      {
                                                         addr131:
                                                         §§pop();
                                                         if(_loc4_)
                                                         {
                                                            §§push(!_loc2_.getChildByName(§"l§ + param1));
                                                            if(_loc4_)
                                                            {
                                                               addr142:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§goto(addr151);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                         var _loc3_:int = 0;
                                                         addr160:
                                                         if(_loc3_ >= _loc2_.numChildren)
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     _loc3_++;
                                                                     addr196:
                                                                     §§goto(addr160);
                                                                     addr204:
                                                                  }
                                                                  _loc2_.getChildByName(§"l§ + param1).visible = true;
                                                                  return true;
                                                                  addr193:
                                                               }
                                                               §§goto(addr196);
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                         _loc2_.getChildAt(_loc3_).visible = false;
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   §§goto(addr142);
                                                }
                                                §§goto(addr131);
                                             }
                                             addr151:
                                          }
                                          if(!_loc5_)
                                          {
                                             §§push(false);
                                             break;
                                          }
                                          if(!_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr59);
                                                }
                                             }
                                             break loop5;
                                          }
                                          continue loop5;
                                          return false;
                                       }
                                    }
                                    addr33:
                                 }
                                 if(!(_loc5_ && param1))
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr64);
                              }
                              §§goto(addr34);
                           }
                           §§goto(addr98);
                        }
                     }
                     §§goto(addr33);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr98);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§5!S§)
            {
               do
               {
                  §&![§ = new Sprite();
                  do
                  {
                     §5!S§ = true;
                  }
                  while(_loc1_);
                  
               }
               while(!_loc2_);
               
               if(_loc2_)
               {
                  return §&![§;
               }
            }
         }
         return §&![§;
      }
      
      public static function §&y§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§5!S§);
            if(_loc4_ || _loc3_)
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
                           loop6:
                           while(true)
                           {
                              §§push(!§%5§);
                              if(_loc4_ || param1)
                              {
                                 addr99:
                                 if(_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc3_ && §7n§))
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§pop();
                                                   do
                                                   {
                                                      §§push(!§%5§.visible);
                                                   }
                                                   while(!(_loc3_ && param2));
                                                   
                                                   continue;
                                                   addr114:
                                                }
                                                continue loop9;
                                             }
                                             §§goto(addr99);
                                             addr111:
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      return;
                                                   }
                                                   continue loop6;
                                                }
                                                addr78:
                                                while(true)
                                                {
                                                }
                                                addr78:
                                             }
                                             while(true)
                                             {
                                                §&![§.x = param1;
                                                do
                                                {
                                                   §&![§.y = param2;
                                                }
                                                while(!_loc4_);
                                                
                                                if(_loc4_ || param2)
                                                {
                                                   break;
                                                }
                                                §§goto(addr78);
                                             }
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             §§goto(addr114);
                                          }
                                          return;
                                       }
                                       break;
                                    }
                                    continue loop1;
                                    addr101:
                                 }
                                 continue loop0;
                              }
                              §§goto(addr111);
                           }
                        }
                        addr126:
                     }
                     §§goto(addr101);
                  }
               }
            }
            §§goto(addr126);
         }
         §§goto(addr78);
      }
      
      public static function §@!5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§%5§)
            {
               if(_loc1_)
               {
                  if(§%5§.visible)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        §&!E§ = §"l§;
                        addr57:
                        while(true)
                        {
                        }
                        addr57:
                     }
                     §§goto(addr57);
                  }
                  while(true)
                  {
                     §!!-§("");
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr57);
                  }
               }
               §§goto(addr57);
            }
            return;
         }
         §§goto(addr57);
      }
      
      public static function §`J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§%5§)
            {
               if(!_loc1_)
               {
                  if(!§%5§.visible)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §!!-§(§&!E§);
                     }
                  }
               }
            }
         }
      }
   }
}
