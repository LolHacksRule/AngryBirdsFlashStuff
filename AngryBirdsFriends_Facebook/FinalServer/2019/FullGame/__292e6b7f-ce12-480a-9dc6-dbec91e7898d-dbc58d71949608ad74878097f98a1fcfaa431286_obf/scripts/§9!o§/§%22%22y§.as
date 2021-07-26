package §9!o§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §""y§ extends §;"v§
   {
       
      
      public function §""y§(param1:Object, param2:BitmapData)
      {
         super(param2);
         §&$"§ = param1.meta.image;
         this.§-"P§(param1.frames);
      }
      
      protected function §-"P§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§6Z§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.frame.w;
            _loc4_ = _loc2_.frame.h;
            _loc5_ = _loc2_.frame.x;
            _loc6_ = _loc2_.frame.y;
            _loc7_ = _loc2_.pivot.x;
            _loc8_ = _loc2_.pivot.y;
            (_loc9_ = new §6Z§()).name = _loc2_.filename;
            _loc9_.rect = new Rectangle(_loc5_,_loc6_,_loc3_,_loc4_);
            _loc9_.pivotX = _loc7_;
            _loc9_.pivotY = _loc8_;
            _loc9_.§2"D§ = §9B§;
            _loc9_.§3#y§ = 1;
            §-#8§(_loc9_,§9B§.width,§9B§.height);
            §!I§(_loc9_);
         }
      }
   }
}
