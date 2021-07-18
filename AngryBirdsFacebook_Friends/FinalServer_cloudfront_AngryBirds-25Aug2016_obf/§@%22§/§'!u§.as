package §@"§
{
   import §9$§.Image;
   import §9$§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §'!u§
   {
      
      private static const §!! §:String = "compositeSprite";
      
      private static const §1A§:String = "group";
      
      private static const §8"x§:String = "sprite";
      
      private static var §^"I§:Dictionary = new Dictionary();
       
      
      public function §'!u§()
      {
         super();
      }
      
      public static function §6"w§(param1:XML) : void
      {
         null;
         var _loc2_:XMLList = param1.child(§!! §);
         §!#S§(_loc2_);
         var _loc3_:XMLList = param1.child(§1A§);
         var _loc5_:int = 0;
         var _loc6_:* = _loc3_;
         while(§§hasnext(_loc6_,_loc5_))
         {
            §!#S§(_loc2_);
         }
      }
      
      protected static function §!#S§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            §^"I§[String(_loc2_.@name)] = _loc2_;
         }
      }
      
      public static function §1!l§(param1:String) : Boolean
      {
         return §^"I§[param1] != null;
      }
      
      public static function §9#^§(param1:String, param2:§&!=§, param3:Boolean = true) : §9$§.Sprite
      {
         return §4"h§(param1,param2,null,param3);
      }
      
      public static function §4"h§(param1:String, param2:§&!=§, param3:§9$§.Sprite, param4:Boolean = true) : §9$§.Sprite
      {
         var _loc7_:Image = null;
         var _loc10_:XML = null;
         var _loc11_:§+!3§ = null;
         if(!param3)
         {
            param3 = new §9$§.Sprite();
         }
         var _loc5_:XML;
         if(!(_loc5_ = §^"I§[param1]))
         {
            return null;
         }
         var _loc6_:int = 0;
         var _loc8_:XMLList;
         var _loc9_:int = (_loc8_ = _loc5_.child(§8"x§)).length() - 1;
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
      
      public static function §>!i§(param1:String, param2:§&!=§) : flash.display.Sprite
      {
         var _loc6_:XML = null;
         var _loc7_:§+!3§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc5_:XMLList = §^"I§[param1].child(§8"x§);
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
