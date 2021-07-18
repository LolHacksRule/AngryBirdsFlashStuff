package §#e§
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §%Y§
   {
      
      private static const § B§:String = "compositeSprite";
      
      private static const §6^§:String = "sprite";
      
      private static var §=!8§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            § B§ = "compositeSprite";
            while(true)
            {
               §6^§ = "sprite";
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            §=!8§ = new Dictionary();
            if(!(_loc1_ && §%Y§))
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §%Y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §3!M§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§ B§);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc6_)
            {
               §=!8§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §3k§(param1:String, param2:§'?§, param3:Boolean = true) : § N§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:XML = null;
         var _loc8_:§`!9§ = null;
         var _loc9_:§1!A§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §=!8§[param1]))
         {
            if(!_loc12_)
            {
               return null;
            }
         }
         var _loc5_:§ N§.Sprite = new § N§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§6^§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§&! §(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §1!A§(_loc8_.texture,false,param3);
            if(!_loc12_)
            {
               _loc5_.addChildAt(_loc9_,0);
            }
            _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
            _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
            loop1:
            while(true)
            {
               _loc9_.scaleX = _loc8_.scale;
               while(true)
               {
                  continue loop1;
                  addr113:
                  _loc9_.name = _loc7_.@tag;
                  if(!(_loc12_ && param1))
                  {
                     if(false)
                     {
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
         return _loc5_;
      }
      
      public static function §6!<§(param1:String, param2:§'?§) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§`!9§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §=!8§[param1]).child(§6^§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            if(!(_loc7_ = param2.§&! §(_loc6_.@name)))
            {
               continue;
            }
            _loc8_ = new Bitmap(_loc7_.bitmapData);
            if(_loc12_)
            {
               _loc3_.addChildAt(_loc8_,0);
               while(true)
               {
                  _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                  addr90:
                  if(_loc12_ || §%Y§)
                  {
                     if(false)
                     {
                        loop3:
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                           while(_loc12_)
                           {
                              _loc8_.smoothing = true;
                              if(_loc11_ && param1)
                              {
                                 continue;
                              }
                              §§goto(addr90);
                           }
                           addr132:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr132);
         }
         return _loc3_;
      }
   }
}
