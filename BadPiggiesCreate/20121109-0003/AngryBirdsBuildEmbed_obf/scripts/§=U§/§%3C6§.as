package §=U§
{
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §<6§
   {
      
      private static const §@!^§:String = "compositeSprite";
      
      private static const §?#§:String = "sprite";
      
      private static var §4!§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@!^§ = "compositeSprite";
            if(!(_loc2_ && §<6§))
            {
               addr38:
               §?#§ = "sprite";
               if(!_loc2_)
               {
                  §4!§ = new Dictionary();
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §<6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §1![§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§@!^§);
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc6_ && _loc2_))
            {
               §4!§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §&2§(param1:String, param2:§3p§, param3:Boolean = true) : §-!`§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:XML = null;
         var _loc8_:§>?§ = null;
         var _loc9_:§7!J§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §4!§[param1]))
         {
            if(_loc13_)
            {
               return null;
            }
         }
         var _loc5_:§-!`§.Sprite = new §-!`§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§?#§);
         for each(_loc7_ in _loc6_)
         {
            if(_loc8_ = param2.§8!@§(_loc7_.@name))
            {
               _loc9_ = new §7!J§(_loc8_.texture,false,param3);
               _loc5_.addChildAt(_loc9_,0);
               if(_loc13_ || param1)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
               }
               _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
               _loc9_.scaleX = _loc8_.scale;
               if(!(_loc12_ && param1))
               {
                  _loc9_.scaleY = _loc8_.scale;
                  if(!_loc13_)
                  {
                     continue;
                  }
               }
               _loc9_.name = _loc7_.@tag;
            }
         }
         return _loc5_;
      }
      
      public static function §>!>§(param1:String, param2:§3p§) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§>?§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §4!§[param1]).child(§?#§);
         for each(_loc6_ in _loc5_)
         {
            if(!(_loc7_ = param2.§8!@§(_loc6_.@name)))
            {
               continue;
            }
            _loc8_ = new Bitmap(_loc7_.bitmapData);
            if(!(_loc11_ && §<6§))
            {
               _loc3_.addChildAt(_loc8_,0);
               if(!_loc11_)
               {
                  _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                  addr89:
                  if(!_loc12_)
                  {
                     continue;
                  }
               }
               _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
               if(_loc12_)
               {
                  _loc8_.smoothing = true;
               }
               continue;
            }
            §§goto(addr89);
         }
         return _loc3_;
      }
   }
}
