package §6w§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class FontSheetJSONGGS extends SpriteSheetBase
   {
       
      
      public function FontSheetJSONGGS(param1:Object, param2:BitmapData)
      {
         super(param2);
         this.§5!Q§(param1);
      }
      
      protected function §5!Q§(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§<>§ = null;
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
                  _loc6_ = _loc4_[_loc5_];
                  _loc6_.width = Math.round(_loc6_.width / _loc2_);
                  _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                  _loc6_.x = Math.round(_loc6_.x / _loc2_);
                  _loc6_.y = Math.round(_loc6_.y / _loc2_);
                  _loc7_ = new §<>§();
                  _loc7_.mName = String.fromCharCode(_loc6_.code);
                  _loc7_.§'?§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                  _loc7_.§1l§ = _loc6_.width / 2;
                  _loc7_.§%!N§ = _loc6_.baseline;
                  _loc7_.§!c§ = §+#§;
                  §0!L§(_loc7_);
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
