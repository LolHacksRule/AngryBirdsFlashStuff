package §>!'§
{
   import §<!<§.§7E§;
   import §<!B§.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §!B§
   {
      
      public static const §?!B§:Number = 100;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?!B§ = 100;
         }
      }
      
      public function §!B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §!!p§(param1:MovieClip, param2:Boolean) : Array
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
               param1.removeChild(_loc5_);
               if(_loc6_ || param2)
               {
                  addr64:
                  if(param2)
                  {
                     _loc3_.x *= §?!B§ / 100;
                     if(_loc6_)
                     {
                        _loc3_.y *= §?!B§ / 100;
                        if(_loc6_)
                        {
                           _loc3_.height *= §?!B§ / 100;
                           if(!_loc7_)
                           {
                              _loc3_.width *= §?!B§ / 100;
                              if(!(_loc7_ && param1))
                              {
                                 addr121:
                                 _loc4_[0] = new b2Vec2(_loc3_.x * §7E§.§8!'§,_loc3_.y * §7E§.§8!'§);
                                 _loc4_[1] = new b2Vec2(_loc3_.x * §7E§.§8!'§,(_loc3_.y + _loc3_.height) * §7E§.§8!'§);
                                 if(!(_loc7_ && param2))
                                 {
                                    _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §7E§.§8!'§,(_loc3_.y + _loc3_.height) * §7E§.§8!'§);
                                    if(_loc7_)
                                    {
                                    }
                                    §§goto(addr214);
                                 }
                              }
                           }
                        }
                        _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §7E§.§8!'§,_loc3_.y * §7E§.§8!'§);
                        _loc4_.reverse();
                     }
                     addr214:
                     return _loc4_;
                  }
               }
               §§goto(addr121);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr64);
         }
         §§goto(addr35);
      }
      
      public static function §!!F§(param1:MovieClip, param2:Boolean) : Array
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
               §§goto(addr36);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr58);
         }
         addr36:
         _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
         if(_loc7_)
         {
            param1.removeChild(_loc5_);
            if(!_loc6_)
            {
               addr58:
               if(param2)
               {
                  _loc4_.x *= §?!B§ / 100;
                  §§goto(addr78);
               }
               §§goto(addr109);
            }
            §§goto(addr78);
         }
         addr78:
         _loc4_.y *= §?!B§ / 100;
         if(!(_loc6_ && §!B§))
         {
            _loc4_.height *= §?!B§ / 100;
            _loc4_.width *= §?!B§ / 100;
            addr109:
            if(_loc4_.width != _loc4_.height)
            {
            }
            _loc3_[0] = _loc4_.width * §7E§.§8!'§ / 2;
         }
         _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §7E§.§8!'§;
         _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §7E§.§8!'§;
         return _loc3_;
      }
      
      public static function §]!P§(param1:MovieClip) : Array
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
               if(_loc6_ || §!B§)
               {
                  §§goto(addr36);
               }
            }
            var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
            while(true)
            {
               if(_loc4_ >= _loc3_.numChildren)
               {
                  if(_loc6_ || _loc2_)
                  {
                     _loc2_.reverse();
                     if(_loc6_ || param1)
                     {
                        if(_loc2_.length < 3)
                        {
                           if(!(_loc7_ && _loc2_))
                           {
                              §§goto(addr159);
                           }
                        }
                        param1.removeChild(_loc3_);
                        break;
                     }
                     addr159:
                     return null;
                  }
                  break;
               }
               _loc2_[_loc4_] = new b2Vec2();
               if(!(_loc6_ || param1))
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(_loc6_)
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §7E§.§8!'§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §7E§.§8!'§);
                  if(_loc6_)
                  {
                     _loc4_++;
                  }
               }
            }
            return _loc2_;
         }
         addr36:
         return §!!p§(param1,false);
      }
   }
}
