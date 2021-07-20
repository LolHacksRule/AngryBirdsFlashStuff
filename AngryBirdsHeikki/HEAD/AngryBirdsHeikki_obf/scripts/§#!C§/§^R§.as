package §#!C§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §^R§ extends §=_§
   {
      
      public static var §?!7§:Boolean = false;
       
      
      public function §^R§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§]y§(param1);
      }
      
      private static function §[!5§(param1:§'!e§, param2:int, param3:int) : void
      {
         if(param1.§?![§.top < 0)
         {
            param1.§?![§.top = 0;
         }
         if(param1.§?![§.left < 0)
         {
            param1.§?![§.left = 0;
         }
         if(param1.§?![§.bottom > param3)
         {
            param1.§?![§.bottom = param3;
         }
         if(param1.§?![§.right > param2)
         {
            param1.§?![§.right = param2;
         }
      }
      
      protected function §]y§(param1:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§'!e§ = null;
         var _loc2_:Boolean = false;
         if(§?!7§)
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
               (_loc6_ = new §'!e§()).mName = _loc5_.id;
               _loc5_.width = Math.round(_loc5_.width / _loc3_);
               _loc5_.height = Math.round(_loc5_.height / _loc3_);
               _loc5_.x = Math.round(_loc5_.x / _loc3_);
               _loc5_.y = Math.round(_loc5_.y / _loc3_);
               _loc6_.§?![§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
               §[!5§(_loc6_,§#5§.width,§#5§.height);
               if(_loc2_)
               {
                  _loc6_.§use§ = _loc5_.pivotx / _loc3_;
                  _loc6_.§?[§ = _loc5_.pivoty / _loc3_;
               }
               else
               {
                  _loc6_.§use§ = _loc5_.width / 2;
                  _loc6_.§?[§ = _loc5_.height / 2;
               }
               _loc6_.§-!<§ = §#5§;
               §5!H§(_loc6_);
            }
            else if(_loc4_ == "image")
            {
               mName = param1[_loc4_];
            }
         }
      }
   }
}
