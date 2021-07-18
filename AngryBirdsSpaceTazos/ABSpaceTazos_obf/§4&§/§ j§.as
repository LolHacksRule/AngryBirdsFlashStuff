package §4&§
{
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class § j§
   {
      
      private static const § !E§:String = "compositeSprite";
      
      private static const §6";§:String = "group";
      
      private static const §]!q§:String = "sprite";
      
      private static var §8]§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            § !E§ = "compositeSprite";
            while(true)
            {
               §6";§ = "group";
               while(_loc1_ || _loc1_)
               {
                  §]!q§ = "sprite";
                  do
                  {
                     §8]§ = new Dictionary();
                  }
                  while(_loc2_ && § j§);
                  
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
         }
         §§goto(addr52);
      }
      
      public function § j§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §?"?§(param1:XML) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         var _loc2_:XMLList = param1.child(§ !E§);
         if(!(_loc7_ && param1))
         {
            §;!1§(_loc2_);
         }
         var _loc3_:XMLList = param1.child(§6";§);
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = _loc4_.child(§ !E§);
            if(!_loc7_)
            {
               §;!1§(_loc2_);
            }
         }
      }
      
      protected static function §;!1§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            if(_loc5_)
            {
               §8]§[String(_loc2_.@name)] = _loc2_;
            }
         }
      }
      
      public static function §=!7§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§8]§[param1] == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public static function §8!x§(param1:String, param2:§,C§, param3:Boolean = true) : §7!8§.Sprite
      {
         return §#"+§(param1,param2,null,param3);
      }
      
      public static function §#"+§(param1:String, param2:§,C§, param3:§7!8§.Sprite, param4:Boolean = true) : §7!8§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:§`y§ = null;
         var _loc10_:XML = null;
         var _loc11_:§'!"§ = null;
         if(_loc13_)
         {
            if(!param3)
            {
               addr30:
               param3 = new §7!8§.Sprite();
            }
            var _loc5_:XML;
            if(!(_loc5_ = §8]§[param1]))
            {
               if(!_loc12_)
               {
                  return null;
               }
            }
            var _loc6_:int = 0;
            var _loc8_:XMLList;
            var _loc9_:* = int((_loc8_ = _loc5_.child(§]!q§)).length() - 1);
            loop0:
            while(_loc9_ >= 0)
            {
               _loc10_ = _loc8_[_loc9_];
               if(_loc11_ = param2.getTexture(_loc10_.@name))
               {
                  if(!(_loc12_ && param2))
                  {
                     §§push(_loc6_);
                     if(_loc13_ || param1)
                     {
                        if(§§pop() >= param3.numChildren)
                        {
                           if(!(_loc13_ || param3))
                           {
                              continue;
                           }
                           _loc7_ = new §`y§(_loc11_.texture,false,param4);
                           addr97:
                           if(!_loc12_)
                           {
                              param3.addChild(_loc7_);
                              if(!_loc12_)
                              {
                                 addr134:
                                 _loc7_.x = parseInt(_loc10_.@x) - _loc11_.pivotX;
                                 if(_loc13_)
                                 {
                                    _loc7_.y = parseInt(_loc10_.@y) - _loc11_.pivotY;
                                    while(true)
                                    {
                                       _loc7_.scaleX = _loc11_.scale;
                                       addr167:
                                       if(!(_loc13_ || param2))
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          loop4:
                                          do
                                          {
                                             _loc7_.name = _loc10_.@tag;
                                             while(!_loc12_)
                                             {
                                                _loc6_++;
                                                if(_loc13_)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             addr165:
                                             addr180:
                                             while(_loc13_)
                                             {
                                                §§goto(addr167);
                                             }
                                             while(true)
                                             {
                                                _loc7_.scaleY = _loc11_.scale;
                                                §§goto(addr165);
                                             }
                                          }
                                          while(false);
                                          
                                          addr191:
                                          §§push(_loc9_);
                                          if(!_loc12_)
                                          {
                                             addr194:
                                             §§push(§§pop() - 1);
                                          }
                                          _loc9_ = §§pop();
                                          continue loop0;
                                       }
                                       addr174:
                                    }
                                 }
                                 §§goto(addr180);
                                 addr122:
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr122);
                        }
                        else
                        {
                           (_loc7_ = param3.getChildAt(_loc6_) as §`y§).texture = _loc11_.texture;
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr194);
                  }
                  §§goto(addr97);
               }
               §§goto(addr191);
            }
            if(_loc13_)
            {
               while(param3.numChildren > _loc6_)
               {
                  param3.removeChildAt(_loc6_,true);
                  if(!_loc13_)
                  {
                     break;
                  }
               }
            }
            return param3;
         }
         §§goto(addr30);
      }
      
      public static function §0!B§(param1:String, param2:§,C§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§'!"§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §8]§[param1]).child(§]!q§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.getTexture(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(!(_loc12_ && § j§))
               {
                  _loc3_.addChildAt(_loc8_,0);
                  while(true)
                  {
                     _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                     addr116:
                     loop2:
                     while(true)
                     {
                        addr93:
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                           addr103:
                           while(!_loc12_)
                           {
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr131:
               }
               while(true)
               {
                  _loc8_.smoothing = true;
                  if(_loc11_)
                  {
                     if(_loc11_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr93);
                     }
                     else
                     {
                        §§goto(addr131);
                     }
                  }
                  §§goto(addr103);
               }
            }
         }
         return _loc3_;
      }
   }
}
