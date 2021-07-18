package §-!&§
{
   import §9T§.§1r§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §'s§
   {
      
      public static const §`<§:Number = 100;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`<§ = 100;
         }
      }
      
      public function §'s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §%k§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(!(_loc7_ && §'s§))
         {
            if(param1)
            {
               addr35:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(_loc6_ || §'s§)
               {
                  param1.removeChild(_loc5_);
                  if(_loc6_ || §'s§)
                  {
                     addr71:
                     if(param2)
                     {
                        if(!(_loc7_ && §'s§))
                        {
                           _loc3_.x *= §`<§ / 100;
                           if(_loc6_)
                           {
                              _loc3_.y *= §`<§ / 100;
                              while(true)
                              {
                                 _loc3_.height *= §`<§ / 100;
                                 loop1:
                                 for(; !(_loc7_ && §'s§); while(true)
                                 {
                                    _loc4_[0] = new b2Vec2(_loc3_.x * §1r§.§[M§,_loc3_.y * §1r§.§[M§);
                                    if(!(_loc6_ || param2))
                                    {
                                       continue loop1;
                                    }
                                    _loc4_[1] = new b2Vec2(_loc3_.x * §1r§.§[M§,(_loc3_.y + _loc3_.height) * §1r§.§[M§);
                                    while(true)
                                    {
                                       _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §1r§.§[M§,(_loc3_.y + _loc3_.height) * §1r§.§[M§);
                                       §§goto(addr168);
                                    }
                                 })
                                 {
                                    _loc3_.width *= §`<§ / 100;
                                    while(true)
                                    {
                                       continue loop1;
                                       addr138:
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          _loc4_.reverse();
                                          addr145:
                                          if(!_loc6_)
                                          {
                                             addr168:
                                             while(!(_loc7_ && _loc3_))
                                             {
                                                §§goto(addr138);
                                                §§goto(addr145);
                                             }
                                             while(true)
                                             {
                                                _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §1r§.§[M§,_loc3_.y * §1r§.§[M§);
                                                §§goto(addr131);
                                             }
                                             addr131:
                                             addr168:
                                          }
                                          return _loc4_;
                                          addr101:
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr190);
                  }
                  §§goto(addr101);
               }
               §§goto(addr188);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr71);
         }
         §§goto(addr35);
      }
      
      public static function §7m§(param1:MovieClip, param2:Boolean) : Array
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
               param1.removeChild(_loc5_);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            if(param2)
            {
               _loc4_.x *= §`<§ / 100;
               _loc4_.y *= §`<§ / 100;
               _loc4_.height *= §`<§ / 100;
               loop0:
               while(true)
               {
                  _loc4_.width *= §`<§ / 100;
                  addr158:
                  while(true)
                  {
                     addr148:
                     _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §1r§.§[M§;
                     if(!_loc7_)
                     {
                        _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §1r§.§[M§;
                        if(!(_loc7_ && §'s§))
                        {
                           addr95:
                           if(!(_loc6_ || _loc3_))
                           {
                              while(true)
                              {
                                 _loc3_[0] = _loc4_.width * §1r§.§[M§ / 2;
                                 continue loop0;
                                 §§goto(addr95);
                              }
                              addr126:
                           }
                           return _loc3_;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               if(_loc4_.width != _loc4_.height)
               {
               }
               §§goto(addr126);
            }
         }
         §§goto(addr30);
      }
      
      public static function §3'§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(!_loc6_)
         {
            if(!param1)
            {
               if(!(_loc6_ && _loc3_))
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
                  if(_loc7_)
                  {
                     _loc2_.reverse();
                     if(_loc7_)
                     {
                        if(_loc2_.length < 3)
                        {
                           if(_loc7_)
                           {
                              §§goto(addr173);
                           }
                           break;
                        }
                        while(true)
                        {
                           param1.removeChild(_loc3_);
                           if(!(_loc6_ && _loc3_))
                           {
                              break;
                           }
                           break loop0;
                        }
                        return _loc2_;
                        addr155:
                     }
                  }
                  addr173:
               }
               _loc2_[_loc4_] = new b2Vec2();
               if(_loc6_ && _loc3_)
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(!(_loc6_ && §'s§))
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §1r§.§[M§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §1r§.§[M§);
                  if(!(_loc7_ || _loc3_))
                  {
                     continue;
                  }
               }
               _loc4_++;
               continue;
               return null;
            }
            while(true)
            {
               §§goto(addr155);
            }
         }
         addr37:
         return §%k§(param1,false);
      }
   }
}
