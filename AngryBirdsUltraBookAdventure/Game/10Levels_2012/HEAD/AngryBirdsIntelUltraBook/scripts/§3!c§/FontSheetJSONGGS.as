package §3!c§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class FontSheetJSONGGS extends SpriteSheetBase
   {
       
      
      public function FontSheetJSONGGS(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param2);
            do
            {
               this.§?-§(param1);
            }
            while(_loc3_);
            
         }
      }
      
      protected function §?-§(param1:Object) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§33§ = null;
         var _loc2_:Number = 1;
         if(!(_loc12_ && param1))
         {
            if(param1.scale)
            {
               if(!_loc12_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(_loc12_ && param1)
                  {
                  }
               }
               §§goto(addr64);
            }
            this.scale = _loc2_;
         }
         addr64:
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(!(_loc12_ && _loc2_))
            {
               _loc3_ = §§pop();
               if(_loc13_)
               {
                  §§push(_loc3_);
                  if(!_loc12_)
                  {
                     addr88:
                     §§push("chars");
                     if(!(_loc12_ && _loc3_))
                     {
                        if(§§pop().indexOf(§§pop()) == 0)
                        {
                           if(!_loc12_)
                           {
                              addr101:
                              _loc4_ = param1[_loc3_];
                              if(!(_loc12_ && this))
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
                                       addr283:
                                       continue;
                                       addr283:
                                       addr286:
                                    }
                                    while(true)
                                    {
                                       _loc6_ = _loc4_[_loc5_];
                                       if(!_loc12_)
                                       {
                                          _loc6_.width = Math.round(_loc6_.width / _loc2_);
                                       }
                                       while(true)
                                       {
                                          _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                          while(!_loc12_)
                                          {
                                             while(true)
                                             {
                                                _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                                do
                                                {
                                                   _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                                }
                                                while(!(_loc13_ || param1));
                                                
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                _loc7_ = new §33§();
                                                if(!_loc12_)
                                                {
                                                   _loc7_.mName = String.fromCharCode(_loc6_.code);
                                                   while(true)
                                                   {
                                                      _loc7_.§+!W§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                                      while(!_loc12_)
                                                      {
                                                         _loc7_.§@!h§ = _loc6_.width / 2;
                                                         while(_loc13_)
                                                         {
                                                            _loc7_.§#O§ = _loc6_.baseline;
                                                         }
                                                      }
                                                   }
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   addr225:
                                                   while(true)
                                                   {
                                                      _loc7_.§6B§ = §@!j§;
                                                      while(!_loc12_)
                                                      {
                                                         §7W§(_loc7_);
                                                         if(_loc13_)
                                                         {
                                                            continue loop10;
                                                         }
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   §§goto(addr283);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr286);
                              }
                              §§goto(addr283);
                           }
                        }
                        else
                        {
                           addr290:
                           if(_loc3_ != "name")
                           {
                              continue;
                           }
                           if(_loc12_ && _loc2_)
                           {
                              continue;
                           }
                        }
                        mName = param1[_loc3_];
                        continue;
                     }
                  }
                  §§goto(addr290);
               }
               §§goto(addr101);
            }
            §§goto(addr88);
         }
      }
   }
}
