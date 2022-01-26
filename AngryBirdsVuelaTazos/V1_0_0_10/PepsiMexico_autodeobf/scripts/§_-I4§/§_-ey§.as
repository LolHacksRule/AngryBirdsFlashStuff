package §_-I4§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-ey§ extends §_-8d§
   {
      
      public static var §_-vK§:Boolean = false;
       
      
      public function §_-ey§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-vO§(param1);
      }
      
      private function §_-78§(param1:§_-Iz§, param2:int, param3:int) : void
      {
         if(param1.§_-8I§.top < 0)
         {
            param1.§_-8I§.top = 0;
         }
         if(param1.§_-8I§.left < 0)
         {
            param1.§_-8I§.left = 0;
         }
         if(param1.§_-8I§.bottom > param3)
         {
            param1.§_-8I§.bottom = param3;
         }
         if(param1.§_-8I§.right > param2)
         {
            param1.§_-8I§.right = param2;
         }
      }
      
      protected function §_-vO§(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§_-Iz§ = null;
         var _loc2_:Boolean = false;
         if(§_-vK§)
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
               (_loc5_ = new §_-Iz§()).mName = _loc4_.id;
               _loc5_.§_-8I§ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               this.§_-78§(_loc5_,§_-uJ§.width,§_-uJ§.height);
               if(_loc2_)
               {
                  _loc5_.§_-ui§ = _loc4_.pivotx;
                  _loc5_.§_-np§ = _loc4_.pivoty;
               }
               else
               {
                  _loc5_.§_-ui§ = _loc4_.width / 2;
                  _loc5_.§_-np§ = _loc4_.height / 2;
               }
               _loc5_.§_-Ya§ = §_-uJ§;
               §_-K-§(_loc5_);
            }
            else if(_loc3_ == "image")
            {
               mName = param1[_loc3_];
            }
         }
      }
   }
}
