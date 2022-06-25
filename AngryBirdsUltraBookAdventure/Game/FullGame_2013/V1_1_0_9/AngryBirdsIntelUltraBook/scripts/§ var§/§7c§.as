package § var§
{
   import §&H§.b2Vec2;
   import §40§.§5G§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §7c§
   {
      
      public static const §=v§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §7c§)
         {
            §=v§ = 100;
         }
      }
      
      public function §7c§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §[T§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(!_loc6_)
         {
            if(param1)
            {
               addr31:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(!(_loc6_ && §7c§))
               {
                  param1.removeChild(_loc5_);
                  if(!_loc6_)
                  {
                     addr62:
                     if(param2)
                     {
                        if(!_loc6_)
                        {
                           _loc3_.x *= §=v§ / 100;
                           if(_loc7_ || §7c§)
                           {
                              _loc3_.y *= §=v§ / 100;
                              while(true)
                              {
                                 _loc3_.height *= §=v§ / 100;
                                 loop1:
                                 while(_loc7_ || §7c§)
                                 {
                                    _loc3_.width *= §=v§ / 100;
                                    loop2:
                                    while(true)
                                    {
                                       addr187:
                                       while(true)
                                       {
                                          _loc4_[0] = new b2Vec2(_loc3_.x * §5G§.§6+§,_loc3_.y * §5G§.§6+§);
                                          loop8:
                                          while(true)
                                          {
                                             _loc4_[1] = new b2Vec2(_loc3_.x * §5G§.§6+§,(_loc3_.y + _loc3_.height) * §5G§.§6+§);
                                             addr183:
                                             addr185:
                                             while(_loc6_)
                                             {
                                                continue loop8;
                                             }
                                             while(true)
                                             {
                                                _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §5G§.§6+§,(_loc3_.y + _loc3_.height) * §5G§.§6+§);
                                                loop4:
                                                while(!_loc6_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §5G§.§6+§,_loc3_.y * §5G§.§6+§);
                                                      while(true)
                                                      {
                                                         _loc4_.reverse();
                                                         if(_loc7_ || param1)
                                                         {
                                                            if(!(_loc6_ && §7c§))
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      return _loc4_;
                                                      continue;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr183);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr222);
               }
               §§goto(addr185);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr62);
         }
         §§goto(addr31);
      }
      
      public static function §]x§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(_loc6_ || §7c§)
         {
            if(param1)
            {
               addr35:
               _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
               if(_loc6_ || param2)
               {
                  param1.removeChild(_loc5_);
                  if(!(_loc7_ && param1))
                  {
                     addr67:
                     if(param2)
                     {
                        if(_loc6_)
                        {
                           _loc4_.x *= §=v§ / 100;
                           if(!(_loc7_ && _loc3_))
                           {
                              _loc4_.y *= §=v§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc4_.height *= §=v§ / 100;
                                 addr210:
                                 while(true)
                                 {
                                    _loc4_.width *= §=v§ / 100;
                                    addr200:
                                    loop2:
                                    while(true)
                                    {
                                       addr151:
                                       while(true)
                                       {
                                          if(_loc4_.width != _loc4_.height)
                                          {
                                             continue loop2;
                                          }
                                          addr163:
                                          while(true)
                                          {
                                             _loc3_[0] = _loc4_.width * §5G§.§6+§ / 2;
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr210);
                        }
                        return _loc3_;
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr200);
               }
               §§goto(addr210);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr67);
         }
         §§goto(addr35);
      }
      
      public static function §=!"§(param1:MovieClip) : Array
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
               if(!(_loc6_ && _loc3_))
               {
                  §§goto(addr42);
               }
            }
            var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
            while(true)
            {
               if(_loc4_ < _loc3_.numChildren)
               {
                  _loc2_[_loc4_] = new b2Vec2();
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
                  if(_loc7_)
                  {
                     _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §5G§.§6+§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §5G§.§6+§);
                     if(_loc6_)
                     {
                        continue;
                     }
                  }
                  _loc4_++;
                  continue;
               }
               if(_loc7_)
               {
                  _loc2_.reverse();
                  if(_loc7_ || _loc3_)
                  {
                     break;
                  }
               }
               while(true)
               {
                  §§goto(addr150);
               }
            }
            if(_loc2_.length >= 3)
            {
               addr150:
               while(true)
               {
                  param1.removeChild(_loc3_);
                  if(!(_loc6_ && _loc3_))
                  {
                     break;
                  }
                  continue loop2;
               }
               if(!(_loc6_ && §7c§))
               {
                  return _loc2_;
               }
               addr173:
               return null;
            }
            §§goto(addr173);
         }
         addr42:
         return §[T§(param1,false);
      }
   }
}
