package §+!8§
{
   import §"!I§.§^!2§;
   import §6A§.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §1!@§
   {
      
      public static const §#0§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §#0§ = 100;
         }
      }
      
      public function §1!@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §`!T§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(!(_loc7_ && _loc3_))
         {
            if(param1)
            {
               addr35:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(!(_loc7_ && §1!@§))
               {
                  param1.removeChild(_loc5_);
                  if(!_loc7_)
                  {
                     addr66:
                     if(param2)
                     {
                        if(_loc6_ || param1)
                        {
                           addr75:
                           _loc3_.x *= §#0§ / 100;
                           if(_loc6_ || param2)
                           {
                              _loc3_.y *= §#0§ / 100;
                              while(true)
                              {
                                 _loc3_.height *= §#0§ / 100;
                                 addr101:
                                 if(_loc7_ && §1!@§)
                                 {
                                    continue;
                                 }
                                 return _loc4_;
                                 addr108:
                              }
                           }
                        }
                        while(true)
                        {
                           _loc3_.width *= §#0§ / 100;
                           loop2:
                           while(_loc6_ || param1)
                           {
                              while(true)
                              {
                                 _loc4_[0] = new b2Vec2(_loc3_.x * §^!2§.§3!S§,_loc3_.y * §^!2§.§3!S§);
                                 addr221:
                                 while(true)
                                 {
                                    _loc4_[1] = new b2Vec2(_loc3_.x * §^!2§.§3!S§,(_loc3_.y + _loc3_.height) * §^!2§.§3!S§);
                                    loop5:
                                    while(!(_loc7_ && §1!@§))
                                    {
                                       _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §^!2§.§3!S§,(_loc3_.y + _loc3_.height) * §^!2§.§3!S§);
                                       while(true)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §^!2§.§3!S§,_loc3_.y * §^!2§.§3!S§);
                                             continue;
                                          }
                                          continue loop5;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              §§goto(addr108);
                           }
                        }
                     }
                     §§goto(addr206);
                  }
                  §§goto(addr75);
               }
               §§goto(addr221);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr66);
         }
         §§goto(addr35);
      }
      
      public static function §>!B§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(!_loc7_)
         {
            if(param1)
            {
               addr30:
               _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
               if(!(_loc7_ && _loc3_))
               {
                  param1.removeChild(_loc5_);
                  if(!_loc7_)
                  {
                     addr57:
                     if(param2)
                     {
                        if(!_loc7_)
                        {
                           _loc4_.x *= §#0§ / 100;
                           if(_loc6_)
                           {
                              _loc4_.y *= §#0§ / 100;
                              while(true)
                              {
                                 _loc4_.height *= §#0§ / 100;
                                 loop1:
                                 for(; !(_loc7_ && param2); if(_loc7_ && _loc3_)
                                 {
                                    continue;
                                 },§§goto(addr117))
                                 {
                                    _loc4_.width *= §#0§ / 100;
                                    loop2:
                                    while(true)
                                    {
                                       addr141:
                                       while(true)
                                       {
                                          if(_loc4_.width != _loc4_.height)
                                          {
                                             continue loop2;
                                          }
                                          addr153:
                                          addr153:
                                          loop3:
                                          while(true)
                                          {
                                             _loc3_[0] = _loc4_.width * §^!2§.§3!S§ / 2;
                                             loop4:
                                             while(true)
                                             {
                                                _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §^!2§.§3!S§;
                                                loop5:
                                                while(!(_loc7_ && §1!@§))
                                                {
                                                   while(true)
                                                   {
                                                      _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §^!2§.§3!S§;
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop5;
                                                   }
                                                   return _loc3_;
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr153);
               }
               §§goto(addr173);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr57);
         }
         §§goto(addr30);
      }
      
      public static function §;7§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(!(_loc6_ && _loc2_))
         {
            if(!param1)
            {
               if(!(_loc6_ && param1))
               {
                  §§goto(addr42);
               }
            }
            var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
            loop0:
            while(true)
            {
               if(_loc4_ < _loc3_.numChildren)
               {
                  _loc2_[_loc4_] = new b2Vec2();
                  if(_loc6_)
                  {
                     break;
                  }
                  _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §^!2§.§3!S§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §^!2§.§3!S§);
                     if(_loc7_ || _loc3_)
                     {
                        _loc4_++;
                     }
                  }
                  continue;
               }
               if(!(_loc6_ && param1))
               {
                  _loc2_.reverse();
                  if(!_loc6_)
                  {
                     if(_loc2_.length >= 3)
                     {
                        while(true)
                        {
                           param1.removeChild(_loc3_);
                           if(!_loc6_)
                           {
                              break;
                           }
                           break loop0;
                        }
                        if(!_loc6_)
                        {
                           return _loc2_;
                           addr168:
                        }
                        addr150:
                     }
                     return null;
                     addr144:
                  }
                  §§goto(addr168);
               }
               §§goto(addr144);
            }
            while(true)
            {
               §§goto(addr150);
            }
         }
         addr42:
         return §`!T§(param1,false);
      }
   }
}
