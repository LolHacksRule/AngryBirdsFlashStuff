package §5`§
{
   import §,_§.§4K§;
   import §,_§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §49§
   {
      
      private static const §'0§:String = "compositeSprite";
      
      private static const §&!D§:String = "sprite";
      
      private static var §1l§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §'0§ = "compositeSprite";
            if(_loc1_ || _loc2_)
            {
               §&!D§ = "sprite";
               if(!(_loc2_ && §49§))
               {
                  §1l§ = new Dictionary();
               }
            }
         }
      }
      
      public function §49§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §1j§(param1:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§'0§);
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc7_ && §49§))
            {
               §1l§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §"4§(param1:String, param2:§?y§, param3:Boolean = true) : §,_§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:XML = null;
         var _loc8_:§%F§ = null;
         var _loc9_:§4K§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §1l§[param1]))
         {
            if(!_loc12_)
            {
               return null;
            }
         }
         var _loc5_:§,_§.Sprite = new §,_§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§&!D§);
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§9,§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §4K§(_loc8_.texture,false,param3);
            if(_loc13_ || param2)
            {
               _loc5_.addChildAt(_loc9_,0);
               if(_loc13_ || §49§)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  if(_loc13_)
                  {
                     addr123:
                     _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                     _loc9_.scaleX = _loc8_.scale;
                     if(!_loc13_)
                     {
                        continue;
                     }
                     _loc9_.scaleY = _loc8_.scale;
                  }
                  _loc9_.name = _loc7_.@tag;
               }
               continue;
            }
            §§goto(addr123);
         }
         return _loc5_;
      }
      
      public static function § ^§(param1:String, param2:§?y§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§%F§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §1l§[param1]).child(§&!D§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§9,§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(!(_loc12_ && _loc3_))
               {
                  _loc3_.addChildAt(_loc8_,0);
                  if(_loc11_)
                  {
                     _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                     if(_loc12_)
                     {
                        continue;
                     }
                  }
               }
               _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
               if(_loc11_ || param2)
               {
                  _loc8_.smoothing = true;
               }
            }
         }
         return _loc3_;
      }
   }
}
