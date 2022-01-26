package §_-id§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-j2§ extends §_-fk§
   {
      
      public static var §_-sQ§:Boolean = false;
       
      
      public function §_-j2§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-5G§(param1);
      }
      
      private function §_-FS§(param1:§_-jr§, param2:int, param3:int) : void
      {
         if(param1.§_-wF§.top < 0)
         {
            param1.§_-wF§.top = 0;
         }
         if(param1.§_-wF§.left < 0)
         {
            param1.§_-wF§.left = 0;
         }
         if(param1.§_-wF§.bottom > param3)
         {
            param1.§_-wF§.bottom = param3;
         }
         if(param1.§_-wF§.right > param2)
         {
            param1.§_-wF§.right = param2;
         }
      }
      
      protected function §_-5G§(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§_-jr§ = null;
         var _loc2_:Boolean = false;
         if(§_-sQ§)
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
               (_loc5_ = new §_-jr§()).mName = _loc4_.id;
               _loc5_.§_-wF§ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               this.§_-FS§(_loc5_,§_-9h§.width,§_-9h§.height);
               if(_loc2_)
               {
                  _loc5_.§_-eo§ = _loc4_.pivotx;
                  _loc5_.§_-TO§ = _loc4_.pivoty;
               }
               else
               {
                  _loc5_.§_-eo§ = _loc4_.width / 2;
                  _loc5_.§_-TO§ = _loc4_.height / 2;
               }
               _loc5_.§_-uN§ = §_-9h§;
               §_-9t§(_loc5_);
            }
            else if(_loc3_ == "image")
            {
               mName = param1[_loc3_];
            }
         }
      }
   }
}
