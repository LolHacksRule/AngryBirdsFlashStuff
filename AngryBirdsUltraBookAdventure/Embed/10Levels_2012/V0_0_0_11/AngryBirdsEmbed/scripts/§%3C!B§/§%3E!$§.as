package §<!B§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §>!$§ extends §]!=§
   {
      
      public static var §"!B§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"!B§ = false;
         }
      }
      
      public function §>!$§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param2);
            if(_loc4_)
            {
               this.§+s§(param1);
            }
         }
      }
      
      private static function §#M§(param1:§#z§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(param1.§9!&§.top < 0)
         {
            if(!_loc4_)
            {
               param1.§9!&§.top = 0;
               if(_loc5_ || §>!$§)
               {
                  addr45:
                  if(param1.§9!&§.left < 0)
                  {
                     param1.§9!&§.left = 0;
                     if(_loc4_ && param2)
                     {
                     }
                     §§goto(addr89);
                  }
                  if(param1.§9!&§.bottom > param3)
                  {
                     if(!(_loc4_ && param1))
                     {
                        addr83:
                        param1.§9!&§.bottom = param3;
                        if(!_loc4_)
                        {
                           §§goto(addr89);
                        }
                     }
                     §§goto(addr94);
                  }
               }
               addr89:
               if(param1.§9!&§.right > param2)
               {
                  addr94:
                  param1.§9!&§.right = param2;
               }
               return;
            }
            §§goto(addr83);
         }
         §§goto(addr45);
      }
      
      protected function §+s§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§#z§ = null;
         var _loc2_:* = false;
         if(!_loc9_)
         {
            §§push(§"!B§);
            if(!_loc9_)
            {
               if(§§pop())
               {
                  if(_loc10_ || param1)
                  {
                     §§push(true);
                     if(!_loc9_)
                     {
                        addr44:
                        _loc2_ = §§pop();
                        if(_loc10_)
                        {
                           addr47:
                           if(param1.usePivot)
                           {
                              addr59:
                              if(_loc10_ || _loc2_)
                              {
                                 §§push(true);
                              }
                              var _loc3_:Number = 1;
                              if(!_loc9_)
                              {
                                 if(param1.scale)
                                 {
                                    if(_loc10_)
                                    {
                                       _loc3_ = parseFloat(param1.scale);
                                       if(_loc10_ || this)
                                       {
                                          addr82:
                                          this.scale = _loc3_;
                                       }
                                    }
                                    var _loc7_:int = 0;
                                    var _loc8_:* = param1;
                                    while(§§hasnext(_loc8_,_loc7_))
                                    {
                                       §§push(§§nextname(_loc7_,_loc8_));
                                       if(!_loc9_)
                                       {
                                          §§push(_loc4_ = §§pop());
                                          if(!_loc9_)
                                          {
                                             addr102:
                                             §§push("sprite_");
                                             if(!_loc9_)
                                             {
                                                if(§§pop().indexOf(§§pop()) != -1)
                                                {
                                                   if(!(_loc10_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   _loc5_ = param1[_loc4_];
                                                   (_loc6_ = new §#z§()).mName = _loc5_.id;
                                                   if(!_loc9_)
                                                   {
                                                      _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                                      _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                                      _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                         if(_loc10_ || this)
                                                         {
                                                            _loc6_.§9!&§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                            §#M§(_loc6_,§>g§.width,§>g§.height);
                                                            if(_loc2_)
                                                            {
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  _loc6_.§^A§ = _loc5_.pivotx / _loc3_;
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc6_.§6W§ = _loc5_.pivoty / _loc3_;
                                                                     addr228:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr245:
                                                                     _loc6_.§6W§ = _loc5_.height / 2;
                                                                  }
                                                                  _loc6_.§93§ = §>g§;
                                                                  §]+§(_loc6_);
                                                               }
                                                               continue;
                                                            }
                                                            _loc6_.§^A§ = _loc5_.width / 2;
                                                            §§goto(addr245);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr228);
                                                }
                                                else
                                                {
                                                   addr259:
                                                   §§push(_loc4_);
                                                   §§push("image");
                                                }
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   mName = param1[_loc4_];
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr102);
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr82);
                           }
                        }
                        §§goto(addr59);
                     }
                     _loc2_ = §§pop();
                  }
                  §§goto(addr59);
               }
               §§goto(addr47);
            }
            §§goto(addr44);
         }
         §§goto(addr47);
      }
   }
}
