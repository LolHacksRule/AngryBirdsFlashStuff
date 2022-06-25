package §8!?§
{
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class CompositeSpriteParser
   {
      
      private static const §#!R§:String = "compositeSprite";
      
      private static const §0!-§:String = "sprite";
      
      private static var §6!!§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#!R§ = "compositeSprite";
            while(true)
            {
               §0!-§ = "sprite";
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            §6!!§ = new Dictionary();
            if(_loc1_ || _loc2_)
            {
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function CompositeSpriteParser()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §?r§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§#!R§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc7_ || param1)
            {
               §6!!§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §#t§(param1:String, param2:TextureManager, param3:Boolean = true) : §1!&§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:XML = null;
         var _loc8_:§?!B§ = null;
         var _loc9_:§&p§ = null;
         var _loc4_:XML = §6!!§[param1];
         if(!(_loc13_ && param1))
         {
            if(!_loc4_)
            {
               if(!_loc13_)
               {
                  §§goto(addr43);
               }
            }
            var _loc5_:§1!&§.Sprite = new §1!&§.Sprite();
            var _loc6_:XMLList = _loc4_.child(§0!-§);
            loop0:
            for each(_loc7_ in _loc6_)
            {
               _loc8_ = param2.§"!'§(_loc7_.@name);
               if(_loc12_ || param3)
               {
                  if(!_loc8_)
                  {
                     continue;
                  }
               }
               _loc9_ = new §&p§(_loc8_.texture,false,param3);
               if(_loc12_)
               {
                  _loc5_.addChildAt(_loc9_,0);
                  while(true)
                  {
                     _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                     while(!_loc13_)
                     {
                        _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                        while(!_loc13_)
                        {
                           loop5:
                           while(_loc12_ || param2)
                           {
                              do
                              {
                                 _loc9_.scaleY = _loc8_.scale;
                                 do
                                 {
                                    _loc9_.name = _loc7_.@tag;
                                 }
                                 while(_loc13_);
                                 
                                 if(_loc12_ || param3)
                                 {
                                    continue;
                                 }
                                 continue loop5;
                              }
                              while(false);
                              
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  _loc9_.scaleX = _loc8_.scale;
                  §§goto(addr131);
               }
            }
            return _loc5_;
         }
         addr43:
         return null;
      }
      
      public static function §1A§(param1:String, param2:TextureManager) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§?!B§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML = §6!!§[param1];
         var _loc5_:XMLList = _loc4_.child(§0!-§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            _loc7_ = param2.§"!'§(_loc6_.@name);
            if(!(_loc11_ && param1))
            {
               if(!_loc7_)
               {
                  continue;
               }
            }
            _loc8_ = new Bitmap(_loc7_.bitmapData);
            if(!(_loc11_ && param1))
            {
               _loc3_.addChildAt(_loc8_,0);
               while(true)
               {
                  _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                  addr100:
                  if(!(_loc11_ && _loc3_))
                  {
                     if(false)
                     {
                        loop3:
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                           while(!_loc11_)
                           {
                              _loc8_.smoothing = true;
                              if(!_loc12_)
                              {
                                 continue;
                              }
                              §§goto(addr100);
                           }
                           addr142:
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
            §§goto(addr142);
         }
         return _loc3_;
      }
   }
}
