package §_-3b§
{
   import §_-SE§.Sprite;
   import §_-SE§.§_-rl§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §_-wg§
   {
      
      private static const §_-pi§:String = "compositeSprite";
      
      private static const §_-js§:String = "sprite";
      
      private static var §_-n0§:Dictionary = new Dictionary();
       
      
      public function §_-wg§()
      {
         super();
      }
      
      public static function §_-ys§(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§_-pi§);
         for each(_loc3_ in _loc2_)
         {
            §_-n0§[String(_loc3_.@name)] = _loc3_;
         }
      }
      
      public static function §_-FV§(param1:String, param2:§_-Og§, param3:Boolean = true) : §_-SE§.Sprite
      {
         var _loc7_:XML = null;
         var _loc8_:§_-Lf§ = null;
         var _loc9_:§_-rl§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §_-n0§[param1]))
         {
            return null;
         }
         var _loc5_:§_-SE§.Sprite = new §_-SE§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§_-js§);
         for each(_loc7_ in _loc6_)
         {
            if(_loc8_ = param2.§_-lH§(_loc7_.@name))
            {
               _loc9_ = new §_-rl§(_loc8_.texture,false,param3);
               _loc5_.addChildAt(_loc9_,0);
               _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
               _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
               _loc9_.name = _loc7_.@tag;
            }
         }
         return _loc5_;
      }
      
      public static function §_-1N§(param1:String, param2:§_-Og§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§_-Lf§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §_-n0§[param1]).child(§_-js§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§_-lH§(_loc6_.@name))
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
