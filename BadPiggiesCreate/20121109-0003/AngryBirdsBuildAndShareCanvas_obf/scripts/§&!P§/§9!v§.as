package §&!P§
{
   import §%!0§.§,4§;
   import §<!a§.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §9!v§
   {
      
      public static const §<]§:Number = 100;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §<]§ = 100;
         }
      }
      
      public function §9!v§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §0!_§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(!(_loc7_ && §9!v§))
         {
            if(param1)
            {
               addr35:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(!(_loc7_ && param2))
               {
                  param1.removeChild(_loc5_);
                  if(_loc6_ || §9!v§)
                  {
                     addr71:
                     if(param2)
                     {
                        if(!(_loc7_ && param2))
                        {
                           _loc3_.x *= §<]§ / 100;
                           if(_loc6_)
                           {
                              _loc3_.y *= §<]§ / 100;
                              while(true)
                              {
                                 _loc3_.height *= §<]§ / 100;
                                 loop1:
                                 while(true)
                                 {
                                    _loc3_.width *= §<]§ / 100;
                                    addr223:
                                    while(true)
                                    {
                                       addr196:
                                       while(true)
                                       {
                                          _loc4_[0] = new b2Vec2(_loc3_.x * §,4§.§,^§,_loc3_.y * §,4§.§,^§);
                                          addr211:
                                          while(!_loc6_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 addr187:
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §,4§.§,^§,(_loc3_.y + _loc3_.height) * §,4§.§,^§);
                                    loop7:
                                    while(!_loc7_)
                                    {
                                       while(true)
                                       {
                                          _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §,4§.§,^§,_loc3_.y * §,4§.§,^§);
                                          while(_loc6_)
                                          {
                                             _loc4_.reverse();
                                             if(!_loc7_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   return _loc4_;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          addr180:
                                          while(!(_loc7_ && _loc3_))
                                          {
                                             §§goto(addr187);
                                          }
                                          §§goto(addr211);
                                       }
                                    }
                                    §§goto(addr223);
                                 }
                                 addr194:
                              }
                              addr90:
                           }
                           while(true)
                           {
                              _loc4_[1] = new b2Vec2(_loc3_.x * §,4§.§,^§,(_loc3_.y + _loc3_.height) * §,4§.§,^§);
                              §§goto(addr180);
                           }
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr160);
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
      
      public static function §-!A§(param1:MovieClip, param2:Boolean) : Array
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
                  if(_loc7_)
                  {
                     addr63:
                     if(param2)
                     {
                        if(_loc7_ || param2)
                        {
                           _loc4_.x *= §<]§ / 100;
                           if(!(_loc6_ && _loc3_))
                           {
                              _loc4_.y *= §<]§ / 100;
                              while(true)
                              {
                                 _loc4_.height *= §<]§ / 100;
                                 addr159:
                                 if(_loc6_ && §9!v§)
                                 {
                                    continue;
                                 }
                                 addr166:
                                 _loc3_[0] = _loc4_.width * §,4§.§,^§ / 2;
                                 loop3:
                                 do
                                 {
                                    _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §,4§.§,^§;
                                    while(true)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          continue;
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          addr145:
                                          while(true)
                                          {
                                             if(_loc4_.width != _loc4_.height)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                addr152:
                                                if(_loc7_ || param2)
                                                {
                                                   §§goto(addr159);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      _loc4_.width *= §<]§ / 100;
                                                      continue loop2;
                                                      §§goto(addr152);
                                                   }
                                                   addr196:
                                                }
                                             }
                                             §§goto(addr166);
                                          }
                                       }
                                    }
                                 }
                                 while(_loc6_);
                                 
                                 return _loc3_;
                                 addr176:
                              }
                              addr215:
                           }
                           §§goto(addr196);
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr215);
               }
               §§goto(addr143);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr63);
         }
         §§goto(addr36);
      }
      
      public static function §`C§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(_loc7_ || _loc3_)
         {
            if(!param1)
            {
               if(!(_loc6_ && §9!v§))
               {
                  §§goto(addr42);
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
                     if(_loc7_)
                     {
                        if(_loc2_.length >= 3)
                        {
                           while(true)
                           {
                              param1.removeChild(_loc3_);
                              if(_loc7_ || _loc2_)
                              {
                                 break;
                              }
                              break loop0;
                           }
                           if(!(_loc6_ && §9!v§))
                           {
                              return _loc2_;
                              addr163:
                           }
                           addr135:
                        }
                        return null;
                     }
                     §§goto(addr163);
                  }
                  break;
               }
               _loc2_[_loc4_] = new b2Vec2();
               if(_loc6_)
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(!_loc6_)
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §,4§.§,^§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §,4§.§,^§);
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               _loc4_++;
            }
            while(true)
            {
               §§goto(addr135);
            }
         }
         addr42:
         return §0!_§(param1,false);
      }
   }
}
