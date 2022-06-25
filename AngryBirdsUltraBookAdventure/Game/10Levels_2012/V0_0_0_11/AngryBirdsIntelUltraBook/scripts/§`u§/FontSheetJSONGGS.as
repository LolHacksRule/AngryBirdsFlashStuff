package §`u§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class FontSheetJSONGGS extends SpriteSheetBase
   {
       
      
      public function FontSheetJSONGGS(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param2);
            do
            {
               this.§-g§(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      protected function §-g§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§#!7§ = null;
         var _loc2_:Number = 1;
         if(_loc12_ || this)
         {
            if(param1.scale)
            {
               if(!_loc13_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(!_loc13_)
                  {
                     addr55:
                     this.scale = _loc2_;
                  }
                  var _loc8_:int = 0;
                  var _loc9_:* = param1;
                  while(§§hasnext(_loc9_,_loc8_))
                  {
                     §§push(§§nextname(_loc8_,_loc9_));
                     if(_loc12_)
                     {
                        _loc3_ = §§pop();
                        if(!_loc13_)
                        {
                           §§push(_loc3_);
                           if(_loc12_)
                           {
                              §§push("chars");
                              if(_loc12_ || this)
                              {
                                 if(§§pop().indexOf(§§pop()) == 0)
                                 {
                                    if(_loc13_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    addr95:
                                    _loc4_ = param1[_loc3_];
                                    if(!(_loc13_ && param1))
                                    {
                                       var _loc10_:int = 0;
                                       if(_loc12_)
                                       {
                                          var _loc11_:* = _loc4_;
                                          if(_loc12_ || this)
                                          {
                                             for(_loc5_ in _loc11_)
                                             {
                                             }
                                             addr301:
                                             continue;
                                             addr297:
                                             addr300:
                                          }
                                          while(true)
                                          {
                                             _loc6_ = _loc4_[_loc5_];
                                             if(!_loc13_)
                                             {
                                                _loc6_.width = Math.round(_loc6_.width / _loc2_);
                                                while(true)
                                                {
                                                   _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                                   addr170:
                                                   if(_loc13_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   if(false)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                                         do
                                                         {
                                                            _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                                         }
                                                         while(_loc13_ && _loc2_);
                                                         
                                                         if(!(_loc12_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr179);
                                                      }
                                                      addr179:
                                                      addr200:
                                                   }
                                                   _loc7_ = new §#!7§();
                                                   if(!_loc13_)
                                                   {
                                                      _loc7_.mName = String.fromCharCode(_loc6_.code);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         _loc7_.§4!E§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                                         loop8:
                                                         while(true)
                                                         {
                                                            _loc7_.§0!>§ = _loc6_.width / 2;
                                                            loop9:
                                                            while(true)
                                                            {
                                                               _loc7_.§+<§ = _loc6_.baseline;
                                                               loop10:
                                                               for(; !_loc13_; while(true)
                                                               {
                                                                  if(!(_loc13_ && _loc3_))
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  continue loop10;
                                                               })
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc7_.§4!P§ = §%!J§;
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               continue loop7;
                                                               if(_loc13_ && _loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc13_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §^!E§(_loc7_);
                                                               if(_loc12_)
                                                               {
                                                                  while(false)
                                                                  {
                                                                     §§goto(addr227);
                                                                  }
                                                                  §§goto(addr297);
                                                                  addr225:
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr225);
                                                }
                                             }
                                             §§goto(addr200);
                                          }
                                       }
                                       §§goto(addr300);
                                    }
                                    §§goto(addr301);
                                 }
                                 else
                                 {
                                    addr303:
                                    §§push(_loc3_);
                                    §§push("name");
                                 }
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(_loc12_)
                                 {
                                    mName = param1[_loc3_];
                                 }
                              }
                              continue;
                           }
                           §§goto(addr303);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr303);
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
   }
}
