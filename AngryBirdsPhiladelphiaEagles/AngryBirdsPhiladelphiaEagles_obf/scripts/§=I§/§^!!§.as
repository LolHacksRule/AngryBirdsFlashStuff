package §=I§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §^!!§ extends §-§
   {
      
      public static var §=]§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §=]§ = false;
         }
      }
      
      public function §^!!§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param2);
         }
         do
         {
            this.§5Q§(param1);
         }
         while(!(_loc4_ || param2));
         
      }
      
      private static function §catch§(param1:§5!B§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param1.§7!N§.top < 0)
            {
               while(true)
               {
                  param1.§7!N§.top = 0;
                  addr55:
                  if(_loc4_ && param3)
                  {
                     continue;
                  }
                  param1.§7!N§.bottom = param3;
                  while(true)
                  {
                     loop5:
                     while(param1.§7!N§.right > param2)
                     {
                        if(!_loc4_)
                        {
                           param1.§7!N§.right = param2;
                           break;
                        }
                        addr87:
                        while(_loc5_)
                        {
                           §§goto(addr55);
                        }
                        loop2:
                        while(true)
                        {
                           addr47:
                           while(true)
                           {
                              if(param1.§7!N§.bottom <= param3)
                              {
                                 continue loop5;
                              }
                              §§goto(addr53);
                              continue loop2;
                           }
                        }
                        addr53:
                     }
                     return;
                  }
                  addr76:
               }
               addr93:
            }
            while(true)
            {
               if(param1.§7!N§.left < 0)
               {
                  param1.§7!N§.left = 0;
                  §§goto(addr87);
               }
               §§goto(addr47);
               §§goto(addr93);
            }
         }
         §§goto(addr76);
      }
      
      protected function §5Q§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§5!B§ = null;
         var _loc2_:* = false;
         if(!(_loc10_ && _loc3_))
         {
            §§push(§=]§);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(!_loc10_)
                  {
                     §§push(true);
                     if(!(_loc10_ && _loc2_))
                     {
                        _loc2_ = §§pop();
                        if(!(_loc10_ && this))
                        {
                           addr56:
                           if(param1.usePivot)
                           {
                              if(_loc10_ && _loc3_)
                              {
                              }
                           }
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr67);
                  }
                  addr67:
                  _loc2_ = §§pop();
                  addr68:
                  var _loc3_:Number = 1;
                  if(_loc9_)
                  {
                     if(param1.scale)
                     {
                        if(_loc9_ || param1)
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
                  while(§§hasnext(_loc8_,_loc7_))
                  {
                     §§push(§§nextname(_loc7_,_loc8_));
                     if(_loc9_)
                     {
                        §§push(_loc4_ = §§pop());
                        if(_loc9_)
                        {
                           §§push("sprite_");
                           if(!_loc10_)
                           {
                              if(§§pop().indexOf(§§pop()) != -1)
                              {
                                 if(_loc9_ || _loc2_)
                                 {
                                    _loc5_ = param1[_loc4_];
                                    (_loc6_ = new §5!B§()).mName = _loc5_.id;
                                    if(!(_loc10_ && param1))
                                    {
                                       _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                       loop1:
                                       while(true)
                                       {
                                          _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                          _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                          loop2:
                                          while(true)
                                          {
                                             _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                             while(_loc9_)
                                             {
                                                _loc6_.§7!N§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                while(true)
                                                {
                                                   §catch§(_loc6_,§@x§.width,§@x§.height);
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      _loc6_.§%O§ = _loc5_.pivotx / _loc3_;
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      addr170:
                                                      while(true)
                                                      {
                                                         _loc6_.§;S§ = §@x§;
                                                         if(!_loc10_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr211:
                                                         while(_loc10_ && _loc2_)
                                                         {
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc6_.§&!I§ = _loc5_.pivoty / _loc3_;
                                       §§goto(addr211);
                                    }
                                 }
                              }
                              else
                              {
                                 addr313:
                                 if(_loc4_ != "image")
                                 {
                                    continue;
                                 }
                                 if(!_loc9_)
                                 {
                                    continue;
                                 }
                              }
                              mName = param1[_loc4_];
                              continue;
                           }
                           §§goto(addr313);
                        }
                     }
                     §§goto(addr313);
                  }
                  return;
                  §§push(true);
               }
               §§goto(addr56);
            }
            §§goto(addr67);
         }
         §§goto(addr68);
      }
   }
}
