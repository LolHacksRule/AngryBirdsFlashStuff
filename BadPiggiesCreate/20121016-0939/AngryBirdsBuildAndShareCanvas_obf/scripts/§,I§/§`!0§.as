package §,I§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §`!0§ extends §5i§
   {
       
      
      public function §`!0§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param2);
            do
            {
               this.§<!#§(param1);
            }
            while(!_loc4_);
            
         }
      }
      
      protected function §<!#§(param1:Object) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§7!c§ = null;
         var _loc2_:Number = 1;
         if(!_loc12_)
         {
            if(param1.scale)
            {
               if(!_loc12_)
               {
                  addr42:
                  _loc2_ = parseFloat(param1.scale);
                  if(_loc13_ || this)
                  {
                     addr55:
                     this.scale = _loc2_;
                  }
               }
               var _loc8_:int = 0;
               var _loc9_:* = param1;
               while(§§hasnext(_loc9_,_loc8_))
               {
                  §§push(§§nextname(_loc8_,_loc9_));
                  if(!(_loc12_ && this))
                  {
                     _loc3_ = §§pop();
                     if(!_loc13_)
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(_loc13_)
                     {
                        if(§§pop().indexOf("chars") == 0)
                        {
                           if(!_loc13_)
                           {
                              continue;
                           }
                           _loc4_ = param1[_loc3_];
                           if(!(_loc12_ && _loc2_))
                           {
                              var _loc10_:int = 0;
                              if(_loc13_ || _loc3_)
                              {
                                 var _loc11_:* = _loc4_;
                                 if(_loc13_ || _loc3_)
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
                                    if(!(_loc12_ && this))
                                    {
                                       _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                       loop3:
                                       while(true)
                                       {
                                          addr170:
                                          while(true)
                                          {
                                             _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                             continue loop3;
                                          }
                                       }
                                    }
                                    while(false)
                                    {
                                       §§goto(addr170);
                                    }
                                    (_loc7_ = new §7!c§()).mName = String.fromCharCode(_loc6_.code);
                                    if(!(_loc12_ && this))
                                    {
                                       _loc7_.§5l§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                       loop7:
                                       while(true)
                                       {
                                          _loc7_.§>!v§ = _loc6_.width / 2;
                                          while(true)
                                          {
                                             _loc7_.§>!J§ = _loc6_.baseline;
                                             continue loop7;
                                             loop11:
                                             while(!(_loc12_ && param1))
                                             {
                                                §0!2§(_loc7_);
                                                if(_loc12_)
                                                {
                                                   continue;
                                                }
                                                if(_loc12_)
                                                {
                                                   continue loop7;
                                                }
                                                while(false)
                                                {
                                                   while(true)
                                                   {
                                                      _loc7_.§9!U§ = §%!y§;
                                                      continue loop11;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr270);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr222);
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
                  }
                  if(§§pop() == "name")
                  {
                     if(_loc13_)
                     {
                        mName = param1[_loc3_];
                     }
                  }
               }
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr42);
      }
   }
}
