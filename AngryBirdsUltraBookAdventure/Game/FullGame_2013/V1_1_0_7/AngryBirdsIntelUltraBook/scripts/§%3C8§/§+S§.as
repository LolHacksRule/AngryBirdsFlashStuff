package §<8§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §+S§ extends §,j§
   {
       
      
      public function §+S§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param2);
            do
            {
               this.§,7§(param1);
            }
            while(_loc3_);
            
         }
      }
      
      protected function §,7§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§!3§ = null;
         var _loc2_:Number = 1;
         if(_loc12_)
         {
            if(param1.scale)
            {
               if(_loc12_ || this)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(_loc12_ || _loc2_)
                  {
                     addr59:
                     this.scale = _loc2_;
                  }
                  var _loc8_:int = 0;
                  var _loc9_:* = param1;
                  while(§§hasnext(_loc9_,_loc8_))
                  {
                     §§push(§§nextname(_loc8_,_loc9_));
                     if(_loc12_ || _loc2_)
                     {
                        _loc3_ = §§pop();
                        if(!(_loc12_ || param1))
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(!_loc13_)
                        {
                           addr91:
                           §§push("chars");
                           if(!_loc13_)
                           {
                              if(§§pop().indexOf(§§pop()) == 0)
                              {
                                 if(_loc12_)
                                 {
                                    _loc4_ = param1[_loc3_];
                                    if(_loc12_)
                                    {
                                       var _loc10_:int = 0;
                                       if(_loc12_)
                                       {
                                          var _loc11_:* = _loc4_;
                                          if(!_loc13_)
                                          {
                                             for(_loc5_ in _loc11_)
                                             {
                                             }
                                             addr290:
                                             continue;
                                             addr286:
                                             addr289:
                                          }
                                          while(true)
                                          {
                                             (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                             if(_loc12_ || _loc3_)
                                             {
                                                _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                                loop3:
                                                while(true)
                                                {
                                                   addr171:
                                                   while(true)
                                                   {
                                                      _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                             while(false)
                                             {
                                                §§goto(addr171);
                                             }
                                             (_loc7_ = new §!3§()).mName = String.fromCharCode(_loc6_.code);
                                             if(_loc12_ || param1)
                                             {
                                                _loc7_.§?!-§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                                while(true)
                                                {
                                                   _loc7_.§1!3§ = _loc6_.width / 2;
                                                   while(!(_loc13_ && _loc2_))
                                                   {
                                                      _loc7_.§;V§ = _loc6_.baseline;
                                                      loop9:
                                                      while(_loc12_ || param1)
                                                      {
                                                         while(true)
                                                         {
                                                            loop11:
                                                            do
                                                            {
                                                               _loc7_.§"-§ = §1!w§;
                                                               while(_loc12_)
                                                               {
                                                                  §"n§(_loc7_);
                                                                  if(!(_loc13_ && _loc2_))
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               continue loop9;
                                                            }
                                                            while(false);
                                                            
                                                            §§goto(addr286);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr247);
                                          }
                                       }
                                       §§goto(addr289);
                                    }
                                    §§goto(addr290);
                                 }
                              }
                              else
                              {
                                 addr293:
                                 if(_loc3_ != "name")
                                 {
                                    continue;
                                 }
                                 if(_loc13_ && this)
                                 {
                                    continue;
                                 }
                              }
                              mName = param1[_loc3_];
                              continue;
                           }
                        }
                        §§goto(addr293);
                     }
                     §§goto(addr91);
                  }
                  return;
               }
            }
         }
         §§goto(addr59);
      }
   }
}
