package §]o§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §>!^§ extends §%!p§
   {
       
      
      public function §>!^§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param2);
            do
            {
               this.§!!E§(param1);
            }
            while(_loc4_);
            
         }
      }
      
      protected function §!!E§(param1:Object) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§^!9§ = null;
         var _loc2_:Number = 1;
         if(_loc13_)
         {
            if(param1.scale)
            {
               if(_loc13_ || param1)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(_loc12_)
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
            if(_loc13_ || _loc3_)
            {
               _loc3_ = §§pop();
               if(_loc12_ && param1)
               {
                  continue;
               }
               §§push(_loc3_);
               if(!(_loc12_ && this))
               {
                  §§push("chars");
                  if(_loc13_ || _loc2_)
                  {
                     if(§§pop().indexOf(§§pop()) == 0)
                     {
                        if(!(_loc12_ && _loc2_))
                        {
                           _loc4_ = param1[_loc3_];
                           if(!(_loc12_ && _loc3_))
                           {
                              var _loc10_:int = 0;
                              if(!_loc12_)
                              {
                                 var _loc11_:* = _loc4_;
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    for(_loc5_ in _loc11_)
                                    {
                                    }
                                    addr291:
                                    continue;
                                    addr287:
                                    addr290:
                                 }
                                 while(true)
                                 {
                                    (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                    if(_loc13_ || this)
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
                                          while(!_loc13_);
                                          
                                          if(_loc12_)
                                          {
                                             break;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          (_loc7_ = new §^!9§()).mName = String.fromCharCode(_loc6_.code);
                                          if(_loc13_)
                                          {
                                             _loc7_.§]!1§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             _loc7_.§`Q§ = _loc6_.width / 2;
                                             while(true)
                                             {
                                                _loc7_.§-Z§ = _loc6_.baseline;
                                                while(!(_loc12_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      _loc7_.§[3§ = §0g§;
                                                      do
                                                      {
                                                         §8!U§(_loc7_);
                                                      }
                                                      while(!_loc13_);
                                                      
                                                      if(!_loc13_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr290);
                           }
                           §§goto(addr291);
                        }
                     }
                     else
                     {
                        addr294:
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
                  §§goto(addr294);
               }
            }
            §§goto(addr294);
         }
      }
   }
}
