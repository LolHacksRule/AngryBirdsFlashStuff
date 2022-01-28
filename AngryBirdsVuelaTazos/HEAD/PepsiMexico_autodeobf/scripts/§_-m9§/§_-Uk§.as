package §_-m9§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-Uk§ extends §_-iN§
   {
      
      public static var §_-DG§:Boolean = false;
       
      
      public function §_-Uk§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-Xu§(param1);
      }
      
      private function §_-yJ§(param1:§_-Tv§, param2:int, param3:int) : void
      {
         if(param1.§_-N3§.top < 0)
         {
            param1.§_-N3§.top = 0;
         }
         if(param1.§_-N3§.left < 0)
         {
            param1.§_-N3§.left = 0;
         }
         if(param1.§_-N3§.bottom > param3)
         {
            param1.§_-N3§.bottom = param3;
         }
         if(param1.§_-N3§.right > param2)
         {
            param1.§_-N3§.right = param2;
         }
      }
      
      protected function §_-Xu§(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§_-Tv§ = null;
         var _loc2_:Boolean = false;
         if(§_-DG§)
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
               (_loc5_ = new §_-Tv§()).mName = _loc4_.id;
               _loc5_.§_-N3§ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               this.§_-yJ§(_loc5_,§_-NL§.width,§_-NL§.height);
               if(_loc2_)
               {
                  _loc5_.§_-0S§ = _loc4_.pivotx;
                  _loc5_.§_-DJ§ = _loc4_.pivoty;
               }
               else
               {
                  _loc5_.§_-0S§ = _loc4_.width / 2;
                  _loc5_.§_-DJ§ = _loc4_.height / 2;
               }
               _loc5_.§_-uG§ = §_-NL§;
               §_-ra§(_loc5_);
            }
            else if(_loc3_ == "image")
            {
               mName = param1[_loc3_];
            }
         }
      }
   }
}
