package §,!7§
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class CompositeSpriteParser
   {
      
      private static const §7!a§:String = "compositeSprite";
      
      private static const §1!N§:String = "sprite";
      
      private static var §?c§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §7!a§ = "compositeSprite";
            while(true)
            {
               §1!N§ = "sprite";
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §?c§ = new Dictionary();
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function CompositeSpriteParser()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §<!§(param1:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§7!a§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc6_)
            {
               §?c§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §]P§(param1:String, param2:TextureManager, param3:Boolean = true) : §#!,§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:XML = null;
         var _loc8_:§ H§ = null;
         var _loc9_:§0!b§ = null;
         var _loc4_:XML = §?c§[param1];
         if(!(_loc12_ && CompositeSpriteParser))
         {
            if(!_loc4_)
            {
               if(_loc13_ || param3)
               {
                  §§goto(addr49);
               }
            }
            var _loc5_:§#!,§.Sprite = new §#!,§.Sprite();
            var _loc6_:XMLList = _loc4_.child(§1!N§);
            for each(_loc7_ in _loc6_)
            {
               _loc8_ = param2.§]w§(_loc7_.@name);
               if(_loc13_ || param2)
               {
                  if(!_loc8_)
                  {
                     continue;
                  }
               }
               _loc9_ = new §0!b§(_loc8_.texture,false,param3);
               if(!_loc12_)
               {
                  _loc5_.addChildAt(_loc9_,0);
               }
               while(true)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  loop2:
                  while(true)
                  {
                     _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                     while(true)
                     {
                        _loc9_.scaleX = _loc8_.scale;
                        addr139:
                        while(!(_loc12_ && CompositeSpriteParser))
                        {
                           continue loop2;
                        }
                     }
                  }
                  if(!(_loc13_ || param3))
                  {
                     continue;
                  }
                  _loc9_.name = _loc7_.@tag;
                  if(!_loc12_)
                  {
                     §§goto(addr117);
                  }
                  §§goto(addr124);
               }
            }
            return _loc5_;
         }
         addr49:
         return null;
      }
      
      public static function §3k§(param1:String, param2:TextureManager) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§ H§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML = §?c§[param1];
         var _loc5_:XMLList = _loc4_.child(§1!N§);
         for each(_loc6_ in _loc5_)
         {
            _loc7_ = param2.§]w§(_loc6_.@name);
            if(!_loc12_)
            {
               if(!_loc7_)
               {
                  continue;
               }
            }
            _loc8_ = new Bitmap(_loc7_.bitmapData);
            if(_loc11_)
            {
               _loc3_.addChildAt(_loc8_,0);
               loop1:
               while(true)
               {
                  _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                  loop2:
                  while(true)
                  {
                     addr98:
                     while(true)
                     {
                        _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr98);
            }
         }
         return _loc3_;
      }
   }
}
