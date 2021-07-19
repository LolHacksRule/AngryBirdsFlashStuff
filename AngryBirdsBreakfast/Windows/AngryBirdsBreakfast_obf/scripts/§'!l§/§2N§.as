package §'!l§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §2N§ extends §9!#§
   {
       
      
      public function §2N§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param2);
            do
            {
               this.§8!0§(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      protected function §8!0§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§5K§ = null;
         var _loc2_:Number = 1;
         if(!(_loc13_ && this))
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
                  if(_loc12_ || this)
                  {
                     _loc3_ = §§pop();
                     if(!_loc12_)
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(!_loc13_)
                     {
                        addr81:
                        if(§§pop().indexOf("chars") == 0)
                        {
                           if(!_loc13_)
                           {
                              _loc4_ = param1[_loc3_];
                              if(!_loc13_)
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
                                       addr253:
                                       continue;
                                       addr249:
                                       addr252:
                                    }
                                    while(true)
                                    {
                                       (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                       if(!(_loc13_ && this))
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
                                                if(!(_loc13_ && _loc2_))
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
                                          (_loc7_ = new §5K§()).name = String.fromCharCode(_loc6_.code);
                                          if(!_loc13_)
                                          {
                                             _loc7_.rect = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                             while(true)
                                             {
                                                _loc7_.pivotX = _loc6_.width / 2;
                                                addr220:
                                                if(_loc13_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                loop9:
                                                do
                                                {
                                                   _loc7_.§'! § = §3!=§;
                                                   addr205:
                                                   addr218:
                                                   while(_loc12_ || _loc2_)
                                                   {
                                                      §?!t§(_loc7_);
                                                      if(!_loc13_)
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                   addr235:
                                                   while(!_loc13_)
                                                   {
                                                      §§goto(addr220);
                                                      §§goto(addr205);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc7_.pivotY = _loc6_.baseline;
                                                      §§goto(addr218);
                                                   }
                                                }
                                                while(false);
                                                
                                                §§goto(addr249);
                                             }
                                          }
                                          §§goto(addr235);
                                       }
                                    }
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr253);
                           }
                        }
                        else
                        {
                           addr255:
                           if(_loc3_ != "name")
                           {
                              continue;
                           }
                           if(_loc13_ && _loc2_)
                           {
                              continue;
                           }
                        }
                        mName = param1[_loc3_];
                        continue;
                     }
                     §§goto(addr255);
                  }
                  §§goto(addr81);
               }
               return;
            }
         }
         §§goto(addr54);
      }
   }
}
