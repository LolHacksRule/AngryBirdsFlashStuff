package §'k§
{
   import §9W§.§6!0§;
   import §9W§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §<f§
   {
      
      private static const §9f§:String = "compositeSprite";
      
      private static const §3,§:String = "sprite";
      
      private static var §#I§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9f§ = "compositeSprite";
            if(!_loc1_)
            {
               §3,§ = "sprite";
               if(_loc2_)
               {
                  §#I§ = new Dictionary();
               }
            }
         }
      }
      
      public function §<f§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §-h§(param1:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§9f§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc6_)
            {
               §#I§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §;!2§(param1:String, param2:§ >§, param3:Boolean = true) : §9W§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:XML = null;
         var _loc8_:§2v§ = null;
         var _loc9_:§6!0§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §#I§[param1]))
         {
            if(!_loc12_)
            {
               return null;
            }
         }
         var _loc5_:§9W§.Sprite = new §9W§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§3,§);
         for each(_loc7_ in _loc6_)
         {
            if(_loc8_ = param2.§8!<§(_loc7_.@name))
            {
               _loc9_ = new §6!0§(_loc8_.texture,false,param3);
               if(_loc13_)
               {
                  _loc5_.addChildAt(_loc9_,0);
               }
               _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
               if(!_loc12_)
               {
                  _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                  if(_loc12_)
                  {
                     continue;
                  }
               }
               _loc9_.scaleX = _loc8_.scale;
               _loc9_.scaleY = _loc8_.scale;
               _loc9_.name = _loc7_.@tag;
            }
         }
         return _loc5_;
      }
      
      public static function §+Q§(param1:String, param2:§ >§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§2v§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §#I§[param1]).child(§3,§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§8!<§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(_loc11_)
               {
                  _loc3_.addChildAt(_loc8_,0);
                  if(_loc12_ && param1)
                  {
                     continue;
                  }
               }
               _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
               if(_loc11_ || param2)
               {
                  _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                  if(!(_loc12_ && param2))
                  {
                     _loc8_.smoothing = true;
                  }
               }
            }
         }
         return _loc3_;
      }
   }
}
