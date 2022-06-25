package §_-6E§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-So§ extends §_-UU§
   {
      
      public static var §_-PA§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-PA§ = false;
         }
      }
      
      public function §_-So§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param2);
            do
            {
               this.§_-EP§(param1);
            }
            while(!_loc4_);
            
         }
      }
      
      private static function §_-5x§(param1:§_-0j§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §_-So§)
         {
            if(param1.§_-vb§.top < 0)
            {
               while(true)
               {
                  param1.§_-vb§.top = 0;
                  addr115:
                  while(true)
                  {
                  }
               }
               addr111:
            }
            loop1:
            while(true)
            {
               if(param1.§_-vb§.left < 0)
               {
                  while(true)
                  {
                     param1.§_-vb§.left = 0;
                     addr103:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           §§goto(addr111);
                        }
                     }
                     continue loop1;
                  }
                  addr99:
               }
               while(true)
               {
                  if(param1.§_-vb§.bottom > param3)
                  {
                     while(true)
                     {
                        param1.§_-vb§.bottom = param3;
                        addr92:
                        while(true)
                        {
                        }
                     }
                     addr88:
                  }
                  for(; param1.§_-vb§.right > param2; §§goto(addr92))
                  {
                     if(!_loc4_)
                     {
                        if(_loc4_ && param3)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           if(_loc5_ || param1)
                           {
                              if(!_loc5_)
                              {
                                 continue loop1;
                              }
                              param1.§_-vb§.right = param2;
                              addr69:
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr88);
                           }
                           else
                           {
                              §§goto(addr99);
                           }
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr69);
                  }
                  return;
               }
            }
         }
         §§goto(addr115);
      }
      
      protected function §_-EP§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§_-0j§ = null;
         var _loc2_:* = false;
         if(_loc10_ || _loc3_)
         {
            §§push(§_-PA§);
            if(!(_loc9_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc10_ || _loc3_)
                  {
                     §§push(true);
                     if(!(_loc9_ && _loc3_))
                     {
                        _loc2_ = §§pop();
                        if(!_loc9_)
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr72);
                     }
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr73);
         }
         addr62:
         if(param1.usePivot)
         {
            if(!(_loc9_ && this))
            {
               addr73:
               _loc2_ = true;
               addr72:
            }
         }
         var _loc3_:Number = 1;
         if(!(_loc9_ && this))
         {
            if(param1.scale)
            {
               if(!_loc9_)
               {
                  §§goto(addr89);
               }
            }
            §§goto(addr97);
         }
         addr89:
         _loc3_ = parseFloat(param1.scale);
         if(_loc10_)
         {
            addr97:
            this.scale = _loc3_;
         }
         var _loc7_:int = 0;
         var _loc8_:* = param1;
         while(§§hasnext(_loc8_,_loc7_))
         {
            §§push(§§nextname(_loc7_,_loc8_));
            if(!_loc9_)
            {
               §§push(_loc4_ = §§pop());
               if(!(_loc9_ && this))
               {
                  §§push("sprite_");
                  if(!_loc9_)
                  {
                     if(§§pop().indexOf(§§pop()) != -1)
                     {
                        if(!(_loc9_ && this))
                        {
                           _loc5_ = param1[_loc4_];
                           (_loc6_ = new §_-0j§()).mName = _loc5_.id;
                           if(!(_loc9_ && param1))
                           {
                              _loc5_.width = Math.round(_loc5_.width / _loc3_);
                              while(true)
                              {
                                 _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                 while(true)
                                 {
                                    _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                    loop3:
                                    while(true)
                                    {
                                       _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                       addr309:
                                       loop4:
                                       while(true)
                                       {
                                          _loc6_.§_-vb§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                          addr269:
                                          while(true)
                                          {
                                             if(_loc10_ || this)
                                             {
                                                _loc6_.§_-yG§ = _loc5_.pivoty / _loc3_;
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr299);
                        }
                     }
                     else
                     {
                        addr352:
                        if(_loc4_ != "image")
                        {
                           continue;
                        }
                        if(_loc9_ && _loc2_)
                        {
                           continue;
                        }
                     }
                     mName = param1[_loc4_];
                     continue;
                  }
                  §§goto(addr352);
               }
            }
            §§goto(addr352);
         }
      }
   }
}
