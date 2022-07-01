package §0m§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §=!G§ extends §<p§
   {
       
      
      public function §=!G§(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§`I§(param1);
      }
      
      protected function §`I§(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§`§ = null;
         var _loc2_:Number = 1;
         if(param1.scale)
         {
            _loc2_ = parseFloat(param1.scale);
         }
         this.scale = _loc2_;
         for(_loc3_ in param1)
         {
            if(_loc3_.indexOf("chars") == 0)
            {
               _loc4_ = param1[_loc3_];
               for(_loc5_ in _loc4_)
               {
                  (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                  _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                  _loc6_.x = Math.round(_loc6_.x / _loc2_);
                  _loc6_.y = Math.round(_loc6_.y / _loc2_);
                  (_loc7_ = new §`§()).name = String.fromCharCode(_loc6_.code);
                  _loc7_.rect = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                  _loc7_.pivotX = _loc6_.width / 2;
                  _loc7_.pivotY = _loc6_.baseline;
                  _loc7_.§>!s§ = §?E§;
                  § "$§(_loc7_);
               }
            }
            else if(_loc3_ == "name")
            {
               mName = param1[_loc3_];
            }
         }
      }
   }
}
