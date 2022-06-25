package §>k§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §#0§ extends §`z§
   {
      
      public static var dynamic:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            dynamic = false;
         }
      }
      
      public function §#0§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param2);
            if(_loc4_)
            {
               this.§ C§(param1);
            }
         }
      }
      
      private static function §if §(param1:§`-§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1.§@n§.top < 0)
            {
               param1.§@n§.top = 0;
            }
            if(param1.§@n§.left < 0)
            {
               if(!_loc4_)
               {
                  param1.§@n§.left = 0;
                  addr59:
                  if(param1.§@n§.bottom > param3)
                  {
                     param1.§@n§.bottom = param3;
                     if(_loc5_ || param1)
                     {
                        addr75:
                        if(param1.§@n§.right > param2)
                        {
                           addr80:
                           param1.§@n§.right = param2;
                        }
                     }
                     return;
                  }
                  §§goto(addr75);
               }
               §§goto(addr80);
            }
            §§goto(addr59);
         }
         §§goto(addr75);
      }
      
      protected function § C§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§`-§ = null;
         var _loc2_:* = false;
         if(!(_loc10_ && param1))
         {
            §§push(dynamic);
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && this))
                  {
                     §§push(true);
                     if(!_loc10_)
                     {
                        addr48:
                        _loc2_ = §§pop();
                        if(!_loc10_)
                        {
                           addr51:
                           if(param1.usePivot)
                           {
                              addr63:
                              if(_loc9_ || param1)
                              {
                                 addr61:
                                 §§push(true);
                              }
                              var _loc3_:Number = 1;
                              if(!(_loc10_ && this))
                              {
                                 if(param1.scale)
                                 {
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       addr83:
                                       _loc3_ = parseFloat(param1.scale);
                                       if(_loc9_ || _loc2_)
                                       {
                                          addr96:
                                          this.scale = _loc3_;
                                       }
                                    }
                                    var _loc7_:int = 0;
                                    var _loc8_:* = param1;
                                    while(§§hasnext(_loc8_,_loc7_))
                                    {
                                       §§push(§§nextname(_loc7_,_loc8_));
                                       if(!_loc10_)
                                       {
                                          §§push(_loc4_ = §§pop());
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             §§push("sprite_");
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                if(§§pop().indexOf(§§pop()) != -1)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      _loc5_ = param1[_loc4_];
                                                      (_loc6_ = new §`-§()).mName = _loc5_.id;
                                                      _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                                      _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                                      _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                                      _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                      _loc6_.§@n§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                      §if §(_loc6_,§while§.width,§while§.height);
                                                      if(_loc9_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            _loc6_.§!!J§ = _loc5_.pivotx / _loc3_;
                                                            _loc6_.§[R§ = _loc5_.pivoty / _loc3_;
                                                            if(_loc9_)
                                                            {
                                                               addr251:
                                                               _loc6_.§<c§ = §while§;
                                                               if(_loc10_)
                                                               {
                                                               }
                                                               continue;
                                                            }
                                                            §8!=§(_loc6_);
                                                         }
                                                         else
                                                         {
                                                            _loc6_.§!!J§ = _loc5_.width / 2;
                                                            if(_loc9_)
                                                            {
                                                               _loc6_.§[R§ = _loc5_.height / 2;
                                                               addr235:
                                                               §§goto(addr251);
                                                            }
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                }
                                                else
                                                {
                                                   addr262:
                                                   if(_loc4_ != "image")
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc9_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                }
                                                mName = param1[_loc4_];
                                                continue;
                                             }
                                             §§goto(addr262);
                                          }
                                       }
                                       §§goto(addr262);
                                    }
                                    return;
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr83);
                           }
                        }
                        §§goto(addr63);
                     }
                     _loc2_ = §§pop();
                     §§goto(addr63);
                  }
                  §§goto(addr61);
               }
               §§goto(addr51);
            }
            §§goto(addr48);
         }
         §§goto(addr63);
      }
   }
}
