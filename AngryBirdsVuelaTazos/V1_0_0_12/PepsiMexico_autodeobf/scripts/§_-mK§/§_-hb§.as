package §_-mK§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-hb§ extends §_-4C§
   {
      
      public static var §_-tG§:Boolean = false;
       
      
      public function §_-hb§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-26§(param1);
      }
      
      private function §_-Cj§(param1:§implements§, param2:int, param3:int) : void
      {
         if(param1.§_-K§.top < 0)
         {
            param1.§_-K§.top = 0;
         }
         if(param1.§_-K§.left < 0)
         {
            param1.§_-K§.left = 0;
         }
         if(param1.§_-K§.bottom > param3)
         {
            param1.§_-K§.bottom = param3;
         }
         if(param1.§_-K§.right > param2)
         {
            param1.§_-K§.right = param2;
         }
      }
      
      protected function §_-26§(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§implements§ = null;
         var _loc2_:Boolean = false;
         if(§_-tG§)
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
               (_loc5_ = new §implements§()).mName = _loc4_.id;
               _loc5_.§_-K§ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               this.§_-Cj§(_loc5_,§_-GL§.width,§_-GL§.height);
               if(_loc2_)
               {
                  _loc5_.§_-Ho§ = _loc4_.pivotx;
                  _loc5_.§_-rf§ = _loc4_.pivoty;
               }
               else
               {
                  _loc5_.§_-Ho§ = _loc4_.width / 2;
                  _loc5_.§_-rf§ = _loc4_.height / 2;
               }
               _loc5_.§_-6q§ = §_-GL§;
               §_-iX§(_loc5_);
            }
            else if(_loc3_ == "image")
            {
               mName = param1[_loc3_];
            }
         }
      }
   }
}
