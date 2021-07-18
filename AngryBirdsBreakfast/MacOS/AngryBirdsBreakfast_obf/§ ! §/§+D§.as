package § ! §
{
   import §6![§.§1!J§;
   import §6![§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §+D§
   {
      
      private static const §[^§:String = "compositeSprite";
      
      private static const §9S§:String = "group";
      
      private static const §[+§:String = "sprite";
      
      private static var §>a§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §[^§ = "compositeSprite";
            while(true)
            {
               §9S§ = "group";
            }
            addr73:
         }
         loop1:
         do
         {
            §[+§ = "sprite";
            while(_loc1_)
            {
               §>a§ = new Dictionary();
               if(!_loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr73);
         }
         while(_loc2_);
         
      }
      
      public function §+D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §@r§(param1:XML) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         var _loc2_:XMLList = param1.child(§[^§);
         if(!(_loc8_ && §+D§))
         {
            §^"#§(_loc2_);
         }
         var _loc3_:XMLList = param1.child(§9S§);
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = _loc4_.child(§[^§);
            if(!_loc8_)
            {
               §^"#§(_loc2_);
            }
         }
      }
      
      protected static function §^"#§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            if(_loc6_)
            {
               §>a§[String(_loc2_.@name)] = _loc2_;
            }
         }
      }
      
      public static function §3,§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§>a§[param1] == null);
         if(_loc3_ || §+D§)
         {
            return !§§pop();
         }
      }
      
      public static function §<p§(param1:String, param2:§5!x§, param3:Boolean = true) : §6![§.Sprite
      {
         return §3!T§(param1,param2,null,param3);
      }
      
      public static function §3!T§(param1:String, param2:§5!x§, param3:§6![§.Sprite, param4:Boolean = true) : §6![§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:§1!J§ = null;
         var _loc10_:XML = null;
         var _loc11_:§8-§ = null;
         if(_loc13_ || §+D§)
         {
            if(!param3)
            {
               addr35:
               param3 = new §6![§.Sprite();
            }
            var _loc5_:XML;
            if(!(_loc5_ = §>a§[param1]))
            {
               if(_loc13_)
               {
                  return null;
               }
            }
            var _loc6_:int = 0;
            var _loc8_:XMLList;
            var _loc9_:* = int((_loc8_ = _loc5_.child(§[+§)).length() - 1);
            while(_loc9_ >= 0)
            {
               _loc10_ = _loc8_[_loc9_];
               if(_loc11_ = param2.§`I§(_loc10_.@name))
               {
                  if(!(_loc13_ || param3))
                  {
                     continue;
                  }
                  §§push(_loc6_);
                  if(_loc13_ || §+D§)
                  {
                     if(§§pop() >= param3.numChildren)
                     {
                        if(_loc13_)
                        {
                           _loc7_ = new §1!J§(_loc11_.texture,false,param4);
                           if(_loc13_ || §+D§)
                           {
                              param3.addChild(_loc7_);
                              if(_loc13_)
                              {
                                 addr139:
                                 _loc7_.x = parseInt(_loc10_.@x) - _loc11_.pivotX;
                                 if(_loc13_)
                                 {
                                    _loc7_.y = parseInt(_loc10_.@y) - _loc11_.pivotY;
                                    while(true)
                                    {
                                       _loc7_.scaleX = _loc11_.scale;
                                    }
                                    addr195:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    _loc7_.scaleY = _loc11_.scale;
                                    addr179:
                                    loop3:
                                    while(true)
                                    {
                                       addr164:
                                       while(true)
                                       {
                                          _loc7_.name = _loc10_.@tag;
                                          addr169:
                                          while(true)
                                          {
                                             if(!_loc13_)
                                             {
                                                continue loop6;
                                             }
                                             if(_loc13_)
                                             {
                                                break;
                                             }
                                             §§goto(addr195);
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              _loc6_++;
                              if(!(_loc12_ && param3))
                              {
                                 if(!_loc12_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr169);
                           }
                           addr196:
                           §§push(_loc9_);
                           if(_loc13_ || §+D§)
                           {
                              addr204:
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                        }
                        continue;
                     }
                     (_loc7_ = param3.getChildAt(_loc6_) as §1!J§).texture = _loc11_.texture;
                     §§goto(addr139);
                  }
                  §§goto(addr204);
               }
               §§goto(addr196);
            }
            if(!_loc13_)
            {
            }
            while(param3.numChildren > _loc6_)
            {
               param3.removeChildAt(_loc6_,true);
               if(!(_loc13_ || param1))
               {
                  break;
               }
            }
            return param3;
         }
         §§goto(addr35);
      }
      
      public static function §<!s§(param1:String, param2:§5!x§) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§8-§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §>a§[param1]).child(§[+§);
         loop0:
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§`I§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(_loc12_)
               {
                  _loc3_.addChildAt(_loc8_,0);
                  while(true)
                  {
                     _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                     addr122:
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
                     addr92:
                     if(!(_loc12_ || _loc3_))
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr101);
                  }
               }
               while(true)
               {
                  _loc8_.smoothing = true;
                  if(_loc11_ && param2)
                  {
                     continue;
                  }
                  if(!_loc11_)
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr122);
               }
            }
         }
         return _loc3_;
      }
   }
}
