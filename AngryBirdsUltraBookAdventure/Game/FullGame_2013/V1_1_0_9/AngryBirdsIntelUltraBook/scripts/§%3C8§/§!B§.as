package §<8§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §!B§ extends §,j§
   {
      
      public static var §4+§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4+§ = false;
         }
      }
      
      public function §!B§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param2);
            do
            {
               this.§,7§(param1);
            }
            while(_loc4_);
            
         }
      }
      
      private static function §!"!§(param1:§!3§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1.§?!-§.top < 0)
            {
               while(true)
               {
                  param1.§?!-§.top = 0;
                  addr109:
                  while(true)
                  {
                  }
               }
               addr105:
            }
            loop2:
            while(true)
            {
               if(param1.§?!-§.left < 0)
               {
                  while(true)
                  {
                     param1.§?!-§.left = 0;
                     addr99:
                     while(true)
                     {
                     }
                  }
                  addr95:
               }
               while(true)
               {
                  if(param1.§?!-§.bottom > param3)
                  {
                     while(_loc4_ || param1)
                     {
                        param1.§?!-§.bottom = param3;
                        while(_loc4_)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr105);
                           }
                        }
                        continue loop2;
                     }
                     continue;
                     addr63:
                  }
                  while(param1.§?!-§.right > param2)
                  {
                     if(_loc4_ || param1)
                     {
                        if(_loc4_)
                        {
                           param1.§?!-§.right = param2;
                        }
                        else
                        {
                           §§goto(addr95);
                        }
                     }
                     if(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr84);
                  }
                  return;
               }
            }
         }
         §§goto(addr99);
      }
      
      protected function §,7§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§!3§ = null;
         var _loc2_:* = false;
         if(!_loc9_)
         {
            §§push(§4+§);
            if(_loc10_)
            {
               if(§§pop())
               {
                  if(!(_loc9_ && _loc2_))
                  {
                     addr41:
                     §§push(true);
                     if(_loc10_ || _loc3_)
                     {
                        _loc2_ = §§pop();
                        if(_loc10_)
                        {
                           addr52:
                           if(param1.usePivot)
                           {
                              if(!_loc9_)
                              {
                                 addr58:
                                 _loc2_ = true;
                              }
                           }
                        }
                        var _loc3_:Number = 1;
                        if(_loc10_ || param1)
                        {
                           if(param1.scale)
                           {
                              if(_loc10_ || this)
                              {
                                 _loc3_ = parseFloat(param1.scale);
                                 if(_loc9_)
                                 {
                                 }
                                 §§goto(addr90);
                              }
                           }
                           this.scale = _loc3_;
                        }
                        addr90:
                        var _loc7_:int = 0;
                        var _loc8_:* = param1;
                        loop0:
                        while(§§hasnext(_loc8_,_loc7_))
                        {
                           §§push(§§nextname(_loc7_,_loc8_));
                           if(_loc10_ || _loc3_)
                           {
                              §§push(_loc4_ = §§pop());
                              if(!(_loc9_ && _loc3_))
                              {
                                 addr117:
                                 §§push("sprite_");
                                 if(!_loc9_)
                                 {
                                    if(§§pop().indexOf(§§pop()) != -1)
                                    {
                                       if(!_loc9_)
                                       {
                                          _loc5_ = param1[_loc4_];
                                          (_loc6_ = new §!3§()).mName = _loc5_.id;
                                          if(_loc10_)
                                          {
                                             _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                             while(true)
                                             {
                                                _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                             }
                                             addr328:
                                          }
                                          loop2:
                                          while(true)
                                          {
                                             _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                             loop3:
                                             while(true)
                                             {
                                                _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                addr289:
                                                while(true)
                                                {
                                                   _loc6_.§?!-§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                   continue loop2;
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   if(!(_loc9_ && this))
                                                   {
                                                      _loc6_.§;V§ = _loc5_.pivoty / _loc3_;
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(_loc9_ && param1)
                                                         {
                                                            continue loop13;
                                                         }
                                                         loop9:
                                                         while(true)
                                                         {
                                                            _loc6_.§"-§ = §1!w§;
                                                            for(; !_loc9_; §"n§(_loc6_),if(!_loc9_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  break loop9;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop0;
                                                            })
                                                            {
                                                               if(_loc10_ || param1)
                                                               {
                                                                  continue;
                                                               }
                                                               addr234:
                                                               while(_loc10_)
                                                               {
                                                                  _loc6_.§1!3§ = _loc5_.pivotx / _loc3_;
                                                                  continue loop13;
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                            addr182:
                                                            while(true)
                                                            {
                                                               if(_loc9_ && _loc2_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr189:
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  addr196:
                                                                  if(_loc9_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        _loc6_.§1!3§ = _loc5_.width / 2;
                                                                        break loop9;
                                                                     }
                                                                     §§goto(addr234);
                                                                     §§goto(addr189);
                                                                  }
                                                                  addr258:
                                                               }
                                                            }
                                                            continue loop2;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc6_.§;V§ = _loc5_.height / 2;
                                                            §§goto(addr182);
                                                         }
                                                      }
                                                      addr249:
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr332:
                                       if(_loc4_ != "image")
                                       {
                                          continue;
                                       }
                                       if(!_loc10_)
                                       {
                                          continue;
                                       }
                                    }
                                    mName = param1[_loc4_];
                                    continue;
                                 }
                              }
                              §§goto(addr332);
                           }
                           §§goto(addr117);
                        }
                        return;
                     }
                     §§goto(addr58);
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr58);
         }
         §§goto(addr41);
      }
   }
}
