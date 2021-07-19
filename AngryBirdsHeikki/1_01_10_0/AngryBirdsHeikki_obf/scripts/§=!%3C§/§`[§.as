package §=!<§
{
   import §2Y§.§7!f§;
   import §2Y§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §`[§
   {
      
      private static const §3!F§:String = "compositeSprite";
      
      private static const §,>§:String = "sprite";
      
      private static var §9y§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §`[§))
         {
            §3!F§ = "compositeSprite";
         }
         while(true)
         {
            §,>§ = "sprite";
            while(_loc2_)
            {
               §9y§ = new Dictionary();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §`[§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function § e§(param1:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§3!F§);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc7_)
            {
               §9y§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §&Y§(param1:String, param2:§>a§, param3:Boolean = true) : §2Y§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:XML = null;
         var _loc8_:§8!!§ = null;
         var _loc9_:§7!f§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §9y§[param1]))
         {
            if(_loc12_)
            {
               return null;
            }
         }
         var _loc5_:§2Y§.Sprite = new §2Y§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§,>§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§8t§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §7!f§(_loc8_.texture,false,param3);
            if(!_loc13_)
            {
               _loc5_.addChildAt(_loc9_,0);
               loop1:
               while(true)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  while(true)
                  {
                     _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                     continue loop1;
                     loop6:
                     while(!(_loc13_ && §`[§))
                     {
                        _loc9_.name = _loc7_.@tag;
                        if(_loc12_ || §`[§)
                        {
                           if(_loc12_)
                           {
                              if(!_loc13_)
                              {
                                 while(false)
                                 {
                                 }
                                 continue loop0;
                                 addr102:
                              }
                              continue loop1;
                           }
                           addr122:
                           while(true)
                           {
                           }
                           while(true)
                           {
                              _loc9_.scaleY = _loc8_.scale;
                              continue loop6;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            §§goto(addr102);
         }
         return _loc5_;
      }
      
      public static function § !G§(param1:String, param2:§>a§) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§8!!§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §9y§[param1]).child(§,>§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§8t§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(_loc12_ || param2)
               {
                  _loc3_.addChildAt(_loc8_,0);
                  loop1:
                  while(true)
                  {
                     _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                     loop2:
                     while(true)
                     {
                        addr94:
                        loop3:
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                           while(_loc12_)
                           {
                              _loc8_.smoothing = true;
                              if(_loc11_)
                              {
                                 continue;
                              }
                              if(_loc11_)
                              {
                                 break loop3;
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr94);
               }
            }
         }
         return _loc3_;
      }
   }
}
