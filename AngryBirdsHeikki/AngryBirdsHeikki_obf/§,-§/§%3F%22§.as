package §,-§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §?"§ extends §]M§
   {
       
      
      public function §?"§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param2);
         }
         do
         {
            this.§5!I§(param1);
         }
         while(!(_loc3_ || this));
         
      }
      
      protected function §5!I§(param1:Object) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§!>§ = null;
         var _loc2_:Number = 1;
         if(_loc13_ || param1)
         {
            if(param1.scale)
            {
               if(!(_loc12_ && _loc3_))
               {
                  §§goto(addr52);
               }
            }
            §§goto(addr65);
         }
         addr52:
         _loc2_ = parseFloat(param1.scale);
         if(!(_loc12_ && _loc3_))
         {
            addr65:
            this.scale = _loc2_;
         }
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(!(_loc12_ && param1))
            {
               _loc3_ = §§pop();
               if(!_loc12_)
               {
                  §§push(_loc3_);
                  if(_loc13_ || param1)
                  {
                     addr97:
                     if(§§pop().indexOf("chars") == 0)
                     {
                        if(!(_loc12_ && this))
                        {
                           addr108:
                           _loc4_ = param1[_loc3_];
                           if(_loc13_ || this)
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
                                    addr275:
                                    continue;
                                    addr275:
                                    addr278:
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
                                          addr182:
                                          while(true)
                                          {
                                             _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                             continue loop3;
                                          }
                                       }
                                       addr200:
                                    }
                                    while(true)
                                    {
                                       _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                       if(_loc12_ && param1)
                                       {
                                          continue;
                                       }
                                       if(!_loc12_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr200);
                                       }
                                       §§goto(addr182);
                                    }
                                    (_loc7_ = new §!>§()).mName = String.fromCharCode(_loc6_.code);
                                    if(_loc13_)
                                    {
                                       _loc7_.§1!f§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                       while(true)
                                       {
                                          _loc7_.§var § = _loc6_.width / 2;
                                          loop7:
                                          for(; !(_loc12_ && _loc3_); while(!(_loc12_ && this))
                                          {
                                             §,E§(_loc7_);
                                             if(!(_loc13_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(_loc13_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr229);
                                                }
                                                else
                                                {
                                                   §§goto(addr275);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr246);
                                             }
                                             §§goto(addr229);
                                          })
                                          {
                                             _loc7_.§9!K§ = _loc6_.baseline;
                                             while(true)
                                             {
                                                addr229:
                                                while(true)
                                                {
                                                   _loc7_.§?7§ = §=!=§;
                                                   continue loop7;
                                                }
                                                §§goto(addr275);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr246);
                                 }
                              }
                              §§goto(addr278);
                           }
                           §§goto(addr275);
                        }
                     }
                     else
                     {
                        addr281:
                        if(_loc3_ != "name")
                        {
                           continue;
                        }
                        if(!(_loc13_ || this))
                        {
                           continue;
                        }
                     }
                     mName = param1[_loc3_];
                     continue;
                  }
                  §§goto(addr281);
               }
               §§goto(addr108);
            }
            §§goto(addr97);
         }
      }
   }
}
