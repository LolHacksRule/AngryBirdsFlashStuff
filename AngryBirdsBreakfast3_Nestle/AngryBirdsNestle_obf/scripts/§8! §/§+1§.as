package §8! §
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §+1§ extends §9q§
   {
       
      
      public function §+1§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param2);
         }
         do
         {
            this.§8!x§(param1);
         }
         while(_loc4_ && this);
         
      }
      
      protected function §8!x§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§^"-§ = null;
         var _loc2_:Number = 1;
         if(_loc12_ || _loc2_)
         {
            if(param1.scale)
            {
               if(!(_loc13_ && this))
               {
                  addr51:
                  _loc2_ = parseFloat(param1.scale);
                  if(_loc12_)
                  {
                     addr59:
                     this.scale = _loc2_;
                  }
               }
               var _loc8_:int = 0;
               var _loc9_:* = param1;
               while(§§hasnext(_loc9_,_loc8_))
               {
                  §§push(§§nextname(_loc8_,_loc9_));
                  if(!_loc13_)
                  {
                     _loc3_ = §§pop();
                     if(_loc12_)
                     {
                        §§push(_loc3_);
                        if(_loc12_)
                        {
                           if(§§pop().indexOf("chars") == 0)
                           {
                              if(_loc13_)
                              {
                                 continue;
                              }
                              _loc4_ = param1[_loc3_];
                              if(!(_loc13_ && _loc3_))
                              {
                                 var _loc10_:int = 0;
                                 if(!_loc13_)
                                 {
                                    var _loc11_:* = _loc4_;
                                    if(_loc12_)
                                    {
                                       for(_loc5_ in _loc11_)
                                       {
                                       }
                                       addr253:
                                       continue;
                                       addr249:
                                       addr252:
                                    }
                                    while(true)
                                    {
                                       (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                       if(!_loc13_)
                                       {
                                          _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                          loop3:
                                          while(true)
                                          {
                                             addr154:
                                             while(true)
                                             {
                                                _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                                continue loop3;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                          if(_loc12_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr154);
                                          }
                                          §§goto(addr163);
                                       }
                                       (_loc7_ = new §^"-§()).name = String.fromCharCode(_loc6_.code);
                                       if(_loc12_)
                                       {
                                          _loc7_.rect = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          _loc7_.pivotX = _loc6_.width / 2;
                                          loop8:
                                          while(true)
                                          {
                                             _loc7_.pivotY = _loc6_.baseline;
                                             while(true)
                                             {
                                                addr217:
                                                while(true)
                                                {
                                                   _loc7_.§>!!§ = §49§;
                                                   do
                                                   {
                                                      §-"#§(_loc7_);
                                                   }
                                                   while(!_loc12_);
                                                   
                                                   if(_loc13_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc13_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr253);
                           }
                           else
                           {
                              addr255:
                              if(_loc3_ != "name")
                              {
                                 continue;
                              }
                              if(!(_loc12_ || this))
                              {
                                 continue;
                              }
                           }
                        }
                        §§goto(addr255);
                     }
                     mName = param1[_loc3_];
                     continue;
                  }
                  §§goto(addr255);
               }
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr51);
      }
   }
}
