package §?$9§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §6§ extends §7"H§
   {
      
      public static var §?!O§:Boolean = false;
       
      
      public function §6§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§6$!§(param1);
      }
      
      protected function §6$!§(param1:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§3#z§ = null;
         var _loc2_:Boolean = false;
         if(§?!O§)
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
               (_loc6_ = new §3#z§()).name = _loc5_.id;
               _loc5_.width = Math.round(_loc5_.width / _loc3_);
               _loc5_.height = Math.round(_loc5_.height / _loc3_);
               _loc5_.x = Math.round(_loc5_.x / _loc3_);
               _loc5_.y = Math.round(_loc5_.y / _loc3_);
               _loc6_.rect = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
               §7#S§(_loc6_,§`"X§.width,§`"X§.height);
               if(_loc2_)
               {
                  _loc6_.pivotX = _loc5_.pivotx / _loc3_;
                  _loc6_.pivotY = _loc5_.pivoty / _loc3_;
               }
               else
               {
                  _loc6_.pivotX = _loc5_.width / 2;
                  _loc6_.pivotY = _loc5_.height / 2;
               }
               _loc6_.§2"1§ = §`"X§;
               _loc6_.§6!I§ = _loc3_;
               §!r§(_loc6_);
            }
            else if(_loc4_ == "image")
            {
               §;!p§ = param1[_loc4_];
            }
         }
      }
   }
}
