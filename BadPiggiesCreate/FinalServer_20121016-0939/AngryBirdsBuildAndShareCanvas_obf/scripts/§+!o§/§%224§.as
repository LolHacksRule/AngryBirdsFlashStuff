package §+!o§
{
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §"4§
   {
      
      public static const §>!G§:Number = 100;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>!G§ = 100;
         }
      }
      
      public function §"4§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §+I§(param1:MovieClip, param2:Boolean) : Array
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
               addr36:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(!(_loc6_ && _loc3_))
               {
                  param1.removeChild(_loc5_);
                  if(_loc7_)
                  {
                     addr67:
                     if(param2)
                     {
                        if(_loc7_)
                        {
                           addr71:
                           _loc3_.x *= §>!G§ / 100;
                           if(!_loc6_)
                           {
                              _loc3_.y *= §>!G§ / 100;
                              while(true)
                              {
                                 _loc3_.height *= §>!G§ / 100;
                                 addr234:
                                 addr99:
                                 while(true)
                                 {
                                    _loc3_.width *= §>!G§ / 100;
                                 }
                                 if(_loc6_ && param1)
                                 {
                                    continue;
                                 }
                                 return _loc4_;
                                 addr106:
                              }
                              addr253:
                           }
                           loop2:
                           while(true)
                           {
                              addr199:
                              while(true)
                              {
                                 _loc4_[0] = new b2Vec2(_loc3_.x * §!w§.§4!-§,_loc3_.y * §!w§.§4!-§);
                                 addr214:
                                 while(true)
                                 {
                                    _loc4_[1] = new b2Vec2(_loc3_.x * §!w§.§4!-§,(_loc3_.y + _loc3_.height) * §!w§.§4!-§);
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           _loc4_.reverse();
                           if(!(_loc7_ || param2))
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              §§goto(addr99);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr253);
               }
               §§goto(addr71);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr67);
         }
         §§goto(addr36);
      }
      
      public static function §@!e§(param1:MovieClip, param2:Boolean) : Array
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
               if(!(_loc7_ && param1))
               {
                  param1.removeChild(_loc5_);
                  if(!_loc7_)
                  {
                     addr57:
                     if(param2)
                     {
                        if(_loc6_ || §"4§)
                        {
                           addr66:
                           _loc4_.x *= §>!G§ / 100;
                           if(_loc6_)
                           {
                              _loc4_.y *= §>!G§ / 100;
                              while(true)
                              {
                                 _loc4_.height *= §>!G§ / 100;
                                 addr130:
                                 if(!(_loc7_ && param2))
                                 {
                                    _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §!w§.§4!-§;
                                    addr137:
                                    if(!(_loc6_ || §"4§))
                                    {
                                       while(_loc6_)
                                       {
                                          §§goto(addr130);
                                          §§goto(addr137);
                                       }
                                       while(!_loc7_)
                                       {
                                          _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §!w§.§4!-§;
                                          §§goto(addr128);
                                       }
                                       addr128:
                                       while(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             addr139:
                                             while(true)
                                             {
                                                if(_loc4_.width != _loc4_.height)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr146:
                                                      _loc3_[0] = _loc4_.width * §!w§.§4!-§ / 2;
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr146);
                                             }
                                          }
                                       }
                                       addr156:
                                       while(true)
                                       {
                                          _loc4_.width *= §>!G§ / 100;
                                          §§goto(addr168);
                                       }
                                       addr168:
                                       addr180:
                                    }
                                    return _loc3_;
                                 }
                              }
                           }
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr170);
               }
               §§goto(addr66);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr57);
         }
         §§goto(addr30);
      }
      
      public static function §8z§(param1:MovieClip) : Array
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
               if(_loc7_ || _loc2_)
               {
                  §§goto(addr37);
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
                        break;
                     }
                     return _loc2_;
                     addr156:
                  }
                  break;
               }
               _loc2_[_loc4_] = new b2Vec2();
               if(!(_loc7_ || _loc2_))
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(!_loc6_)
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §!w§.§4!-§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §!w§.§4!-§);
                  if(_loc6_ && param1)
                  {
                     continue;
                  }
               }
               _loc4_++;
            }
            if(_loc2_.length < 3)
            {
               if(!_loc6_)
               {
                  return null;
               }
               loop1:
               while(true)
               {
                  addr145:
                  while(true)
                  {
                     param1.removeChild(_loc3_);
                     if(!(_loc6_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  §§goto(addr156);
               }
            }
            §§goto(addr145);
         }
         addr37:
         return §+I§(param1,false);
      }
   }
}
