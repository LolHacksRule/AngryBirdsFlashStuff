package §6!!§
{
   import §>!8§.b2Vec2;
   import §]!@§.LevelMain;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class LevelObjectMovieClipHelper
   {
      
      public static const §8!E§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §8!E§ = 100;
         }
      }
      
      public function LevelObjectMovieClipHelper()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §=!P§(param1:MovieClip, param2:Boolean) : Array
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
               addr31:
               _loc5_ = param1.getChildByName("Collision1_Rectangle");
               _loc3_ = _loc5_.getBounds(param1);
               if(_loc6_)
               {
                  param1.removeChild(_loc5_);
                  if(_loc6_)
                  {
                     addr58:
                     if(param2)
                     {
                        if(!_loc7_)
                        {
                           _loc3_.x *= §8!E§ / 100;
                           if(!(_loc7_ && param1))
                           {
                              _loc3_.y *= §8!E§ / 100;
                              addr252:
                              while(true)
                              {
                                 _loc3_.height *= §8!E§ / 100;
                                 addr240:
                                 while(_loc6_)
                                 {
                                    _loc3_.width *= §8!E§ / 100;
                                 }
                              }
                              addr252:
                           }
                           while(true)
                           {
                           }
                           addr229:
                        }
                        §§goto(addr252);
                     }
                     while(true)
                     {
                        _loc4_[0] = new b2Vec2(_loc3_.x * LevelMain.§@!d§,_loc3_.y * LevelMain.§@!d§);
                        do
                        {
                           _loc4_[1] = new b2Vec2(_loc3_.x * LevelMain.§@!d§,(_loc3_.y + _loc3_.height) * LevelMain.§@!d§);
                        }
                        while(!_loc6_);
                        
                        return _loc4_;
                     }
                  }
                  loop5:
                  while(true)
                  {
                     _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * LevelMain.§@!d§,(_loc3_.y + _loc3_.height) * LevelMain.§@!d§);
                     for(; _loc6_; while(!(_loc7_ && _loc3_))
                     {
                        if(_loc6_)
                        {
                           _loc4_.reverse();
                           if(_loc7_)
                           {
                              continue;
                           }
                           §§goto(addr90);
                           continue;
                        }
                        continue loop5;
                     })
                     {
                        if(_loc6_ || param2)
                        {
                           _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * LevelMain.§@!d§,_loc3_.y * LevelMain.§@!d§);
                           continue;
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr229);
                  }
               }
               §§goto(addr252);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr58);
         }
         §§goto(addr31);
      }
      
      public static function §+!Y§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(_loc6_ || LevelObjectMovieClipHelper)
         {
            if(param1)
            {
               addr36:
               _loc5_ = param1.getChildByName("Collision1_Circle");
               _loc4_ = _loc5_.getBounds(param1);
               if(!_loc7_)
               {
                  param1.removeChild(_loc5_);
                  if(_loc6_)
                  {
                     addr59:
                     if(param2)
                     {
                        if(_loc6_ || LevelObjectMovieClipHelper)
                        {
                           _loc4_.x *= §8!E§ / 100;
                           if(_loc6_)
                           {
                              _loc4_.y *= §8!E§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc4_.height *= §8!E§ / 100;
                                 addr203:
                                 loop1:
                                 while(true)
                                 {
                                    _loc4_.width *= §8!E§ / 100;
                                    addr192:
                                    loop2:
                                    while(true)
                                    {
                                       addr146:
                                       while(true)
                                       {
                                          if(_loc4_.width != _loc4_.height)
                                          {
                                             continue loop0;
                                          }
                                          addr158:
                                          while(true)
                                          {
                                             _loc3_[0] = _loc4_.width * LevelMain.§@!d§ / 2;
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * LevelMain.§@!d§;
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop1;
                                                if(_loc6_ || _loc3_)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr79:
                           }
                           return _loc3_;
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr79);
               }
               §§goto(addr158);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr59);
         }
         §§goto(addr36);
      }
      
      public static function §86§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(!(_loc6_ && _loc2_))
         {
            if(!param1)
            {
               if(_loc7_)
               {
                  return §=!P§(param1,false);
               }
            }
         }
         var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
         while(true)
         {
            if(_loc4_ >= _loc3_.numChildren)
            {
               if(_loc7_)
               {
                  break;
               }
               if(_loc2_.length >= 3)
               {
                  while(true)
                  {
                     param1.removeChild(_loc3_);
                     if(_loc6_)
                     {
                        continue;
                     }
                     if(_loc7_)
                     {
                        return _loc2_;
                     }
                  }
               }
               return null;
               addr157:
            }
            _loc2_[_loc4_] = new b2Vec2();
            if(!_loc7_)
            {
               break;
            }
            _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
            if(_loc7_)
            {
               _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * LevelMain.§@!d§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * LevelMain.§@!d§);
               if(_loc7_)
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(§§pop() + 1);
                     if(_loc7_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc4_ = §§pop();
               }
            }
         }
         _loc2_.reverse();
         if(!(_loc6_ && _loc2_))
         {
            §§goto(addr157);
         }
         §§goto(addr179);
      }
   }
}
