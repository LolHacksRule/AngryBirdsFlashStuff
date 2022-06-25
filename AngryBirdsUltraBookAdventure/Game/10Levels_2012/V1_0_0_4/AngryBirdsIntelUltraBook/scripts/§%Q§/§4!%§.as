package §%Q§
{
   import §,!5§.§^g§;
   import §>H§.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §4!%§
   {
      
      public static const §3!n§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3!n§ = 100;
         }
      }
      
      public function §4!%§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §-C§(param1:MovieClip, param2:Boolean) : Array
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
               if(!(_loc7_ && _loc3_))
               {
                  param1.removeChild(_loc5_);
                  if(_loc6_ || §4!%§)
                  {
                     addr71:
                     if(param2)
                     {
                        if(!(_loc7_ && §4!%§))
                        {
                           _loc3_.x *= §3!n§ / 100;
                           if(_loc6_)
                           {
                              _loc3_.y *= §3!n§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc3_.height *= §3!n§ / 100;
                                 addr238:
                                 while(true)
                                 {
                                    _loc3_.width *= §3!n§ / 100;
                                    addr226:
                                    while(!_loc7_)
                                    {
                                    }
                                    continue loop0;
                                 }
                              }
                              addr90:
                           }
                           while(true)
                           {
                              addr191:
                              while(true)
                              {
                                 _loc4_[0] = new b2Vec2(_loc3_.x * §^g§.§^!S§,_loc3_.y * §^g§.§^!S§);
                                 addr206:
                                 loop5:
                                 while(true)
                                 {
                                    _loc4_[1] = new b2Vec2(_loc3_.x * §^g§.§^!S§,(_loc3_.y + _loc3_.height) * §^g§.§^!S§);
                                    loop6:
                                    while(true)
                                    {
                                       _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §^g§.§^!S§,(_loc3_.y + _loc3_.height) * §^g§.§^!S§);
                                       loop7:
                                       while(!_loc7_)
                                       {
                                          _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §^g§.§^!S§,_loc3_.y * §^g§.§^!S§);
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop6;
                                             }
                                             continue loop7;
                                             addr144:
                                             _loc4_.reverse();
                                             if(!_loc7_)
                                             {
                                                return _loc4_;
                                             }
                                          }
                                          §§goto(addr226);
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr206);
               }
               §§goto(addr90);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr71);
         }
         §§goto(addr35);
      }
      
      public static function §2!T§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(!(_loc6_ && §4!%§))
         {
            if(param1)
            {
               addr36:
               _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
               if(_loc7_ || §4!%§)
               {
                  param1.removeChild(_loc5_);
                  if(_loc7_ || §4!%§)
                  {
                     addr68:
                     if(param2)
                     {
                        if(!_loc6_)
                        {
                           _loc4_.x *= §3!n§ / 100;
                           if(!_loc6_)
                           {
                              _loc4_.y *= §3!n§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc4_.height *= §3!n§ / 100;
                                 while(true)
                                 {
                                    _loc4_.width *= §3!n§ / 100;
                                    for(; !(_loc6_ && _loc3_); if(!(_loc6_ && _loc3_))
                                    {
                                       continue loop0;
                                    })
                                    {
                                       while(true)
                                       {
                                          addr164:
                                          while(true)
                                          {
                                             if(_loc4_.width != _loc4_.height)
                                             {
                                             }
                                             while(true)
                                             {
                                                _loc3_[0] = _loc4_.width * §^g§.§^!S§ / 2;
                                                §§goto(addr179);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(_loc6_ && param2)
                                 {
                                    continue;
                                 }
                                 §§goto(addr162);
                              }
                           }
                           addr179:
                           loop3:
                           while(true)
                           {
                              _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §^g§.§^!S§;
                              loop4:
                              while(true)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    continue loop2;
                                 }
                                 continue loop7;
                                 addr162:
                                 while(true)
                                 {
                                    _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §^g§.§^!S§;
                                    if(_loc7_ || param1)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop7;
                           }
                           return _loc3_;
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr164);
                  }
               }
               §§goto(addr162);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr68);
         }
         §§goto(addr36);
      }
      
      public static function §,!n§(param1:MovieClip) : Array
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
               if(!_loc6_)
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
            loop0:
            while(true)
            {
               if(_loc4_ >= _loc3_.numChildren)
               {
                  if(!_loc6_)
                  {
                     _loc2_.reverse();
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc2_.length >= 3)
                        {
                           while(true)
                           {
                              param1.removeChild(_loc3_);
                              if(_loc7_ || param1)
                              {
                                 break;
                              }
                              break loop0;
                           }
                           if(_loc7_)
                           {
                              return _loc2_;
                           }
                           addr160:
                        }
                        return null;
                     }
                     break;
                  }
                  break;
               }
               _loc2_[_loc4_] = new b2Vec2();
               if(!(_loc7_ || §4!%§))
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(!(_loc6_ && §4!%§))
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §^g§.§^!S§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §^g§.§^!S§);
                  if(_loc7_ || _loc3_)
                  {
                     _loc4_++;
                  }
               }
            }
            while(true)
            {
               §§goto(addr160);
            }
         }
         addr37:
         return §-C§(param1,false);
      }
   }
}
