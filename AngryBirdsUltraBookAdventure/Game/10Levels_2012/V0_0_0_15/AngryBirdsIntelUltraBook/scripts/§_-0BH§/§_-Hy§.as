package §_-0BH§
{
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-Hy§ extends Sprite
   {
      
      private static var §_-05Q§:Boolean = false;
      
      private static const §_-0s§:String = "Mouse_Cursors";
      
      private static var §_-xq§:Sprite;
      
      private static var §_-ES§:MovieClip;
      
      private static var §_-08j§:String;
      
      private static var §_-0AW§:String = "";
      
      private static var §_-NJ§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-05Q§ = false;
            while(true)
            {
               §_-0s§ = "Mouse_Cursors";
               loop1:
               while(_loc1_)
               {
                  §_-0AW§ = "";
                  while(true)
                  {
                     §_-NJ§ = false;
                     if(_loc1_ || _loc1_)
                     {
                        if(_loc1_)
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
         §§goto(addr51);
      }
      
      public function §_-Hy§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §_-Ru§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(!_loc5_)
         {
            if(§_-08j§ == param1)
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
               if(_loc6_ || _loc3_)
               {
                  §_-08j§ = "";
                  while(true)
                  {
                     §_-NJ§ = false;
                     loop1:
                     while(true)
                     {
                        §§push(§_-05Q§);
                        if(_loc6_)
                        {
                           §§push(!§§pop());
                           if(!(_loc5_ && _loc2_))
                           {
                              addr117:
                              if(!§§pop())
                              {
                                 do
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(!§_-ES§);
                                    }
                                 }
                                 while(!_loc6_);
                                 
                                 return §§pop();
                                 addr119:
                              }
                              while(true)
                              {
                                 do
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             break;
                                          }
                                          addr99:
                                          while(!§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                while(true)
                                                {
                                                   Mouse.show();
                                                   continue loop6;
                                                }
                                                addr102:
                                             }
                                             else
                                             {
                                                §§goto(addr120);
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue;
                                    }
                                    var _loc3_:int = 0;
                                    addr149:
                                    if(_loc3_ < §_-ES§.numChildren)
                                    {
                                       §_-ES§.getChildAt(_loc3_).visible = false;
                                       if(_loc6_ || _loc3_)
                                       {
                                          _loc3_++;
                                          if(!_loc5_)
                                          {
                                             §§goto(addr149);
                                          }
                                       }
                                    }
                                    if(!(_loc4_ = §_-ES§.getChildByName(param1) as Sprite))
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          §_-ES§.visible = false;
                                          if(!_loc5_)
                                          {
                                             Mouse.show();
                                             addr381:
                                             §§push(false);
                                          }
                                          else
                                          {
                                             addr321:
                                             if(§_-NJ§)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         addr291:
                                                         _loc3_ = 0;
                                                         addr292:
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               addr215:
                                                               §§push(_loc3_);
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  if(§§pop() >= _loc4_.numChildren)
                                                                  {
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           _loc4_.getChildByName(§_-08j§ + "_Up").visible = true;
                                                                           addr243:
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 addr185:
                                                                                 §§push(_loc2_);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          if(!(_loc5_ && _loc2_))
                                                                                          {
                                                                                             if(!(_loc6_ || _loc3_))
                                                                                             {
                                                                                                addr356:
                                                                                                _loc2_ = §§pop();
                                                                                                Mouse.hide();
                                                                                                addr357:
                                                                                                §§push(_loc4_.numChildren > 1);
                                                                                                if(_loc4_.numChildren > 1)
                                                                                                {
                                                                                                   §§goto(addr329);
                                                                                                }
                                                                                                §§goto(addr309);
                                                                                                addr353:
                                                                                             }
                                                                                             return §§pop();
                                                                                          }
                                                                                          §§goto(addr356);
                                                                                       }
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                    §§goto(addr309);
                                                                                 }
                                                                                 §§goto(addr321);
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 _loc3_++;
                                                                                 addr255:
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr215);
                                                                                 }
                                                                                 addr369:
                                                                                 §_-08j§ = param1;
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §_-ES§.visible = true;
                                                                                    §§goto(addr367);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                              §§goto(addr362);
                                                                           }
                                                                           §§goto(addr311);
                                                                        }
                                                                        §§goto(addr255);
                                                                     }
                                                                     §§goto(addr243);
                                                                  }
                                                                  _loc4_.getChildAt(_loc3_).visible = false;
                                                                  §§goto(addr243);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         §§goto(addr321);
                                                      }
                                                      §§goto(addr353);
                                                   }
                                                   §§goto(addr347);
                                                }
                                                §§goto(addr291);
                                             }
                                             §§goto(addr185);
                                          }
                                          addr329:
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§pop();
                                             addr347:
                                             if(!_loc5_)
                                             {
                                                addr309:
                                                if(_loc4_.getChildByName(§_-08j§ + "_Up"))
                                                {
                                                   addr311:
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §_-NJ§ = true;
                                                      §§goto(addr321);
                                                   }
                                                   §§goto(addr357);
                                                }
                                                §§goto(addr321);
                                             }
                                             _loc4_.visible = true;
                                             §§goto(addr356);
                                             §§push(true);
                                             addr367:
                                             addr362:
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr381);
                                    }
                                    §§goto(addr369);
                                 }
                                 while(!_loc6_);
                                 
                                 §§goto(addr57);
                              }
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr117);
                     }
                     if(!(_loc6_ || §_-Hy§))
                     {
                        continue;
                     }
                     §§goto(addr99);
                     §§push(§_-kM§());
                  }
               }
               §§goto(addr102);
            }
         }
         §§goto(addr36);
      }
      
      private static function §_-kM§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §_-Fc§.§_-YE§(§_-0s§);
         if(_loc2_)
         {
            §_-ES§ = new _loc1_();
            loop0:
            while(§_-ES§)
            {
               loop1:
               while(true)
               {
                  §_-xq§.addChild(§_-ES§);
                  loop2:
                  while(true)
                  {
                     §_-xq§.mouseChildren = false;
                     while(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        §_-ES§.mouseEnabled = false;
                        loop4:
                        while(true)
                        {
                           §_-xq§.mouseEnabled = false;
                           loop5:
                           while(_loc2_ || _loc3_)
                           {
                              §_-ES§.enabled = false;
                              while(true)
                              {
                                 §_-ES§.cacheAsBitmap = true;
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           continue loop2;
                        }
                        if(!(_loc3_ && §_-Hy§))
                        {
                           break loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
            §§push(§_-ES§ == null);
            if(_loc2_ || §_-Hy§)
            {
               return !§§pop();
            }
         }
         §§goto(addr76);
      }
      
      public static function §_-7h§() : Boolean
      {
         return §_-uR§("_Down");
      }
      
      public static function §_-6Z§() : Boolean
      {
         return §_-uR§("_Up");
      }
      
      private static function §_-uR§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(!§_-ES§);
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
                        addr109:
                        while(true)
                        {
                           addr70:
                           while(true)
                           {
                              §§push(§_-08j§.length < 1);
                           }
                        }
                     }
                     addr108:
                  }
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc4_ && §_-Hy§)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           loop9:
                           while(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§push(false);
                                 loop10:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr96:
                                          while(_loc5_ || §_-Hy§)
                                          {
                                             §§push(§_-NJ§);
                                             if(_loc4_ && param1)
                                             {
                                                continue loop6;
                                             }
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(!§§pop());
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      continue loop6;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr108);
                                          }
                                          §§goto(addr109);
                                          continue loop10;
                                       }
                                       addr85:
                                    }
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          break loop9;
                                       }
                                    }
                                    addr68:
                                 }
                                 else
                                 {
                                    §§goto(addr96);
                                 }
                                 §§goto(addr70);
                              }
                              §§goto(addr96);
                           }
                           var _loc2_:Sprite = §_-ES§.getChildByName(§_-08j§) as Sprite;
                           if(!_loc4_)
                           {
                              §§push(!_loc2_);
                              if(_loc5_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§pop();
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(!_loc2_.getChildByName(§_-08j§ + param1));
                                          if(_loc5_)
                                          {
                                             addr143:
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr147);
                                                }
                                             }
                                          }
                                          §§goto(addr147);
                                       }
                                       var _loc3_:int = 0;
                                       while(true)
                                       {
                                          if(_loc3_ >= _loc2_.numChildren)
                                          {
                                             if(_loc5_)
                                             {
                                                _loc2_.getChildByName(§_-08j§ + param1).visible = true;
                                             }
                                             if(!_loc5_)
                                             {
                                                continue;
                                             }
                                             if(_loc5_ || param1)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             _loc2_.getChildAt(_loc3_).visible = false;
                                          }
                                          _loc3_++;
                                       }
                                       return true;
                                    }
                                    §§goto(addr147);
                                 }
                              }
                              §§goto(addr143);
                           }
                           addr147:
                           return false;
                           addr53:
                        }
                        §§goto(addr85);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!§_-05Q§)
            {
               do
               {
                  §_-xq§ = new Sprite();
                  do
                  {
                     §_-05Q§ = true;
                  }
                  while(_loc1_);
                  
               }
               while(!_loc2_);
               
               if(!_loc1_)
               {
                  return §_-xq§;
               }
            }
         }
         return §_-xq§;
      }
      
      public static function §_-wP§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(§_-05Q§);
            if(_loc4_ || param2)
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
                     while(true)
                     {
                        §§pop();
                        addr152:
                        do
                        {
                           §§push(!§_-ES§);
                           if(_loc3_ && _loc3_)
                           {
                              continue loop0;
                           }
                        }
                        while(_loc4_ || §_-Hy§);
                        
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc4_ || param2))
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §_-xq§.x = param1;
                                 while(!(_loc3_ && §_-Hy§))
                                 {
                                    §_-xq§.y = param2;
                                    if(_loc4_ || param1)
                                    {
                                       if(_loc3_ && param2)
                                       {
                                       }
                                       return;
                                       addr47:
                                    }
                                 }
                              }
                           }
                           addr78:
                           if(!(_loc3_ && param1))
                           {
                              if(_loc4_ || param1)
                              {
                                 break;
                              }
                              §§goto(addr152);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(!§_-ES§.visible);
                                 if(_loc4_)
                                 {
                                    continue loop9;
                                 }
                                 continue loop0;
                                 §§goto(addr78);
                              }
                              addr139:
                           }
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public static function §_-ih§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§_-ES§)
            {
               do
               {
                  if(§_-ES§.visible)
                  {
                     while(true)
                     {
                        §_-0AW§ = §_-08j§;
                        addr52:
                        while(true)
                        {
                        }
                     }
                     addr49:
                  }
                  while(true)
                  {
                     §_-Ru§("");
                     if(_loc1_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        §§goto(addr49);
                     }
                     §§goto(addr52);
                  }
               }
               while(!_loc1_);
               
               addr43:
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function §_-03u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§_-ES§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr42:
                  if(!§_-ES§.visible)
                  {
                     if(_loc1_)
                     {
                        §_-Ru§(§_-0AW§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
