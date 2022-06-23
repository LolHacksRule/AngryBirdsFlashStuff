package §-!0§
{
   import §?^§.§8!?§;
   import §?^§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §[!-§
   {
      
      private static const §5n§:String = "compositeSprite";
      
      private static const §%E§:String = "sprite";
      
      private static var §[E§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §5n§ = "compositeSprite";
            if(!_loc1_)
            {
               §%E§ = "sprite";
               if(_loc2_)
               {
                  §[E§ = new Dictionary();
               }
            }
         }
      }
      
      public function §[!-§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §"1§(param1:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§5n§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc6_)
            {
               §[E§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §["§(param1:String, param2:§'!3§, param3:Boolean = true) : §?^§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:XML = null;
         var _loc8_:§9X§ = null;
         var _loc9_:§8!?§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §[E§[param1]))
         {
            if(!_loc12_)
            {
               return null;
            }
         }
         var _loc5_:§?^§.Sprite = new §?^§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§%E§);
         for each(_loc7_ in _loc6_)
         {
            if(_loc8_ = param2.§4K§(_loc7_.@name))
            {
               _loc9_ = new §8!?§(_loc8_.texture,false,param3);
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
      
      public static function §;@§(param1:String, param2:§'!3§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§9X§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §[E§[param1]).child(§%E§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§4K§(_loc6_.@name))
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
