package §_-1P§
{
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §_-Wm§
   {
      
      private static const §_-oZ§:String = "compositeSprite";
      
      private static const §_-3k§:String = "sprite";
      
      private static var §_-2d§:Dictionary = new Dictionary();
       
      
      public function §_-Wm§()
      {
         super();
      }
      
      public static function §_-mf§(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§_-oZ§);
         for each(_loc3_ in _loc2_)
         {
            §_-2d§[String(_loc3_.@name)] = _loc3_;
         }
      }
      
      public static function §_-fk§(param1:String, param2:§_-3p§) : §_-pF§.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§_-XN§ = null;
         var _loc8_:§_-gY§ = null;
         var _loc3_:XML = §_-2d§[param1];
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:§_-pF§.Sprite = new §_-pF§.Sprite();
         var _loc5_:XMLList = _loc3_.child(§_-3k§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§_-wz§(_loc6_.@name))
            {
               _loc8_ = new §_-gY§(_loc7_.texture);
               _loc4_.addChildAt(_loc8_,0);
               _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
               _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
               _loc8_.name = _loc6_.@tag;
            }
         }
         return _loc4_;
      }
      
      public static function §_-KT§(param1:String, param2:§_-3p§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§_-XN§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §_-2d§[param1]).child(§_-3k§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§_-wz§(_loc6_.@name))
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
