package §'!l§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §?!<§ extends §9!#§
   {
      
      public static var §']§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §']§ = false;
         }
      }
      
      public function §?!<§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param2);
         }
         do
         {
            this.§8!0§(param1);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      private static function § !r§(param1:§5K§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            if(param1.rect.top < 0)
            {
               loop0:
               while(true)
               {
                  param1.rect.top = 0;
                  addr130:
                  while(true)
                  {
                  }
                  loop4:
                  while(true)
                  {
                     if(_loc4_ && §?!<§)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        if(param1.rect.bottom > param3)
                        {
                           if(!_loc4_)
                           {
                              param1.rect.bottom = param3;
                           }
                           while(true)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 break loop4;
                              }
                              addr37:
                              if(!(_loc5_ || §?!<§))
                              {
                                 continue;
                              }
                              if(!(_loc5_ || §?!<§))
                              {
                                 continue loop4;
                              }
                              addr51:
                              if(_loc5_ || param3)
                              {
                                 param1.rect.right = param2;
                                 addr25:
                                 return;
                                 addr72:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    param1.rect.left = 0;
                                    continue loop4;
                                    §§goto(addr51);
                                 }
                                 addr99:
                              }
                           }
                        }
                        while(param1.rect.right > param2)
                        {
                           if(_loc5_)
                           {
                              §§goto(addr37);
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr25);
                     }
                  }
                  §§goto(addr130);
               }
            }
            while(true)
            {
               if(param1.rect.left < 0)
               {
                  §§goto(addr99);
               }
               §§goto(addr73);
               §§goto(addr130);
            }
         }
         §§goto(addr25);
      }
      
      protected function §8!0§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§5K§ = null;
         var _loc2_:* = false;
         if(!(_loc10_ && this))
         {
            §§push(§']§);
            if(!(_loc10_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc10_ && this))
                  {
                     §§push(true);
                     if(!_loc10_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc10_)
                        {
                           addr56:
                           if(param1.usePivot)
                           {
                              if(!(_loc10_ && param1))
                              {
                                 addr67:
                                 _loc2_ = true;
                              }
                           }
                        }
                        var _loc3_:Number = 1;
                        if(!(_loc10_ && this))
                        {
                           if(param1.scale)
                           {
                              if(!_loc10_)
                              {
                                 _loc3_ = parseFloat(param1.scale);
                                 if(!_loc9_)
                                 {
                                 }
                                 §§goto(addr94);
                              }
                           }
                           this.scale = _loc3_;
                        }
                        addr94:
                        var _loc7_:int = 0;
                        var _loc8_:* = param1;
                        loop0:
                        while(§§hasnext(_loc8_,_loc7_))
                        {
                           §§push(§§nextname(_loc7_,_loc8_));
                           if(!(_loc10_ && this))
                           {
                              §§push(_loc4_ = §§pop());
                              if(!(_loc10_ && _loc3_))
                              {
                                 if(§§pop().indexOf("sprite_") != -1)
                                 {
                                    if(_loc10_)
                                    {
                                       continue;
                                    }
                                    _loc5_ = param1[_loc4_];
                                    (_loc6_ = new §5K§()).name = _loc5_.id;
                                    if(_loc9_ || _loc2_)
                                    {
                                       _loc5_.width = Math.round(_loc5_.width / _loc3_);
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
                                                addr296:
                                                while(true)
                                                {
                                                   _loc6_.rect = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                   continue loop2;
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      _loc6_.pivotY = _loc5_.pivoty / _loc3_;
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(_loc10_ && _loc3_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         addr228:
                                                         if(_loc9_ || param1)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               while(true)
                                                               {
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     _loc6_.§'! § = §3!=§;
                                                                     addr184:
                                                                     addr201:
                                                                     while(_loc9_ || param1)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §?!t§(_loc6_);
                                                                        if(!(_loc9_ || _loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc10_ && param1)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        if(_loc9_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        addr241:
                                                                        while(true)
                                                                        {
                                                                           _loc6_.pivotX = _loc5_.pivotx / _loc3_;
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     addr213:
                                                                     while(!_loc10_)
                                                                     {
                                                                        continue loop9;
                                                                        §§goto(addr184);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc6_.pivotY = _loc5_.height / 2;
                                                                        §§goto(addr201);
                                                                     }
                                                                  }
                                                                  addr263:
                                                                  while(_loc9_)
                                                                  {
                                                                     §§goto(addr228);
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               addr237:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr296);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr263);
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            _loc6_.pivotX = _loc5_.width / 2;
                                                            §§goto(addr213);
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      addr254:
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr237);
                                 }
                                 else
                                 {
                                    §§push(_loc4_);
                                 }
                              }
                           }
                           if(§§pop() == "image")
                           {
                              if(!(_loc10_ && _loc3_))
                              {
                                 mName = param1[_loc4_];
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr67);
               }
               §§goto(addr56);
            }
            §§goto(addr67);
         }
         §§goto(addr56);
      }
   }
}
