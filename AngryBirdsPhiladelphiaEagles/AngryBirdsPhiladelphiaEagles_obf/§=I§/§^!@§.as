package §=I§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §^!@§ extends §-§
   {
       
      
      public function §^!@§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param2);
            do
            {
               this.§5Q§(param1);
            }
            while(_loc3_);
            
         }
      }
      
      protected function §5Q§(param1:Object) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§5!B§ = null;
         var _loc2_:Number = 1;
         if(!_loc12_)
         {
            if(param1.scale)
            {
               if(_loc13_)
               {
                  §§goto(addr42);
               }
            }
            §§goto(addr50);
         }
         addr42:
         _loc2_ = parseFloat(param1.scale);
         if(!_loc12_)
         {
            addr50:
            this.scale = _loc2_;
         }
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(_loc13_)
            {
               _loc3_ = §§pop();
               if(_loc12_ && _loc2_)
               {
                  continue;
               }
               §§push(_loc3_);
               if(!_loc12_)
               {
                  §§push("chars");
                  if(_loc13_)
                  {
                     if(§§pop().indexOf(§§pop()) == 0)
                     {
                        if(!_loc13_)
                        {
                           continue;
                        }
                        _loc4_ = param1[_loc3_];
                        if(!_loc12_)
                        {
                           var _loc10_:int = 0;
                           if(_loc13_)
                           {
                              var _loc11_:* = _loc4_;
                              if(!_loc12_)
                              {
                                 for(_loc5_ in _loc11_)
                                 {
                                 }
                                 addr256:
                                 continue;
                                 addr252:
                                 addr255:
                              }
                              while(true)
                              {
                                 (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                 if(!_loc12_)
                                 {
                                    _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                    loop3:
                                    while(true)
                                    {
                                       addr147:
                                       while(true)
                                       {
                                          _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                          addr156:
                                          while(_loc13_)
                                          {
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                    if(!_loc12_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr156);
                                 }
                                 (_loc7_ = new §5!B§()).mName = String.fromCharCode(_loc6_.code);
                                 if(_loc13_ || _loc3_)
                                 {
                                    _loc7_.§7!N§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                    while(true)
                                    {
                                       _loc7_.§%O§ = _loc6_.width / 2;
                                       addr201:
                                       if(_loc12_ && this)
                                       {
                                          continue;
                                       }
                                       if(false)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             _loc7_.§;S§ = §@x§;
                                             do
                                             {
                                                §0,§(_loc7_);
                                             }
                                             while(!(_loc13_ || _loc3_));
                                             
                                             if(_loc13_)
                                             {
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr201);
                                             }
                                             addr220:
                                             while(true)
                                             {
                                                continue loop10;
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc7_.§&!I§ = _loc6_.baseline;
                                             §§goto(addr220);
                                          }
                                          addr228:
                                       }
                                       §§goto(addr252);
                                    }
                                 }
                                 §§goto(addr228);
                              }
                           }
                           §§goto(addr255);
                        }
                        §§goto(addr256);
                     }
                     else
                     {
                        addr258:
                        §§push(_loc3_);
                        §§push("name");
                     }
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc12_ && _loc3_))
                     {
                        mName = param1[_loc3_];
                     }
                  }
                  continue;
               }
            }
            §§goto(addr258);
         }
      }
   }
}
