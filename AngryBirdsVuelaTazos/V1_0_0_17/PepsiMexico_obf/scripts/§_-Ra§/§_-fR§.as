package §_-Ra§
{
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §_-fR§
   {
      
      private static const §_-Vn§:String = "compositeSprite";
      
      private static const §_-rx§:String = "sprite";
      
      private static var §_-eg§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §_-fR§))
         {
            §_-Vn§ = "compositeSprite";
            if(_loc1_ || §_-fR§)
            {
               §_-rx§ = "sprite";
               if(_loc1_ || §_-fR§)
               {
               }
               §§goto(addr58);
            }
            §_-eg§ = new Dictionary();
         }
         addr58:
      }
      
      public function §_-fR§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §_-ws§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§_-Vn§);
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc6_ && _loc2_))
            {
               §_-eg§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §_-xl§(param1:String, param2:§_-2X§, param3:Boolean = true) : §_-LP§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:XML = null;
         var _loc8_:§_-Vr§ = null;
         var _loc9_:§_-19§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §_-eg§[param1]))
         {
            if(!_loc13_)
            {
               return null;
            }
         }
         var _loc5_:§_-LP§.Sprite = new §_-LP§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§_-rx§);
         for each(_loc7_ in _loc6_)
         {
            if(_loc8_ = param2.§_-ln§(_loc7_.@name))
            {
               _loc9_ = new §_-19§(_loc8_.texture,false,param3);
               if(_loc12_)
               {
                  _loc5_.addChildAt(_loc9_,0);
                  if(!(_loc13_ && param1))
                  {
                     _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                     if(!(_loc12_ || param2))
                     {
                        continue;
                     }
                     _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                     if(_loc13_ && param2)
                     {
                        continue;
                     }
                  }
               }
               _loc9_.name = _loc7_.@tag;
            }
         }
         return _loc5_;
      }
      
      public static function §_-39§(param1:String, param2:§_-2X§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§_-Vr§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §_-eg§[param1]).child(§_-rx§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§_-ln§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(_loc11_ || _loc3_)
               {
                  _loc3_.addChildAt(_loc8_,0);
                  if(_loc12_)
                  {
                     continue;
                  }
               }
               _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
               if(_loc11_ || param1)
               {
                  _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                  if(!(_loc12_ && §_-fR§))
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
