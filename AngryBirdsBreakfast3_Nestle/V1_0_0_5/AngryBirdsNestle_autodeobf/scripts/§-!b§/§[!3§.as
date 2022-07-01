package §-!b§
{
   import §,!q§.§+Q§;
   import §,!q§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §[!3§
   {
      
      private static const §&!p§:String = "compositeSprite";
      
      private static const §%!K§:String = "group";
      
      private static const §>"!§:String = "sprite";
      
      private static var §;C§:Dictionary = new Dictionary();
       
      
      public function §[!3§()
      {
         super();
      }
      
      public static function §4!v§(param1:XML) : void
      {
         var _loc4_:XML = null;
         var _loc2_:XMLList = param1.child(§&!p§);
         §?!?§(_loc2_);
         var _loc3_:XMLList = param1.child(§%!K§);
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = _loc4_.child(§&!p§);
            §?!?§(_loc2_);
         }
      }
      
      protected static function §?!?§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            §;C§[String(_loc2_.@name)] = _loc2_;
         }
      }
      
      public static function §&!6§(param1:String) : Boolean
      {
         return §;C§[param1] != null;
      }
      
      public static function §9!w§(param1:String, param2:§[E§, param3:Boolean = true) : §,!q§.Sprite
      {
         return §^k§(param1,param2,null,param3);
      }
      
      public static function §^k§(param1:String, param2:§[E§, param3:§,!q§.Sprite, param4:Boolean = true) : §,!q§.Sprite
      {
         var _loc7_:§+Q§ = null;
         var _loc10_:XML = null;
         var _loc11_:§=!T§ = null;
         if(!param3)
         {
            param3 = new §,!q§.Sprite();
         }
         var _loc5_:XML;
         if(!(_loc5_ = §;C§[param1]))
         {
            return null;
         }
         var _loc6_:int = 0;
         var _loc8_:XMLList;
         var _loc9_:int = (_loc8_ = _loc5_.child(§>"!§)).length() - 1;
         while(_loc9_ >= 0)
         {
            _loc10_ = _loc8_[_loc9_];
            if(_loc11_ = param2.§^"§(_loc10_.@name))
            {
               if(_loc6_ >= param3.numChildren)
               {
                  _loc7_ = new §+Q§(_loc11_.texture,false,param4);
                  param3.addChild(_loc7_);
               }
               else
               {
                  (_loc7_ = param3.getChildAt(_loc6_) as §+Q§).texture = _loc11_.texture;
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
      
      public static function §,!7§(param1:String, param2:§[E§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§=!T§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §;C§[param1]).child(§>"!§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§^"§(_loc6_.@name))
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
