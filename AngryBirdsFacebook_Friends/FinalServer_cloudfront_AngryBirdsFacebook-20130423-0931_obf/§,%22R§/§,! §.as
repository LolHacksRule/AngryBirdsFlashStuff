package §,"R§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §,! § extends §,!+§
   {
      
      public static var §?S§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?S§ = false;
         }
      }
      
      public function §,! §(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(param2);
            do
            {
               this.§#"B§(param1);
            }
            while(_loc3_);
            
         }
      }
      
      private static function §<"A§(param1:§2!J§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(param1.§-"Y§.top < 0)
            {
               while(true)
               {
                  param1.§-"Y§.top = 0;
                  addr110:
                  while(true)
                  {
                  }
               }
               addr106:
            }
            loop2:
            while(true)
            {
               if(param1.§-"Y§.left < 0)
               {
                  while(true)
                  {
                     param1.§-"Y§.left = 0;
                     addr100:
                     while(true)
                     {
                     }
                  }
                  addr96:
               }
               while(true)
               {
                  if(param1.§-"Y§.bottom <= param3)
                  {
                     while(param1.§-"Y§.right > param2)
                     {
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr39);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr60);
                     }
                     addr25:
                  }
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc5_)
                        {
                           continue loop2;
                        }
                        param1.§-"Y§.bottom = param3;
                        while(true)
                        {
                        }
                     }
                     else
                     {
                        §§goto(addr96);
                     }
                     addr39:
                     if(!(_loc5_ || §,! §))
                     {
                        continue;
                     }
                     param1.§-"Y§.right = param2;
                     addr60:
                     if(!_loc5_)
                     {
                        break;
                     }
                     if(_loc5_)
                     {
                        §§goto(addr25);
                     }
                     §§goto(addr106);
                  }
                  continue;
                  return;
               }
            }
         }
         §§goto(addr100);
      }
      
      protected function §#"B§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§2!J§ = null;
         var _loc2_:* = false;
         if(_loc9_ || param1)
         {
            §§push(§?S§);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && _loc2_))
                  {
                     addr45:
                     §§push(true);
                     if(_loc9_ || _loc3_)
                     {
                        addr53:
                        _loc2_ = §§pop();
                        if(_loc9_)
                        {
                           §§goto(addr56);
                        }
                        §§goto(addr66);
                     }
                  }
                  §§goto(addr67);
               }
               addr56:
               if(param1.usePivot)
               {
                  if(_loc9_ || param1)
                  {
                     addr67:
                     _loc2_ = true;
                     addr66:
                  }
               }
               var _loc3_:Number = 1;
               if(!_loc10_)
               {
                  if(param1.scale)
                  {
                     if(!(_loc10_ && this))
                     {
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr96);
               }
               addr83:
               _loc3_ = parseFloat(param1.scale);
               if(_loc9_ || param1)
               {
                  addr96:
                  this.scale = _loc3_;
               }
               var _loc7_:int = 0;
               var _loc8_:* = param1;
               loop0:
               while(§§hasnext(_loc8_,_loc7_))
               {
                  §§push(§§nextname(_loc7_,_loc8_));
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(_loc4_ = §§pop());
                     if(_loc9_)
                     {
                        §§push("sprite_");
                        if(_loc9_)
                        {
                           if(§§pop().indexOf(§§pop()) != -1)
                           {
                              if(!(_loc10_ && param1))
                              {
                                 _loc5_ = param1[_loc4_];
                                 (_loc6_ = new §2!J§()).mName = _loc5_.id;
                                 if(_loc9_ || param1)
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
                                             loop4:
                                             while(true)
                                             {
                                                _loc6_.§-"Y§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                loop5:
                                                while(true)
                                                {
                                                   §<"A§(_loc6_,§ !k§.width,§ !k§.height);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         _loc6_.§5'§ = _loc5_.width / 2;
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               _loc6_.§>K§ = _loc5_.height / 2;
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  addr184:
                                                                  while(true)
                                                                  {
                                                                     _loc6_.§^! § = § !k§;
                                                                     while(true)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           §#E§(_loc6_);
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        addr253:
                                                                        while(!_loc10_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc6_.§>K§ = _loc5_.pivoty / _loc3_;
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(_loc9_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr255);
                              }
                           }
                           else
                           {
                              addr331:
                              if(_loc4_ != "image")
                              {
                                 continue;
                              }
                              if(_loc10_)
                              {
                                 continue;
                              }
                           }
                           mName = param1[_loc4_];
                           continue;
                        }
                        §§goto(addr331);
                     }
                  }
                  §§goto(addr331);
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr45);
      }
   }
}
