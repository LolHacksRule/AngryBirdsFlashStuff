package §+6§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class § <§ extends §^j§
   {
       
      
      public function § <§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param2);
            do
            {
               this.§8!C§(param1);
            }
            while(_loc4_ && this);
            
         }
      }
      
      protected function §8!C§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§=!`§ = null;
         var _loc2_:Number = 1;
         if(_loc12_ || _loc3_)
         {
            if(param1.scale)
            {
               if(!_loc13_)
               {
                  §§goto(addr46);
               }
            }
            §§goto(addr59);
         }
         addr46:
         _loc2_ = parseFloat(param1.scale);
         if(!(_loc13_ && this))
         {
            addr59:
            this.scale = _loc2_;
         }
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(!(_loc13_ && _loc2_))
            {
               _loc3_ = §§pop();
               if(_loc13_)
               {
                  continue;
               }
               §§push(_loc3_);
               if(_loc12_ || _loc3_)
               {
                  if(§§pop().indexOf("chars") == 0)
                  {
                     if(!_loc13_)
                     {
                        _loc4_ = param1[_loc3_];
                        if(_loc12_)
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
                                 addr268:
                                 continue;
                                 addr264:
                                 addr267:
                              }
                              while(true)
                              {
                                 (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                 if(!(_loc13_ && _loc3_))
                                 {
                                    _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                    loop3:
                                    while(true)
                                    {
                                       addr169:
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
                                       §§goto(addr169);
                                    }
                                    §§goto(addr178);
                                 }
                                 (_loc7_ = new §=!`§()).mName = String.fromCharCode(_loc6_.code);
                                 if(!(_loc13_ && _loc2_))
                                 {
                                    _loc7_.§ k§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                    loop7:
                                    while(true)
                                    {
                                       _loc7_.§4!=§ = _loc6_.width / 2;
                                       addr250:
                                       while(true)
                                       {
                                          _loc7_.§>!D§ = _loc6_.baseline;
                                          continue loop7;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §+!"§(_loc7_);
                                    if(_loc13_)
                                    {
                                       continue;
                                    }
                                    if(!_loc13_)
                                    {
                                       if(_loc12_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr250);
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr235);
                                 }
                                 §§goto(addr264);
                              }
                           }
                           §§goto(addr267);
                        }
                        §§goto(addr268);
                     }
                  }
                  else
                  {
                     addr270:
                     if(_loc3_ != "name")
                     {
                        continue;
                     }
                     if(!(_loc12_ || param1))
                     {
                        continue;
                     }
                  }
                  mName = param1[_loc3_];
                  continue;
               }
            }
            §§goto(addr270);
         }
      }
   }
}
