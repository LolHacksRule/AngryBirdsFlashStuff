package §_-Xc§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-FV§ extends §_-Yd§
   {
      
      public static var §_-Ra§:Boolean = false;
       
      
      public function §_-FV§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-Wj§(param1);
      }
      
      private function §_-YX§(param1:§_-39§, param2:int, param3:int) : void
      {
         if(param1.§_-LD§.top < 0)
         {
            param1.§_-LD§.top = 0;
         }
         if(param1.§_-LD§.left < 0)
         {
            param1.§_-LD§.left = 0;
         }
         if(param1.§_-LD§.bottom > param3)
         {
            param1.§_-LD§.bottom = param3;
         }
         if(param1.§_-LD§.right > param2)
         {
            param1.§_-LD§.right = param2;
         }
      }
      
      protected function §_-Wj§(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§_-39§ = null;
         var _loc2_:Boolean = false;
         if(§_-Ra§)
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
               (_loc5_ = new §_-39§()).mName = _loc4_.id;
               _loc5_.§_-LD§ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               this.§_-YX§(_loc5_,§_-M§.width,§_-M§.height);
               if(_loc2_)
               {
                  _loc5_.§_-oy§ = _loc4_.pivotx;
                  _loc5_.§_-Pk§ = _loc4_.pivoty;
               }
               else
               {
                  _loc5_.§_-oy§ = _loc4_.width / 2;
                  _loc5_.§_-Pk§ = _loc4_.height / 2;
               }
               _loc5_.§_-Et§ = §_-M§;
               §_-vB§(_loc5_);
            }
            else if(_loc3_ == "image")
            {
               mName = param1[_loc3_];
            }
         }
      }
   }
}
