package §6!D§
{
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §9R§
   {
      
      private static const §=!$§:String = "compositeSprite";
      
      private static const §9">§:String = "sprite";
      
      private static var §]!C§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=!$§ = "compositeSprite";
            while(true)
            {
               §9">§ = "sprite";
               while(_loc1_ || _loc2_)
               {
                  §]!C§ = new Dictionary();
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §9R§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §!&§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§=!$§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc7_ || §9R§)
            {
               §]!C§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function § C§(param1:String, param2:§0Y§, param3:Boolean = true) : §1!$§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:XML = null;
         var _loc8_:§3!K§ = null;
         var _loc9_:§0!N§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §]!C§[param1]))
         {
            if(_loc12_)
            {
               return null;
            }
         }
         var _loc5_:§1!$§.Sprite = new §1!$§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§9">§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§>s§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §0!N§(_loc8_.texture,false,param3);
            if(!(_loc13_ && param3))
            {
               _loc5_.addChildAt(_loc9_,0);
            }
            loop1:
            while(true)
            {
               _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
               addr166:
               while(true)
               {
                  _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                  while(true)
                  {
                     _loc9_.scaleX = _loc8_.scale;
                     addr127:
                     while(_loc12_ || §9R§)
                     {
                        do
                        {
                           _loc9_.scaleY = _loc8_.scale;
                           continue loop1;
                        }
                        while(false);
                        
                        continue loop0;
                     }
                  }
               }
            }
         }
         return _loc5_;
      }
      
      public static function §!=§(param1:String, param2:§0Y§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§3!K§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §]!C§[param1]).child(§9">§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§>s§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(!_loc12_)
               {
                  _loc3_.addChildAt(_loc8_,0);
                  while(true)
                  {
                     _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                     addr131:
                     loop2:
                     while(true)
                     {
                        addr100:
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                           continue loop2;
                        }
                     }
                     addr91:
                     if(_loc12_ && _loc3_)
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr100);
                  }
               }
               while(true)
               {
                  _loc8_.smoothing = true;
                  if(_loc12_ && param2)
                  {
                     continue;
                  }
                  if(_loc11_)
                  {
                     §§goto(addr91);
                  }
                  §§goto(addr131);
               }
            }
         }
         return _loc3_;
      }
   }
}
