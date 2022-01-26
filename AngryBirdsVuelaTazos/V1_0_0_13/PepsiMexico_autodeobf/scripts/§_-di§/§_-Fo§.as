package §_-di§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-Fo§ extends §_-XM§
   {
       
      
      public function §_-Fo§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§_-Uf§(param1);
      }
      
      protected function §_-Uf§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§_-hc§ = null;
         for(_loc2_ in param1)
         {
            if(_loc2_.indexOf("chars") == 0)
            {
               _loc3_ = param1[_loc2_];
               for(_loc4_ in _loc3_)
               {
                  _loc5_ = _loc3_[_loc4_];
                  (_loc6_ = new §_-hc§()).mName = String.fromCharCode(_loc5_.code);
                  _loc6_.§_-WP§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                  _loc6_.§_-u1§ = _loc5_.width / 2;
                  _loc6_.§_-su§ = _loc5_.baseline;
                  _loc6_.§_-KL§ = §_-At§;
                  §_-Zg§(_loc6_);
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
