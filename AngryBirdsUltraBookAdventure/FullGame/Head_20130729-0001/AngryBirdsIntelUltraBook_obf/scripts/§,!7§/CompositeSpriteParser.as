package §,!7§
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class CompositeSpriteParser
   {
      
      private static const §7!a§:String = "compositeSprite";
      
      private static const §1!N§:String = "sprite";
      
      private static var §?c§:Dictionary = new Dictionary();
       
      
      public function CompositeSpriteParser()
      {
         super();
      }
      
      public static function §<!§(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§7!a§);
         for each(_loc3_ in _loc2_)
         {
            §?c§[String(_loc3_.@name)] = _loc3_;
         }
      }
      
      public static function §]P§(param1:String, param2:TextureManager, param3:Boolean = true) : §#!,§.Sprite
      {
         var _loc7_:XML = null;
         var _loc8_:§ H§ = null;
         var _loc9_:§0!b§ = null;
         var _loc4_:XML = §?c§[param1];
         if(!_loc4_)
         {
            return null;
         }
         var _loc5_:§#!,§.Sprite = new §#!,§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§1!N§);
         for each(_loc7_ in _loc6_)
         {
            _loc8_ = param2.§]w§(_loc7_.@name);
            if(_loc8_)
            {
               _loc9_ = new §0!b§(_loc8_.texture,false,param3);
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
      
      public static function §3k§(param1:String, param2:TextureManager) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§ H§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML = §?c§[param1];
         var _loc5_:XMLList = _loc4_.child(§1!N§);
         for each(_loc6_ in _loc5_)
         {
            _loc7_ = param2.§]w§(_loc6_.@name);
            if(_loc7_)
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
