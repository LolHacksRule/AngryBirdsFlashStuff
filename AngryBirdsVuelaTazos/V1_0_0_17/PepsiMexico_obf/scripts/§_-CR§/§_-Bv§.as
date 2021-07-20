package §_-CR§
{
   import §_-Ja§.b2Vec2;
   import §_-OJ§.§_-tL§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §_-Bv§
   {
      
      public static const §_-CO§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-CO§ = 100;
         }
      }
      
      public function §_-Bv§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §_-o5§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(_loc7_)
         {
            if(param1)
            {
               addr28:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               param1.removeChild(_loc5_);
               if(!_loc6_)
               {
                  addr52:
                  if(param2)
                  {
                     _loc3_.x *= §_-CO§ / 100;
                     _loc3_.y *= §_-CO§ / 100;
                     if(!_loc6_)
                     {
                        _loc3_.height *= §_-CO§ / 100;
                        _loc3_.width *= §_-CO§ / 100;
                        addr80:
                     }
                  }
                  _loc4_[0] = new b2Vec2(_loc3_.x * §_-tL§.§_-7m§,_loc3_.y * §_-tL§.§_-7m§);
                  if(!(_loc6_ && param2))
                  {
                     _loc4_[1] = new b2Vec2(_loc3_.x * §_-tL§.§_-7m§,(_loc3_.y + _loc3_.height) * §_-tL§.§_-7m§);
                     if(_loc7_)
                     {
                        addr137:
                        _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §_-tL§.§_-7m§,(_loc3_.y + _loc3_.height) * §_-tL§.§_-7m§);
                        _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §_-tL§.§_-7m§,_loc3_.y * §_-tL§.§_-7m§);
                        _loc4_.reverse();
                     }
                     return _loc4_;
                  }
                  §§goto(addr137);
               }
               §§goto(addr80);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr52);
         }
         §§goto(addr28);
      }
      
      public static function §_-y2§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(_loc6_ || param2)
         {
            if(param1)
            {
               §§goto(addr32);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr57);
         }
         addr32:
         _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
         param1.removeChild(_loc5_);
         if(!(_loc7_ && param2))
         {
            addr57:
            if(param2)
            {
               if(!_loc7_)
               {
                  _loc4_.x *= §_-CO§ / 100;
                  if(!_loc7_)
                  {
                     _loc4_.y *= §_-CO§ / 100;
                     if(_loc6_)
                     {
                        _loc4_.height *= §_-CO§ / 100;
                        _loc4_.width *= §_-CO§ / 100;
                        if(_loc6_)
                        {
                           §§goto(addr106);
                        }
                        _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §_-tL§.§_-7m§;
                     }
                     addr106:
                     if(_loc4_.width != _loc4_.height)
                     {
                        if(_loc7_)
                        {
                        }
                        §§goto(addr158);
                     }
                     _loc3_[0] = _loc4_.width * §_-tL§.§_-7m§ / 2;
                     if(!_loc6_)
                     {
                     }
                     §§goto(addr158);
                  }
               }
               _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §_-tL§.§_-7m§;
               §§goto(addr158);
            }
            §§goto(addr106);
         }
         addr158:
         return _loc3_;
      }
      
      public static function §_-xT§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(_loc7_)
         {
            if(!param1)
            {
               if(_loc7_)
               {
                  §§goto(addr29);
               }
            }
            var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
            while(true)
            {
               if(_loc4_ >= _loc3_.numChildren)
               {
                  if(_loc7_)
                  {
                     _loc2_.reverse();
                     if(!_loc6_)
                     {
                        if(_loc2_.length < 3)
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr145:
                           param1.removeChild(_loc3_);
                        }
                        return _loc2_;
                     }
                     §§goto(addr145);
                  }
                  break;
               }
               _loc2_[_loc4_] = new b2Vec2();
               if(_loc6_ && param1)
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(!_loc6_)
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §_-tL§.§_-7m§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §_-tL§.§_-7m§);
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               _loc4_++;
            }
            return null;
         }
         addr29:
         return §_-o5§(param1,false);
      }
   }
}
