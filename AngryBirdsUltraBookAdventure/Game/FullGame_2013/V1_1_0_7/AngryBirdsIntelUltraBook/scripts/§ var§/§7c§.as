package § var§
{
   import §&H§.b2Vec2;
   import §40§.§5G§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §7c§
   {
      
      public static const §=v§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=v§ = 100;
         }
      }
      
      public function §7c§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §[T§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(_loc6_ || param2)
         {
            if(param1)
            {
               addr35:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(!(_loc7_ && param1))
               {
                  param1.removeChild(_loc5_);
                  if(_loc6_)
                  {
                     addr66:
                     if(param2)
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           _loc3_.x *= §=v§ / 100;
                           if(_loc6_ || param2)
                           {
                              _loc3_.y *= §=v§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc3_.height *= §=v§ / 100;
                                 while(true)
                                 {
                                    _loc3_.width *= §=v§ / 100;
                                    addr248:
                                    while(true)
                                    {
                                       addr213:
                                       while(true)
                                       {
                                          _loc4_[0] = new b2Vec2(_loc3_.x * §5G§.§6+§,_loc3_.y * §5G§.§6+§);
                                          addr238:
                                          while(true)
                                          {
                                             _loc4_[1] = new b2Vec2(_loc3_.x * §5G§.§6+§,(_loc3_.y + _loc3_.height) * §5G§.§6+§);
                                             addr209:
                                             while(_loc7_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                    addr157:
                                    if(!(_loc6_ || param2))
                                    {
                                       continue;
                                    }
                                    _loc4_.reverse();
                                    if(!(_loc7_ && §7c§))
                                    {
                                       if(_loc7_ && param2)
                                       {
                                          §§goto(addr238);
                                       }
                                       return _loc4_;
                                       addr113:
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          if(!(_loc6_ || param1))
                                          {
                                             break;
                                          }
                                          §§goto(addr157);
                                       }
                                       addr187:
                                       while(_loc6_)
                                       {
                                          _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §5G§.§6+§,_loc3_.y * §5G§.§6+§);
                                          continue loop5;
                                       }
                                       §§goto(addr248);
                                    }
                                    addr164:
                                    §§goto(addr209);
                                 }
                              }
                              addr90:
                           }
                           while(true)
                           {
                              _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §5G§.§6+§,(_loc3_.y + _loc3_.height) * §5G§.§6+§);
                              §§goto(addr187);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr213);
                     addr57:
                  }
                  §§goto(addr90);
               }
               §§goto(addr57);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr66);
         }
         §§goto(addr35);
      }
      
      public static function §]x§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(_loc7_ || §7c§)
         {
            if(param1)
            {
               addr36:
               _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
               if(!(_loc6_ && _loc3_))
               {
                  param1.removeChild(_loc5_);
                  if(!(_loc6_ && _loc3_))
                  {
                     addr68:
                     if(param2)
                     {
                        if(!_loc6_)
                        {
                           _loc4_.x *= §=v§ / 100;
                           if(!_loc6_)
                           {
                              _loc4_.y *= §=v§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc4_.height *= §=v§ / 100;
                                 addr216:
                                 loop4:
                                 while(true)
                                 {
                                    _loc4_.width *= §=v§ / 100;
                                    addr199:
                                    while(true)
                                    {
                                       if(_loc6_ && param2)
                                       {
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          if(_loc4_.width != _loc4_.height)
                                          {
                                             if(_loc7_ || §7c§)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             addr169:
                                             _loc3_[0] = _loc4_.width * §5G§.§6+§ / 2;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              addr225:
                           }
                           loop1:
                           while(true)
                           {
                              _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §5G§.§6+§;
                              while(_loc7_ || param2)
                              {
                                 _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §5G§.§6+§;
                                 if(!(_loc7_ || param2))
                                 {
                                    continue;
                                 }
                                 if(_loc7_ || param1)
                                 {
                                    break loop1;
                                 }
                                 §§goto(addr199);
                              }
                           }
                           return _loc3_;
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr150);
                  }
               }
               §§goto(addr225);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr68);
         }
         §§goto(addr36);
      }
      
      public static function §=!"§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(_loc7_ || §7c§)
         {
            if(!param1)
            {
               if(!(_loc6_ && _loc3_))
               {
                  §§goto(addr42);
               }
            }
            var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
            while(true)
            {
               if(_loc4_ < _loc3_.numChildren)
               {
                  _loc2_[_loc4_] = new b2Vec2();
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
                  if(!_loc6_)
                  {
                     _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §5G§.§6+§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §5G§.§6+§);
                     if(_loc6_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  _loc4_++;
                  continue;
               }
               if(!(_loc6_ && param1))
               {
                  break;
               }
               while(true)
               {
                  §§goto(addr155);
               }
            }
            _loc2_.reverse();
            if(_loc7_)
            {
               if(_loc2_.length >= 3)
               {
                  addr155:
                  while(true)
                  {
                     param1.removeChild(_loc3_);
                     if(_loc7_)
                     {
                        break;
                     }
                     continue loop2;
                  }
                  if(_loc7_)
                  {
                     return _loc2_;
                     addr163:
                  }
                  else
                  {
                     addr168:
                  }
                  return null;
               }
               §§goto(addr168);
            }
            §§goto(addr163);
         }
         addr42:
         return §[T§(param1,false);
      }
   }
}
