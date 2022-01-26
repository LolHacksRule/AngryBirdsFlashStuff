package §_-di§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-Cl§ extends §_-XM§
   {
      
      public static var §_-t9§:Boolean = false;
       
      
      public function §_-Cl§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-Uf§(param1);
      }
      
      private function §_-1J§(param1:§_-hc§, param2:int, param3:int) : void
      {
         if(param1.§_-WP§.top < 0)
         {
            param1.§_-WP§.top = 0;
         }
         if(param1.§_-WP§.left < 0)
         {
            param1.§_-WP§.left = 0;
         }
         if(param1.§_-WP§.bottom > param3)
         {
            param1.§_-WP§.bottom = param3;
         }
         if(param1.§_-WP§.right > param2)
         {
            param1.§_-WP§.right = param2;
         }
      }
      
      protected function §_-Uf§(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§_-hc§ = null;
         var _loc2_:Boolean = false;
         if(§_-t9§)
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
               (_loc5_ = new §_-hc§()).mName = _loc4_.id;
               _loc5_.§_-WP§ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               this.§_-1J§(_loc5_,§_-At§.width,§_-At§.height);
               if(_loc2_)
               {
                  _loc5_.§_-u1§ = _loc4_.pivotx;
                  _loc5_.§_-su§ = _loc4_.pivoty;
               }
               else
               {
                  _loc5_.§_-u1§ = _loc4_.width / 2;
                  _loc5_.§_-su§ = _loc4_.height / 2;
               }
               _loc5_.§_-KL§ = §_-At§;
               §_-Zg§(_loc5_);
            }
            else if(_loc3_ == "image")
            {
               mName = param1[_loc3_];
            }
         }
      }
   }
}
