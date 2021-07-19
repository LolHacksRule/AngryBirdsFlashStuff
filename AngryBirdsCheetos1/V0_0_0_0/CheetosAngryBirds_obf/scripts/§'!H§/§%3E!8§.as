package §'!H§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §>!8§ extends §3^§
   {
       
      
      public function §>!8§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super(param2);
            do
            {
               this.§+%§(param1);
            }
            while(!_loc4_);
            
         }
      }
      
      protected function §+%§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§?m§ = null;
         var _loc2_:Number = 1;
         if(_loc12_)
         {
            if(param1.scale)
            {
               if(_loc12_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(!_loc12_)
                  {
                  }
                  §§goto(addr52);
               }
            }
            this.scale = _loc2_;
         }
         addr52:
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(_loc12_)
            {
               _loc3_ = §§pop();
               if(_loc12_ || this)
               {
                  §§push(_loc3_);
                  if(_loc12_ || _loc2_)
                  {
                     if(§§pop().indexOf("chars") == 0)
                     {
                        if(_loc12_ || _loc3_)
                        {
                           addr92:
                           _loc4_ = param1[_loc3_];
                           if(!_loc13_)
                           {
                              var _loc10_:int = 0;
                              if(!(_loc13_ && this))
                              {
                                 var _loc11_:* = _loc4_;
                                 if(!_loc13_)
                                 {
                                    for(_loc5_ in _loc11_)
                                    {
                                    }
                                    addr254:
                                    continue;
                                    addr254:
                                    addr257:
                                 }
                                 while(true)
                                 {
                                    (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                    if(_loc12_)
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
                                          while(!_loc12_);
                                          
                                          if(!(_loc12_ || _loc2_))
                                          {
                                             break;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          (_loc7_ = new §?m§()).mName = String.fromCharCode(_loc6_.code);
                                          if(_loc12_ || _loc3_)
                                          {
                                             _loc7_.§[!D§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                             loop6:
                                             while(true)
                                             {
                                                _loc7_.§^D§ = _loc6_.width / 2;
                                                while(true)
                                                {
                                                   _loc7_.§%B§ = _loc6_.baseline;
                                                   addr230:
                                                   while(!_loc13_)
                                                   {
                                                   }
                                                   continue loop6;
                                                   loop11:
                                                   while(_loc12_ || this)
                                                   {
                                                      §5!U§(_loc7_);
                                                      if(_loc13_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc12_)
                                                      {
                                                         addr211:
                                                         if(false)
                                                         {
                                                            addr213:
                                                            while(true)
                                                            {
                                                               _loc7_.§9B§ = §4<§;
                                                               continue loop11;
                                                               §§goto(addr211);
                                                            }
                                                            §§goto(addr254);
                                                            addr213:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr254);
                                                         }
                                                         §§goto(addr114);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr230);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr213);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr257);
                           }
                           §§goto(addr254);
                        }
                     }
                     else
                     {
                        addr260:
                        if(_loc3_ != "name")
                        {
                           continue;
                        }
                        if(_loc13_)
                        {
                           continue;
                        }
                     }
                     mName = param1[_loc3_];
                     continue;
                  }
                  §§goto(addr260);
               }
               §§goto(addr92);
            }
            §§goto(addr260);
         }
      }
   }
}
