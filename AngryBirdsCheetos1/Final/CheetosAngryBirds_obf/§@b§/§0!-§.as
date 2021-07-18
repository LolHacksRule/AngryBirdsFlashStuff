package §@b§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §0!-§ extends §;%§
   {
      
      public static var §]g§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]g§ = false;
         }
      }
      
      public function §0!-§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param2);
            do
            {
               this.§ 4§(param1);
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      private static function §`R§(param1:§0!W§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param1.§,-§.top < 0)
            {
               while(true)
               {
                  param1.§,-§.top = 0;
                  addr120:
                  while(true)
                  {
                  }
               }
               addr116:
            }
            loop2:
            while(true)
            {
               if(param1.§,-§.left < 0)
               {
                  if(_loc5_ || param1)
                  {
                     while(true)
                     {
                        param1.§,-§.left = 0;
                     }
                     addr94:
                  }
                  while(true)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr116);
                     }
                     addr45:
                     if(_loc5_ || §0!-§)
                     {
                        §§goto(addr20);
                     }
                  }
                  continue;
               }
               while(true)
               {
                  if(param1.§,-§.bottom > param3)
                  {
                     while(true)
                     {
                        param1.§,-§.bottom = param3;
                        addr73:
                        while(true)
                        {
                           if(!(_loc5_ || §0!-§))
                           {
                              continue loop2;
                           }
                        }
                     }
                     addr69:
                  }
                  while(param1.§,-§.right > param2)
                  {
                     if(!_loc4_)
                     {
                        param1.§,-§.right = param2;
                     }
                     if(_loc5_ || param2)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr45);
                        }
                        else
                        {
                           §§goto(addr69);
                        }
                     }
                     §§goto(addr73);
                  }
                  addr20:
                  return;
               }
            }
         }
         §§goto(addr94);
      }
      
      protected function § 4§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§0!W§ = null;
         var _loc2_:* = false;
         if(!(_loc9_ && param1))
         {
            §§push(§]g§);
            if(!_loc9_)
            {
               if(§§pop())
               {
                  if(_loc10_)
                  {
                     addr41:
                     §§push(true);
                     if(_loc10_ || param1)
                     {
                        addr49:
                        _loc2_ = §§pop();
                        if(_loc10_ || param1)
                        {
                           addr57:
                           if(param1.usePivot)
                           {
                              if(_loc9_)
                              {
                              }
                              addr64:
                              var _loc3_:Number = 1;
                              if(_loc10_)
                              {
                                 if(param1.scale)
                                 {
                                    if(_loc10_)
                                    {
                                       addr74:
                                       _loc3_ = parseFloat(param1.scale);
                                       if(_loc10_)
                                       {
                                          addr82:
                                          this.scale = _loc3_;
                                       }
                                    }
                                    var _loc7_:int = 0;
                                    var _loc8_:* = param1;
                                    loop0:
                                    while(§§hasnext(_loc8_,_loc7_))
                                    {
                                       §§push(§§nextname(_loc7_,_loc8_));
                                       if(_loc10_ || this)
                                       {
                                          §§push(_loc4_ = §§pop());
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(§§pop().indexOf("sprite_") != -1)
                                             {
                                                if(!_loc10_)
                                                {
                                                   continue;
                                                }
                                                _loc5_ = param1[_loc4_];
                                                (_loc6_ = new §0!W§()).mName = _loc5_.id;
                                                if(!(_loc9_ && param1))
                                                {
                                                   _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                                   loop1:
                                                   while(true)
                                                   {
                                                      _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                                      while(true)
                                                      {
                                                         _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                                         addr292:
                                                         while(true)
                                                         {
                                                            _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                         }
                                                         addr181:
                                                         if(_loc9_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §%3§(_loc6_);
                                                         if(_loc10_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  addr149:
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           addr251:
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              _loc6_.§-!C§ = §^d§;
                                                                              addr174:
                                                                              while(!(_loc9_ && this))
                                                                              {
                                                                                 §§goto(addr181);
                                                                              }
                                                                              addr196:
                                                                              while(true)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    _loc6_.§?!Q§ = _loc5_.pivotx / _loc3_;
                                                                                 }
                                                                                 loop7:
                                                                                 while(_loc10_ || _loc3_)
                                                                                 {
                                                                                    _loc6_.§+9§ = _loc5_.pivoty / _loc3_;
                                                                                    while(_loc10_)
                                                                                    {
                                                                                       §§goto(addr170);
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_ && param1)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       _loc6_.§+9§ = _loc5_.height / 2;
                                                                                       §§goto(addr196);
                                                                                    }
                                                                                 }
                                                                                 continue loop1;
                                                                                 addr235:
                                                                              }
                                                                              _loc6_.§?!Q§ = _loc5_.width / 2;
                                                                              §§goto(addr206);
                                                                              §§goto(addr206);
                                                                              §§goto(addr149);
                                                                           }
                                                                           addr170:
                                                                           addr251:
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc6_.§,-§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                                        continue loop1;
                                                                     }
                                                                     addr282:
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                               §§goto(addr221);
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                   }
                                                }
                                                §§goto(addr282);
                                             }
                                             else
                                             {
                                                §§push(_loc4_);
                                             }
                                          }
                                       }
                                       if(§§pop() == "image")
                                       {
                                          if(_loc10_)
                                          {
                                             mName = param1[_loc4_];
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr74);
                           }
                           §§goto(addr64);
                        }
                        §§push(true);
                     }
                     _loc2_ = §§pop();
                  }
                  §§goto(addr64);
               }
               §§goto(addr57);
            }
            §§goto(addr49);
         }
         §§goto(addr41);
      }
   }
}
