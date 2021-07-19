package §`g§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §>!7§ extends §&_§
   {
      
      public static var §9e§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9e§ = false;
         }
      }
      
      public function §>!7§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(param2);
         }
         do
         {
            this.§94§(param1);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      private static function §[X§(param1:§]!3§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §>!7§))
         {
            if(param1.§<-§.top < 0)
            {
               while(true)
               {
                  param1.§<-§.top = 0;
                  addr117:
                  addr96:
                  while(true)
                  {
                  }
                  if(!(_loc4_ || param2))
                  {
                     continue;
                  }
                  param1.§<-§.left = 0;
                  addr67:
                  if(param1.§<-§.bottom > param3)
                  {
                     while(true)
                     {
                        param1.§<-§.bottom = param3;
                        addr77:
                        while(true)
                        {
                        }
                        addr43:
                        if(!_loc4_)
                        {
                           continue;
                        }
                        param1.§<-§.right = param2;
                        §§goto(addr59);
                     }
                  }
                  for(; param1.§<-§.right > param2; §§goto(addr77))
                  {
                     if(_loc4_ || param3)
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr43);
                     }
                     §§goto(addr59);
                  }
                  addr59:
                  if(!(_loc4_ || param2))
                  {
                     §§goto(addr117);
                  }
                  return;
                  addr107:
               }
            }
            while(true)
            {
               if(param1.§<-§.left < 0)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr96);
                  }
                  §§goto(addr107);
               }
               §§goto(addr67);
               §§goto(addr117);
            }
         }
         §§goto(addr77);
      }
      
      protected function §94§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§]!3§ = null;
         var _loc2_:* = false;
         if(!(_loc9_ && param1))
         {
            §§push(§9e§);
            if(_loc10_)
            {
               if(§§pop())
               {
                  if(_loc10_ || this)
                  {
                     §§push(true);
                     if(_loc10_ || _loc2_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc9_)
                        {
                           addr57:
                           if(param1.usePivot)
                           {
                              if(_loc10_ || param1)
                              {
                              }
                           }
                           §§goto(addr69);
                        }
                        addr68:
                        _loc2_ = true;
                     }
                     §§goto(addr68);
                  }
                  addr69:
                  var _loc3_:Number = 1;
                  if(!(_loc9_ && this))
                  {
                     if(param1.scale)
                     {
                        if(_loc10_)
                        {
                           _loc3_ = parseFloat(param1.scale);
                           if(_loc10_ || _loc2_)
                           {
                           }
                           §§goto(addr100);
                        }
                     }
                     this.scale = _loc3_;
                  }
                  addr100:
                  var _loc7_:int = 0;
                  var _loc8_:* = param1;
                  loop0:
                  while(§§hasnext(_loc8_,_loc7_))
                  {
                     §§push(§§nextname(_loc7_,_loc8_));
                     if(!(_loc9_ && _loc2_))
                     {
                        §§push(_loc4_ = §§pop());
                        if(!_loc9_)
                        {
                           §§push("sprite_");
                           if(!(_loc9_ && _loc3_))
                           {
                              if(§§pop().indexOf(§§pop()) != -1)
                              {
                                 if(_loc10_ || _loc2_)
                                 {
                                    _loc5_ = param1[_loc4_];
                                    (_loc6_ = new §]!3§()).mName = _loc5_.id;
                                    if(_loc10_ || param1)
                                    {
                                       _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                       _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                       while(true)
                                       {
                                          _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                          _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                          _loc6_.§<-§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                          §[X§(_loc6_,§ k§.width,§ k§.height);
                                          loop2:
                                          while(!_loc2_)
                                          {
                                             _loc6_.§3e§ = _loc5_.width / 2;
                                             if(!(_loc10_ || param1))
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                _loc6_.§>9§ = _loc5_.height / 2;
                                                loop7:
                                                while(true)
                                                {
                                                   addr183:
                                                   while(true)
                                                   {
                                                      _loc6_.§!o§ = § k§;
                                                      do
                                                      {
                                                         §>j§(_loc6_);
                                                      }
                                                      while(_loc9_);
                                                      
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            break loop2;
                                                         }
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          while(_loc10_ || this)
                                          {
                                             _loc6_.§3e§ = _loc5_.pivotx / _loc3_;
                                             _loc6_.§>9§ = _loc5_.pivoty / _loc3_;
                                             §§goto(addr183);
                                          }
                                       }
                                    }
                                    §§goto(addr212);
                                 }
                              }
                              else
                              {
                                 addr313:
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
                           §§goto(addr313);
                        }
                     }
                     §§goto(addr313);
                  }
                  return;
               }
               §§goto(addr57);
            }
            §§goto(addr68);
         }
         §§goto(addr57);
      }
   }
}
