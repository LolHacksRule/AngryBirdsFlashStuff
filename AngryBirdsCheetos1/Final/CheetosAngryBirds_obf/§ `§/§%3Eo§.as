package § `§
{
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §>o§
   {
      
      private static const §=!G§:String = "compositeSprite";
      
      private static const §1;§:String = "sprite";
      
      private static var §[!I§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §=!G§ = "compositeSprite";
            while(true)
            {
               §1;§ = "sprite";
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            §[!I§ = new Dictionary();
            if(!(_loc2_ && _loc1_))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §>o§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §6!C§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§=!G§);
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc6_ && _loc3_))
            {
               §[!I§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §#]§(param1:String, param2:§2w§, param3:Boolean = true) : §]@§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:XML = null;
         var _loc8_:§6!=§ = null;
         var _loc9_:§`!C§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §[!I§[param1]))
         {
            if(_loc12_)
            {
               return null;
            }
         }
         var _loc5_:§]@§.Sprite = new §]@§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§1;§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§4!,§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §`!C§(_loc8_.texture,false,param3);
            if(_loc12_ || §>o§)
            {
               _loc5_.addChildAt(_loc9_,0);
               while(true)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  while(true)
                  {
                     _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                     while(!(_loc13_ && param1))
                     {
                        _loc9_.scaleX = _loc8_.scale;
                        loop4:
                        while(true)
                        {
                           addr107:
                           while(true)
                           {
                              _loc9_.scaleY = _loc8_.scale;
                              continue loop4;
                           }
                           continue loop0;
                        }
                        if(_loc13_ && param3)
                        {
                           continue;
                        }
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr107);
                     }
                  }
                  if(_loc13_ && param3)
                  {
                     continue;
                  }
                  _loc9_.name = _loc7_.@tag;
                  if(!_loc13_)
                  {
                     §§goto(addr98);
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr132);
         }
         return _loc5_;
      }
      
      public static function §4M§(param1:String, param2:§2w§) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§6!=§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §[!I§[param1]).child(§1;§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§4!,§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(_loc12_)
               {
                  _loc3_.addChildAt(_loc8_,0);
                  while(true)
                  {
                     _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                     loop2:
                     while(true)
                     {
                        addr94:
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                           addr104:
                           while(_loc12_)
                           {
                           }
                           continue loop2;
                        }
                     }
                     addr85:
                     if(!(_loc12_ || param2))
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr94);
                  }
               }
               while(true)
               {
                  _loc8_.smoothing = true;
                  if(!_loc11_)
                  {
                     §§goto(addr85);
                  }
                  §§goto(addr104);
               }
            }
         }
         return _loc3_;
      }
   }
}
