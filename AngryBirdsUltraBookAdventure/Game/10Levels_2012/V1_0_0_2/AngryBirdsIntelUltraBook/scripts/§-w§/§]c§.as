package §-w§
{
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §]c§
   {
      
      private static const §]I§:String = "compositeSprite";
      
      private static const §>l§:String = "sprite";
      
      private static var §7i§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]I§ = "compositeSprite";
            do
            {
               §>l§ = "sprite";
               do
               {
                  §7i§ = new Dictionary();
               }
               while(_loc2_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function §]c§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §3!+§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§]I§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc7_ || param1)
            {
               §7i§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §!!h§(param1:String, param2:§,Q§, param3:Boolean = true) : §'!9§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:XML = null;
         var _loc8_:§+W§ = null;
         var _loc9_:§?!U§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §7i§[param1]))
         {
            if(!(_loc12_ && param3))
            {
               return null;
            }
         }
         var _loc5_:§'!9§.Sprite = new §'!9§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§>l§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§6u§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §?!U§(_loc8_.texture,false,param3);
            if(_loc13_)
            {
               _loc5_.addChildAt(_loc9_,0);
               while(true)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  addr127:
                  if(!(_loc13_ || param1))
                  {
                     continue;
                  }
                  _loc9_.name = _loc7_.@tag;
                  if(_loc13_ || param1)
                  {
                     addr104:
                     if(_loc13_ || param2)
                     {
                        if(_loc13_)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 _loc9_.scaleY = _loc8_.scale;
                                 addr120:
                                 addr172:
                                 while(!(_loc12_ && §]c§))
                                 {
                                    §§goto(addr127);
                                 }
                                 while(true)
                                 {
                                    _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                                    §§goto(addr120);
                                 }
                              }
                              addr115:
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           _loc9_.scaleX = _loc8_.scale;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr115);
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr120);
               }
            }
            §§goto(addr172);
         }
         return _loc5_;
      }
      
      public static function § 2§(param1:String, param2:§,Q§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§+W§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §7i§[param1]).child(§>l§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            if(!(_loc7_ = param2.§6u§(_loc6_.@name)))
            {
               continue;
            }
            _loc8_ = new Bitmap(_loc7_.bitmapData);
            if(_loc11_ || §]c§)
            {
               _loc3_.addChildAt(_loc8_,0);
            }
            loop1:
            while(true)
            {
               _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                     while(_loc11_)
                     {
                        _loc8_.smoothing = true;
                        if(!(_loc12_ && _loc3_))
                        {
                           if(!_loc12_)
                           {
                              if(true)
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         return _loc3_;
      }
   }
}
