package §0!M§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §7U§ extends §=!=§
   {
      
      public static var §83§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §83§ = false;
         }
      }
      
      public function §7U§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(param2);
         }
         do
         {
            this.§<0§(param1);
         }
         while(!(_loc4_ || this));
         
      }
      
      private static function §-6§(param1:§,'§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            if(param1.§;!a§.top < 0)
            {
               while(true)
               {
                  param1.§;!a§.top = 0;
                  addr124:
                  while(true)
                  {
                  }
               }
               addr120:
            }
            loop2:
            while(true)
            {
               if(param1.§;!a§.left < 0)
               {
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        param1.§;!a§.left = 0;
                        while(!(_loc5_ && §7U§))
                        {
                        }
                        continue loop2;
                        addr107:
                     }
                     §§goto(addr120);
                  }
                  addr101:
               }
               while(true)
               {
                  if(param1.§;!a§.bottom > param3)
                  {
                     if(!(_loc5_ && §7U§))
                     {
                        param1.§;!a§.bottom = param3;
                     }
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           while(true)
                           {
                           }
                           addr84:
                        }
                        else
                        {
                           §§goto(addr101);
                        }
                        addr34:
                        if(_loc4_ || param1)
                        {
                           param1.§;!a§.right = param2;
                        }
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           §§goto(addr24);
                        }
                        §§goto(addr107);
                     }
                  }
                  while(param1.§;!a§.right > param2)
                  {
                     §§goto(addr34);
                  }
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      protected function §<0§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§,'§ = null;
         var _loc2_:* = false;
         if(_loc10_)
         {
            §§push(§83§);
            if(_loc10_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc10_ || _loc3_)
                  {
                     §§push(true);
                     if(!(_loc9_ && _loc3_))
                     {
                        _loc2_ = §§pop();
                        if(!(_loc9_ && _loc2_))
                        {
                           addr62:
                           if(param1.usePivot)
                           {
                              if(_loc10_ || _loc2_)
                              {
                                 addr73:
                                 _loc2_ = true;
                              }
                           }
                        }
                     }
                     §§goto(addr73);
                  }
                  var _loc3_:Number = 1;
                  if(!(_loc9_ && this))
                  {
                     if(param1.scale)
                     {
                        if(_loc10_)
                        {
                           _loc3_ = parseFloat(param1.scale);
                           if(_loc10_ || param1)
                           {
                           }
                        }
                        §§goto(addr105);
                     }
                     this.scale = _loc3_;
                  }
                  addr105:
                  var _loc7_:int = 0;
                  var _loc8_:* = param1;
                  loop0:
                  while(§§hasnext(_loc8_,_loc7_))
                  {
                     §§push(§§nextname(_loc7_,_loc8_));
                     if(_loc10_ || _loc3_)
                     {
                        §§push(_loc4_ = §§pop());
                        if(!(_loc9_ && param1))
                        {
                           addr132:
                           §§push("sprite_");
                           if(!_loc9_)
                           {
                              if(§§pop().indexOf(§§pop()) != -1)
                              {
                                 if(!(_loc10_ || this))
                                 {
                                    continue;
                                 }
                                 _loc5_ = param1[_loc4_];
                                 (_loc6_ = new §,'§()).mName = _loc5_.id;
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                    loop1:
                                    while(true)
                                    {
                                       _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                       addr334:
                                       while(true)
                                       {
                                          _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                          addr322:
                                          while(!_loc9_)
                                          {
                                             _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc6_.§;!a§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                    loop5:
                                    for(; _loc10_ || this; while(_loc10_ || _loc3_)
                                    {
                                       _loc6_.§&5§ = _loc5_.pivotx / _loc3_;
                                       §§goto(addr270);
                                    })
                                    {
                                       §-6§(_loc6_,§'!N§.width,§'!N§.height);
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          _loc6_.§&5§ = _loc5_.width / 2;
                                          loop7:
                                          for(; !_loc9_; if(!(_loc9_ && param1))
                                          {
                                             if(false)
                                             {
                                                §§goto(addr203);
                                             }
                                             continue loop0;
                                          })
                                          {
                                             _loc6_.§1!O§ = _loc5_.height / 2;
                                             loop8:
                                             while(true)
                                             {
                                                addr203:
                                                loop9:
                                                while(true)
                                                {
                                                   _loc6_.§?![§ = §'!N§;
                                                   while(!(_loc9_ && _loc2_))
                                                   {
                                                      §5!w§(_loc6_);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         continue loop8;
                                                      }
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(_loc9_ && _loc2_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               break loop11;
                                                            }
                                                            continue loop11;
                                                         }
                                                         addr270:
                                                      }
                                                   }
                                                   §§goto(addr334);
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 addr356:
                                 §§push(_loc4_);
                                 §§push("image");
                              }
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc9_ && this))
                              {
                                 mName = param1[_loc4_];
                              }
                           }
                           continue;
                        }
                        §§goto(addr356);
                     }
                     §§goto(addr132);
                  }
                  return;
               }
               §§goto(addr62);
            }
         }
         §§goto(addr73);
      }
   }
}
