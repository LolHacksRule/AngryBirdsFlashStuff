package §!!,§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §^! § extends §%W§
   {
      
      public static var §^!k§:Boolean = false;
       
      
      public function §^! §(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§;w§(param1);
      }
      
      private static function §%"$§(param1:§5W§, param2:int, param3:int) : void
      {
         if(param1.§`!e§.top < 0)
         {
            param1.§`!e§.top = 0;
         }
         if(param1.§`!e§.left < 0)
         {
            param1.§`!e§.left = 0;
         }
         if(param1.§`!e§.bottom > param3)
         {
            param1.§`!e§.bottom = param3;
         }
         if(param1.§`!e§.right > param2)
         {
            param1.§`!e§.right = param2;
         }
      }
      
      protected function §;w§(param1:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§5W§ = null;
         var _loc2_:Boolean = false;
         if(§^!k§)
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
               (_loc6_ = new §5W§()).mName = _loc5_.id;
               _loc5_.width = Math.round(_loc5_.width / _loc3_);
               _loc5_.height = Math.round(_loc5_.height / _loc3_);
               _loc5_.x = Math.round(_loc5_.x / _loc3_);
               _loc5_.y = Math.round(_loc5_.y / _loc3_);
               _loc6_.§`!e§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
               §%"$§(_loc6_,§[!f§.width,§[!f§.height);
               if(_loc2_)
               {
                  _loc6_.§-d§ = _loc5_.pivotx / _loc3_;
                  _loc6_.§^#§ = _loc5_.pivoty / _loc3_;
               }
               else
               {
                  _loc6_.§-d§ = _loc5_.width / 2;
                  _loc6_.§^#§ = _loc5_.height / 2;
               }
               _loc6_.§"!I§ = §[!f§;
               §5!Z§(_loc6_);
            }
            else if(_loc4_ == "image")
            {
               mName = param1[_loc4_];
            }
         }
      }
   }
}
