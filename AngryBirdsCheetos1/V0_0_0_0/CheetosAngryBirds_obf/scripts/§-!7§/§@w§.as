package §-!7§
{
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §@w§
   {
      
      public static const §'!$§:Number = 100;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §'!$§ = 100;
         }
      }
      
      public function §@w§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §53§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(_loc6_ || param1)
         {
            if(param1)
            {
               addr35:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(_loc6_ || param1)
               {
                  param1.removeChild(_loc5_);
                  if(!_loc7_)
                  {
                     addr66:
                     if(param2)
                     {
                        if(!_loc7_)
                        {
                           _loc3_.x *= §'!$§ / 100;
                           if(_loc6_ || §@w§)
                           {
                              _loc3_.y *= §'!$§ / 100;
                              while(true)
                              {
                                 _loc3_.height *= §'!$§ / 100;
                                 addr233:
                                 while(true)
                                 {
                                    _loc3_.width *= §'!$§ / 100;
                                 }
                                 addr167:
                                 if(_loc7_ && param1)
                                 {
                                    continue;
                                 }
                                 _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §9!%§.§catch§,_loc3_.y * §9!%§.§catch§);
                                 loop5:
                                 for(; !(_loc7_ && _loc3_); _loc4_.reverse(),if(_loc7_ && param2)
                                 {
                                    continue;
                                 },if(_loc6_)
                                 {
                                    return _loc4_;
                                 },loop4:
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§goto(addr167);
                                    }
                                    else
                                    {
                                       addr194:
                                       while(true)
                                       {
                                          _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §9!%§.§catch§,(_loc3_.y + _loc3_.height) * §9!%§.§catch§);
                                          continue loop4;
                                       }
                                       addr194:
                                    }
                                 },§§goto(addr233))
                                 {
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    addr223:
                                    while(true)
                                    {
                                       addr196:
                                       while(true)
                                       {
                                          _loc4_[0] = new b2Vec2(_loc3_.x * §9!%§.§catch§,_loc3_.y * §9!%§.§catch§);
                                          break loop5;
                                       }
                                    }
                                 }
                                 while(!_loc6_)
                                 {
                                    §§goto(addr233);
                                 }
                                 _loc4_[1] = new b2Vec2(_loc3_.x * §9!%§.§catch§,(_loc3_.y + _loc3_.height) * §9!%§.§catch§);
                                 §§goto(addr194);
                              }
                              addr85:
                              addr252:
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr85);
               }
               §§goto(addr252);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr66);
         }
         §§goto(addr35);
      }
      
      public static function §1!K§(param1:MovieClip, param2:Boolean) : Array
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
               if(!(_loc7_ && param2))
               {
                  param1.removeChild(_loc5_);
                  if(_loc6_)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr76);
               }
               §§goto(addr153);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            addr57:
            if(param2)
            {
               if(!(_loc7_ && _loc3_))
               {
                  _loc4_.x *= §'!$§ / 100;
                  if(!_loc7_)
                  {
                     _loc4_.y *= §'!$§ / 100;
                     addr76:
                     while(true)
                     {
                        _loc4_.height *= §'!$§ / 100;
                        addr185:
                        while(true)
                        {
                           _loc4_.width *= §'!$§ / 100;
                        }
                     }
                     addr76:
                     addr204:
                  }
                  while(true)
                  {
                  }
                  addr175:
               }
               §§goto(addr76);
            }
            while(true)
            {
               if(_loc4_.width != _loc4_.height)
               {
                  if(_loc6_ || _loc3_)
                  {
                     addr153:
                     while(true)
                     {
                        _loc3_[0] = _loc4_.width * §9!%§.§catch§ / 2;
                     }
                     addr153:
                  }
                  loop4:
                  while(_loc6_)
                  {
                     _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §9!%§.§catch§;
                     while(true)
                     {
                        if(_loc7_ && §@w§)
                        {
                           continue loop4;
                        }
                        if(_loc6_)
                        {
                           continue;
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr175);
               }
               §§goto(addr153);
            }
            return _loc3_;
         }
         §§goto(addr30);
      }
      
      public static function §#C§(param1:MovieClip) : Array
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
               if(_loc7_ || _loc3_)
               {
                  return §53§(param1,false);
               }
            }
         }
         var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
         while(true)
         {
            if(_loc4_ >= _loc3_.numChildren)
            {
               if(!(_loc6_ && _loc2_))
               {
                  _loc2_.reverse();
                  if(!(_loc6_ && §@w§))
                  {
                     if(_loc2_.length >= 3)
                     {
                        do
                        {
                           param1.removeChild(_loc3_);
                        }
                        while(!_loc7_);
                        
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     return null;
                  }
                  break;
               }
               break;
            }
            _loc2_[_loc4_] = new b2Vec2();
            if(!_loc7_)
            {
               break;
            }
            _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
            if(!(_loc6_ && _loc2_))
            {
               _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §9!%§.§catch§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §9!%§.§catch§);
               if(!(_loc7_ || param1))
               {
                  continue;
               }
            }
            _loc4_++;
         }
         return _loc2_;
      }
   }
}
