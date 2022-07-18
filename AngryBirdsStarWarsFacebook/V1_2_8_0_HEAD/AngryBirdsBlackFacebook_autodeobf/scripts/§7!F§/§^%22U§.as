package §7!F§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §^"U§
   {
      
      private static const §2§:String = "compositeSprite";
      
      private static const §3!a§:String = "group";
      
      private static const §8H§:String = "sprite";
      
      private static var §5!c§:Dictionary = new Dictionary();
       
      
      public function §^"U§()
      {
         super();
      }
      
      public static function §8B§(param1:XML) : void
      {
         var _loc4_:XML = null;
         var _loc2_:XMLList = param1.child(§2§);
         §!D§(_loc2_);
         var _loc3_:XMLList = param1.child(§3!a§);
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = _loc4_.child(§2§);
            §!D§(_loc2_);
         }
      }
      
      protected static function §!D§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            §5!c§[String(_loc2_.@name)] = _loc2_;
         }
      }
      
      public static function §?Z§(param1:String) : Boolean
      {
         return §5!c§[param1] != null;
      }
      
      public static function §]!6§(param1:String, param2:§7#5§, param3:Boolean = true) : §!!U§.Sprite
      {
         return §&"Z§(param1,param2,null,param3);
      }
      
      public static function §&"Z§(param1:String, param2:§7#5§, param3:§!!U§.Sprite, param4:Boolean = true) : §!!U§.Sprite
      {
         var _loc7_:§#"t§ = null;
         var _loc10_:XML = null;
         var _loc11_:§8!W§ = null;
         if(!param3)
         {
            param3 = new §!!U§.Sprite();
         }
         var _loc5_:XML;
         if(!(_loc5_ = §5!c§[param1]))
         {
            return null;
         }
         var _loc6_:int = 0;
         var _loc8_:XMLList;
         var _loc9_:int = (_loc8_ = _loc5_.child(§8H§)).length() - 1;
         while(_loc9_ >= 0)
         {
            _loc10_ = _loc8_[_loc9_];
            if(_loc11_ = param2.getTexture(_loc10_.@name))
            {
               if(_loc6_ >= param3.numChildren)
               {
                  _loc7_ = new §#"t§(_loc11_.texture,false,param4);
                  param3.addChild(_loc7_);
               }
               else
               {
                  (_loc7_ = param3.getChildAt(_loc6_) as §#"t§).texture = _loc11_.texture;
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
      
      public static function §?!s§(param1:String, param2:§7#5§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§8!W§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §5!c§[param1]).child(§8H§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.getTexture(_loc6_.@name))
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
