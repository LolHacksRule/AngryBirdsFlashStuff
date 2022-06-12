package §>i§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §,!e§ extends §]y§
   {
       
      
      public function §,!e§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param2);
            do
            {
               this.§1P§(param1);
            }
            while(_loc3_ && this);
            
         }
      }
      
      protected function §1P§(param1:Object) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§^J§ = null;
         var _loc2_:Number = 1;
         if(!_loc12_)
         {
            if(param1.scale)
            {
               if(_loc13_ || this)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(_loc12_ && _loc3_)
                  {
                  }
               }
               §§goto(addr63);
            }
            this.scale = _loc2_;
         }
         addr63:
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(_loc13_ || _loc2_)
            {
               _loc3_ = §§pop();
               if(_loc13_ || _loc2_)
               {
                  §§push(_loc3_);
                  if(!(_loc12_ && _loc3_))
                  {
                     §§push("chars");
                     if(_loc13_)
                     {
                        if(§§pop().indexOf(§§pop()) == 0)
                        {
                           if(!(_loc13_ || _loc3_))
                           {
                              addr302:
                              mName = param1[_loc3_];
                              continue;
                           }
                           _loc4_ = param1[_loc3_];
                           if(!(_loc12_ && this))
                           {
                              var _loc10_:int = 0;
                              if(!(_loc12_ && this))
                              {
                                 var _loc11_:* = _loc4_;
                                 if(_loc13_)
                                 {
                                    for(_loc5_ in _loc11_)
                                    {
                                    }
                                    addr296:
                                    continue;
                                    addr292:
                                    addr295:
                                 }
                                 while(true)
                                 {
                                    (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                    if(_loc13_ || _loc2_)
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
                                             while(_loc12_);
                                             
                                             if(!_loc13_)
                                             {
                                                break;
                                             }
                                             while(false)
                                             {
                                                continue loop4;
                                             }
                                             (_loc7_ = new §^J§()).mName = String.fromCharCode(_loc6_.code);
                                             if(_loc13_)
                                             {
                                                _loc7_.§3!%§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                _loc7_.§4!^§ = _loc6_.width / 2;
                                                while(true)
                                                {
                                                   _loc7_.§'?§ = _loc6_.baseline;
                                                   loop9:
                                                   for(; _loc13_ || param1; while(!(_loc12_ && param1))
                                                   {
                                                      continue loop7;
                                                   })
                                                   {
                                                      do
                                                      {
                                                         _loc7_.§-"'§ = §#R§;
                                                         continue loop9;
                                                      }
                                                      while(false);
                                                      
                                                      §§goto(addr292);
                                                   }
                                                }
                                                if(_loc12_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §+"=§(_loc7_);
                                                if(!_loc12_)
                                                {
                                                   §§goto(addr227);
                                                }
                                                §§goto(addr233);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr187);
                                 }
                              }
                              §§goto(addr295);
                           }
                           §§goto(addr296);
                        }
                        else
                        {
                           addr298:
                           §§push(_loc3_);
                           §§push("name");
                        }
                        §§goto(addr302);
                     }
                     if(§§pop() != §§pop())
                     {
                        continue;
                     }
                     if(_loc12_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr298);
               }
               §§goto(addr302);
            }
            §§goto(addr298);
         }
      }
   }
}
