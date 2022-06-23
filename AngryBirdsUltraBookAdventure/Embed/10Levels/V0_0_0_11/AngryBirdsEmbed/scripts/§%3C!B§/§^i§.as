package §<!B§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §^i§ extends §]!=§
   {
       
      
      public function §^i§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param2);
            if(!(_loc3_ && _loc3_))
            {
               this.§+s§(param1);
            }
         }
      }
      
      protected function §+s§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§#z§ = null;
         var _loc2_:Number = 1;
         if(_loc12_)
         {
            if(param1.scale)
            {
               if(_loc12_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(!_loc13_)
                  {
                     addr49:
                     this.scale = _loc2_;
                  }
                  var _loc8_:int = 0;
                  var _loc9_:* = param1;
                  while(§§hasnext(_loc9_,_loc8_))
                  {
                     §§push(§§nextname(_loc8_,_loc9_));
                     if(_loc12_ || param1)
                     {
                        _loc3_ = §§pop();
                        if(!(_loc12_ || this))
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(_loc12_ || _loc2_)
                        {
                           §§push("chars");
                           if(!(_loc13_ && _loc3_))
                           {
                              if(§§pop().indexOf(§§pop()) == 0)
                              {
                                 if(_loc13_)
                                 {
                                    continue;
                                 }
                                 _loc4_ = param1[_loc3_];
                                 if(!_loc13_)
                                 {
                                    var _loc10_:int = 0;
                                    if(!(_loc13_ && param1))
                                    {
                                       var _loc11_:* = _loc4_;
                                       if(_loc12_ || param1)
                                       {
                                          for(_loc5_ in _loc11_)
                                          {
                                          }
                                          addr262:
                                          continue;
                                          addr258:
                                          addr261:
                                       }
                                       while(true)
                                       {
                                          (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                          if(!_loc13_)
                                          {
                                             _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                             if(_loc12_)
                                             {
                                                _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                                if(!_loc12_)
                                                {
                                                }
                                                addr185:
                                                (_loc7_ = new §#z§()).mName = String.fromCharCode(_loc6_.code);
                                                if(_loc12_)
                                                {
                                                   _loc7_.§9!&§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                                   if(_loc12_)
                                                   {
                                                      addr211:
                                                      _loc7_.§^A§ = _loc6_.width / 2;
                                                      if(_loc12_ || this)
                                                      {
                                                         _loc7_.§6W§ = _loc6_.baseline;
                                                         if(!(_loc13_ && _loc2_))
                                                         {
                                                            addr235:
                                                            _loc7_.§93§ = §>g§;
                                                            if(!(_loc13_ && _loc2_))
                                                            {
                                                               §]+§(_loc7_);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr235);
                                                }
                                                §§goto(addr211);
                                             }
                                             _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                          }
                                          §§goto(addr185);
                                       }
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr262);
                              }
                              else
                              {
                                 addr264:
                                 §§push(_loc3_);
                                 §§push("name");
                              }
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!_loc13_)
                              {
                                 mName = param1[_loc3_];
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr264);
                  }
                  return;
               }
            }
         }
         §§goto(addr49);
      }
   }
}
