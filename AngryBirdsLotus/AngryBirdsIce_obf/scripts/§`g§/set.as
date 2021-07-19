package §`g§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class set extends §&_§
   {
       
      
      public function set(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param2);
            do
            {
               this.§94§(param1);
            }
            while(_loc3_);
            
         }
      }
      
      protected function §94§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§]!3§ = null;
         var _loc2_:Number = 1;
         if(!(_loc13_ && param1))
         {
            if(param1.scale)
            {
               if(_loc12_ || _loc3_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(!_loc12_)
                  {
                  }
                  §§goto(addr62);
               }
            }
            this.scale = _loc2_;
         }
         addr62:
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(_loc12_ || this)
            {
               _loc3_ = §§pop();
               if(!(_loc13_ && this))
               {
                  §§push(_loc3_);
                  if(!_loc13_)
                  {
                     addr91:
                     §§push("chars");
                     if(_loc12_ || _loc2_)
                     {
                        if(§§pop().indexOf(§§pop()) == 0)
                        {
                           if(_loc13_ && _loc3_)
                           {
                              continue;
                           }
                           addr109:
                           _loc4_ = param1[_loc3_];
                           if(_loc12_)
                           {
                              var _loc10_:int = 0;
                              if(!(_loc13_ && _loc2_))
                              {
                                 var _loc11_:* = _loc4_;
                                 if(_loc12_ || _loc3_)
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
                                          while(!_loc12_);
                                          
                                          if(!_loc12_)
                                          {
                                             break;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          (_loc7_ = new §]!3§()).mName = String.fromCharCode(_loc6_.code);
                                          if(_loc12_ || _loc2_)
                                          {
                                             _loc7_.§<-§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             _loc7_.§3e§ = _loc6_.width / 2;
                                             while(true)
                                             {
                                                _loc7_.§>9§ = _loc6_.baseline;
                                                loop8:
                                                while(true)
                                                {
                                                   addr235:
                                                   while(true)
                                                   {
                                                      _loc7_.§!o§ = § k§;
                                                      continue loop8;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr289);
                           }
                           §§goto(addr290);
                        }
                        else
                        {
                           addr292:
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
                  §§goto(addr292);
               }
               §§goto(addr109);
            }
            §§goto(addr91);
         }
      }
   }
}
