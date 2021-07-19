package §2d§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class § "5§ extends §;H§
   {
       
      
      public function § "5§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param2);
            do
            {
               this.§,Q§(param1);
            }
            while(_loc3_);
            
         }
      }
      
      protected function §,Q§(param1:Object) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§%$§ = null;
         var _loc2_:Number = 1;
         if(_loc13_)
         {
            if(param1.scale)
            {
               if(_loc13_ || _loc3_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(!_loc13_)
                  {
                  }
               }
               §§goto(addr58);
            }
            this.scale = _loc2_;
         }
         addr58:
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(_loc13_)
            {
               _loc3_ = §§pop();
               if(!(_loc12_ && _loc2_))
               {
                  §§push(_loc3_);
                  if(_loc13_)
                  {
                     addr82:
                     if(§§pop().indexOf("chars") == 0)
                     {
                        if(!_loc12_)
                        {
                           addr88:
                           _loc4_ = param1[_loc3_];
                           if(_loc13_)
                           {
                              var _loc10_:int = 0;
                              if(!(_loc12_ && param1))
                              {
                                 var _loc11_:* = _loc4_;
                                 if(_loc13_)
                                 {
                                    for(_loc5_ in _loc11_)
                                    {
                                    }
                                    addr244:
                                    continue;
                                    addr240:
                                    addr243:
                                 }
                                 while(true)
                                 {
                                    (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                    if(!_loc12_)
                                    {
                                       _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                       while(true)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                             do
                                             {
                                                _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                             }
                                             while(!_loc13_);
                                             
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                             while(false)
                                             {
                                                continue loop4;
                                             }
                                             (_loc7_ = new §%$§()).name = String.fromCharCode(_loc6_.code);
                                             if(!(_loc12_ && _loc3_))
                                             {
                                                _loc7_.rect = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                             }
                                             while(true)
                                             {
                                                _loc7_.pivotX = _loc6_.width / 2;
                                                loop8:
                                                while(!_loc12_)
                                                {
                                                   _loc7_.pivotY = _loc6_.baseline;
                                                   loop9:
                                                   while(true)
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         _loc7_.§>#P§ = §>">§;
                                                         while(_loc13_)
                                                         {
                                                            §9!t§(_loc7_);
                                                            if(!_loc13_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc13_)
                                                            {
                                                               break loop10;
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr155);
                                 }
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr244);
                        }
                     }
                     else
                     {
                        addr246:
                        if(_loc3_ != "name")
                        {
                           continue;
                        }
                        if(_loc12_)
                        {
                           continue;
                        }
                     }
                     mName = param1[_loc3_];
                     continue;
                  }
                  §§goto(addr246);
               }
               §§goto(addr88);
            }
            §§goto(addr82);
         }
      }
   }
}
