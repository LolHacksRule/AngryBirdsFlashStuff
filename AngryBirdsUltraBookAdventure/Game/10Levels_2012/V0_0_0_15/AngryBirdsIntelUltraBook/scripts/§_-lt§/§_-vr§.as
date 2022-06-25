package §_-lt§
{
   import §_-TG§.§_-00u§;
   import §_-Yp§.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §_-vr§
   {
      
      public static const §_-si§:Number = 100;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-si§ = 100;
         }
      }
      
      public function §_-vr§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §_-ld§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(!(_loc6_ && param1))
         {
            if(param1)
            {
               addr36:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(!(_loc6_ && param1))
               {
                  param1.removeChild(_loc5_);
                  if(_loc7_)
                  {
                     addr67:
                     if(param2)
                     {
                        if(!_loc6_)
                        {
                           _loc3_.x *= §_-si§ / 100;
                           if(!(_loc6_ && param2))
                           {
                              _loc3_.y *= §_-si§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc3_.height *= §_-si§ / 100;
                                 addr244:
                                 while(true)
                                 {
                                    _loc3_.width *= §_-si§ / 100;
                                    addr234:
                                    while(true)
                                    {
                                       addr199:
                                       while(true)
                                       {
                                          _loc4_[0] = new b2Vec2(_loc3_.x * §_-00u§.§_-lY§,_loc3_.y * §_-00u§.§_-lY§);
                                       }
                                       addr106:
                                       if(_loc7_ || param2)
                                       {
                                          if(!_loc6_)
                                          {
                                             return _loc4_;
                                             addr125:
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              addr86:
                           }
                           loop3:
                           while(true)
                           {
                              _loc4_[1] = new b2Vec2(_loc3_.x * §_-00u§.§_-lY§,(_loc3_.y + _loc3_.height) * §_-00u§.§_-lY§);
                              addr197:
                              while(true)
                              {
                                 _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §_-00u§.§_-lY§,(_loc3_.y + _loc3_.height) * §_-00u§.§_-lY§);
                                 addr175:
                                 while(!_loc6_)
                                 {
                                    _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §_-00u§.§_-lY§,_loc3_.y * §_-00u§.§_-lY§);
                                    continue loop3;
                                 }
                                 §§goto(addr244);
                              }
                           }
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr86);
               }
               §§goto(addr234);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr67);
         }
         §§goto(addr36);
      }
      
      public static function §_-07r§(param1:MovieClip, param2:Boolean) : Array
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
               if(!(_loc6_ && param2))
               {
                  param1.removeChild(_loc5_);
                  if(!_loc6_)
                  {
                     addr63:
                     if(param2)
                     {
                        if(!_loc6_)
                        {
                           _loc4_.x *= §_-si§ / 100;
                           if(!(_loc6_ && param2))
                           {
                              _loc4_.y *= §_-si§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc4_.height *= §_-si§ / 100;
                                 while(true)
                                 {
                                    _loc4_.width *= §_-si§ / 100;
                                    addr172:
                                    while(!_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          addr135:
                                          while(true)
                                          {
                                             if(_loc4_.width != _loc4_.height)
                                             {
                                                if(!_loc6_)
                                                {
                                                   addr142:
                                                   while(true)
                                                   {
                                                      _loc3_[0] = _loc4_.width * §_-00u§.§_-lY§ / 2;
                                                   }
                                                   addr142:
                                                }
                                                while(true)
                                                {
                                                   _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §_-00u§.§_-lY§;
                                                }
                                                addr152:
                                             }
                                             §§goto(addr142);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §_-00u§.§_-lY§;
                              if(_loc6_)
                              {
                                 continue;
                              }
                              if(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr152);
                           }
                           return _loc3_;
                           addr118:
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr118);
               }
               §§goto(addr142);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr63);
         }
         §§goto(addr36);
      }
      
      public static function §_-dR§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(_loc6_ || _loc3_)
         {
            if(!param1)
            {
               if(_loc6_)
               {
                  return §_-ld§(param1,false);
               }
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
                  if(_loc6_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     addr144:
                     while(true)
                     {
                        param1.removeChild(_loc3_);
                        if(!(_loc7_ && _loc3_))
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  if(_loc6_)
                  {
                     return _loc2_;
                  }
                  addr162:
                  return null;
               }
               break;
            }
            _loc2_[_loc4_] = new b2Vec2();
            if(!_loc6_)
            {
               break;
            }
            _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
            if(_loc6_)
            {
               _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §_-00u§.§_-lY§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §_-00u§.§_-lY§);
               if(_loc6_)
               {
                  _loc4_++;
               }
            }
         }
         if(_loc2_.length >= 3)
         {
            §§goto(addr144);
         }
         §§goto(addr162);
      }
   }
}
