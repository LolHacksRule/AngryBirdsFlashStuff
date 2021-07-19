package §8! §
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §"f§ extends §9q§
   {
      
      public static var §>m§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §>m§ = false;
         }
      }
      
      public function §"f§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param2);
            do
            {
               this.§8!x§(param1);
            }
            while(!(_loc4_ || param1));
            
         }
      }
      
      private static function §4!6§(param1:§^"-§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            if(param1.rect.top < 0)
            {
               while(true)
               {
                  param1.rect.top = 0;
                  addr124:
                  while(true)
                  {
                  }
                  addr66:
                  if(_loc5_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr24);
               }
            }
            loop2:
            while(true)
            {
               if(param1.rect.left < 0)
               {
                  while(true)
                  {
                     param1.rect.left = 0;
                     addr97:
                     while(_loc4_ || §"f§)
                     {
                     }
                     continue loop2;
                  }
                  addr93:
               }
               while(true)
               {
                  if(param1.rect.bottom > param3)
                  {
                     if(_loc4_)
                     {
                        while(true)
                        {
                           param1.rect.bottom = param3;
                        }
                        addr82:
                     }
                     while(true)
                     {
                        addr34:
                        if(!_loc5_)
                        {
                           param1.rect.right = param2;
                        }
                        if(!(_loc4_ || param2))
                        {
                           continue;
                        }
                        if(_loc4_ || param1)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr66);
                           }
                           else
                           {
                              §§goto(addr93);
                           }
                        }
                        §§goto(addr97);
                     }
                     addr86:
                  }
                  while(true)
                  {
                     if(param1.rect.right > param2)
                     {
                        §§goto(addr34);
                     }
                     break;
                     §§goto(addr86);
                  }
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr82);
      }
      
      protected function §8!x§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§^"-§ = null;
         var _loc2_:* = false;
         if(_loc10_ || _loc2_)
         {
            §§push(§>m§);
            if(!(_loc9_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc10_)
                  {
                     addr46:
                     §§push(true);
                     if(_loc10_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc9_)
                        {
                           addr52:
                           if(param1.usePivot)
                           {
                              if(_loc10_)
                              {
                                 addr58:
                                 _loc2_ = true;
                              }
                           }
                        }
                     }
                     §§goto(addr58);
                  }
                  var _loc3_:Number = 1;
                  if(!_loc9_)
                  {
                     if(param1.scale)
                     {
                        if(_loc10_)
                        {
                           §§goto(addr69);
                        }
                     }
                     §§goto(addr77);
                  }
                  addr69:
                  _loc3_ = parseFloat(param1.scale);
                  if(!_loc9_)
                  {
                     addr77:
                     this.scale = _loc3_;
                  }
                  var _loc7_:int = 0;
                  var _loc8_:* = param1;
                  loop0:
                  while(§§hasnext(_loc8_,_loc7_))
                  {
                     §§push(§§nextname(_loc7_,_loc8_));
                     if(!_loc9_)
                     {
                        §§push(_loc4_ = §§pop());
                        if(!_loc9_)
                        {
                           if(§§pop().indexOf("sprite_") != -1)
                           {
                              if(_loc10_)
                              {
                                 _loc5_ = param1[_loc4_];
                                 (_loc6_ = new §^"-§()).name = _loc5_.id;
                                 if(!_loc9_)
                                 {
                                    _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                    loop2:
                                    while(true)
                                    {
                                       _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                       loop3:
                                       while(true)
                                       {
                                          _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                          loop4:
                                          for(; _loc10_; if(!(_loc10_ || param1))
                                          {
                                             continue;
                                          },§§goto(addr129))
                                          {
                                             _loc6_.rect = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                             while(true)
                                             {
                                                §4!6§(_loc6_,§49§.width,§49§.height);
                                                loop6:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      _loc6_.pivotX = _loc5_.width / 2;
                                                      while(true)
                                                      {
                                                         _loc6_.pivotY = _loc5_.height / 2;
                                                         loop8:
                                                         for(; _loc10_; while(true)
                                                         {
                                                            if(!(_loc10_ || param1))
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!_loc9_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr227:
                                                            while(true)
                                                            {
                                                               _loc6_.pivotY = _loc5_.pivoty / _loc3_;
                                                               continue loop6;
                                                            }
                                                         },continue loop3)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               addr129:
                                                               while(true)
                                                               {
                                                                  _loc6_.§>!!§ = §49§;
                                                                  continue loop8;
                                                               }
                                                               continue loop1;
                                                               addr129:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      _loc6_.pivotX = _loc5_.pivotx / _loc3_;
                                                      §§goto(addr227);
                                                   }
                                                }
                                                if(_loc10_ || _loc2_)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          continue loop2;
                                          if(_loc9_ && param1)
                                          {
                                             continue;
                                          }
                                          §-"#§(_loc6_);
                                          if(_loc10_)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr129);
                                                }
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr133);
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              addr294:
                              if(_loc4_ != "image")
                              {
                                 continue;
                              }
                              if(_loc9_)
                              {
                                 continue;
                              }
                           }
                           mName = param1[_loc4_];
                           continue;
                        }
                     }
                     §§goto(addr294);
                  }
                  return;
               }
               §§goto(addr52);
            }
            §§goto(addr58);
         }
         §§goto(addr46);
      }
   }
}
