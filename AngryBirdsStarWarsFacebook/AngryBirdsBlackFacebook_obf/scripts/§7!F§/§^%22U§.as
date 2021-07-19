package §7!F§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §^"U§
   {
      
      private static const §2§:String = "compositeSprite";
      
      private static const §3!a§:String = "group";
      
      private static const §8H§:String = "sprite";
      
      private static var §5!c§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2§ = "compositeSprite";
            while(true)
            {
               §3!a§ = "group";
               while(_loc2_ || §^"U§)
               {
                  §8H§ = "sprite";
                  loop2:
                  while(_loc2_ || _loc1_)
                  {
                     while(true)
                     {
                        §5!c§ = new Dictionary();
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §^"U§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §8B§(param1:XML) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         var _loc2_:XMLList = param1.child(§2§);
         if(_loc8_)
         {
            §!D§(_loc2_);
         }
         var _loc3_:XMLList = param1.child(§3!a§);
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = _loc4_.child(§2§);
            if(!(_loc7_ && _loc2_))
            {
               §!D§(_loc2_);
            }
         }
      }
      
      protected static function §!D§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            if(!(_loc6_ && §^"U§))
            {
               §5!c§[String(_loc2_.@name)] = _loc2_;
            }
         }
      }
      
      public static function §?Z§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§5!c§[param1] == null);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      public static function §]!6§(param1:String, param2:§7#5§, param3:Boolean = true) : §!!U§.Sprite
      {
         return §&"Z§(param1,param2,null,param3);
      }
      
      public static function §&"Z§(param1:String, param2:§7#5§, param3:§!!U§.Sprite, param4:Boolean = true) : §!!U§.Sprite
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:§#"t§ = null;
         var _loc10_:XML = null;
         var _loc11_:§8!W§ = null;
         if(!(_loc13_ && §^"U§))
         {
            if(!param3)
            {
               addr34:
               param3 = new §!!U§.Sprite();
            }
            var _loc5_:XML;
            if(!(_loc5_ = §5!c§[param1]))
            {
               if(!(_loc13_ && param1))
               {
                  return null;
               }
            }
            var _loc6_:int = 0;
            var _loc8_:XMLList;
            var _loc9_:* = int((_loc8_ = _loc5_.child(§8H§)).length() - 1);
            while(_loc9_ >= 0)
            {
               _loc10_ = _loc8_[_loc9_];
               if(_loc11_ = param2.getTexture(_loc10_.@name))
               {
                  if(_loc13_)
                  {
                     continue;
                  }
                  §§push(_loc6_);
                  if(_loc12_ || param1)
                  {
                     if(§§pop() >= param3.numChildren)
                     {
                        if(_loc13_ && param3)
                        {
                           continue;
                        }
                        _loc7_ = new §#"t§(_loc11_.texture,false,param4);
                        if(_loc12_ || param3)
                        {
                           param3.addChild(_loc7_);
                           if(_loc12_)
                           {
                              addr143:
                              _loc7_.x = parseInt(_loc10_.@x) - _loc11_.pivotX;
                              if(_loc12_ || param1)
                              {
                                 _loc7_.y = parseInt(_loc10_.@y) - _loc11_.pivotY;
                                 loop6:
                                 while(true)
                                 {
                                    _loc7_.scaleX = _loc11_.scale;
                                    addr199:
                                    while(true)
                                    {
                                       _loc7_.scaleY = _loc11_.scale;
                                       addr186:
                                       addr193:
                                       while(!(_loc12_ || param3))
                                       {
                                          continue loop6;
                                       }
                                       addr193:
                                       while(true)
                                       {
                                          addr175:
                                          while(true)
                                          {
                                             _loc7_.name = _loc10_.@tag;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              §§goto(addr193);
                           }
                           while(true)
                           {
                              _loc6_++;
                              if(!_loc12_)
                              {
                                 continue;
                              }
                              if(_loc12_ || param2)
                              {
                                 if(!_loc13_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr199);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr186);
                           }
                           addr210:
                           §§push(_loc9_);
                           if(_loc12_ || param1)
                           {
                              addr218:
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           continue;
                        }
                        §§goto(addr193);
                     }
                     else
                     {
                        (_loc7_ = param3.getChildAt(_loc6_) as §#"t§).texture = _loc11_.texture;
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr218);
               }
               §§goto(addr210);
            }
            if(_loc13_ && param2)
            {
            }
            while(param3.numChildren > _loc6_)
            {
               param3.removeChildAt(_loc6_,true);
               if(!_loc12_)
               {
                  break;
               }
            }
            return param3;
         }
         §§goto(addr34);
      }
      
      public static function §?!s§(param1:String, param2:§7#5§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§8!W§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §5!c§[param1]).child(§8H§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            if(!(_loc7_ = param2.getTexture(_loc6_.@name)))
            {
               continue;
            }
            _loc8_ = new Bitmap(_loc7_.bitmapData);
            if(!(_loc12_ && _loc3_))
            {
               _loc3_.addChildAt(_loc8_,0);
            }
            while(true)
            {
               _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
               loop2:
               while(_loc11_ || _loc3_)
               {
                  do
                  {
                     _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                     while(!(_loc12_ && param1))
                     {
                        _loc8_.smoothing = true;
                        if(_loc12_)
                        {
                           continue;
                        }
                        §§goto(addr89);
                     }
                     continue loop2;
                  }
                  while(false);
                  
                  continue loop0;
               }
            }
         }
         return _loc3_;
      }
   }
}
