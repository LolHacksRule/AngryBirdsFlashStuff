package §&!8§
{
   import §,§.§ p§;
   import §6!H§.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §,!D§
   {
      
      public static const §`!@§:Number = 100;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,!D§))
         {
            §`!@§ = 100;
         }
      }
      
      public function §,!D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §>s§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(_loc6_)
         {
            if(param1)
            {
               addr30:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(!_loc7_)
               {
                  param1.removeChild(_loc5_);
                  if(!(_loc7_ && §,!D§))
                  {
                     addr61:
                     if(param2)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           _loc3_.x *= §`!@§ / 100;
                           if(!(_loc7_ && param1))
                           {
                              _loc3_.y *= §`!@§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc3_.height *= §`!@§ / 100;
                                 while(true)
                                 {
                                    _loc3_.width *= §`!@§ / 100;
                                    loop2:
                                    while(_loc6_)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * § p§.§]!E§,(_loc3_.y + _loc3_.height) * § p§.§]!E§);
                                             continue loop0;
                                          }
                                          continue loop2;
                                          addr216:
                                          while(true)
                                          {
                                             _loc4_[1] = new b2Vec2(_loc3_.x * § p§.§]!E§,(_loc3_.y + _loc3_.height) * § p§.§]!E§);
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr142);
                        }
                        while(true)
                        {
                        }
                     }
                     while(true)
                     {
                        _loc4_[0] = new b2Vec2(_loc3_.x * § p§.§]!E§,_loc3_.y * § p§.§]!E§);
                        §§goto(addr216);
                     }
                     addr52:
                  }
                  §§goto(addr142);
               }
               §§goto(addr52);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr61);
         }
         §§goto(addr30);
      }
      
      public static function §"g§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(!_loc6_)
         {
            if(param1)
            {
               addr31:
               _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
               if(_loc7_)
               {
                  param1.removeChild(_loc5_);
                  if(_loc7_)
                  {
                     addr53:
                     if(param2)
                     {
                        if(_loc7_)
                        {
                           addr57:
                           _loc4_.x *= §`!@§ / 100;
                           if(_loc7_ || §,!D§)
                           {
                              _loc4_.y *= §`!@§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc4_.height *= §`!@§ / 100;
                                 addr186:
                                 while(true)
                                 {
                                    _loc4_.width *= §`!@§ / 100;
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                        }
                     }
                     while(true)
                     {
                        if(_loc4_.width != _loc4_.height)
                        {
                        }
                     }
                  }
                  §§goto(addr142);
               }
               §§goto(addr57);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr53);
         }
         §§goto(addr31);
      }
      
      public static function §?L§(param1:MovieClip) : Array
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
               if(!(_loc7_ && _loc2_))
               {
                  return §>s§(param1,false);
               }
            }
         }
         var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
         loop0:
         while(true)
         {
            if(_loc4_ < _loc3_.numChildren)
            {
               _loc2_[_loc4_] = new b2Vec2();
               if(_loc7_ && §,!D§)
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(!_loc7_)
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * § p§.§]!E§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * § p§.§]!E§);
                  if(!_loc6_)
                  {
                     continue;
                  }
               }
               _loc4_++;
               continue;
            }
            if(_loc6_ || _loc3_)
            {
               _loc2_.reverse();
               if(!_loc7_)
               {
                  if(_loc2_.length >= 3)
                  {
                     while(true)
                     {
                        param1.removeChild(_loc3_);
                        if(!(_loc7_ && _loc3_))
                        {
                           break;
                        }
                        break loop0;
                     }
                     if(_loc6_ || _loc3_)
                     {
                        return _loc2_;
                        addr167:
                     }
                     addr139:
                  }
               }
               return null;
            }
            §§goto(addr167);
         }
         while(true)
         {
            §§goto(addr139);
         }
      }
   }
}
