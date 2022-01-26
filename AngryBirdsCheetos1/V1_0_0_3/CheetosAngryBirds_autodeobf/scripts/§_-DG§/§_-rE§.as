package §_-DG§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-rE§ extends § for§
   {
      
      public static var §_-0-y§:Boolean = false;
       
      
      public function §_-rE§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-Qn§(param1);
      }
      
      private static function §_-XS§(param1:§_-1B§, param2:int, param3:int) : void
      {
         if(param1.§_-dK§.top < 0)
         {
            param1.§_-dK§.top = 0;
         }
         if(param1.§_-dK§.left < 0)
         {
            param1.§_-dK§.left = 0;
         }
         if(param1.§_-dK§.bottom > param3)
         {
            param1.§_-dK§.bottom = param3;
         }
         if(param1.§_-dK§.right > param2)
         {
            param1.§_-dK§.right = param2;
         }
      }
      
      protected function §_-Qn§(param1:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§_-1B§ = null;
         var _loc2_:Boolean = false;
         if(§_-0-y§)
         {
            _loc2_ = true;
         }
         if(param1.usePivot)
         {
            _loc2_ = true;
         }
         var _loc3_:Number = 1;
         if(param1.scale)
         {
            _loc3_ = parseFloat(param1.scale);
         }
         this.scale = _loc3_;
         for(_loc4_ in param1)
         {
            if(_loc4_.indexOf("sprite_") != -1)
            {
               _loc5_ = param1[_loc4_];
               (_loc6_ = new §_-1B§()).mName = _loc5_.id;
               _loc5_.width = Math.round(_loc5_.width / _loc3_);
               _loc5_.height = Math.ceil(_loc5_.height / _loc3_);
               _loc5_.x = Math.round(_loc5_.x / _loc3_);
               _loc5_.y = Math.round(_loc5_.y / _loc3_);
               _loc6_.§_-dK§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
               §_-XS§(_loc6_,§_-OI§.width,§_-OI§.height);
               if(_loc2_)
               {
                  _loc6_.§_-dI§ = _loc5_.pivotx / _loc3_;
                  _loc6_.§_-9j§ = _loc5_.pivoty / _loc3_;
               }
               else
               {
                  _loc6_.§_-dI§ = _loc5_.width / 2;
                  _loc6_.§_-9j§ = _loc5_.height / 2;
               }
               _loc6_.§_-C§ = §_-OI§;
               §_-Fm§(_loc6_);
            }
            else if(_loc4_ == "image")
            {
               mName = param1[_loc4_];
            }
         }
      }
   }
}
