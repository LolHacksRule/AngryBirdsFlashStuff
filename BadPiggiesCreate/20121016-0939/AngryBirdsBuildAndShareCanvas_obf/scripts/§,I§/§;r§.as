package §,I§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §;r§ extends §5i§
   {
      
      public static var §'>§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §'>§ = false;
         }
      }
      
      public function §;r§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param2);
         }
         do
         {
            this.§<!#§(param1);
         }
         while(!(_loc3_ || param1));
         
      }
      
      private static function §+E§(param1:§7!c§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.§5l§.top < 0)
            {
               loop0:
               while(true)
               {
                  param1.§5l§.top = 0;
                  addr124:
                  while(true)
                  {
                  }
                  loop4:
                  while(true)
                  {
                     if(!(_loc4_ || param2))
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        addr52:
                        while(true)
                        {
                           if(param1.§5l§.bottom > param3)
                           {
                              loop6:
                              while(true)
                              {
                                 if(!(_loc5_ && §;r§))
                                 {
                                    param1.§5l§.bottom = param3;
                                    loop7:
                                    while(!(_loc5_ && param1))
                                    {
                                       while(param1.§5l§.right > param2)
                                       {
                                          if(_loc5_ && param2)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             addr49:
                                          }
                                          if(!(_loc4_ || param1))
                                          {
                                             continue loop7;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop6;
                                          }
                                          param1.§5l§.right = param2;
                                          §§goto(addr49);
                                          continue loop7;
                                       }
                                       return;
                                    }
                                    break;
                                 }
                                 addr93:
                                 while(true)
                                 {
                                    param1.§5l§.left = 0;
                                    break loop6;
                                 }
                              }
                              continue loop4;
                           }
                           §§goto(addr23);
                        }
                     }
                  }
                  §§goto(addr124);
               }
            }
            while(true)
            {
               if(param1.§5l§.left < 0)
               {
                  §§goto(addr93);
               }
               §§goto(addr52);
               §§goto(addr124);
            }
         }
         §§goto(addr104);
      }
      
      protected function §<!#§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§7!c§ = null;
         var _loc2_:* = false;
         if(!(_loc10_ && _loc3_))
         {
            §§push(§'>§);
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(!_loc10_)
                  {
                     addr40:
                     §§push(true);
                     if(_loc9_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc10_)
                        {
                           addr46:
                           if(param1.usePivot)
                           {
                              if(!_loc10_)
                              {
                                 addr52:
                                 _loc2_ = true;
                              }
                           }
                        }
                        var _loc3_:Number = 1;
                        if(_loc9_ || param1)
                        {
                           if(param1.scale)
                           {
                              if(_loc9_ || _loc2_)
                              {
                                 _loc3_ = parseFloat(param1.scale);
                                 if(_loc9_)
                                 {
                                    addr81:
                                    this.scale = _loc3_;
                                 }
                              }
                              var _loc7_:int = 0;
                              var _loc8_:* = param1;
                              while(§§hasnext(_loc8_,_loc7_))
                              {
                                 §§push(§§nextname(_loc7_,_loc8_));
                                 if(_loc9_)
                                 {
                                    §§push(_loc4_ = §§pop());
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       addr106:
                                       if(§§pop().indexOf("sprite_") != -1)
                                       {
                                          if(!(_loc10_ && param1))
                                          {
                                             _loc5_ = param1[_loc4_];
                                             (_loc6_ = new §7!c§()).mName = _loc5_.id;
                                             if(_loc9_)
                                             {
                                                _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                                loop1:
                                                while(true)
                                                {
                                                   _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                                   while(true)
                                                   {
                                                      _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                                      while(!_loc10_)
                                                      {
                                                         _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                         loop4:
                                                         while(true)
                                                         {
                                                            _loc6_.§5l§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                            while(true)
                                                            {
                                                               §+E§(_loc6_,§%!y§.width,§%!y§.height);
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     _loc6_.§>!v§ = _loc5_.width / 2;
                                                                     continue;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc6_.§>!v§ = _loc5_.pivotx / _loc3_;
                                                                     addr229:
                                                                     while(!_loc10_)
                                                                     {
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop1;
                                                      if(_loc10_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                }
                                             }
                                             §§goto(addr231);
                                          }
                                       }
                                       else
                                       {
                                          addr298:
                                          if(_loc4_ != "image")
                                          {
                                             continue;
                                          }
                                          if(_loc10_ && _loc3_)
                                          {
                                             continue;
                                          }
                                       }
                                       mName = param1[_loc4_];
                                       continue;
                                    }
                                    §§goto(addr298);
                                 }
                                 §§goto(addr106);
                              }
                              return;
                           }
                        }
                        §§goto(addr81);
                     }
                  }
                  §§goto(addr52);
               }
               §§goto(addr46);
            }
            §§goto(addr52);
         }
         §§goto(addr40);
      }
   }
}
