package §=`§
{
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §4s§
   {
      
      private static const §>,§:String = "compositeSprite";
      
      private static const §<!%§:String = "sprite";
      
      private static var §3!"§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>,§ = "compositeSprite";
            while(true)
            {
               §<!%§ = "sprite";
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §3!"§ = new Dictionary();
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
         §§goto(addr47);
      }
      
      public function §4s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §+!h§(param1:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§>,§);
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc7_ && param1))
            {
               §3!"§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §<Y§(param1:String, param2:§6!I§, param3:Boolean = true) : §`g§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:XML = null;
         var _loc8_:§#`§ = null;
         var _loc9_:§"<§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §3!"§[param1]))
         {
            if(!_loc13_)
            {
               return null;
            }
         }
         var _loc5_:§`g§.Sprite = new §`g§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§<!%§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(_loc8_ = param2.§&u§(_loc7_.@name))
            {
               _loc9_ = new §"<§(_loc8_.texture,false,param3);
               if(_loc12_)
               {
                  _loc5_.addChildAt(_loc9_,0);
                  loop1:
                  while(true)
                  {
                     _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                     while(true)
                     {
                        _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                        addr145:
                        while(true)
                        {
                           _loc9_.scaleX = _loc8_.scale;
                           loop4:
                           for(; _loc12_; while(!(_loc13_ && param1))
                           {
                           })
                           {
                              while(true)
                              {
                                 _loc9_.scaleY = _loc8_.scale;
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                        addr95:
                        if(!(_loc12_ || param2))
                        {
                           continue;
                        }
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr104);
                     }
                  }
               }
               while(true)
               {
                  _loc9_.name = _loc7_.@tag;
                  if(_loc12_)
                  {
                     if(_loc12_)
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr109);
               }
            }
         }
         return _loc5_;
      }
      
      public static function §4!8§(param1:String, param2:§6!I§) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§#`§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §3!"§[param1]).child(§<!%§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§&u§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(!(_loc11_ && param2))
               {
                  _loc3_.addChildAt(_loc8_,0);
                  while(true)
                  {
                     _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                     addr132:
                     loop2:
                     while(true)
                     {
                        addr101:
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                           continue loop2;
                        }
                     }
                  }
                  addr137:
               }
               while(true)
               {
                  _loc8_.smoothing = true;
                  if(_loc11_ && param1)
                  {
                     continue;
                  }
                  if(_loc12_)
                  {
                     if(!_loc11_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr137);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr132);
               }
            }
         }
         return _loc3_;
      }
   }
}
