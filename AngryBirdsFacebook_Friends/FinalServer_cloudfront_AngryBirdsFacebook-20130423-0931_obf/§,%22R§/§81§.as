package §,"R§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §81§ extends §,!+§
   {
       
      
      public function §81§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super(param2);
         }
         do
         {
            this.§#"B§(param1);
         }
         while(_loc4_);
         
      }
      
      protected function §#"B§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§2!J§ = null;
         var _loc2_:Number = 1;
         if(_loc12_ || param1)
         {
            if(param1.scale)
            {
               if(!_loc13_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(_loc12_)
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
                  if(!_loc13_)
                  {
                     _loc3_ = §§pop();
                     if(_loc12_)
                     {
                        §§push(_loc3_);
                        if(_loc12_ || param1)
                        {
                           §§push("chars");
                           if(_loc12_ || _loc2_)
                           {
                              if(§§pop().indexOf(§§pop()) == 0)
                              {
                                 if(!_loc13_)
                                 {
                                    addr94:
                                    _loc4_ = param1[_loc3_];
                                    if(_loc12_)
                                    {
                                       var _loc10_:int = 0;
                                       if(!_loc13_)
                                       {
                                          var _loc11_:* = _loc4_;
                                          if(!_loc13_)
                                          {
                                             for(_loc5_ in _loc11_)
                                             {
                                             }
                                             addr266:
                                             continue;
                                             addr266:
                                             addr269:
                                          }
                                          while(true)
                                          {
                                             (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                             if(!_loc13_)
                                             {
                                                _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                             }
                                             loop3:
                                             while(true)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                                   while(_loc12_)
                                                   {
                                                      _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         if(true)
                                                         {
                                                            break loop4;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                                (_loc7_ = new §2!J§()).mName = String.fromCharCode(_loc6_.code);
                                                if(_loc12_)
                                                {
                                                   _loc7_.§-"Y§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      _loc7_.§5'§ = _loc6_.width / 2;
                                                      while(true)
                                                      {
                                                         _loc7_.§>K§ = _loc6_.baseline;
                                                         loop8:
                                                         while(true)
                                                         {
                                                            addr217:
                                                            while(true)
                                                            {
                                                               _loc7_.§^! § = § !k§;
                                                               continue loop8;
                                                            }
                                                         }
                                                         addr206:
                                                         if(!(_loc12_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc12_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(false)
                                                         {
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §#E§(_loc7_);
                                                   if(_loc12_ || _loc3_)
                                                   {
                                                      §§goto(addr206);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr266);
                                             }
                                          }
                                       }
                                       §§goto(addr269);
                                    }
                                    §§goto(addr266);
                                 }
                              }
                              else
                              {
                                 addr273:
                                 if(_loc3_ != "name")
                                 {
                                    continue;
                                 }
                                 if(!_loc12_)
                                 {
                                    continue;
                                 }
                              }
                              mName = param1[_loc3_];
                              continue;
                           }
                        }
                        §§goto(addr273);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr273);
               }
               return;
            }
         }
         §§goto(addr54);
      }
   }
}
