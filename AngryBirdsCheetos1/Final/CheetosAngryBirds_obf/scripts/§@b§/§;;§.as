package §@b§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §;;§ extends §;%§
   {
       
      
      public function §;;§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super(param2);
            do
            {
               this.§ 4§(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      protected function § 4§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§0!W§ = null;
         var _loc2_:Number = 1;
         if(_loc12_ || param1)
         {
            if(param1.scale)
            {
               if(_loc12_ || this)
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
                  if(_loc12_)
                  {
                     _loc3_ = §§pop();
                     if(!_loc12_)
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(!(_loc13_ && _loc3_))
                     {
                        if(§§pop().indexOf("chars") == 0)
                        {
                           if(_loc13_ && param1)
                           {
                              continue;
                           }
                           _loc4_ = param1[_loc3_];
                           if(!(_loc13_ && this))
                           {
                              var _loc10_:int = 0;
                              if(_loc12_ || _loc3_)
                              {
                                 var _loc11_:* = _loc4_;
                                 if(!_loc13_)
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
                                    if(_loc12_)
                                    {
                                       _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       addr174:
                                       addr200:
                                       addr216:
                                       while(true)
                                       {
                                          _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                          continue loop3;
                                       }
                                       (_loc7_ = new §0!W§()).mName = String.fromCharCode(_loc6_.code);
                                       if(_loc12_ || _loc2_)
                                       {
                                          _loc7_.§,-§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                          while(true)
                                          {
                                             _loc7_.§?!Q§ = _loc6_.width / 2;
                                             loop7:
                                             for(; !(_loc13_ && param1); loop9:
                                             for(; !(_loc13_ && param1); while(_loc12_ || param1)
                                             {
                                                §%3§(_loc7_);
                                                if(!_loc12_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr224);
                                             })
                                             {
                                                do
                                                {
                                                   _loc7_.§-!C§ = §^d§;
                                                   continue loop9;
                                                }
                                                while(false);
                                                
                                                §§goto(addr279);
                                             })
                                             {
                                                while(true)
                                                {
                                                   _loc7_.§+9§ = _loc6_.baseline;
                                                   continue loop7;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr265);
                                    }
                                 }
                              }
                              §§goto(addr282);
                           }
                           §§goto(addr283);
                        }
                        else
                        {
                           §§push(_loc3_);
                        }
                     }
                  }
                  if(§§pop() == "name")
                  {
                     if(!_loc13_)
                     {
                        mName = param1[_loc3_];
                     }
                  }
               }
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr51);
      }
   }
}
