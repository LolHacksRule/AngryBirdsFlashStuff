package §]![§
{
   import §+&§.§-!7§;
   import §8>§.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §9!p§
   {
      
      public static const §+v§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+v§ = 100;
         }
      }
      
      public function §9!p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §>q§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(!(_loc7_ && param1))
         {
            if(param1)
            {
               addr35:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(!_loc7_)
               {
                  param1.removeChild(_loc5_);
                  if(_loc6_ || param2)
                  {
                     addr66:
                     if(param2)
                     {
                        if(!(_loc7_ && §9!p§))
                        {
                           _loc3_.x *= §+v§ / 100;
                           if(_loc6_ || §9!p§)
                           {
                              _loc3_.y *= §+v§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc3_.height *= §+v§ / 100;
                                 loop1:
                                 while(true)
                                 {
                                    _loc3_.width *= §+v§ / 100;
                                    addr238:
                                    while(true)
                                    {
                                       addr203:
                                       while(true)
                                       {
                                          _loc4_[0] = new b2Vec2(_loc3_.x * §-!7§.§8!r§,_loc3_.y * §-!7§.§8!r§);
                                          addr228:
                                          while(true)
                                          {
                                             _loc4_[1] = new b2Vec2(_loc3_.x * §-!7§.§8!r§,(_loc3_.y + _loc3_.height) * §-!7§.§8!r§);
                                             addr201:
                                             loop5:
                                             while(true)
                                             {
                                                _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §-!7§.§8!r§,(_loc3_.y + _loc3_.height) * §-!7§.§8!r§);
                                                addr177:
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §-!7§.§8!r§,_loc3_.y * §-!7§.§8!r§);
                              addr138:
                              while(_loc6_ || param2)
                              {
                                 if(_loc6_ || param2)
                                 {
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr177);
                           }
                        }
                        while(true)
                        {
                           _loc4_.reverse();
                           if(_loc6_ || param2)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr138);
                        }
                        return _loc4_;
                        addr108:
                     }
                     §§goto(addr203);
                  }
                  §§goto(addr108);
               }
               §§goto(addr201);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr66);
         }
         §§goto(addr35);
      }
      
      public static function §>v§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(_loc6_)
         {
            if(param1)
            {
               addr30:
               _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
               if(!(_loc7_ && §9!p§))
               {
                  param1.removeChild(_loc5_);
                  if(!_loc7_)
                  {
                     addr57:
                     if(param2)
                     {
                        if(_loc6_ || §9!p§)
                        {
                           _loc4_.x *= §+v§ / 100;
                           if(_loc6_)
                           {
                              _loc4_.y *= §+v§ / 100;
                              while(true)
                              {
                                 _loc4_.height *= §+v§ / 100;
                                 addr163:
                                 if(!_loc7_)
                                 {
                                    _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §-!7§.§8!r§;
                                    loop7:
                                    while(true)
                                    {
                                       if(!(_loc7_ && §9!p§))
                                       {
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          addr185:
                                          loop4:
                                          while(_loc6_ || param1)
                                          {
                                             while(true)
                                             {
                                                _loc3_[0] = _loc4_.width * §-!7§.§8!r§ / 2;
                                                addr156:
                                                addr195:
                                                while(_loc6_ || param2)
                                                {
                                                   §§goto(addr163);
                                                   continue loop7;
                                                }
                                                while(true)
                                                {
                                                   _loc4_.width *= §+v§ / 100;
                                                   break loop4;
                                                   §§goto(addr156);
                                                }
                                             }
                                          }
                                          loop2:
                                          while(true)
                                          {
                                             addr134:
                                             while(true)
                                             {
                                                if(_loc4_.width != _loc4_.height)
                                                {
                                                   continue loop2;
                                                }
                                                §§goto(addr146);
                                             }
                                          }
                                          addr139:
                                       }
                                       §§goto(addr156);
                                    }
                                    return _loc3_;
                                 }
                              }
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr134);
                  }
               }
               §§goto(addr132);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr57);
         }
         §§goto(addr30);
      }
      
      public static function §,!V§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(!_loc6_)
         {
            if(!param1)
            {
               if(_loc7_)
               {
                  return §>q§(param1,false);
               }
            }
         }
         var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
         while(true)
         {
            if(_loc4_ >= _loc3_.numChildren)
            {
               if(_loc7_)
               {
                  break;
               }
               if(_loc2_.length >= 3)
               {
                  do
                  {
                     param1.removeChild(_loc3_);
                  }
                  while(_loc6_);
                  
                  if(_loc7_)
                  {
                     return _loc2_;
                  }
               }
               addr153:
               return null;
               addr134:
            }
            _loc2_[_loc4_] = new b2Vec2();
            if(!_loc7_)
            {
               break;
            }
            _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
            if(!(_loc6_ && §9!p§))
            {
               _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §-!7§.§8!r§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §-!7§.§8!r§);
               if(_loc6_)
               {
                  continue;
               }
            }
            _loc4_++;
         }
         _loc2_.reverse();
         if(_loc7_)
         {
            §§goto(addr134);
         }
         §§goto(addr153);
      }
   }
}
