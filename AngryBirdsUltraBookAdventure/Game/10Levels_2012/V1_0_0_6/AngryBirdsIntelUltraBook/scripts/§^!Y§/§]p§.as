package §^!Y§
{
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §]p§
   {
      
      private static const §%!f§:String = "compositeSprite";
      
      private static const §6!v§:String = "sprite";
      
      private static var §6Z§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §%!f§ = "compositeSprite";
         }
         do
         {
            §6!v§ = "sprite";
            do
            {
               §6Z§ = new Dictionary();
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function §]p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §1!2§(param1:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§%!f§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc6_ || param1)
            {
               §6Z§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §,!$§(param1:String, param2:§'R§, param3:Boolean = true) : §7!B§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:XML = null;
         var _loc8_:§1C§ = null;
         var _loc9_:§-§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §6Z§[param1]))
         {
            if(!_loc12_)
            {
               return null;
            }
         }
         var _loc5_:§7!B§.Sprite = new §7!B§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§6!v§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§2+§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §-§(_loc8_.texture,false,param3);
            if(_loc13_ || §]p§)
            {
               _loc5_.addChildAt(_loc9_,0);
               while(true)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  while(_loc13_)
                  {
                     _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                     while(!_loc12_)
                     {
                        _loc9_.scaleX = _loc8_.scale;
                        while(!_loc12_)
                        {
                        }
                     }
                  }
               }
            }
            while(true)
            {
               loop6:
               do
               {
                  _loc9_.scaleY = _loc8_.scale;
                  while(!_loc12_)
                  {
                     _loc9_.name = _loc7_.@tag;
                     if(_loc13_)
                     {
                        continue loop6;
                     }
                  }
                  §§goto(addr114);
               }
               while(false);
               
               continue loop0;
            }
         }
         return _loc5_;
      }
      
      public static function §0X§(param1:String, param2:§'R§) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§1C§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §6Z§[param1]).child(§6!v§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§2+§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(_loc12_ || _loc3_)
               {
                  _loc3_.addChildAt(_loc8_,0);
                  while(true)
                  {
                     _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                     loop2:
                     while(_loc12_)
                     {
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                           do
                           {
                              if(_loc12_)
                              {
                                 continue;
                              }
                              continue loop2;
                           }
                           while(_loc8_.smoothing = true, _loc11_ && param2);
                           
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr97);
               }
            }
         }
         return _loc3_;
      }
   }
}
