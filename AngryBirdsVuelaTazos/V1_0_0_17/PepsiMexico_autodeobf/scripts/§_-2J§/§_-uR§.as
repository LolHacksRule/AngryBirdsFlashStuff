package §_-2J§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-uR§ extends §_-Tz§
   {
      
      public static var §_-ng§:Boolean = false;
       
      
      public function §_-uR§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-aJ§(param1);
      }
      
      private function §_-3Z§(param1:§_-4w§, param2:int, param3:int) : void
      {
         if(param1.§_-ua§.top < 0)
         {
            param1.§_-ua§.top = 0;
         }
         if(param1.§_-ua§.left < 0)
         {
            param1.§_-ua§.left = 0;
         }
         if(param1.§_-ua§.bottom > param3)
         {
            param1.§_-ua§.bottom = param3;
         }
         if(param1.§_-ua§.right > param2)
         {
            param1.§_-ua§.right = param2;
         }
      }
      
      protected function §_-aJ§(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§_-4w§ = null;
         var _loc2_:Boolean = false;
         if(§_-ng§)
         {
            _loc2_ = true;
         }
         if(param1.usePivot)
         {
            _loc2_ = true;
         }
         for(_loc3_ in param1)
         {
            if(_loc3_.indexOf("sprite_") != -1)
            {
               _loc4_ = param1[_loc3_];
               (_loc5_ = new §_-4w§()).mName = _loc4_.id;
               _loc5_.§_-ua§ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               this.§_-3Z§(_loc5_,§_-wM§.width,§_-wM§.height);
               if(_loc2_)
               {
                  _loc5_.§_-ov§ = _loc4_.pivotx;
                  _loc5_.§_-eM§ = _loc4_.pivoty;
               }
               else
               {
                  _loc5_.§_-ov§ = _loc4_.width / 2;
                  _loc5_.§_-eM§ = _loc4_.height / 2;
               }
               _loc5_.§_-6p§ = §_-wM§;
               §_-zc§(_loc5_);
            }
            else if(_loc3_ == "image")
            {
               mName = param1[_loc3_];
            }
         }
      }
   }
}
