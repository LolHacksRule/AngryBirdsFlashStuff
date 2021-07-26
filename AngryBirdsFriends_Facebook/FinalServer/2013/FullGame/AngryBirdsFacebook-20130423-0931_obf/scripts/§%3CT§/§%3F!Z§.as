package §<T§
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §?!Z§
   {
      
      private static const §4"V§:String = "compositeSprite";
      
      private static const §5!2§:String = "sprite";
      
      private static var §?!M§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §?!Z§)
         {
            §4"V§ = "compositeSprite";
            while(true)
            {
               §5!2§ = "sprite";
               loop1:
               while(!(_loc1_ && §?!Z§))
               {
                  while(true)
                  {
                     §?!M§ = new Dictionary();
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §?!Z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §#!m§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§4"V§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc7_)
            {
               §?!M§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function § "8§(param1:String, param2:§`m§, param3:Boolean = true) : §'!6§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:XML = null;
         var _loc8_:§^"5§ = null;
         var _loc9_:§ "E§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §?!M§[param1]))
         {
            if(_loc13_ || param3)
            {
               return null;
            }
         }
         var _loc5_:§'!6§.Sprite = new §'!6§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§5!2§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§#!L§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new § "E§(_loc8_.texture,false,param3);
            if(_loc13_)
            {
               _loc5_.addChildAt(_loc9_,0);
               while(true)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  addr99:
                  if(_loc13_ || param3)
                  {
                     addr106:
                     if(false)
                     {
                        loop5:
                        while(true)
                        {
                           _loc9_.scaleY = _loc8_.scale;
                           addr113:
                           addr126:
                           while(_loc13_ || param1)
                           {
                              _loc9_.name = _loc7_.@tag;
                              if(_loc12_)
                              {
                                 continue;
                              }
                              §§goto(addr99);
                           }
                           addr154:
                           while(_loc13_ || param3)
                           {
                              continue loop5;
                              §§goto(addr113);
                           }
                           addr172:
                           while(_loc13_ || param2)
                           {
                              _loc9_.scaleX = _loc8_.scale;
                              §§goto(addr126);
                           }
                           while(true)
                           {
                              _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                              §§goto(addr154);
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr172);
         }
         return _loc5_;
      }
      
      public static function §9!4§(param1:String, param2:§`m§) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§^"5§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §?!M§[param1]).child(§5!2§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            if(!(_loc7_ = param2.§#!L§(_loc6_.@name)))
            {
               continue;
            }
            _loc8_ = new Bitmap(_loc7_.bitmapData);
            if(_loc12_)
            {
               _loc3_.addChildAt(_loc8_,0);
            }
            while(true)
            {
               _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
               loop2:
               while(true)
               {
                  addr99:
                  while(true)
                  {
                     _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                     continue loop2;
                  }
                  continue loop0;
               }
               if(_loc11_ && param2)
               {
                  continue;
               }
               if(true)
               {
                  continue loop0;
               }
               §§goto(addr99);
            }
         }
         return _loc3_;
      }
   }
}
