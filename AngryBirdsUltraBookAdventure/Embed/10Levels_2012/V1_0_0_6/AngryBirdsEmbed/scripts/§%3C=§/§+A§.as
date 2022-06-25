package §<=§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §+A§ extends §66§
   {
      
      public static var §%l§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%l§ = false;
         }
      }
      
      public function §+A§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param2);
            if(_loc4_)
            {
               this.§1"§(param1);
            }
         }
      }
      
      private static function §2T§(param1:§#8§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(param1.§%!<§.top < 0)
         {
            param1.§%!<§.top = 0;
         }
         if(param1.§%!<§.left < 0)
         {
            if(_loc5_)
            {
               param1.§%!<§.left = 0;
               if(!_loc4_)
               {
                  addr59:
                  if(param1.§%!<§.bottom > param3)
                  {
                     param1.§%!<§.bottom = param3;
                  }
                  if(param1.§%!<§.right > param2)
                  {
                     param1.§%!<§.right = param2;
                  }
               }
               return;
            }
         }
         §§goto(addr59);
      }
      
      protected function §1"§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§#8§ = null;
         var _loc2_:* = false;
         if(!(_loc10_ && this))
         {
            §§push(§%l§);
            if(_loc9_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(true);
                     if(!_loc10_)
                     {
                        §§goto(addr53);
                     }
                     §§goto(addr62);
                  }
               }
               §§goto(addr56);
            }
            addr53:
            _loc2_ = §§pop();
            if(!_loc10_)
            {
               addr56:
               if(param1.usePivot)
               {
                  if(!_loc10_)
                  {
                     addr62:
                     _loc2_ = true;
                  }
               }
            }
            var _loc3_:Number = 1;
            if(!(_loc10_ && _loc3_))
            {
               if(param1.scale)
               {
                  if(_loc9_ || this)
                  {
                     §§goto(addr83);
                  }
               }
               §§goto(addr96);
            }
            addr83:
            _loc3_ = parseFloat(param1.scale);
            if(!(_loc10_ && param1))
            {
               addr96:
               this.scale = _loc3_;
            }
            var _loc7_:int = 0;
            var _loc8_:* = param1;
            while(§§hasnext(_loc8_,_loc7_))
            {
               §§push(§§nextname(_loc7_,_loc8_));
               if(!_loc10_)
               {
                  §§push(_loc4_ = §§pop());
                  if(!(_loc10_ && this))
                  {
                     addr121:
                     §§push("sprite_");
                     if(_loc9_)
                     {
                        if(§§pop().indexOf(§§pop()) != -1)
                        {
                           if(!(_loc10_ && _loc3_))
                           {
                              _loc5_ = param1[_loc4_];
                              (_loc6_ = new §#8§()).mName = _loc5_.id;
                              _loc5_.width = Math.round(_loc5_.width / _loc3_);
                              _loc5_.height = Math.round(_loc5_.height / _loc3_);
                              _loc5_.x = Math.round(_loc5_.x / _loc3_);
                              if(_loc9_ || _loc3_)
                              {
                                 _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                 if(_loc9_ || _loc2_)
                                 {
                                    _loc6_.§%!<§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                    §2T§(_loc6_,§&q§.width,§&q§.height);
                                    if(!_loc10_)
                                    {
                                       addr224:
                                       if(_loc2_)
                                       {
                                          _loc6_.§3!4§ = _loc5_.pivotx / _loc3_;
                                          addr232:
                                          _loc6_.§;!0§ = _loc5_.pivoty / _loc3_;
                                          if(_loc10_ && param1)
                                          {
                                             _loc6_.§;!0§ = _loc5_.height / 2;
                                             addr252:
                                          }
                                          _loc6_.§!! § = §&q§;
                                          §'3§(_loc6_);
                                          addr274:
                                          continue;
                                       }
                                       _loc6_.§3!4§ = _loc5_.width / 2;
                                       §§goto(addr252);
                                    }
                                    §§goto(addr274);
                                 }
                                 §§goto(addr232);
                              }
                              §§goto(addr224);
                           }
                        }
                        else
                        {
                           addr277:
                           if(_loc4_ != "image")
                           {
                              continue;
                           }
                           if(_loc10_ && _loc2_)
                           {
                              continue;
                           }
                        }
                        mName = param1[_loc4_];
                        continue;
                     }
                  }
                  §§goto(addr277);
               }
               §§goto(addr121);
            }
            return;
         }
         §§goto(addr62);
      }
   }
}
