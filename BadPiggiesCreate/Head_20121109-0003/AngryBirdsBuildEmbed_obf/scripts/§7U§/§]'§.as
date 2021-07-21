package §7U§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §]'§ extends §`L§
   {
      
      public static var §%!§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §%!§ = false;
         }
      }
      
      public function §]'§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param2);
            if(!_loc4_)
            {
               this.§#!d§(param1);
            }
         }
      }
      
      private static function §9!L§(param1:§@!4§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(param1.§>Q§.top < 0)
         {
            param1.§>Q§.top = 0;
         }
         if(param1.§>Q§.left < 0)
         {
            param1.§>Q§.left = 0;
         }
         if(param1.§>Q§.bottom > param3)
         {
            param1.§>Q§.bottom = param3;
         }
         if(param1.§>Q§.right > param2)
         {
            param1.§>Q§.right = param2;
         }
      }
      
      protected function §#!d§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§@!4§ = null;
         var _loc2_:* = false;
         if(!_loc9_)
         {
            §§push(§%!§);
            if(_loc10_ || this)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     §§push(true);
                     if(!_loc9_)
                     {
                        addr44:
                        _loc2_ = §§pop();
                        if(!(_loc9_ && _loc2_))
                        {
                           §§goto(addr52);
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr58);
                  }
               }
               addr52:
               if(param1.usePivot)
               {
                  if(!_loc9_)
                  {
                     addr58:
                     _loc2_ = true;
                     addr57:
                  }
               }
               var _loc3_:Number = 1;
               if(!(_loc9_ && param1))
               {
                  if(param1.scale)
                  {
                     if(_loc10_)
                     {
                        §§goto(addr74);
                     }
                  }
                  §§goto(addr87);
               }
               addr74:
               _loc3_ = parseFloat(param1.scale);
               if(_loc10_ || _loc2_)
               {
                  addr87:
                  this.scale = _loc3_;
               }
               var _loc7_:int = 0;
               var _loc8_:* = param1;
               while(§§hasnext(_loc8_,_loc7_))
               {
                  §§push(§§nextname(_loc7_,_loc8_));
                  if(_loc10_ || _loc2_)
                  {
                     §§push(_loc4_ = §§pop());
                     if(_loc10_ || this)
                     {
                        addr117:
                        §§push("sprite_");
                        if(_loc10_)
                        {
                           if(§§pop().indexOf(§§pop()) != -1)
                           {
                              if(!_loc9_)
                              {
                                 _loc5_ = param1[_loc4_];
                                 (_loc6_ = new §@!4§()).mName = _loc5_.id;
                                 _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                 _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                 if(!_loc9_)
                                 {
                                    _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                    if(_loc10_)
                                    {
                                       _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                       _loc6_.§>Q§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                       if(_loc10_ || param1)
                                       {
                                          §9!L§(_loc6_,§<!j§.width,§<!j§.height);
                                          if(!_loc2_)
                                          {
                                             _loc6_.§-!V§ = _loc5_.width / 2;
                                             _loc6_.§;!A§ = _loc5_.height / 2;
                                             if(_loc9_)
                                             {
                                             }
                                             addr262:
                                             continue;
                                          }
                                          addr212:
                                          _loc6_.§-!V§ = _loc5_.pivotx / _loc3_;
                                          _loc6_.§;!A§ = _loc5_.pivoty / _loc3_;
                                          §§goto(addr262);
                                       }
                                       _loc6_.§5G§ = §<!j§;
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §"!P§(_loc6_);
                                       }
                                    }
                                    §§goto(addr262);
                                 }
                                 §§goto(addr212);
                              }
                           }
                           else
                           {
                              addr265:
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
                     §§goto(addr265);
                  }
                  §§goto(addr117);
               }
               return;
            }
            §§goto(addr44);
         }
         §§goto(addr58);
      }
   }
}
