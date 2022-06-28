package §?2§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §5!Z§ extends §]!'§
   {
      
      public static var §<`§:Boolean = false;
       
      
      public function §5!Z§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§`K§(param1);
      }
      
      private static function §,;§(param1:§=!L§, param2:int, param3:int) : void
      {
         if(param1.§43§.top < 0)
         {
            param1.§43§.top = 0;
         }
         if(param1.§43§.left < 0)
         {
            param1.§43§.left = 0;
         }
         if(param1.§43§.bottom > param3)
         {
            param1.§43§.bottom = param3;
         }
         if(param1.§43§.right > param2)
         {
            param1.§43§.right = param2;
         }
      }
      
      protected function §`K§(param1:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§=!L§ = null;
         var _loc2_:Boolean = false;
         if(§<`§)
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
               (_loc6_ = new §=!L§()).mName = _loc5_.id;
               _loc5_.width = Math.round(_loc5_.width / _loc3_);
               _loc5_.height = Math.round(_loc5_.height / _loc3_);
               _loc5_.x = Math.round(_loc5_.x / _loc3_);
               _loc5_.y = Math.round(_loc5_.y / _loc3_);
               _loc6_.§43§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
               §,;§(_loc6_,§#n§.width,§#n§.height);
               if(_loc2_)
               {
                  _loc6_.§if § = _loc5_.pivotx / _loc3_;
                  _loc6_.§2w§ = _loc5_.pivoty / _loc3_;
               }
               else
               {
                  _loc6_.§if § = _loc5_.width / 2;
                  _loc6_.§2w§ = _loc5_.height / 2;
               }
               _loc6_.§^!d§ = §#n§;
               §6!P§(_loc6_);
            }
            else if(_loc4_ == "image")
            {
               mName = param1[_loc4_];
            }
         }
      }
   }
}
