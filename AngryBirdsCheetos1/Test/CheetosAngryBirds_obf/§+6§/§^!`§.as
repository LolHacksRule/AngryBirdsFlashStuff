package §+6§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §^!`§ extends §^j§
   {
      
      public static var §+!L§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+!L§ = false;
         }
      }
      
      public function §^!`§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param2);
         }
         do
         {
            this.§8!C§(param1);
         }
         while(!_loc3_);
         
      }
      
      private static function § !3§(param1:§=!`§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1.§ k§.top < 0)
            {
               while(true)
               {
                  param1.§ k§.top = 0;
                  addr114:
                  while(true)
                  {
                  }
               }
               addr110:
            }
            loop2:
            while(true)
            {
               if(param1.§ k§.left < 0)
               {
                  while(true)
                  {
                     param1.§ k§.left = 0;
                     addr94:
                     while(true)
                     {
                     }
                  }
                  addr90:
               }
               while(true)
               {
                  if(param1.§ k§.bottom > param3)
                  {
                     while(_loc4_)
                     {
                        param1.§ k§.bottom = param3;
                        loop7:
                        while(true)
                        {
                           addr61:
                           while(true)
                           {
                              if(_loc5_ && §^!`§)
                              {
                                 continue loop7;
                              }
                              if(_loc4_)
                              {
                                 §§goto(addr19);
                              }
                              §§goto(addr110);
                           }
                        }
                     }
                     continue;
                     addr77:
                  }
                  while(true)
                  {
                     if(param1.§ k§.right > param2)
                     {
                        if(!(_loc5_ && param2))
                        {
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 if(!(_loc4_ || param2))
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    param1.§ k§.right = param2;
                                 }
                              }
                              else
                              {
                                 §§goto(addr90);
                              }
                           }
                           else
                           {
                              §§goto(addr77);
                           }
                        }
                        §§goto(addr61);
                     }
                     break;
                     §§goto(addr83);
                  }
                  addr19:
                  return;
               }
            }
         }
         §§goto(addr47);
      }
      
      protected function §8!C§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§=!`§ = null;
         var _loc2_:* = false;
         if(!(_loc9_ && _loc3_))
         {
            §§push(§+!L§);
            if(!_loc9_)
            {
               if(§§pop())
               {
                  if(_loc10_ || _loc2_)
                  {
                     §§push(true);
                     if(!(_loc9_ && _loc2_))
                     {
                        addr54:
                        _loc2_ = §§pop();
                        if(!(_loc9_ && param1))
                        {
                           addr62:
                           if(param1.usePivot)
                           {
                              if(_loc10_ || this)
                              {
                                 addr73:
                                 _loc2_ = true;
                              }
                           }
                        }
                        var _loc3_:Number = 1;
                        if(!(_loc9_ && _loc3_))
                        {
                           if(param1.scale)
                           {
                              if(!(_loc9_ && this))
                              {
                                 _loc3_ = parseFloat(param1.scale);
                                 if(!_loc9_)
                                 {
                                    addr102:
                                    this.scale = _loc3_;
                                 }
                              }
                              var _loc7_:int = 0;
                              var _loc8_:* = param1;
                              loop0:
                              while(§§hasnext(_loc8_,_loc7_))
                              {
                                 §§push(§§nextname(_loc7_,_loc8_));
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(_loc4_ = §§pop());
                                    if(!(_loc9_ && this))
                                    {
                                       addr132:
                                       if(§§pop().indexOf("sprite_") != -1)
                                       {
                                          if(_loc9_)
                                          {
                                             continue;
                                          }
                                          _loc5_ = param1[_loc4_];
                                          (_loc6_ = new §=!`§()).mName = _loc5_.id;
                                          if(_loc10_)
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
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(!(_loc10_ || this))
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr261:
                                                      loop11:
                                                      for(; _loc10_ || _loc3_; §§goto(addr261))
                                                      {
                                                         _loc6_.§>!D§ = _loc5_.pivoty / _loc3_;
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(!_loc9_)
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  _loc6_.§03§ = §^4§;
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!(_loc10_ || _loc3_))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        addr213:
                                                                        if(_loc10_ || this)
                                                                        {
                                                                           §+!"§(_loc6_);
                                                                           if(!(_loc10_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr165:
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              if(!(_loc10_ || _loc2_))
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              addr189:
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              addr317:
                                                                              while(true)
                                                                              {
                                                                                 _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                                                 addr307:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_.§ k§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                                                    break loop9;
                                                                                    §§goto(addr213);
                                                                                 }
                                                                                 §§goto(addr189);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop9;
                                                                              §§goto(addr165);
                                                                           }
                                                                           addr228:
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     addr238:
                                                                     while(true)
                                                                     {
                                                                        _loc6_.§>!D§ = _loc5_.height / 2;
                                                                        §§goto(addr228);
                                                                     }
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               § !3§(_loc6_,§^4§.width,§^4§.height);
                                                               break loop11;
                                                            }
                                                         }
                                                      }
                                                      _loc6_.§4!=§ = _loc5_.pivotx / _loc3_;
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         _loc6_.§4!=§ = _loc5_.width / 2;
                                                         §§goto(addr238);
                                                         §§goto(addr267);
                                                      }
                                                      addr267:
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr317);
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                       }
                                    }
                                    if(§§pop() == "image")
                                    {
                                       if(!_loc9_)
                                       {
                                          mName = param1[_loc4_];
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr132);
                              }
                              return;
                           }
                        }
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr73);
               }
               §§goto(addr62);
            }
            §§goto(addr54);
         }
         §§goto(addr62);
      }
   }
}
