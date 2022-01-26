package §_-Bp§
{
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §_-Mn§
   {
      
      private static const §_-CV§:String = "compositeSprite";
      
      private static const §_-XC§:String = "sprite";
      
      private static var §_-SZ§:Dictionary = new Dictionary();
       
      
      public function §_-Mn§()
      {
         super();
      }
      
      public static function §_-F1§(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§_-CV§);
         for each(_loc3_ in _loc2_)
         {
            §_-SZ§[String(_loc3_.@name)] = _loc3_;
         }
      }
      
      public static function §_-HG§(param1:String, param2:§_-5N§) : §_-vO§.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§_-9c§ = null;
         var _loc8_:§_-OW§ = null;
         var _loc3_:XML = §_-SZ§[param1];
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:§_-vO§.Sprite = new §_-vO§.Sprite();
         var _loc5_:XMLList = _loc3_.child(§_-XC§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§switch§(_loc6_.@name))
            {
               _loc8_ = new §_-OW§(_loc7_.texture);
               _loc4_.addChildAt(_loc8_,0);
               _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
               _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
               _loc8_.name = _loc6_.@tag;
            }
         }
         return _loc4_;
      }
      
      public static function §_-5f§(param1:String, param2:§_-5N§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§_-9c§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §_-SZ§[param1]).child(§_-XC§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§switch§(_loc6_.@name))
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
