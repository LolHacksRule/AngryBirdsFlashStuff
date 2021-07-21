package §&"5§
{
   import §default§.§=!Z§;
   import §default§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §4!h§
   {
      
      private static const §&!o§:String = "compositeSprite";
      
      private static const §"@§:String = "sprite";
      
      private static var §'"!§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&!o§ = "compositeSprite";
            while(true)
            {
               §"@§ = "sprite";
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     §'"!§ = new Dictionary();
                     if(_loc2_)
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
      
      public function §4!h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §!"4§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§&!o§);
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc6_ && _loc2_))
            {
               §'"!§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §4!t§(param1:String, param2:§7!P§, param3:Boolean = true) : §default§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:XML = null;
         var _loc8_:§6!L§ = null;
         var _loc9_:§=!Z§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §'"!§[param1]))
         {
            if(_loc12_ || param3)
            {
               return null;
            }
         }
         var _loc5_:§default§.Sprite = new §default§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§"@§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§12§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §=!Z§(_loc8_.texture,false,param3);
            if(!(_loc13_ && param2))
            {
               _loc5_.addChildAt(_loc9_,0);
               while(true)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  addr154:
                  while(_loc12_)
                  {
                     _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                  }
               }
            }
            while(true)
            {
               _loc9_.scaleX = _loc8_.scale;
               loop4:
               while(!(_loc13_ && param1))
               {
                  do
                  {
                     _loc9_.scaleY = _loc8_.scale;
                     do
                     {
                        _loc9_.name = _loc7_.@tag;
                     }
                     while(!_loc12_);
                     
                     if(!(_loc12_ || §4!h§))
                     {
                        continue loop4;
                     }
                     if(_loc12_)
                     {
                        continue;
                     }
                     §§goto(addr154);
                  }
                  while(false);
                  
                  continue loop0;
               }
            }
         }
         return _loc5_;
      }
      
      public static function § !r§(param1:String, param2:§7!P§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§6!L§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §'"!§[param1]).child(§"@§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            if(!(_loc7_ = param2.§12§(_loc6_.@name)))
            {
               continue;
            }
            _loc8_ = new Bitmap(_loc7_.bitmapData);
            if(_loc11_ || §4!h§)
            {
               _loc3_.addChildAt(_loc8_,0);
               while(true)
               {
                  _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                  while(_loc11_ || param1)
                  {
                     loop3:
                     while(true)
                     {
                        _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                        do
                        {
                           _loc8_.smoothing = true;
                        }
                        while(_loc12_);
                        
                        if(_loc12_)
                        {
                           break;
                           addr91:
                        }
                        while(false)
                        {
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr91);
         }
         return _loc3_;
      }
   }
}
