package §_-KS§
{
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §_-n-§
   {
      
      private static const §catch§:String = "compositeSprite";
      
      private static const §_-mh§:String = "sprite";
      
      private static var §_-6v§:Dictionary = new Dictionary();
       
      
      public function §_-n-§()
      {
         super();
      }
      
      public static function §_-Wj§(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§catch§);
         for each(_loc3_ in _loc2_)
         {
            §_-6v§[String(_loc3_.@name)] = _loc3_;
         }
      }
      
      public static function get(param1:String, param2:§_-ia§) : §_-se§.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§_-Wt§ = null;
         var _loc8_:§_-N§ = null;
         var _loc3_:XML = §_-6v§[param1];
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:§_-se§.Sprite = new §_-se§.Sprite();
         var _loc5_:XMLList = _loc3_.child(§_-mh§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§_-es§(_loc6_.@name))
            {
               _loc8_ = new §_-N§(_loc7_.texture);
               _loc4_.addChildAt(_loc8_,0);
               _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
               _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
               _loc8_.name = _loc6_.@tag;
            }
         }
         return _loc4_;
      }
      
      public static function §_-8i§(param1:String, param2:§_-ia§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§_-Wt§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §_-6v§[param1]).child(§_-mh§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§_-es§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               _loc3_.addChildAt(_loc8_,0);
               _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
               _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
               _loc8_.smoothing = true;
            }
         }
         return _loc3_;
      }
   }
}
