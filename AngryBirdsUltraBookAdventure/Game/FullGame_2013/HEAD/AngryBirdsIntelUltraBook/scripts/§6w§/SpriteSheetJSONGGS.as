package §6w§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class SpriteSheetJSONGGS extends SpriteSheetBase
   {
      
      public static var §1!M§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §1!M§ = false;
         }
      }
      
      public function SpriteSheetJSONGGS(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param2);
         }
         do
         {
            this.§5!Q§(param1);
         }
         while(!(_loc3_ || param1));
         
      }
      
      private static function §<s§(param1:§<>§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            if(param1.§'?§.top < 0)
            {
               while(true)
               {
                  param1.§'?§.top = 0;
                  addr129:
                  while(true)
                  {
                  }
               }
               addr125:
            }
            loop2:
            while(true)
            {
               if(param1.§'?§.left < 0)
               {
                  if(_loc4_ || param3)
                  {
                     while(true)
                     {
                        param1.§'?§.left = 0;
                     }
                     addr115:
                  }
                  while(true)
                  {
                     addr62:
                     if(_loc4_ || param1)
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr24);
                        }
                        continue loop2;
                     }
                  }
                  addr119:
               }
               while(true)
               {
                  if(param1.§'?§.bottom > param3)
                  {
                     if(!(_loc5_ && param2))
                     {
                        if(_loc4_)
                        {
                           param1.§'?§.bottom = param3;
                        }
                        else
                        {
                           §§goto(addr125);
                        }
                     }
                     while(true)
                     {
                        addr41:
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        param1.§'?§.right = param2;
                        §§goto(addr62);
                     }
                     addr101:
                  }
                  while(true)
                  {
                     if(param1.§'?§.right > param2)
                     {
                        if(_loc4_ || SpriteSheetJSONGGS)
                        {
                           §§goto(addr41);
                        }
                        §§goto(addr62);
                     }
                     break;
                     §§goto(addr101);
                  }
                  addr24:
                  return;
                  §§goto(addr119);
               }
            }
         }
         §§goto(addr115);
      }
      
      protected function §5!Q§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§<>§ = null;
         §§push(false);
         if(!_loc10_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc9_ || param1)
         {
            §§push(§1!M§);
            if(!(_loc10_ && this))
            {
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     §§push(true);
                     if(!(_loc10_ && param1))
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc9_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc10_)
                           {
                              addr63:
                              §§push(Boolean(param1.usePivot));
                              if(_loc10_ && param1)
                              {
                              }
                              §§goto(addr85);
                           }
                           addr81:
                           §§push(true);
                           if(!_loc10_)
                           {
                              addr85:
                              _loc2_ = §§pop();
                              var _loc3_:Number = 1;
                              if(!(_loc10_ && _loc2_))
                              {
                                 if(param1.scale)
                                 {
                                    if(!(_loc10_ && param1))
                                    {
                                       _loc3_ = parseFloat(param1.scale);
                                       if(_loc9_ || _loc2_)
                                       {
                                       }
                                    }
                                    §§goto(addr123);
                                 }
                                 this.scale = _loc3_;
                              }
                              addr123:
                              var _loc7_:int = 0;
                              var _loc8_:* = param1;
                              while(§§hasnext(_loc8_,_loc7_))
                              {
                                 §§push(§§nextname(_loc7_,_loc8_));
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc9_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc4_);
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       addr152:
                                       §§push("sprite_");
                                       if(!(_loc10_ && param1))
                                       {
                                          if(§§pop().indexOf(§§pop()) != -1)
                                          {
                                             if(!_loc10_)
                                             {
                                                _loc5_ = param1[_loc4_];
                                                _loc6_ = new §<>§();
                                                if(_loc9_ || _loc3_)
                                                {
                                                   _loc6_.mName = _loc5_.id;
                                                   while(true)
                                                   {
                                                      _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                                         while(true)
                                                         {
                                                            _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                                            addr342:
                                                            while(!(_loc10_ && param1))
                                                            {
                                                               _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr272);
                                             }
                                          }
                                          else
                                          {
                                             addr390:
                                             if(_loc4_ != "image")
                                             {
                                                continue;
                                             }
                                             if(!(_loc9_ || param1))
                                             {
                                                continue;
                                             }
                                          }
                                          mName = param1[_loc4_];
                                          continue;
                                       }
                                    }
                                    §§goto(addr390);
                                 }
                                 §§goto(addr152);
                              }
                              return;
                              §§push(Boolean(§§pop()));
                           }
                        }
                        §§goto(addr85);
                     }
                     if(§§pop())
                     {
                        if(!(_loc10_ && _loc3_))
                        {
                           §§goto(addr81);
                        }
                     }
                     §§goto(addr85);
                  }
               }
            }
            §§goto(addr63);
         }
         §§goto(addr81);
      }
   }
}
