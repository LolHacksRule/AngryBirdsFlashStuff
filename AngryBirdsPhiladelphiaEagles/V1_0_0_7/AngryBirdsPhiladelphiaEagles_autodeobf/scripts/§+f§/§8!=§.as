package §+f§
{
   import §4G§.Sprite;
   import §4G§.§`l§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §8!=§
   {
      
      private static const §2<§:String = "compositeSprite";
      
      private static const §9!A§:String = "sprite";
      
      private static var §^!H§:Dictionary = new Dictionary();
       
      
      public function §8!=§()
      {
         super();
      }
      
      public static function §%!,§(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§2<§);
         for each(_loc3_ in _loc2_)
         {
            §^!H§[String(_loc3_.@name)] = _loc3_;
         }
      }
      
      public static function §"!2§(param1:String, param2:§4!8§, param3:Boolean = true) : §4G§.Sprite
      {
         var _loc7_:XML = null;
         var _loc8_:§=3§ = null;
         var _loc9_:§`l§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §^!H§[param1]))
         {
            return null;
         }
         var _loc5_:§4G§.Sprite = new §4G§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§9!A§);
         for each(_loc7_ in _loc6_)
         {
            if(_loc8_ = param2.§=&§(_loc7_.@name))
            {
               _loc9_ = new §`l§(_loc8_.texture,false,param3);
               _loc5_.addChildAt(_loc9_,0);
               _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
               _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
               _loc9_.scaleX = _loc8_.scale;
               _loc9_.scaleY = _loc8_.scale;
               _loc9_.name = _loc7_.@tag;
            }
         }
         return _loc5_;
      }
      
      public static function §%!#§(param1:String, param2:§4!8§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§=3§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §^!H§[param1]).child(§9!A§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§=&§(_loc6_.@name))
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
