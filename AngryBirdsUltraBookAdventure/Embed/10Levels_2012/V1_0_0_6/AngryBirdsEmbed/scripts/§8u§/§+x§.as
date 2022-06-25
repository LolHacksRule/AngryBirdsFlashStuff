package §8u§
{
   import §3G§.§!E§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §+x§
   {
      
      public static const §!!<§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §!!<§ = 100;
         }
      }
      
      public function §+x§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §-<§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(!(_loc6_ && §+x§))
         {
            if(param1)
            {
               §§goto(addr36);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr65);
         }
         addr36:
         _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
         if(_loc7_ || _loc3_)
         {
            param1.removeChild(_loc5_);
            addr65:
            if(param2)
            {
               if(!_loc6_)
               {
                  §§goto(addr69);
               }
               §§goto(addr213);
            }
            §§goto(addr125);
         }
         addr69:
         _loc3_.x *= §!!<§ / 100;
         if(_loc7_ || param2)
         {
            _loc3_.y *= §!!<§ / 100;
            _loc3_.height *= §!!<§ / 100;
            if(_loc7_ || §+x§)
            {
               _loc3_.width *= §!!<§ / 100;
               addr125:
               _loc4_[0] = new b2Vec2(_loc3_.x * §!E§.§#N§,_loc3_.y * §!E§.§#N§);
               if(_loc7_)
               {
                  _loc4_[1] = new b2Vec2(_loc3_.x * §!E§.§#N§,(_loc3_.y + _loc3_.height) * §!E§.§#N§);
                  if(_loc6_)
                  {
                  }
                  §§goto(addr215);
               }
               §§goto(addr213);
            }
            _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §!E§.§#N§,(_loc3_.y + _loc3_.height) * §!E§.§#N§);
            if(!_loc6_)
            {
               _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §!E§.§#N§,_loc3_.y * §!E§.§#N§);
               §§goto(addr213);
            }
            addr213:
            _loc4_.reverse();
            §§goto(addr215);
         }
         addr215:
         return _loc4_;
      }
      
      public static function §?B§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(!(_loc6_ && param2))
         {
            if(param1)
            {
               addr36:
               _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
               if(!(_loc6_ && _loc3_))
               {
                  param1.removeChild(_loc5_);
                  addr61:
                  if(param2)
                  {
                     if(!(_loc6_ && §+x§))
                     {
                        _loc4_.x *= §!!<§ / 100;
                        _loc4_.y *= §!!<§ / 100;
                        addr96:
                        _loc4_.height *= §!!<§ / 100;
                        _loc4_.width *= §!!<§ / 100;
                        addr112:
                        if(_loc4_.width != _loc4_.height)
                        {
                           if(_loc7_)
                           {
                              addr119:
                              _loc3_[0] = _loc4_.width * §!E§.§#N§ / 2;
                              if(!(_loc6_ && param1))
                              {
                                 addr146:
                                 _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §!E§.§#N§;
                                 if(!_loc7_)
                                 {
                                 }
                                 §§goto(addr174);
                              }
                              _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §!E§.§#N§;
                           }
                           addr174:
                           return _loc3_;
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr112);
               }
               §§goto(addr96);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr61);
         }
         §§goto(addr36);
      }
      
      public static function §"!G§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(!_loc7_)
         {
            if(!param1)
            {
               if(_loc6_)
               {
                  §§goto(addr31);
               }
            }
            var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
            while(true)
            {
               if(_loc4_ >= _loc3_.numChildren)
               {
                  if(!(_loc7_ && §+x§))
                  {
                     _loc2_.reverse();
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr146);
               }
               _loc2_[_loc4_] = new b2Vec2();
               if(_loc7_)
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(_loc6_)
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §!E§.§#N§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §!E§.§#N§);
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               _loc4_++;
            }
            if(_loc2_.length < 3)
            {
               if(!_loc7_)
               {
                  addr139:
                  return null;
               }
            }
            param1.removeChild(_loc3_);
            addr146:
            return _loc2_;
         }
         addr31:
         return §-<§(param1,false);
      }
   }
}
