package §,h§
{
   import §!X§.§86§;
   import §0!G§.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §-!?§
   {
      
      public static const §=!N§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=!N§ = 100;
         }
      }
      
      public function §-!?§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §^Y§(param1:MovieClip, param2:Boolean) : Array
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
               addr30:
               _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
               if(!(_loc7_ && §-!?§))
               {
                  param1.removeChild(_loc5_);
                  if(_loc6_)
                  {
                     addr61:
                     if(param2)
                     {
                        if(!_loc7_)
                        {
                           addr65:
                           _loc3_.x *= §=!N§ / 100;
                           if(_loc6_ || §-!?§)
                           {
                              _loc3_.y *= §=!N§ / 100;
                           }
                           return _loc4_;
                           addr98:
                        }
                        while(true)
                        {
                           _loc3_.height *= §=!N§ / 100;
                           while(!_loc7_)
                           {
                              _loc3_.width *= §=!N§ / 100;
                              while(!_loc7_)
                              {
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        _loc4_[0] = new b2Vec2(_loc3_.x * §86§.§7!4§,_loc3_.y * §86§.§7!4§);
                        loop4:
                        while(!_loc7_)
                        {
                           _loc4_[1] = new b2Vec2(_loc3_.x * §86§.§7!4§,(_loc3_.y + _loc3_.height) * §86§.§7!4§);
                           loop5:
                           do
                           {
                              _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §86§.§7!4§,(_loc3_.y + _loc3_.height) * §86§.§7!4§);
                              while(!_loc7_)
                              {
                                 _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §86§.§7!4§,_loc3_.y * §86§.§7!4§);
                                 while(!(_loc7_ && §-!?§))
                                 {
                                    _loc4_.reverse();
                                    if(_loc6_)
                                    {
                                       continue loop5;
                                    }
                                 }
                              }
                              continue loop4;
                           }
                           while(_loc7_ && §-!?§);
                           
                           §§goto(addr98);
                        }
                        §§goto(addr209);
                     }
                  }
               }
               §§goto(addr65);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr61);
         }
         §§goto(addr30);
      }
      
      public static function §#U§(param1:MovieClip, param2:Boolean) : Array
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
               if(!(_loc6_ && param1))
               {
                  param1.removeChild(_loc5_);
                  if(!(_loc6_ && param1))
                  {
                     addr68:
                     if(param2)
                     {
                        if(_loc7_ || param1)
                        {
                           _loc4_.x *= §=!N§ / 100;
                           if(!_loc6_)
                           {
                              _loc4_.y *= §=!N§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc4_.height *= §=!N§ / 100;
                                 addr196:
                                 loop1:
                                 while(true)
                                 {
                                    _loc4_.width *= §=!N§ / 100;
                                    loop2:
                                    while(true)
                                    {
                                       addr159:
                                       while(true)
                                       {
                                          if(_loc4_.width != _loc4_.height)
                                          {
                                             loop4:
                                             while(!_loc6_)
                                             {
                                                while(true)
                                                {
                                                   _loc3_[0] = _loc4_.width * §86§.§7!4§ / 2;
                                                   while(true)
                                                   {
                                                      _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §86§.§7!4§;
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         continue loop4;
                                                      }
                                                      if(_loc7_ || §-!?§)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr166);
                                       }
                                    }
                                 }
                              }
                              addr87:
                           }
                           return _loc3_;
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr166);
               }
               §§goto(addr196);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr68);
         }
         §§goto(addr36);
      }
      
      public static function §?!Y§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(_loc7_)
         {
            if(!param1)
            {
               if(_loc7_)
               {
                  §§goto(addr32);
               }
            }
            var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
            loop0:
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
                     _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §86§.§7!4§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §86§.§7!4§);
                     if(_loc7_ || _loc3_)
                     {
                        _loc4_++;
                     }
                  }
                  continue;
               }
               if(_loc7_)
               {
                  _loc2_.reverse();
                  if(!(_loc6_ && _loc2_))
                  {
                     if(_loc2_.length >= 3)
                     {
                        loop2:
                        while(true)
                        {
                           param1.removeChild(_loc3_);
                           if(_loc7_ || _loc2_)
                           {
                              addr146:
                              if(_loc7_ || param1)
                              {
                                 return _loc2_;
                              }
                              break loop0;
                           }
                           addr170:
                           while(true)
                           {
                              continue loop2;
                           }
                           §§goto(addr146);
                        }
                     }
                     break;
                     addr129:
                  }
                  §§goto(addr170);
               }
               §§goto(addr129);
            }
            return null;
         }
         addr32:
         return §^Y§(param1,false);
      }
   }
}
