package §2`§
{
   import §3!J§.§4!2§;
   import §3!J§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §6y§
   {
      
      private static const §'!o§:String = "compositeSprite";
      
      private static const §%"6§:String = "group";
      
      private static const §=z§:String = "sprite";
      
      private static var §?8§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'!o§ = "compositeSprite";
            loop0:
            while(true)
            {
               §%"6§ = "group";
               while(true)
               {
                  §=z§ = "sprite";
                  addr56:
                  while(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §?8§ = new Dictionary();
            if(!(_loc1_ && §6y§))
            {
               break;
            }
            §§goto(addr56);
         }
      }
      
      public function §6y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §@!%§(param1:XML) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         var _loc2_:XMLList = param1.child(§'!o§);
         if(!(_loc8_ && param1))
         {
            §^P§(_loc2_);
         }
         var _loc3_:XMLList = param1.child(§%"6§);
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = _loc4_.child(§'!o§);
            if(!_loc8_)
            {
               §^P§(_loc2_);
            }
         }
      }
      
      protected static function §^P§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               §?8§[String(_loc2_.@name)] = _loc2_;
            }
         }
      }
      
      public static function §'!L§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§?8§[param1] == null);
         if(!(_loc2_ && param1))
         {
            return !§§pop();
         }
      }
      
      public static function §=!0§(param1:String, param2:§%!!§, param3:Boolean = true) : §3!J§.Sprite
      {
         return §9![§(param1,param2,null,param3);
      }
      
      public static function §9![§(param1:String, param2:§%!!§, param3:§3!J§.Sprite, param4:Boolean = true) : §3!J§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:§4!2§ = null;
         var _loc10_:XML = null;
         var _loc11_:§5E§ = null;
         if(!(_loc12_ && param1))
         {
            if(!param3)
            {
               addr35:
               param3 = new §3!J§.Sprite();
            }
            var _loc5_:XML;
            if(!(_loc5_ = §?8§[param1]))
            {
               if(_loc13_ || param3)
               {
                  return null;
               }
            }
            var _loc6_:int = 0;
            var _loc8_:XMLList;
            var _loc9_:* = int((_loc8_ = _loc5_.child(§=z§)).length() - 1);
            loop0:
            while(_loc9_ >= 0)
            {
               _loc10_ = _loc8_[_loc9_];
               if(_loc11_ = param2.§5!X§(_loc10_.@name))
               {
                  if(!(_loc13_ || §6y§))
                  {
                     continue;
                  }
                  §§push(_loc6_);
                  if(!(_loc12_ && §6y§))
                  {
                     if(§§pop() >= param3.numChildren)
                     {
                        if(_loc12_ && param1)
                        {
                           continue;
                        }
                        _loc7_ = new §4!2§(_loc11_.texture,false,param4);
                        if(!_loc12_)
                        {
                           param3.addChild(_loc7_);
                           if(_loc13_)
                           {
                              addr144:
                              _loc7_.x = parseInt(_loc10_.@x) - _loc11_.pivotX;
                              if(!(_loc12_ && param1))
                              {
                                 _loc7_.y = parseInt(_loc10_.@y) - _loc11_.pivotY;
                                 addr160:
                              }
                              while(true)
                              {
                                 _loc7_.scaleX = _loc11_.scale;
                                 loop2:
                                 for(; !(_loc12_ && §6y§); while(_loc13_ || param1)
                                 {
                                    _loc6_++;
                                    if(!_loc13_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr165);
                                 })
                                 {
                                    _loc7_.scaleY = _loc11_.scale;
                                    while(true)
                                    {
                                       addr174:
                                       addr216:
                                       while(true)
                                       {
                                          _loc7_.name = _loc10_.@tag;
                                          continue loop2;
                                       }
                                       addr220:
                                       §§push(_loc9_);
                                       addr165:
                                       if(!_loc12_)
                                       {
                                          addr219:
                                          §§push(§§pop() - 1);
                                       }
                                       _loc9_ = §§pop();
                                       continue loop0;
                                       if(!(_loc13_ || param3))
                                       {
                                          continue;
                                       }
                                       if(false)
                                       {
                                          §§goto(addr174);
                                       }
                                       else
                                       {
                                          §§goto(addr216);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr160);
                     }
                     else
                     {
                        (_loc7_ = param3.getChildAt(_loc6_) as §4!2§).texture = _loc11_.texture;
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr219);
               }
               §§goto(addr216);
            }
            if(!_loc12_)
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
         §§goto(addr35);
      }
      
      public static function §-&§(param1:String, param2:§%!!§) : flash.display.Sprite
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XML = null;
         var _loc7_:§5E§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §?8§[param1]).child(§=z§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§5!X§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(_loc12_ || param2)
               {
                  _loc3_.addChildAt(_loc8_,0);
                  while(true)
                  {
                     _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                     addr122:
                     loop2:
                     while(true)
                     {
                        addr99:
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                           addr109:
                           while(_loc12_)
                           {
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr137:
               }
               while(true)
               {
                  _loc8_.smoothing = true;
                  if(_loc12_ || param1)
                  {
                     if(!_loc11_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr99);
                     }
                     else
                     {
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr109);
               }
            }
         }
         return _loc3_;
      }
   }
}
