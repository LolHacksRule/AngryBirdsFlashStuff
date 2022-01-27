package §>k§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §#0§ extends §`z§
   {
      
      public static var dynamic:Boolean = false;
       
      
      public function §#0§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§ C§(param1);
      }
      
      private static function §if §(param1:§`-§, param2:int, param3:int) : void
      {
         if(param1.§@n§.top < 0)
         {
            param1.§@n§.top = 0;
         }
         if(param1.§@n§.left < 0)
         {
            param1.§@n§.left = 0;
         }
         if(param1.§@n§.bottom > param3)
         {
            param1.§@n§.bottom = param3;
         }
         if(param1.§@n§.right > param2)
         {
            param1.§@n§.right = param2;
         }
      }
      
      protected function § C§(param1:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§`-§ = null;
         var _loc2_:Boolean = false;
         if(dynamic)
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
               (_loc6_ = new §`-§()).mName = _loc5_.id;
               _loc5_.width = Math.round(_loc5_.width / _loc3_);
               _loc5_.height = Math.round(_loc5_.height / _loc3_);
               _loc5_.x = Math.round(_loc5_.x / _loc3_);
               _loc5_.y = Math.round(_loc5_.y / _loc3_);
               _loc6_.§@n§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
               §if §(_loc6_,§while§.width,§while§.height);
               if(_loc2_)
               {
                  _loc6_.§!!J§ = _loc5_.pivotx / _loc3_;
                  _loc6_.§[R§ = _loc5_.pivoty / _loc3_;
               }
               else
               {
                  _loc6_.§!!J§ = _loc5_.width / 2;
                  _loc6_.§[R§ = _loc5_.height / 2;
               }
               _loc6_.§<c§ = §while§;
               §8!=§(_loc6_);
            }
            else if(_loc4_ == "image")
            {
               mName = param1[_loc4_];
            }
         }
      }
   }
}
