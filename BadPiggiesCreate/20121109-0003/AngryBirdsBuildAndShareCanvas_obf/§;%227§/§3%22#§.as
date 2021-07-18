package §;"7§
{
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §3"#§
   {
      
      private static const §%Z§:String = "compositeSprite";
      
      private static const §';§:String = "sprite";
      
      private static var §4""§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%Z§ = "compositeSprite";
            while(true)
            {
               §';§ = "sprite";
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §4""§ = new Dictionary();
                     if(!(_loc1_ && §3"#§))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §3"#§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §9E§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§%Z§);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc6_)
            {
               §4""§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function § !&§(param1:String, param2:§="<§, param3:Boolean = true) : §+!-§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:XML = null;
         var _loc8_:§+!I§ = null;
         var _loc9_:§7"#§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §4""§[param1]))
         {
            if(!_loc13_)
            {
               return null;
            }
         }
         var _loc5_:§+!-§.Sprite = new §+!-§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§';§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§5!!§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §7"#§(_loc8_.texture,false,param3);
            if(_loc12_ || §3"#§)
            {
               _loc5_.addChildAt(_loc9_,0);
               loop1:
               while(true)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  while(true)
                  {
                     _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                     loop3:
                     while(true)
                     {
                        _loc9_.scaleX = _loc8_.scale;
                        loop4:
                        while(true)
                        {
                           addr105:
                           while(true)
                           {
                              _loc9_.scaleY = _loc8_.scale;
                              addr110:
                              while(true)
                              {
                                 if(_loc12_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     if(!(_loc12_ || param2))
                     {
                        continue;
                     }
                     if(_loc13_)
                     {
                        continue loop1;
                     }
                     _loc9_.name = _loc7_.@tag;
                     if(!(_loc13_ && §3"#§))
                     {
                        while(false)
                        {
                           §§goto(addr105);
                        }
                        continue loop0;
                        addr103:
                     }
                     §§goto(addr110);
                  }
               }
            }
            §§goto(addr103);
         }
         return _loc5_;
      }
      
      public static function §"!Z§(param1:String, param2:§="<§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§+!I§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §4""§[param1]).child(§';§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§5!!§(_loc6_.@name))
            {
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
                        addr93:
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
                  §§goto(addr93);
               }
            }
         }
         return _loc3_;
      }
   }
}
