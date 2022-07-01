package §&"5§
{
   import §default§.§=!Z§;
   import §default§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §4!h§
   {
      
      private static const §&!o§:String = "compositeSprite";
      
      private static const §"@§:String = "sprite";
      
      private static var §'"!§:Dictionary = new Dictionary();
       
      
      public function §4!h§()
      {
         super();
      }
      
      public static function §!"4§(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§&!o§);
         for each(_loc3_ in _loc2_)
         {
            §'"!§[String(_loc3_.@name)] = _loc3_;
         }
      }
      
      public static function §4!t§(param1:String, param2:§7!P§, param3:Boolean = true) : §default§.Sprite
      {
         var _loc7_:XML = null;
         var _loc8_:§6!L§ = null;
         var _loc9_:§=!Z§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §'"!§[param1]))
         {
            return null;
         }
         var _loc5_:§default§.Sprite = new §default§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§"@§);
         for each(_loc7_ in _loc6_)
         {
            if(_loc8_ = param2.§12§(_loc7_.@name))
            {
               _loc9_ = new §=!Z§(_loc8_.texture,false,param3);
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
      
      public static function § !r§(param1:String, param2:§7!P§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§6!L§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §'"!§[param1]).child(§"@§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§12§(_loc6_.@name))
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
