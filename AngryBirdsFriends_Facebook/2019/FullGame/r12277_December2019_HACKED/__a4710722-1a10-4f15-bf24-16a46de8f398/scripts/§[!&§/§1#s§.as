package §[!&§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §1#s§ extends §`#D§
   {
       
      
      public function §1#s§(param1:Object, param2:BitmapData)
      {
         super(param2);
         §-#3§ = param1.meta.image;
         this.§^!Q§(param1.frames);
      }
      
      protected function §^!Q§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§""B§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.frame.w;
            _loc4_ = _loc2_.frame.h;
            _loc5_ = _loc2_.frame.x;
            _loc6_ = _loc2_.frame.y;
            _loc7_ = _loc2_.pivot.x;
            _loc8_ = _loc2_.pivot.y;
            (_loc9_ = new §""B§()).name = _loc2_.filename;
            _loc9_.rect = new Rectangle(_loc5_,_loc6_,_loc3_,_loc4_);
            _loc9_.pivotX = _loc7_;
            _loc9_.pivotY = _loc8_;
            _loc9_.§`$#§ = §&"v§;
            _loc9_.§%#a§ = 1;
            §8"T§(_loc9_,§&"v§.width,§&"v§.height);
            §+!@§(_loc9_);
         }
      }
   }
}
