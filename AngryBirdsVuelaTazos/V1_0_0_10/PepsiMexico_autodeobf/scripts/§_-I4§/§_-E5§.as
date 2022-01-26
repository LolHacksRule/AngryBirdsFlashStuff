package §_-I4§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-E5§ extends §_-8d§
   {
       
      
      public function §_-E5§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-vO§(param1);
      }
      
      protected function §_-vO§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§_-Iz§ = null;
         for(_loc2_ in param1)
         {
            if(_loc2_.indexOf("chars") == 0)
            {
               _loc3_ = param1[_loc2_];
               for(_loc4_ in _loc3_)
               {
                  _loc5_ = _loc3_[_loc4_];
                  (_loc6_ = new §_-Iz§()).mName = String.fromCharCode(_loc5_.code);
                  _loc6_.§_-8I§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                  _loc6_.§_-ui§ = _loc5_.width / 2;
                  _loc6_.§_-np§ = _loc5_.baseline;
                  _loc6_.§_-Ya§ = §_-uJ§;
                  §_-K-§(_loc6_);
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
