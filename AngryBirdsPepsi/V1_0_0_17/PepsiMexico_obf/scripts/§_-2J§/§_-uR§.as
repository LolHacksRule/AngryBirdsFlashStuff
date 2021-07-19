package §_-2J§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-uR§ extends §_-Tz§
   {
      
      public static var §_-ng§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-ng§ = false;
         }
      }
      
      public function §_-uR§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param2);
            if(!_loc4_)
            {
               this.§_-aJ§(param1);
            }
         }
      }
      
      private function §_-3Z§(param1:§_-4w§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(param1.§_-ua§.top < 0)
         {
            if(!_loc4_)
            {
               param1.§_-ua§.top = 0;
               §§goto(addr25);
            }
            §§goto(addr53);
         }
         addr25:
         if(param1.§_-ua§.left < 0)
         {
            param1.§_-ua§.left = 0;
         }
         if(param1.§_-ua§.bottom > param3)
         {
            if(!(_loc4_ && param1))
            {
               addr53:
               param1.§_-ua§.bottom = param3;
               if(!(_loc4_ && param1))
               {
                  §§goto(addr71);
               }
               §§goto(addr76);
            }
         }
         addr71:
         if(param1.§_-ua§.right > param2)
         {
            addr76:
            param1.§_-ua§.right = param2;
         }
      }
      
      protected function §_-aJ§(param1:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§_-4w§ = null;
         var _loc2_:* = false;
         if(!_loc9_)
         {
            §§push(§_-ng§);
            if(_loc8_ || this)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     §§push(true);
                     if(_loc8_)
                     {
                        addr40:
                        _loc2_ = §§pop();
                        if(_loc8_ || param1)
                        {
                           addr48:
                           if(!param1.usePivot)
                           {
                           }
                        }
                        §§goto(addr60);
                     }
                     _loc2_ = §§pop();
                  }
                  §§goto(addr60);
               }
               §§goto(addr48);
            }
            §§goto(addr40);
         }
         addr60:
         if(!(_loc9_ && _loc2_))
         {
            §§push(true);
         }
         var _loc6_:int = 0;
         var _loc7_:* = param1;
         while(§§hasnext(_loc7_,_loc6_))
         {
            §§push(§§nextname(_loc6_,_loc7_));
            if(!_loc9_)
            {
               _loc3_ = §§pop();
               if(!_loc9_)
               {
                  §§push(_loc3_);
                  if(!(_loc9_ && _loc2_))
                  {
                     if(§§pop().indexOf("sprite_") == -1)
                     {
                        addr171:
                        if(_loc3_ == "image")
                        {
                           if(!(_loc9_ && _loc2_))
                           {
                              mName = param1[_loc3_];
                           }
                        }
                        continue;
                     }
                     if(!_loc8_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr171);
               }
               _loc4_ = param1[_loc3_];
               (_loc5_ = new §_-4w§()).mName = _loc4_.id;
               _loc5_.§_-ua§ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               this.§_-3Z§(_loc5_,§_-wM§.width,§_-wM§.height);
               if(_loc2_)
               {
                  _loc5_.§_-ov§ = _loc4_.pivotx;
                  if(!_loc9_)
                  {
                     _loc5_.§_-eM§ = _loc4_.pivoty;
                  }
                  addr163:
                  _loc5_.§_-6p§ = §_-wM§;
               }
               else
               {
                  _loc5_.§_-ov§ = _loc4_.width / 2;
                  if(_loc8_ || _loc2_)
                  {
                     _loc5_.§_-eM§ = _loc4_.height / 2;
                     if(_loc8_)
                     {
                        §§goto(addr163);
                     }
                     addr169:
                     continue;
                  }
               }
               §_-zc§(_loc5_);
               §§goto(addr169);
            }
            §§goto(addr171);
         }
      }
   }
}
