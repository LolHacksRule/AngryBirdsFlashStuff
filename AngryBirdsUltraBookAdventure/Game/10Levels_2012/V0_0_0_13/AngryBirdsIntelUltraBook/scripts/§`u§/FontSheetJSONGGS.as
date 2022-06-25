package §`u§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class FontSheetJSONGGS extends SpriteSheetBase
   {
       
      
      public function FontSheetJSONGGS(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param2);
            do
            {
               this.§-g§(param1);
            }
            while(_loc3_);
            
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
         if(!_loc13_)
         {
            if(param1.scale)
            {
               if(!_loc13_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(!(_loc13_ && _loc3_))
                  {
                     addr55:
                     this.scale = _loc2_;
                  }
                  var _loc8_:int = 0;
                  var _loc9_:* = param1;
                  while(§§hasnext(_loc9_,_loc8_))
                  {
                     §§push(§§nextname(_loc8_,_loc9_));
                     if(!_loc13_)
                     {
                        _loc3_ = §§pop();
                        if(_loc12_ || param1)
                        {
                           §§push(_loc3_);
                           if(!_loc13_)
                           {
                              addr82:
                              §§push("chars");
                              if(_loc12_ || param1)
                              {
                                 if(§§pop().indexOf(§§pop()) == 0)
                                 {
                                    if(_loc12_)
                                    {
                                       addr95:
                                       _loc4_ = param1[_loc3_];
                                       if(!(_loc13_ && this))
                                       {
                                          var _loc10_:int = 0;
                                          if(_loc12_)
                                          {
                                             var _loc11_:* = _loc4_;
                                             if(!(_loc13_ && _loc3_))
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
                                                _loc6_ = _loc4_[_loc5_];
                                                if(!_loc13_)
                                                {
                                                   _loc6_.width = Math.round(_loc6_.width / _loc2_);
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                                   while(true)
                                                   {
                                                      addr169:
                                                      while(true)
                                                      {
                                                         _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                                         do
                                                         {
                                                            _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                                         }
                                                         while(!_loc12_);
                                                         
                                                         if(!_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr295);
                                       }
                                       §§goto(addr296);
                                    }
                                 }
                                 else
                                 {
                                    addr299:
                                    if(_loc3_ != "name")
                                    {
                                       continue;
                                    }
                                    if(!_loc12_)
                                    {
                                       continue;
                                    }
                                 }
                                 mName = param1[_loc3_];
                                 continue;
                              }
                           }
                           §§goto(addr299);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr82);
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
   }
}
