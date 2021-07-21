package §8s§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §@M§ extends §`H§
   {
       
      
      public function §@M§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param2);
            do
            {
               this.§[;§(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      protected function §[;§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§8"§ = null;
         var _loc2_:Number = 1;
         if(_loc12_)
         {
            if(param1.scale)
            {
               if(_loc12_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(!(_loc13_ && this))
                  {
                     addr54:
                     this.scale = _loc2_;
                  }
               }
               var _loc8_:int = 0;
               var _loc9_:* = param1;
               while(§§hasnext(_loc9_,_loc8_))
               {
                  §§push(§§nextname(_loc8_,_loc9_));
                  if(!(_loc13_ && _loc3_))
                  {
                     _loc3_ = §§pop();
                     if(_loc12_ || _loc2_)
                     {
                        §§push(_loc3_);
                        if(!(_loc13_ && _loc3_))
                        {
                           if(§§pop().indexOf("chars") != 0)
                           {
                              addr285:
                              if(_loc3_ == "name")
                              {
                                 if(_loc12_ || _loc2_)
                                 {
                                    mName = param1[_loc3_];
                                 }
                              }
                              continue;
                           }
                           if(!(_loc12_ || param1))
                           {
                              continue;
                           }
                        }
                        §§goto(addr285);
                     }
                     _loc4_ = param1[_loc3_];
                     if(_loc12_)
                     {
                        var _loc10_:int = 0;
                        if(!_loc13_)
                        {
                           var _loc11_:* = _loc4_;
                           if(_loc12_ || this)
                           {
                              for(_loc5_ in _loc11_)
                              {
                              }
                              addr283:
                              continue;
                              addr279:
                              addr282:
                           }
                           while(true)
                           {
                              (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                              if(!_loc13_)
                              {
                                 _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                              }
                              while(true)
                              {
                                 while(true)
                                 {
                                    _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                    do
                                    {
                                       _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                    }
                                    while(_loc13_ && _loc3_);
                                    
                                    if(!(_loc12_ || param1))
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    (_loc7_ = new §8"§()).mName = String.fromCharCode(_loc6_.code);
                                    if(_loc12_ || _loc2_)
                                    {
                                       _loc7_.§`!%§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                       while(true)
                                       {
                                          _loc7_.§=;§ = _loc6_.width / 2;
                                          loop7:
                                          while(true)
                                          {
                                             _loc7_.§62§ = _loc6_.baseline;
                                             loop8:
                                             while(true)
                                             {
                                                addr231:
                                                while(true)
                                                {
                                                   _loc7_.§<!m§ = §@C§;
                                                   addr235:
                                                   while(!_loc13_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          if(!(_loc12_ || param1))
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             §72§(_loc7_);
                                             if(_loc12_ || _loc2_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr231);
                                             }
                                             §§goto(addr235);
                                          }
                                          §§goto(addr279);
                                          addr251:
                                       }
                                    }
                                    §§goto(addr251);
                                 }
                              }
                           }
                        }
                        §§goto(addr282);
                     }
                     §§goto(addr283);
                  }
                  §§goto(addr285);
               }
               return;
            }
         }
         §§goto(addr54);
      }
   }
}
