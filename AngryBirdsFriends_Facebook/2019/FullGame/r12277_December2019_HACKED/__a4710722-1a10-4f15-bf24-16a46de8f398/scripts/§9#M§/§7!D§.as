package §9#M§
{
   import §#Z§.Image;
   import §#Z§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §7!D§
   {
      
      private static const §+w§:String = "compositeSprite";
      
      private static const §?"F§:String = "group";
      
      private static const §'"k§:String = "sprite";
      
      private static var §3#^§:Dictionary = new Dictionary();
       
      
      public function §7!D§()
      {
         super();
      }
      
      public static function §9"U§(param1:XML) : void
      {
         var _loc2_:XMLList = param1.child(§+w§);
         §9#H§(_loc2_);
         var _loc3_:XMLList = param1.child(§?"F§);
         var _loc5_:int = 0;
         var _loc6_:* = _loc3_;
         while(§§hasnext(_loc6_,_loc5_))
         {
            §9#H§(_loc2_);
         }
      }
      
      protected static function §9#H§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            §3#^§[String(_loc2_.@name)] = _loc2_;
         }
      }
      
      public static function §&"l§(param1:String) : Boolean
      {
         return §3#^§[param1] != null;
      }
      
      public static function §&##§(param1:String, param2:§%"=§, param3:Boolean = true) : §#Z§.Sprite
      {
         return §6"F§(param1,param2,null,param3);
      }
      
      public static function §6"F§(param1:String, param2:§%"=§, param3:§#Z§.Sprite, param4:Boolean = true) : §#Z§.Sprite
      {
         var _loc7_:Image = null;
         var _loc10_:XML = null;
         var _loc11_:§'!-§ = null;
         if(!param3)
         {
            param3 = new §#Z§.Sprite();
         }
         var _loc5_:XML;
         if(!(_loc5_ = §3#^§[param1]))
         {
            return null;
         }
         var _loc6_:int = 0;
         var _loc8_:XMLList;
         var _loc9_:int = (_loc8_ = _loc5_.child(§'"k§)).length() - 1;
         while(_loc9_ >= 0)
         {
            _loc10_ = _loc8_[_loc9_];
            if(_loc11_ = param2.getTexture(_loc10_.@name))
            {
               if(_loc6_ >= param3.numChildren)
               {
                  _loc7_ = new Image(_loc11_.texture,false,param4);
                  param3.addChild(_loc7_);
               }
               else
               {
                  (_loc7_ = param3.getChildAt(_loc6_) as Image).texture = _loc11_.texture;
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
      
      public static function §%#]§(param1:String, param2:§%"=§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§'!-§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc5_:XMLList = §3#^§[param1].child(§'"k§);
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
