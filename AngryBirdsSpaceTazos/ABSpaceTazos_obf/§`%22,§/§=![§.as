package §`",§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §=![§ extends §?" §
   {
       
      
      public function §=![§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param2);
         }
         do
         {
            this.§ !a§(param1);
         }
         while(_loc3_ && this);
         
      }
      
      protected function § !a§(param1:Object) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§1!v§ = null;
         var _loc2_:Number = 1;
         if(!_loc12_)
         {
            if(param1.scale)
            {
               if(!_loc12_)
               {
                  §§goto(addr42);
               }
            }
            §§goto(addr55);
         }
         addr42:
         _loc2_ = parseFloat(param1.scale);
         if(_loc13_ || _loc3_)
         {
            addr55:
            this.scale = _loc2_;
         }
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(_loc13_ || _loc2_)
            {
               _loc3_ = §§pop();
               if(!(_loc12_ && this))
               {
                  §§push(_loc3_);
                  if(_loc13_ || _loc3_)
                  {
                     addr92:
                     if(§§pop().indexOf("chars") == 0)
                     {
                        if(!(_loc13_ || _loc3_))
                        {
                           continue;
                        }
                        _loc4_ = param1[_loc3_];
                        if(!_loc12_)
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
                                 addr274:
                                 continue;
                                 addr270:
                                 addr273:
                              }
                              while(true)
                              {
                                 (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                 if(_loc13_)
                                 {
                                    _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                    loop3:
                                    while(true)
                                    {
                                       addr177:
                                       while(true)
                                       {
                                          _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                          continue loop3;
                                       }
                                    }
                                    addr195:
                                 }
                                 while(true)
                                 {
                                    _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                    if(_loc12_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc12_ && _loc3_))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr195);
                                    }
                                    §§goto(addr177);
                                 }
                                 (_loc7_ = new §1!v§()).mName = String.fromCharCode(_loc6_.code);
                                 if(_loc13_)
                                 {
                                    _loc7_.§+#§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                    loop6:
                                    while(true)
                                    {
                                       _loc7_.§;o§ = _loc6_.width / 2;
                                       while(true)
                                       {
                                          _loc7_.§+!H§ = _loc6_.baseline;
                                          while(_loc13_)
                                          {
                                             while(_loc13_ || this)
                                             {
                                                continue loop6;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr222);
                                 }
                              }
                           }
                           §§goto(addr273);
                        }
                        §§goto(addr274);
                     }
                     else
                     {
                        §§push(_loc3_);
                     }
                  }
                  if(§§pop() != "name")
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
            §§goto(addr92);
         }
      }
   }
}
