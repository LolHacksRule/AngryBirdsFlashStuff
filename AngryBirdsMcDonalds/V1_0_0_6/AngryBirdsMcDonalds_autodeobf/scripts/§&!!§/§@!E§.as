package §&!!§
{
   import §2![§.Sprite;
   import §2![§.§[!U§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §@!E§
   {
      
      private static const §,H§:String = "compositeSprite";
      
      private static const §;!U§:String = "sprite";
      
      private static var §8u§:Dictionary = new Dictionary();
       
      
      public function §@!E§()
      {
         super();
      }
      
      public static function §3M§(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§,H§);
         for each(_loc3_ in _loc2_)
         {
            §8u§[String(_loc3_.@name)] = _loc3_;
         }
      }
      
      public static function §6!o§(param1:String, param2:§<!'§, param3:Boolean = true) : §2![§.Sprite
      {
         var _loc7_:XML = null;
         var _loc8_:§7N§ = null;
         var _loc9_:§[!U§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §8u§[param1]))
         {
            return null;
         }
         var _loc5_:§2![§.Sprite = new §2![§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§;!U§);
         for each(_loc7_ in _loc6_)
         {
            if(_loc8_ = param2.§^!C§(_loc7_.@name))
            {
               _loc9_ = new §[!U§(_loc8_.texture,false,param3);
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
      
      public static function §]!`§(param1:String, param2:§<!'§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§7N§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §8u§[param1]).child(§;!U§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§^!C§(_loc6_.@name))
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
