package §_-6E§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-So§ extends §_-UU§
   {
      
      public static var §_-PA§:Boolean = false;
       
      
      public function §_-So§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-EP§(param1);
      }
      
      private static function §_-5x§(param1:§_-0j§, param2:int, param3:int) : void
      {
         if(param1.§_-vb§.top < 0)
         {
            param1.§_-vb§.top = 0;
         }
         if(param1.§_-vb§.left < 0)
         {
            param1.§_-vb§.left = 0;
         }
         if(param1.§_-vb§.bottom > param3)
         {
            param1.§_-vb§.bottom = param3;
         }
         if(param1.§_-vb§.right > param2)
         {
            param1.§_-vb§.right = param2;
         }
      }
      
      protected function §_-EP§(param1:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§_-0j§ = null;
         var _loc2_:Boolean = false;
         if(§_-PA§)
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
               (_loc6_ = new §_-0j§()).mName = _loc5_.id;
               _loc5_.width = Math.round(_loc5_.width / _loc3_);
               _loc5_.height = Math.round(_loc5_.height / _loc3_);
               _loc5_.x = Math.round(_loc5_.x / _loc3_);
               _loc5_.y = Math.round(_loc5_.y / _loc3_);
               _loc6_.§_-vb§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
               §_-5x§(_loc6_,§_-e1§.width,§_-e1§.height);
               if(_loc2_)
               {
                  _loc6_.§_-7r§ = _loc5_.pivotx / _loc3_;
                  _loc6_.§_-yG§ = _loc5_.pivoty / _loc3_;
               }
               else
               {
                  _loc6_.§_-7r§ = _loc5_.width / 2;
                  _loc6_.§_-yG§ = _loc5_.height / 2;
               }
               _loc6_.§_-7B§ = §_-e1§;
               §_-Iw§(_loc6_);
            }
            else if(_loc4_ == "image")
            {
               mName = param1[_loc4_];
            }
         }
      }
   }
}
