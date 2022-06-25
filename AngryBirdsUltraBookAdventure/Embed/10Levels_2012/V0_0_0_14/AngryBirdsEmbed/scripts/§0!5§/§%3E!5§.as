package §0!5§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §>!5§ extends §#!8§
   {
      
      public static var § O§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § O§ = false;
         }
      }
      
      public function §>!5§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param2);
            if(_loc4_)
            {
               this.§0H§(param1);
            }
         }
      }
      
      private static function §[b§(param1:§5!D§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(param1.§7!G§.top < 0)
         {
            if(!_loc4_)
            {
               param1.§7!G§.top = 0;
               if(_loc5_ || §>!5§)
               {
                  addr45:
                  if(param1.§7!G§.left < 0)
                  {
                     param1.§7!G§.left = 0;
                     if(_loc4_ && param2)
                     {
                     }
                     §§goto(addr89);
                  }
                  if(param1.§7!G§.bottom > param3)
                  {
                     if(!(_loc4_ && param1))
                     {
                        addr83:
                        param1.§7!G§.bottom = param3;
                        if(!_loc4_)
                        {
                           §§goto(addr89);
                        }
                     }
                     §§goto(addr94);
                  }
               }
               addr89:
               if(param1.§7!G§.right > param2)
               {
                  addr94:
                  param1.§7!G§.right = param2;
               }
               return;
            }
            §§goto(addr83);
         }
         §§goto(addr45);
      }
      
      protected function §0H§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§5!D§ = null;
         var _loc2_:* = false;
         if(!_loc9_)
         {
            §§push(§ O§);
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
                                                   (_loc6_ = new §5!D§()).mName = _loc5_.id;
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
                                                            _loc6_.§7!G§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                            §[b§(_loc6_,§+l§.width,§+l§.height);
                                                            if(_loc2_)
                                                            {
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  _loc6_.§3O§ = _loc5_.pivotx / _loc3_;
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc6_.§=A§ = _loc5_.pivoty / _loc3_;
                                                                     addr228:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr245:
                                                                     _loc6_.§=A§ = _loc5_.height / 2;
                                                                  }
                                                                  _loc6_.§+Z§ = §+l§;
                                                                  §1!$§(_loc6_);
                                                               }
                                                               continue;
                                                            }
                                                            _loc6_.§3O§ = _loc5_.width / 2;
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
