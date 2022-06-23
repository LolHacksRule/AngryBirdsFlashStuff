package §!+§
{
   import §?b§.§7!,§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §'H§
   {
      
      public static const §&o§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&o§ = 100;
         }
      }
      
      public function §'H§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §4p§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(_loc6_ || §'H§)
         {
            if(param1)
            {
               addr35:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(_loc6_)
               {
                  param1.removeChild(_loc5_);
               }
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            if(param2)
            {
               if(_loc6_)
               {
                  _loc3_.x *= §&o§ / 100;
                  if(_loc6_ || §'H§)
                  {
                     _loc3_.y *= §&o§ / 100;
                     if(!(_loc7_ && _loc3_))
                     {
                        _loc3_.height *= §&o§ / 100;
                        addr111:
                        _loc3_.width *= §&o§ / 100;
                        if(_loc6_)
                        {
                           addr121:
                           _loc4_[0] = new b2Vec2(_loc3_.x * §7!,§.§ '§,_loc3_.y * §7!,§.§ '§);
                           if(!(_loc7_ && param2))
                           {
                              _loc4_[1] = new b2Vec2(_loc3_.x * §7!,§.§ '§,(_loc3_.y + _loc3_.height) * §7!,§.§ '§);
                              _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §7!,§.§ '§,(_loc3_.y + _loc3_.height) * §7!,§.§ '§);
                              if(!(_loc7_ && §'H§))
                              {
                                 _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §7!,§.§ '§,_loc3_.y * §7!,§.§ '§);
                                 addr217:
                                 _loc4_.reverse();
                              }
                           }
                        }
                        §§goto(addr217);
                     }
                     return _loc4_;
                  }
                  §§goto(addr111);
               }
               §§goto(addr217);
            }
            §§goto(addr121);
         }
         §§goto(addr35);
      }
      
      public static function §,y§(param1:MovieClip, param2:Boolean) : Array
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
               if(_loc6_)
               {
                  param1.removeChild(_loc5_);
                  if(_loc6_)
                  {
                     addr52:
                     if(param2)
                     {
                        addr54:
                        _loc4_.x *= §&o§ / 100;
                        if(_loc6_ || param2)
                        {
                           _loc4_.y *= §&o§ / 100;
                           if(_loc6_ || _loc3_)
                           {
                              _loc4_.height *= §&o§ / 100;
                              _loc4_.width *= §&o§ / 100;
                              if(_loc6_ || §'H§)
                              {
                                 addr117:
                                 if(_loc4_.width != _loc4_.height)
                                 {
                                 }
                                 _loc3_[0] = _loc4_.width * §7!,§.§ '§ / 2;
                                 addr142:
                                 _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §7!,§.§ '§;
                                 addr122:
                              }
                              _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §7!,§.§ '§;
                              return _loc3_;
                           }
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr54);
               }
               §§goto(addr122);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr52);
         }
         §§goto(addr30);
      }
      
      public static function §4_§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(_loc6_ || param1)
         {
            if(!param1)
            {
               if(!_loc7_)
               {
                  §§goto(addr36);
               }
            }
            var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
            while(true)
            {
               if(_loc4_ >= _loc3_.numChildren)
               {
                  if(_loc6_)
                  {
                     _loc2_.reverse();
                     if(!_loc7_)
                     {
                        §§goto(addr143);
                     }
                     break;
                  }
                  addr143:
                  if(_loc2_.length < 3)
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  param1.removeChild(_loc3_);
               }
               _loc2_[_loc4_] = new b2Vec2();
               if(!(_loc6_ || §'H§))
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(!(_loc7_ && §'H§))
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §7!,§.§ '§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §7!,§.§ '§);
                  if(!_loc7_)
                  {
                     _loc4_++;
                  }
               }
               continue;
               return _loc2_;
            }
            return null;
         }
         addr36:
         return §4p§(param1,false);
      }
   }
}
