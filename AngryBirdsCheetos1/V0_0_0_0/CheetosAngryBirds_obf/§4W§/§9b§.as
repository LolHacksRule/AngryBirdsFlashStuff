package §4W§
{
   import §`a§.§>?§;
   import §`a§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §9b§
   {
      
      private static const §,@§:String = "compositeSprite";
      
      private static const §;!&§:String = "sprite";
      
      private static var §#!B§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,@§ = "compositeSprite";
         }
         while(true)
         {
            §;!&§ = "sprite";
            while(!_loc2_)
            {
               §#!B§ = new Dictionary();
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public function §9b§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §^l§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§,@§);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc6_)
            {
               §#!B§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §3z§(param1:String, param2:§!]§, param3:Boolean = true) : §`a§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:XML = null;
         var _loc8_:§>c§ = null;
         var _loc9_:§>?§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §#!B§[param1]))
         {
            if(!_loc13_)
            {
               return null;
            }
         }
         var _loc5_:§`a§.Sprite = new §`a§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§;!&§);
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§]]§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §>?§(_loc8_.texture,false,param3);
            if(!(_loc13_ && param2))
            {
               _loc5_.addChildAt(_loc9_,0);
               loop1:
               while(true)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  while(true)
                  {
                     _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                     addr131:
                     while(_loc12_ || param2)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr107);
         }
         return _loc5_;
      }
      
      public static function §+=§(param1:String, param2:§!]§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§>c§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §#!B§[param1]).child(§;!&§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§]]§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(!_loc12_)
               {
                  _loc3_.addChildAt(_loc8_,0);
                  loop1:
                  while(true)
                  {
                     _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                     loop2:
                     while(true)
                     {
                        addr91:
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                           addr101:
                           while(!_loc12_)
                           {
                              if(!_loc11_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  _loc8_.smoothing = true;
                  if(_loc11_ || param2)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr101);
               }
            }
         }
         return _loc3_;
      }
   }
}
