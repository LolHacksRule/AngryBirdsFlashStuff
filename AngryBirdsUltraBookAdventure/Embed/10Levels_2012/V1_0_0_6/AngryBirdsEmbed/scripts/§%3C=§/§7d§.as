package §<=§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §7d§ extends §66§
   {
       
      
      public function §7d§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param2);
            if(!_loc4_)
            {
               this.§1"§(param1);
            }
         }
      }
      
      protected function §1"§(param1:Object) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§#8§ = null;
         var _loc2_:Number = 1;
         if(_loc13_)
         {
            if(param1.scale)
            {
               if(_loc13_ || _loc3_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(!(_loc12_ && _loc3_))
                  {
                     addr60:
                     this.scale = _loc2_;
                  }
                  var _loc8_:int = 0;
                  var _loc9_:* = param1;
                  while(§§hasnext(_loc9_,_loc8_))
                  {
                     §§push(§§nextname(_loc8_,_loc9_));
                     if(_loc13_ || param1)
                     {
                        _loc3_ = §§pop();
                        if(_loc13_)
                        {
                           §§push(_loc3_);
                           if(_loc13_ || param1)
                           {
                              addr92:
                              §§push("chars");
                              if(_loc13_)
                              {
                                 if(§§pop().indexOf(§§pop()) == 0)
                                 {
                                    if(!(_loc13_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    _loc4_ = param1[_loc3_];
                                    if(_loc13_)
                                    {
                                       var _loc10_:int = 0;
                                       if(!_loc12_)
                                       {
                                          var _loc11_:* = _loc4_;
                                          if(_loc13_)
                                          {
                                             for(_loc5_ in _loc11_)
                                             {
                                             }
                                             addr263:
                                             continue;
                                             addr259:
                                             addr262:
                                          }
                                          while(true)
                                          {
                                             (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                             if(_loc13_)
                                             {
                                                _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                                if(_loc13_)
                                                {
                                                   _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                                   if(!(_loc12_ && _loc2_))
                                                   {
                                                      addr178:
                                                      _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                                   }
                                                }
                                                (_loc7_ = new §#8§()).mName = String.fromCharCode(_loc6_.code);
                                                if(!(_loc12_ && _loc2_))
                                                {
                                                   _loc7_.§%!<§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                                   if(!_loc12_)
                                                   {
                                                      _loc7_.§3!4§ = _loc6_.width / 2;
                                                      if(_loc13_ || this)
                                                      {
                                                         _loc7_.§;!0§ = _loc6_.baseline;
                                                         if(!_loc12_)
                                                         {
                                                            addr236:
                                                            _loc7_.§!! § = §&q§;
                                                            if(!(_loc12_ && _loc2_))
                                                            {
                                                               §'3§(_loc7_);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr236);
                                             }
                                             §§goto(addr178);
                                          }
                                       }
                                       §§goto(addr262);
                                    }
                                    §§goto(addr263);
                                 }
                                 else
                                 {
                                    addr265:
                                    §§push(_loc3_);
                                    §§push("name");
                                 }
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc12_)
                                 {
                                    addr269:
                                    mName = param1[_loc3_];
                                 }
                              }
                              continue;
                           }
                           §§goto(addr265);
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr92);
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
   }
}
