package §8s§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §`s§ extends §`H§
   {
      
      public static var §`!6§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §`s§)
         {
            §`!6§ = false;
         }
      }
      
      public function §`s§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param2);
            do
            {
               this.§[;§(param1);
            }
            while(_loc3_ && this);
            
         }
      }
      
      private static function §,m§(param1:§8"§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            if(param1.§`!%§.top < 0)
            {
               while(true)
               {
                  param1.§`!%§.top = 0;
                  addr124:
                  while(true)
                  {
                  }
                  addr52:
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  addr24:
                  return;
                  addr69:
               }
            }
            while(true)
            {
               if(param1.§`!%§.left < 0)
               {
                  if(_loc4_)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     param1.§`!%§.left = 0;
                  }
                  while(true)
                  {
                  }
                  addr104:
               }
               while(true)
               {
                  if(param1.§`!%§.bottom > param3)
                  {
                     if(_loc4_ || §`s§)
                     {
                        param1.§`!%§.bottom = param3;
                     }
                     while(!_loc5_)
                     {
                        if(_loc4_ || param2)
                        {
                           param1.§`!%§.right = param2;
                        }
                        if(!(_loc4_ || param1))
                        {
                           continue;
                        }
                        §§goto(addr52);
                     }
                     continue;
                  }
                  while(param1.§`!%§.right > param2)
                  {
                     §§goto(addr34);
                  }
                  §§goto(addr24);
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §[;§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§8"§ = null;
         var _loc2_:* = false;
         if(_loc10_ || param1)
         {
            §§push(§`!6§);
            if(_loc10_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc10_)
                  {
                     §§push(true);
                     if(_loc10_)
                     {
                        _loc2_ = §§pop();
                        if(!(_loc9_ && _loc2_))
                        {
                           §§goto(addr57);
                        }
                        §§goto(addr67);
                     }
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr68);
         }
         addr57:
         if(param1.usePivot)
         {
            if(_loc10_ || this)
            {
               addr68:
               _loc2_ = true;
               addr67:
            }
         }
         var _loc3_:Number = 1;
         if(_loc10_ || this)
         {
            if(param1.scale)
            {
               if(!_loc9_)
               {
                  _loc3_ = parseFloat(param1.scale);
                  if(_loc10_ || _loc3_)
                  {
                  }
               }
               §§goto(addr100);
            }
            this.scale = _loc3_;
         }
         addr100:
         var _loc7_:int = 0;
         var _loc8_:* = param1;
         while(§§hasnext(_loc8_,_loc7_))
         {
            §§push(§§nextname(_loc7_,_loc8_));
            if(_loc10_ || this)
            {
               §§push(_loc4_ = §§pop());
               if(!(_loc9_ && _loc3_))
               {
                  addr127:
                  if(§§pop().indexOf("sprite_") != -1)
                  {
                     if(_loc10_ || param1)
                     {
                        _loc5_ = param1[_loc4_];
                        (_loc6_ = new §8"§()).mName = _loc5_.id;
                        if(!_loc9_)
                        {
                           _loc5_.width = Math.round(_loc5_.width / _loc3_);
                           loop1:
                           while(true)
                           {
                              _loc5_.height = Math.round(_loc5_.height / _loc3_);
                              while(true)
                              {
                                 _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                 while(_loc10_)
                                 {
                                    _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                    loop4:
                                    while(true)
                                    {
                                       _loc6_.§`!%§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                       loop5:
                                       while(true)
                                       {
                                          §,m§(_loc6_,§@C§.width,§@C§.height);
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop5;
                                             }
                                             _loc6_.§=;§ = _loc5_.width / 2;
                                             while(true)
                                             {
                                                _loc6_.§62§ = _loc5_.height / 2;
                                                loop8:
                                                while(_loc10_ || _loc2_)
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      _loc6_.§<!m§ = §@C§;
                                                      while(!(_loc9_ && this))
                                                      {
                                                         §72§(_loc6_);
                                                         if(_loc10_)
                                                         {
                                                            if(!(_loc10_ || _loc2_))
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!_loc9_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               continue loop5;
                                                            }
                                                            addr253:
                                                            while(true)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      addr234:
                                                      while(true)
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           _loc6_.§=;§ = _loc5_.pivotx / _loc3_;
                           §§goto(addr253);
                        }
                     }
                  }
                  else
                  {
                     addr329:
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
               §§goto(addr329);
            }
            §§goto(addr127);
         }
      }
   }
}
