package §>i§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §!7§ extends §]y§
   {
      
      public static var §&d§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §!7§)
         {
            §&d§ = false;
         }
      }
      
      public function §!7§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param2);
         }
         do
         {
            this.§1P§(param1);
         }
         while(!(_loc4_ || this));
         
      }
      
      private static function §'!E§(param1:§^J§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §!7§)
         {
            if(param1.§3!%§.top < 0)
            {
               while(true)
               {
                  param1.§3!%§.top = 0;
                  addr130:
                  while(true)
                  {
                  }
                  addr51:
                  if(!(_loc5_ || param2))
                  {
                     continue;
                  }
                  param1.§3!%§.right = param2;
                  addr25:
                  return;
                  addr72:
               }
            }
            while(true)
            {
               if(param1.§3!%§.left < 0)
               {
                  addr116:
                  while(true)
                  {
                     param1.§3!%§.left = 0;
                     addr120:
                     while(true)
                     {
                     }
                  }
                  addr116:
               }
               while(true)
               {
                  if(param1.§3!%§.bottom > param3)
                  {
                     if(_loc5_)
                     {
                        if(!(_loc5_ || param2))
                        {
                           break;
                        }
                        param1.§3!%§.bottom = param3;
                     }
                     while(!(_loc4_ && §!7§))
                     {
                        if(!(_loc5_ || §!7§))
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           §§goto(addr51);
                        }
                        else
                        {
                           §§goto(addr116);
                        }
                     }
                     continue;
                  }
                  while(param1.§3!%§.right > param2)
                  {
                     if(_loc5_ || param1)
                     {
                        §§goto(addr42);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr25);
               }
               §§goto(addr130);
            }
         }
         §§goto(addr116);
      }
      
      protected function §1P§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§^J§ = null;
         var _loc2_:* = false;
         if(!_loc10_)
         {
            §§push(§&d§);
            if(!(_loc10_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(true);
                     if(_loc9_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc10_)
                        {
                           addr51:
                           if(param1.usePivot)
                           {
                              if(!(_loc10_ && _loc2_))
                              {
                                 addr62:
                                 _loc2_ = true;
                              }
                           }
                        }
                     }
                     §§goto(addr62);
                  }
                  var _loc3_:Number = 1;
                  if(_loc9_ || param1)
                  {
                     if(param1.scale)
                     {
                        if(_loc9_)
                        {
                           addr78:
                           _loc3_ = parseFloat(param1.scale);
                           if(!_loc10_)
                           {
                              addr86:
                              this.scale = _loc3_;
                           }
                        }
                        var _loc7_:int = 0;
                        var _loc8_:* = param1;
                        while(§§hasnext(_loc8_,_loc7_))
                        {
                           §§push(§§nextname(_loc7_,_loc8_));
                           if(!(_loc10_ && _loc3_))
                           {
                              §§push(_loc4_ = §§pop());
                              if(_loc9_)
                              {
                                 addr111:
                                 §§push("sprite_");
                                 if(_loc9_ || param1)
                                 {
                                    if(§§pop().indexOf(§§pop()) != -1)
                                    {
                                       if(!_loc10_)
                                       {
                                          _loc5_ = param1[_loc4_];
                                          (_loc6_ = new §^J§()).mName = _loc5_.id;
                                          if(!(_loc10_ && param1))
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
                                                   while(true)
                                                   {
                                                      _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                      loop4:
                                                      while(_loc9_ || _loc2_)
                                                      {
                                                         _loc6_.§3!%§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §'!E§(_loc6_,§#R§.width,§#R§.height);
                                                            loop6:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               _loc6_.§4!^§ = _loc5_.width / 2;
                                                               loop7:
                                                               while(!_loc10_)
                                                               {
                                                                  _loc6_.§'?§ = _loc5_.height / 2;
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc10_ && _loc2_))
                                                                     {
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           _loc6_.§-"'§ = §#R§;
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §+"=§(_loc6_);
                                                                                       if(!(_loc10_ && _loc2_))
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           addr229:
                                                                           while(true)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                        }
                                                                        continue loop7;
                                                                        addr179:
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr177);
                                       }
                                    }
                                    else
                                    {
                                       addr336:
                                       if(_loc4_ != "image")
                                       {
                                          continue;
                                       }
                                       if(!(_loc9_ || _loc2_))
                                       {
                                          continue;
                                       }
                                    }
                                    mName = param1[_loc4_];
                                    continue;
                                 }
                              }
                              §§goto(addr336);
                           }
                           §§goto(addr111);
                        }
                        return;
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr78);
               }
               §§goto(addr51);
            }
            §§goto(addr62);
         }
         §§goto(addr51);
      }
   }
}
