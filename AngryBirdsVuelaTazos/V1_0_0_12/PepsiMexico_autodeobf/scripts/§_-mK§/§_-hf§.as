package §_-mK§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-hf§ extends §_-4C§
   {
       
      
      public function §_-hf§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-26§(param1);
      }
      
      protected function §_-26§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§implements§ = null;
         for(_loc2_ in param1)
         {
            if(_loc2_.indexOf("chars") == 0)
            {
               _loc3_ = param1[_loc2_];
               for(_loc4_ in _loc3_)
               {
                  _loc5_ = _loc3_[_loc4_];
                  (_loc6_ = new §implements§()).mName = String.fromCharCode(_loc5_.code);
                  _loc6_.§_-K§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                  _loc6_.§_-Ho§ = _loc5_.width / 2;
                  _loc6_.§_-rf§ = _loc5_.baseline;
                  _loc6_.§_-6q§ = §_-GL§;
                  §_-iX§(_loc6_);
               }
            }
            else if(_loc2_ == "name")
            {
               mName = param1[_loc2_];
            }
         }
      }
   }
}
