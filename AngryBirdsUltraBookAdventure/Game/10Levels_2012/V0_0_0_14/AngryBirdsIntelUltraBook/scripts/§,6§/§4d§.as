package §,6§
{
   import §9E§.§;!U§;
   import §9E§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §4d§
   {
      
      private static const § !q§:String = "compositeSprite";
      
      private static const §7f§:String = "sprite";
      
      private static var §+!F§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            § !q§ = "compositeSprite";
         }
         do
         {
            §7f§ = "sprite";
            do
            {
               §+!F§ = new Dictionary();
            }
            while(!(_loc1_ || _loc1_));
            
         }
         while(_loc2_);
         
      }
      
      public function §4d§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §`y§(param1:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§ !q§);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc7_)
            {
               §+!F§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §,b§(param1:String, param2:§!o§, param3:Boolean = true) : §9E§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:XML = null;
         var _loc8_:§5z§ = null;
         var _loc9_:§;!U§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §+!F§[param1]))
         {
            if(!(_loc13_ && param3))
            {
               return null;
            }
         }
         var _loc5_:§9E§.Sprite = new §9E§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§7f§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§`F§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §;!U§(_loc8_.texture,false,param3);
            if(!(_loc13_ && param1))
            {
               _loc5_.addChildAt(_loc9_,0);
               while(true)
               {
                  _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
                  loop2:
                  while(!(_loc13_ && param3))
                  {
                     while(true)
                     {
                        _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                        while(true)
                        {
                           _loc9_.scaleX = _loc8_.scale;
                           loop5:
                           while(!_loc13_)
                           {
                              do
                              {
                                 _loc9_.scaleY = _loc8_.scale;
                                 while(!_loc13_)
                                 {
                                    _loc9_.name = _loc7_.@tag;
                                    if(_loc12_ || param1)
                                    {
                                       if(!(_loc12_ || param2))
                                       {
                                          continue loop5;
                                       }
                                       §§goto(addr115);
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                              }
                              while(false);
                              
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr171);
         }
         return _loc5_;
      }
      
      public static function §'!I§(param1:String, param2:§!o§) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§5z§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §+!F§[param1]).child(§7f§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            if(!(_loc7_ = param2.§`F§(_loc6_.@name)))
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
               }
               addr127:
            }
            while(true)
            {
               while(true)
               {
                  _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                  do
                  {
                     _loc8_.smoothing = true;
                  }
                  while(!_loc12_);
                  
                  if(!_loc12_)
                  {
                     break;
                  }
                  if(_loc12_)
                  {
                     if(false)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr127);
               }
            }
         }
         return _loc3_;
      }
   }
}
