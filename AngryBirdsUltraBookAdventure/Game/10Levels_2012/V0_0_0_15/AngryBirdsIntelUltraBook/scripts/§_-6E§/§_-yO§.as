package §_-6E§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-yO§ extends §_-UU§
   {
       
      
      public function §_-yO§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param2);
         }
         do
         {
            this.§_-EP§(param1);
         }
         while(_loc3_);
         
      }
      
      protected function §_-EP§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§_-0j§ = null;
         var _loc2_:Number = 1;
         if(_loc12_ || param1)
         {
            if(param1.scale)
            {
               if(_loc12_ || _loc3_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(_loc13_ && _loc2_)
                  {
                  }
               }
               §§goto(addr67);
            }
            this.scale = _loc2_;
         }
         addr67:
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(_loc12_)
            {
               _loc3_ = §§pop();
               if(!(_loc13_ && _loc3_))
               {
                  §§push(_loc3_);
                  if(!(_loc13_ && _loc3_))
                  {
                     addr96:
                     §§push("chars");
                     if(_loc12_)
                     {
                        if(§§pop().indexOf(§§pop()) == 0)
                        {
                           if(!_loc12_)
                           {
                              continue;
                           }
                           _loc4_ = param1[_loc3_];
                           if(_loc12_ || param1)
                           {
                              var _loc10_:int = 0;
                              if(_loc12_ || _loc2_)
                              {
                                 var _loc11_:* = _loc4_;
                                 if(!(_loc13_ && this))
                                 {
                                    for(_loc5_ in _loc11_)
                                    {
                                    }
                                    addr300:
                                    continue;
                                    addr296:
                                    addr299:
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
                                          addr193:
                                          while(true)
                                          {
                                             _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                             continue loop3;
                                          }
                                       }
                                       addr211:
                                    }
                                    while(true)
                                    {
                                       _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                       if(!(_loc12_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(_loc12_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr211);
                                       }
                                       §§goto(addr193);
                                    }
                                    (_loc7_ = new §_-0j§()).mName = String.fromCharCode(_loc6_.code);
                                    if(_loc12_)
                                    {
                                       _loc7_.§_-vb§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                       while(true)
                                       {
                                          _loc7_.§_-7r§ = _loc6_.width / 2;
                                          while(_loc12_ || _loc3_)
                                          {
                                             _loc7_.§_-yG§ = _loc6_.baseline;
                                             loop8:
                                             while(true)
                                             {
                                                addr233:
                                                while(true)
                                                {
                                                   _loc7_.§_-7B§ = §_-e1§;
                                                   continue loop8;
                                                }
                                             }
                                             if(!(_loc12_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                §_-Iw§(_loc7_);
                                                if(!_loc13_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr237);
                                             }
                                             §§goto(addr296);
                                             addr251:
                                          }
                                       }
                                    }
                                    §§goto(addr251);
                                 }
                              }
                              §§goto(addr299);
                           }
                           §§goto(addr300);
                        }
                        else
                        {
                           addr302:
                           §§push(_loc3_);
                           §§push("name");
                        }
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc12_)
                        {
                           addr306:
                           mName = param1[_loc3_];
                        }
                     }
                     continue;
                  }
                  §§goto(addr302);
               }
               §§goto(addr306);
            }
            §§goto(addr96);
         }
      }
   }
}
