package §0!_§
{
   import §`!B§.§ l§;
   import §`!B§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §%;§
   {
      
      private static const § !"§:String = "compositeSprite";
      
      private static const §5!N§:String = "group";
      
      private static const §2!V§:String = "sprite";
      
      private static var §-b§:Dictionary = new Dictionary();
       
      
      public function §%;§()
      {
         super();
      }
      
      public static function §3!I§(param1:XML) : void
      {
         var _loc4_:XML = null;
         var _loc2_:XMLList = param1.child(§ !"§);
         §+!X§(_loc2_);
         var _loc3_:XMLList = param1.child(§5!N§);
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = _loc4_.child(§ !"§);
            §+!X§(_loc2_);
         }
      }
      
      protected static function §+!X§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            §-b§[String(_loc2_.@name)] = _loc2_;
         }
      }
      
      public static function §^!M§(param1:String) : Boolean
      {
         return §-b§[param1] != null;
      }
      
      public static function §7"2§(param1:String, param2:§!!G§, param3:Boolean = true) : §`!B§.Sprite
      {
         return § !-§(param1,param2,null,param3);
      }
      
      public static function § !-§(param1:String, param2:§!!G§, param3:§`!B§.Sprite, param4:Boolean = true) : §`!B§.Sprite
      {
         var _loc7_:§ l§ = null;
         var _loc10_:XML = null;
         var _loc11_:§19§ = null;
         if(!param3)
         {
            param3 = new §`!B§.Sprite();
         }
         var _loc5_:XML;
         if(!(_loc5_ = §-b§[param1]))
         {
            return null;
         }
         var _loc6_:int = 0;
         var _loc8_:XMLList;
         var _loc9_:int = (_loc8_ = _loc5_.child(§2!V§)).length() - 1;
         while(_loc9_ >= 0)
         {
            _loc10_ = _loc8_[_loc9_];
            if(_loc11_ = param2.§<!z§(_loc10_.@name))
            {
               if(_loc6_ >= param3.numChildren)
               {
                  _loc7_ = new § l§(_loc11_.texture,false,param4);
                  param3.addChild(_loc7_);
               }
               else
               {
                  (_loc7_ = param3.getChildAt(_loc6_) as § l§).texture = _loc11_.texture;
               }
               _loc7_.x = parseInt(_loc10_.@x) - _loc11_.pivotX;
               _loc7_.y = parseInt(_loc10_.@y) - _loc11_.pivotY;
               _loc7_.scaleX = _loc11_.scale;
               _loc7_.scaleY = _loc11_.scale;
               _loc7_.name = _loc10_.@tag;
               _loc6_++;
            }
            _loc9_--;
         }
         while(param3.numChildren > _loc6_)
         {
            param3.removeChildAt(_loc6_,true);
         }
         return param3;
      }
      
      public static function §8z§(param1:String, param2:§!!G§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§19§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §-b§[param1]).child(§2!V§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§<!z§(_loc6_.@name))
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
