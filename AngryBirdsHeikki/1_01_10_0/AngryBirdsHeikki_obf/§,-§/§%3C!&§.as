package §,-§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §<!&§ extends §]M§
   {
      
      public static var §^c§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^c§ = false;
         }
      }
      
      public function §<!&§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param2);
            do
            {
               this.§5!I§(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      private static function §;h§(param1:§!>§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1.§1!f§.top < 0)
            {
               while(true)
               {
                  param1.§1!f§.top = 0;
                  addr124:
                  while(true)
                  {
                  }
                  addr93:
                  if(_loc5_ && param1)
                  {
                     continue;
                  }
                  param1.§1!f§.left = 0;
                  loop2:
                  while(true)
                  {
                     addr48:
                     while(param1.§1!f§.bottom > param3)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc4_)
                           {
                              continue loop2;
                              continue;
                           }
                           param1.§1!f§.bottom = param3;
                        }
                        do
                        {
                           break loop2;
                           if(_loc4_ || param3)
                           {
                              param1.§1!f§.right = param2;
                           }
                        }
                        while(!(_loc4_ || param3));
                        
                        return;
                     }
                     break;
                  }
                  while(true)
                  {
                     if(param1.§1!f§.right > param2)
                     {
                        §§goto(addr29);
                     }
                     §§goto(addr19);
                     §§goto(addr72);
                  }
                  addr104:
               }
            }
            while(param1.§1!f§.left < 0)
            {
               if(_loc4_ || param1)
               {
                  if(!(_loc4_ || §<!&§))
                  {
                     continue;
                  }
                  §§goto(addr93);
               }
               §§goto(addr104);
            }
            §§goto(addr48);
         }
         §§goto(addr124);
      }
      
      protected function §5!I§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§!>§ = null;
         var _loc2_:* = false;
         if(_loc9_ || _loc3_)
         {
            §§push(§^c§);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(_loc9_ || this)
                  {
                     addr45:
                     §§push(true);
                     if(_loc9_)
                     {
                        _loc2_ = §§pop();
                        if(!(_loc10_ && param1))
                        {
                           addr56:
                           if(param1.usePivot)
                           {
                              if(_loc9_)
                              {
                                 addr62:
                                 _loc2_ = true;
                              }
                           }
                        }
                        var _loc3_:Number = 1;
                        if(_loc9_ || _loc2_)
                        {
                           if(param1.scale)
                           {
                              if(_loc9_)
                              {
                                 _loc3_ = parseFloat(param1.scale);
                                 if(_loc9_)
                                 {
                                    addr86:
                                    this.scale = _loc3_;
                                 }
                                 var _loc7_:int = 0;
                                 var _loc8_:* = param1;
                                 loop0:
                                 while(§§hasnext(_loc8_,_loc7_))
                                 {
                                    §§push(§§nextname(_loc7_,_loc8_));
                                    if(!_loc10_)
                                    {
                                       §§push(_loc4_ = §§pop());
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          if(§§pop().indexOf("sprite_") != -1)
                                          {
                                             if(!_loc10_)
                                             {
                                                _loc5_ = param1[_loc4_];
                                                (_loc6_ = new §!>§()).mName = _loc5_.id;
                                                if(_loc9_)
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
                                                            while(true)
                                                            {
                                                               _loc6_.§1!f§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §;h§(_loc6_,§=!=§.width,§=!=§.height);
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     _loc6_.§var § = _loc5_.width / 2;
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           _loc6_.§9!K§ = _loc5_.height / 2;
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              loop9:
                                                                              while(!(_loc9_ || _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_.§9!K§ = _loc5_.pivoty / _loc3_;
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 break;
                                                                                 addr148:
                                                                              }
                                                                              do
                                                                              {
                                                                                 _loc6_.§?7§ = §=!=§;
                                                                                 continue loop8;
                                                                              }
                                                                              while(false);
                                                                              
                                                                              continue loop0;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                               addr139:
                                                               if(!(_loc9_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr146);
                                                            }
                                                            if(_loc10_ && param1)
                                                            {
                                                               continue;
                                                            }
                                                            §,E§(_loc6_);
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr139);
                                                            }
                                                            §§goto(addr152);
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr148);
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
                                             if(_loc10_)
                                             {
                                                continue;
                                             }
                                          }
                                          mName = param1[_loc4_];
                                          continue;
                                       }
                                    }
                                    §§goto(addr313);
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr86);
                     }
                  }
                  §§goto(addr62);
               }
               §§goto(addr56);
            }
            §§goto(addr62);
         }
         §§goto(addr45);
      }
   }
}
