package §;$<§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §^#O§ extends §%#w§
   {
       
      
      public function §^#O§(param1:Object, param2:BitmapData)
      {
         super(param2);
         var _loc3_:Object = param1.spriteSheets[0];
         this.§]^§(_loc3_);
      }
      
      protected function §]^§(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:§^9§ = null;
         §!I§ = param1.meta.image;
         var _loc2_:Array = param1.frames;
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = _loc3_.frame.w;
            _loc5_ = _loc3_.frame.h;
            _loc6_ = _loc3_.frame.x;
            _loc7_ = _loc3_.frame.y;
            _loc8_ = _loc3_.pivot.x;
            _loc9_ = _loc3_.pivot.y;
            (_loc10_ = new §^9§()).name = _loc3_.filename;
            _loc10_.rect = new Rectangle(_loc6_,_loc7_,_loc4_,_loc5_);
            _loc10_.pivotX = _loc8_;
            _loc10_.pivotY = _loc9_;
            _loc10_.§<!6§ = §"#"§;
            _loc10_.§'"3§ = 1;
            §?#a§(_loc10_,§"#"§.width,§"#"§.height);
            § !`§(_loc10_);
         }
      }
   }
}
