package §_-8d§
{
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §_-mB§
   {
      
      private static const §_-qD§:String = "compositeSprite";
      
      private static const §_-OA§:String = "sprite";
      
      private static var §_-aL§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-qD§ = "compositeSprite";
         }
         while(true)
         {
            §_-OA§ = "sprite";
            while(_loc2_ || _loc1_)
            {
               §_-aL§ = new Dictionary();
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §_-mB§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §_-er§(param1:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§_-qD§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc6_)
            {
               §_-aL§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §_-pc§(param1:String, param2:§_-0FF§, param3:Boolean = true) : §_-uY§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:XML = null;
         var _loc8_:§_-vz§ = null;
         var _loc9_:§_-09b§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §_-aL§[param1]))
         {
            if(_loc12_)
            {
               return null;
            }
         }
         var _loc5_:§_-uY§.Sprite = new §_-uY§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§_-OA§);
         for each(_loc7_ in _loc6_)
         {
            if(_loc8_ = param2.§_-70§(_loc7_.@name))
            {
               _loc9_ = new §_-09b§(_loc8_.texture,false,param3);
               if(_loc12_)
               {
                  _loc5_.addChildAt(_loc9_,0);
                  while(true)
                  {
                     _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                     loop2:
                     while(!_loc13_)
                     {
                        _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                        loop3:
                        while(true)
                        {
                           _loc9_.scaleX = _loc8_.scale;
                           loop4:
                           while(_loc12_)
                           {
                              loop5:
                              while(true)
                              {
                                 _loc9_.scaleY = _loc8_.scale;
                                 while(_loc12_)
                                 {
                                    _loc9_.name = _loc7_.@tag;
                                    if(!_loc12_)
                                    {
                                       continue;
                                    }
                                    if(_loc13_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                           continue loop2;
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
         return _loc5_;
      }
      
      public static function §_-E3§(param1:String, param2:§_-0FF§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§_-vz§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §_-aL§[param1]).child(§_-OA§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            if(!(_loc7_ = param2.§_-70§(_loc6_.@name)))
            {
               continue;
            }
            _loc8_ = new Bitmap(_loc7_.bitmapData);
            if(!_loc12_)
            {
               _loc3_.addChildAt(_loc8_,0);
               while(true)
               {
                  _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                  addr103:
                  if(_loc12_ && §_-mB§)
                  {
                     continue;
                  }
                  _loc8_.smoothing = true;
                  if(_loc11_ || §_-mB§)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                        }
                        addr91:
                     }
                     continue loop0;
                  }
                  while(_loc11_)
                  {
                     §§goto(addr103);
                  }
                  while(true)
                  {
                     §§goto(addr91);
                  }
                  addr131:
               }
            }
            §§goto(addr131);
         }
         return _loc3_;
      }
   }
}
