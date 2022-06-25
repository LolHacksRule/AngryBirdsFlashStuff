package §]o§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §^g§ extends §%!p§
   {
      
      public static var §=$§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §=$§ = false;
         }
      }
      
      public function §^g§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param2);
         }
         do
         {
            this.§!!E§(param1);
         }
         while(_loc4_ && this);
         
      }
      
      private static function §;!E§(param1:§^!9§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param1.§]!1§.top < 0)
            {
               loop0:
               while(true)
               {
                  param1.§]!1§.top = 0;
                  addr125:
                  while(true)
                  {
                  }
                  loop6:
                  while(true)
                  {
                     if(!(_loc5_ || param2))
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        param1.§]!1§.bottom = param3;
                        loop9:
                        while(true)
                        {
                           addr24:
                           while(param1.§]!1§.right > param2)
                           {
                              if(_loc5_ || §^g§)
                              {
                                 param1.§]!1§.right = param2;
                              }
                              if(_loc5_ || param2)
                              {
                                 continue loop6;
                              }
                              continue loop9;
                           }
                           addr20:
                           return;
                        }
                     }
                  }
                  §§goto(addr125);
               }
            }
            while(true)
            {
               if(param1.§]!1§.left < 0)
               {
                  §§goto(addr111);
               }
               §§goto(addr77);
               §§goto(addr125);
            }
         }
         §§goto(addr100);
      }
      
      protected function §!!E§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§^!9§ = null;
         var _loc2_:* = false;
         if(_loc10_)
         {
            §§push(§=$§);
            if(_loc10_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     §§push(true);
                     if(_loc10_ || param1)
                     {
                        addr49:
                        _loc2_ = §§pop();
                        if(!_loc9_)
                        {
                           addr52:
                           if(param1.usePivot)
                           {
                              if(!(_loc9_ && _loc2_))
                              {
                                 addr63:
                                 _loc2_ = true;
                                 addr62:
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
                                       addr92:
                                       this.scale = _loc3_;
                                    }
                                 }
                                 var _loc7_:int = 0;
                                 var _loc8_:* = param1;
                                 loop0:
                                 while(§§hasnext(_loc8_,_loc7_))
                                 {
                                    §§push(§§nextname(_loc7_,_loc8_));
                                    if(_loc10_ || _loc2_)
                                    {
                                       §§push(_loc4_ = §§pop());
                                       if(_loc10_ || param1)
                                       {
                                          addr122:
                                          §§push("sprite_");
                                          if(!(_loc9_ && this))
                                          {
                                             if(§§pop().indexOf(§§pop()) != -1)
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   _loc5_ = param1[_loc4_];
                                                   (_loc6_ = new §^!9§()).mName = _loc5_.id;
                                                   if(!(_loc9_ && param1))
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
                                                               while(!_loc9_)
                                                               {
                                                                  _loc6_.§]!1§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §;!E§(_loc6_,§0g§.width,§0g§.height);
                                                                     addr273:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           while(_loc10_)
                                                                           {
                                                                              _loc6_.§`Q§ = _loc5_.pivotx / _loc3_;
                                                                           }
                                                                           continue loop5;
                                                                           addr256:
                                                                        }
                                                                        _loc6_.§`Q§ = _loc5_.width / 2;
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                                  addr186:
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           _loc6_.§[3§ = §0g§;
                                                                           addr199:
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    §8!U§(_loc6_);
                                                                                    if(!(_loc10_ || _loc3_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§goto(addr186);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          §§goto(addr256);
                                                                                       }
                                                                                       addr221:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_.§-Z§ = _loc5_.pivoty / _loc3_;
                                                                                       break loop10;
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                        §§goto(addr273);
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr264);
                                                }
                                             }
                                             else
                                             {
                                                addr342:
                                                if(_loc4_ != "image")
                                                {
                                                   continue;
                                                }
                                                if(!(_loc10_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                             }
                                             mName = param1[_loc4_];
                                             continue;
                                          }
                                       }
                                       §§goto(addr342);
                                    }
                                    §§goto(addr122);
                                 }
                                 return;
                              }
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr62);
                     }
                  }
                  §§goto(addr63);
               }
               §§goto(addr52);
            }
            §§goto(addr49);
         }
         §§goto(addr63);
      }
   }
}
