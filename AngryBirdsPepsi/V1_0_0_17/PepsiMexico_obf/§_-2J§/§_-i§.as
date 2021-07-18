package §_-2J§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-i§ extends §_-Tz§
   {
       
      
      public function §_-i§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param2);
            if(_loc3_)
            {
               addr32:
               this.§_-aJ§(param1);
            }
            return;
         }
         §§goto(addr32);
      }
      
      protected function §_-aJ§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§_-4w§ = null;
         var _loc7_:int = 0;
         var _loc8_:* = param1;
         while(§§hasnext(_loc8_,_loc7_))
         {
            §§push(§§nextname(_loc7_,_loc8_));
            if(_loc12_)
            {
               _loc2_ = §§pop();
               if(!(_loc11_ && this))
               {
                  §§push(_loc2_);
                  if(!_loc11_)
                  {
                     addr53:
                     if(§§pop().indexOf("chars") == 0)
                     {
                        if(!(_loc12_ || _loc3_))
                        {
                           continue;
                        }
                        _loc3_ = param1[_loc2_];
                        if(!_loc11_)
                        {
                           var _loc9_:int = 0;
                           if(_loc12_ || param1)
                           {
                              var _loc10_:* = _loc3_;
                              if(!_loc11_)
                              {
                                 for(_loc4_ in _loc10_)
                                 {
                                 }
                                 addr161:
                                 continue;
                                 addr157:
                                 addr160:
                              }
                              while(true)
                              {
                                 _loc5_ = _loc3_[_loc4_];
                                 (_loc6_ = new §_-4w§()).mName = String.fromCharCode(_loc5_.code);
                                 if(!_loc11_)
                                 {
                                    _loc6_.§_-ua§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                    if(_loc12_)
                                    {
                                       _loc6_.§_-ov§ = _loc5_.width / 2;
                                       if(!_loc11_)
                                       {
                                          _loc6_.§_-eM§ = _loc5_.baseline;
                                          if(_loc12_ || this)
                                          {
                                             addr149:
                                             _loc6_.§_-6p§ = §_-wM§;
                                             if(_loc12_)
                                             {
                                                addr154:
                                                §_-zc§(_loc6_);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr154);
                                       }
                                    }
                                 }
                                 §§goto(addr149);
                              }
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr161);
                     }
                     else
                     {
                        §§push(_loc2_);
                     }
                  }
                  if(§§pop() == "name")
                  {
                     if(_loc12_)
                     {
                        mName = param1[_loc2_];
                     }
                  }
               }
               continue;
            }
            §§goto(addr53);
         }
      }
   }
}
