package §6w§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class FontSheetJSONGGS extends SpriteSheetBase
   {
       
      
      public function FontSheetJSONGGS(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param2);
         }
         do
         {
            this.§5!Q§(param1);
         }
         while(_loc4_ && _loc3_);
         
      }
      
      protected function §5!Q§(param1:Object) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§<>§ = null;
         var _loc2_:Number = 1;
         if(!_loc12_)
         {
            if(param1.scale)
            {
               if(!(_loc12_ && param1))
               {
                  §§goto(addr48);
               }
            }
            §§goto(addr56);
         }
         addr48:
         _loc2_ = parseFloat(param1.scale);
         if(_loc13_)
         {
            addr56:
            this.scale = _loc2_;
         }
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(_loc13_ || _loc3_)
            {
               _loc3_ = §§pop();
               if(_loc13_ || _loc2_)
               {
                  §§push(_loc3_);
                  if(_loc13_)
                  {
                     §§push("chars");
                     if(!_loc12_)
                     {
                        if(§§pop().indexOf(§§pop()) == 0)
                        {
                           if(!(_loc12_ && this))
                           {
                              addr101:
                              _loc4_ = param1[_loc3_];
                              if(_loc13_)
                              {
                                 var _loc10_:int = 0;
                                 if(!(_loc12_ && param1))
                                 {
                                    var _loc11_:* = _loc4_;
                                    if(_loc13_ || _loc3_)
                                    {
                                       for(_loc5_ in _loc11_)
                                       {
                                       }
                                       addr312:
                                       continue;
                                       addr308:
                                       addr311:
                                    }
                                    while(true)
                                    {
                                       _loc6_ = _loc4_[_loc5_];
                                       if(!_loc12_)
                                       {
                                          _loc6_.width = Math.round(_loc6_.width / _loc2_);
                                          while(true)
                                          {
                                             _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                             addr201:
                                             loop4:
                                             while(true)
                                             {
                                                addr180:
                                                while(true)
                                                {
                                                   _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                                   continue loop4;
                                                }
                                             }
                                             addr171:
                                             if(_loc12_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(false)
                                             {
                                                §§goto(addr180);
                                             }
                                             addr212:
                                             _loc7_ = new §<>§();
                                             if(_loc13_ || this)
                                             {
                                                _loc7_.mName = String.fromCharCode(_loc6_.code);
                                                loop7:
                                                while(true)
                                                {
                                                   _loc7_.§'?§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc7_.§1l§ = _loc6_.width / 2;
                                                      addr245:
                                                      if(_loc12_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc12_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §0!L§(_loc7_);
                                                      if(!(_loc12_ && _loc3_))
                                                      {
                                                         addr236:
                                                         if(false)
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               _loc7_.§!c§ = §+#§;
                                                               addr243:
                                                               while(true)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     §§goto(addr245);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        if(_loc13_ || _loc3_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        addr275:
                                                                        while(true)
                                                                        {
                                                                           _loc7_.§%!N§ = _loc6_.baseline;
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                }
                                             }
                                             §§goto(addr275);
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                          if(!_loc13_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc12_ && param1))
                                          {
                                             §§goto(addr171);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr212);
                                    }
                                 }
                                 §§goto(addr311);
                              }
                              §§goto(addr312);
                           }
                        }
                        else
                        {
                           addr315:
                           if(_loc3_ != "name")
                           {
                              continue;
                           }
                           if(!(_loc13_ || param1))
                           {
                              continue;
                           }
                        }
                        mName = param1[_loc3_];
                        continue;
                     }
                  }
                  §§goto(addr315);
               }
               §§goto(addr101);
            }
            §§goto(addr315);
         }
      }
   }
}
