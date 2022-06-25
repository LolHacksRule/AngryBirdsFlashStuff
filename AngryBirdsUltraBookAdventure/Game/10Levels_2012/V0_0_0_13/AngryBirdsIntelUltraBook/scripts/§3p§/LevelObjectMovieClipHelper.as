package §3p§
{
   import §&L§.b2Vec2;
   import §2!H§.LevelMain;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class LevelObjectMovieClipHelper
   {
      
      public static const §1D§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1D§ = 100;
         }
      }
      
      public function LevelObjectMovieClipHelper()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §&!^§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(_loc7_ || _loc3_)
         {
            if(param1)
            {
               addr37:
               _loc5_ = param1.getChildByName("Collision1_Rectangle");
               _loc3_ = _loc5_.getBounds(param1);
               if(_loc7_)
               {
                  param1.removeChild(_loc5_);
                  if(!_loc6_)
                  {
                     addr64:
                     if(param2)
                     {
                        if(_loc7_ || param2)
                        {
                           _loc3_.x *= §1D§ / 100;
                           if(!_loc6_)
                           {
                              _loc3_.y *= §1D§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc3_.height *= §1D§ / 100;
                                 while(true)
                                 {
                                    _loc3_.width *= §1D§ / 100;
                                    loop2:
                                    while(true)
                                    {
                                       addr214:
                                       while(true)
                                       {
                                          _loc4_[0] = new b2Vec2(_loc3_.x * LevelMain.§8N§,_loc3_.y * LevelMain.§8N§);
                                          addr231:
                                          while(true)
                                          {
                                             _loc4_[1] = new b2Vec2(_loc3_.x * LevelMain.§8N§,(_loc3_.y + _loc3_.height) * LevelMain.§8N§);
                                             continue loop2;
                                          }
                                       }
                                    }
                                    addr101:
                                    if(_loc7_ || param2)
                                    {
                                       if(!_loc6_)
                                       {
                                          return _loc4_;
                                          addr110:
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           loop3:
                           while(true)
                           {
                              _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * LevelMain.§8N§,(_loc3_.y + _loc3_.height) * LevelMain.§8N§);
                              loop4:
                              for(; !(_loc6_ && param1); while(true)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              },continue loop3)
                              {
                                 while(true)
                                 {
                                    _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * LevelMain.§8N§,_loc3_.y * LevelMain.§8N§);
                                    continue loop4;
                                 }
                              }
                              §§goto(addr231);
                              §§goto(addr205);
                           }
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr214);
                     addr55:
                  }
                  §§goto(addr183);
               }
               §§goto(addr55);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr64);
         }
         §§goto(addr37);
      }
      
      public static function §7I§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(_loc7_ || _loc3_)
         {
            if(param1)
            {
               addr37:
               _loc5_ = param1.getChildByName("Collision1_Circle");
               _loc4_ = _loc5_.getBounds(param1);
               if(!_loc6_)
               {
                  param1.removeChild(_loc5_);
                  if(!_loc6_)
                  {
                     addr60:
                     if(param2)
                     {
                        if(!(_loc6_ && param2))
                        {
                           _loc4_.x *= §1D§ / 100;
                           if(_loc7_)
                           {
                              _loc4_.y *= §1D§ / 100;
                              while(true)
                              {
                                 _loc4_.height *= §1D§ / 100;
                              }
                              addr209:
                              addr80:
                           }
                           loop0:
                           while(true)
                           {
                              _loc4_.width *= §1D§ / 100;
                              loop1:
                              while(!_loc6_)
                              {
                                 while(true)
                                 {
                                    if(_loc4_.width != _loc4_.height)
                                    {
                                       while(!_loc6_)
                                       {
                                          addr136:
                                          if(_loc7_ || param1)
                                          {
                                             _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * LevelMain.§8N§;
                                             addr143:
                                             if(_loc6_ && param2)
                                             {
                                                while(!_loc6_)
                                                {
                                                   §§goto(addr136);
                                                   §§goto(addr143);
                                                }
                                                while(_loc7_)
                                                {
                                                   while(true)
                                                   {
                                                      _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * LevelMain.§8N§;
                                                      §§goto(addr134);
                                                   }
                                                }
                                                addr134:
                                                continue loop1;
                                                addr163:
                                             }
                                             return _loc3_;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       _loc3_[0] = _loc4_.width * LevelMain.§8N§ / 2;
                                       §§goto(addr163);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr165);
               }
               §§goto(addr80);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr60);
         }
         §§goto(addr37);
      }
      
      public static function §4N§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(!_loc6_)
         {
            if(!param1)
            {
               if(_loc7_ || param1)
               {
                  §§goto(addr38);
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
                     if(_loc7_ || _loc2_)
                     {
                        if(_loc2_.length < 3)
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           while(true)
                           {
                           }
                           addr179:
                        }
                        while(true)
                        {
                           param1.removeChild(_loc3_);
                           if(_loc7_)
                           {
                              break;
                           }
                           §§goto(addr179);
                        }
                     }
                  }
                  return _loc2_;
               }
               _loc2_[_loc4_] = new b2Vec2();
               if(!_loc7_)
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(!_loc6_)
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * LevelMain.§8N§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * LevelMain.§8N§);
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               §§push(_loc4_);
               if(_loc7_ || param1)
               {
                  §§push(§§pop() + 1);
                  if(_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc4_ = §§pop();
            }
            return null;
         }
         addr38:
         return §&!^§(param1,false);
      }
   }
}
