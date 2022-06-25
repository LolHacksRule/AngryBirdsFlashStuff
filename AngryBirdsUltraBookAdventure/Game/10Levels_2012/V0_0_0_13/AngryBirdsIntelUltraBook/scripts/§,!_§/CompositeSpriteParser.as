package §,!_§
{
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class CompositeSpriteParser
   {
      
      private static const §#!i§:String = "compositeSprite";
      
      private static const §<+§:String = "sprite";
      
      private static var §;,§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §#!i§ = "compositeSprite";
            while(true)
            {
               §<+§ = "sprite";
               loop1:
               while(_loc1_ || CompositeSpriteParser)
               {
                  while(true)
                  {
                     §;,§ = new Dictionary();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function CompositeSpriteParser()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §@v§(param1:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§#!i§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc6_ || CompositeSpriteParser)
            {
               §;,§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §-!$§(param1:String, param2:TextureManager, param3:Boolean = true) : §6!7§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:XML = null;
         var _loc8_:§;K§ = null;
         var _loc9_:§-m§ = null;
         var _loc4_:XML = §;,§[param1];
         if(!_loc12_)
         {
            if(!_loc4_)
            {
               if(_loc13_ || param2)
               {
                  return null;
               }
            }
         }
         var _loc5_:§6!7§.Sprite = new §6!7§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§<+§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            _loc8_ = param2.§]&§(_loc7_.@name);
            if(_loc13_)
            {
               if(!_loc8_)
               {
                  continue;
               }
            }
            _loc9_ = new §-m§(_loc8_.texture,false,param3);
            if(!(_loc12_ && CompositeSpriteParser))
            {
               _loc5_.addChildAt(_loc9_,0);
               while(true)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  loop2:
                  while(!_loc12_)
                  {
                     _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                     while(true)
                     {
                        _loc9_.scaleX = _loc8_.scale;
                        loop4:
                        for(; _loc13_ || param3; while(true)
                        {
                           _loc9_.scaleY = _loc8_.scale;
                           do
                           {
                              _loc9_.name = _loc7_.@tag;
                           }
                           while(_loc12_ && CompositeSpriteParser);
                           
                           if(!_loc13_)
                           {
                              break;
                           }
                           if(!_loc12_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        })
                        {
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr141);
         }
         return _loc5_;
      }
      
      public static function §[o§(param1:String, param2:TextureManager) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§;K§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML = §;,§[param1];
         var _loc5_:XMLList = _loc4_.child(§<+§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            _loc7_ = param2.§]&§(_loc6_.@name);
            if(_loc12_ || param2)
            {
               if(!_loc7_)
               {
                  continue;
               }
            }
            _loc8_ = new Bitmap(_loc7_.bitmapData);
            if(_loc12_ || param1)
            {
               _loc3_.addChildAt(_loc8_,0);
            }
            while(true)
            {
               _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
               loop2:
               while(true)
               {
                  addr102:
                  while(true)
                  {
                     _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                     continue loop2;
                  }
                  continue loop0;
               }
               if(_loc11_ && _loc3_)
               {
                  continue;
               }
               _loc8_.smoothing = true;
               if(!_loc11_)
               {
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr102);
               }
               §§goto(addr112);
            }
         }
         return _loc3_;
      }
   }
}
