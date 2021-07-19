package §9_§
{
   import §[x§.§2^§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §&!F§
   {
      
      public static const §>X§:Number = 100;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>X§ = 100;
         }
      }
      
      public function §&!F§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §"!A§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(!_loc7_)
         {
            if(param1)
            {
               addr30:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(!(_loc7_ && param1))
               {
                  param1.removeChild(_loc5_);
                  addr59:
                  if(param2)
                  {
                     _loc3_.x *= §>X§ / 100;
                     if(_loc6_)
                     {
                        _loc3_.y *= §>X§ / 100;
                        _loc3_.height *= §>X§ / 100;
                        _loc3_.width *= §>X§ / 100;
                        _loc4_[0] = new b2Vec2(_loc3_.x * §2^§.§,]§,_loc3_.y * §2^§.§,]§);
                        addr161:
                        while(true)
                        {
                           _loc4_[1] = new b2Vec2(_loc3_.x * §2^§.§,]§,(_loc3_.y + _loc3_.height) * §2^§.§,]§);
                        }
                        addr186:
                        addr215:
                     }
                     loop0:
                     while(true)
                     {
                        _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §2^§.§,]§,(_loc3_.y + _loc3_.height) * §2^§.§,]§);
                        while(!_loc7_)
                        {
                           _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §2^§.§,]§,_loc3_.y * §2^§.§,]§);
                           if(_loc6_)
                           {
                              _loc4_.reverse();
                              if(!_loc7_)
                              {
                                 return _loc4_;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                        §§goto(addr186);
                     }
                  }
                  §§goto(addr161);
               }
               §§goto(addr215);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr59);
         }
         §§goto(addr30);
      }
      
      public static function §@!&§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(!(_loc7_ && _loc3_))
         {
            if(param1)
            {
               addr35:
               _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
               param1.removeChild(_loc5_);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            if(param2)
            {
               _loc4_.x *= §>X§ / 100;
               _loc4_.y *= §>X§ / 100;
               _loc4_.height *= §>X§ / 100;
               while(true)
               {
                  _loc4_.width *= §>X§ / 100;
                  addr134:
                  while(_loc6_ || §&!F§)
                  {
                     _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §2^§.§,]§;
                     while(!_loc7_)
                     {
                        _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §2^§.§,]§;
                        if(_loc6_ || §&!F§)
                        {
                           return _loc3_;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(_loc4_.width != _loc4_.height)
               {
               }
               _loc3_[0] = _loc4_.width * §2^§.§,]§ / 2;
               §§goto(addr134);
            }
         }
         §§goto(addr35);
      }
      
      public static function §if §(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(_loc7_ || param1)
         {
            if(!param1)
            {
               if(!_loc6_)
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
            while(true)
            {
               if(_loc4_ >= _loc3_.numChildren)
               {
                  if(!(_loc6_ && §&!F§))
                  {
                     _loc2_.reverse();
                     if(_loc7_ || _loc3_)
                     {
                        break;
                     }
                     return _loc2_;
                     addr168:
                  }
                  §§goto(addr173);
               }
               _loc2_[_loc4_] = new b2Vec2();
               if(_loc6_ && §&!F§)
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(!_loc6_)
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §2^§.§,]§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §2^§.§,]§);
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               _loc4_++;
            }
            if(_loc2_.length >= 3)
            {
               do
               {
                  param1.removeChild(_loc3_);
               }
               while(!_loc7_);
               
               if(_loc7_ || param1)
               {
                  §§goto(addr168);
               }
            }
            addr173:
            return null;
         }
         addr37:
         return §"!A§(param1,false);
      }
   }
}
