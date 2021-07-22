package §`!G§
{
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §1"J§
   {
      
      public static const §[!n§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §1"J§))
         {
            §[!n§ = 100;
         }
      }
      
      public function §1"J§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §'"7§(param1:MovieClip, param2:Boolean) : Array
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
                  if(_loc6_)
                  {
                     addr56:
                     if(param2)
                     {
                        if(!(_loc7_ && param1))
                        {
                           _loc3_.x *= §[!n§ / 100;
                           if(_loc6_ || param2)
                           {
                              _loc3_.y *= §[!n§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc3_.height *= §[!n§ / 100;
                                 loop1:
                                 while(true)
                                 {
                                    _loc3_.width *= §[!n§ / 100;
                                    addr228:
                                    loop2:
                                    while(true)
                                    {
                                       addr193:
                                       while(true)
                                       {
                                          _loc4_[0] = new b2Vec2(_loc3_.x * §'!S§.§2"<§,_loc3_.y * §'!S§.§2"<§);
                                          loop4:
                                          while(true)
                                          {
                                             _loc4_[1] = new b2Vec2(_loc3_.x * §'!S§.§2"<§,(_loc3_.y + _loc3_.height) * §'!S§.§2"<§);
                                             loop5:
                                             while(true)
                                             {
                                                _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §'!S§.§2"<§,(_loc3_.y + _loc3_.height) * §'!S§.§2"<§);
                                                loop6:
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §'!S§.§2"<§,_loc3_.y * §'!S§.§2"<§);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop6;
                                                            while(true)
                                                            {
                                                               _loc4_.reverse();
                                                               if(_loc6_ || param1)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                         continue loop4;
                                                         addr144:
                                                         §§goto(addr103);
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr80:
                           }
                           addr103:
                           return _loc4_;
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr80);
               }
               §§goto(addr144);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr56);
         }
         §§goto(addr30);
      }
      
      public static function §>Y§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(!(_loc7_ && §1"J§))
         {
            if(param1)
            {
               addr35:
               _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
               if(_loc6_)
               {
                  param1.removeChild(_loc5_);
                  if(!(_loc7_ && param2))
                  {
                     addr62:
                     if(param2)
                     {
                        if(!_loc7_)
                        {
                           _loc4_.x *= §[!n§ / 100;
                           if(_loc6_)
                           {
                              _loc4_.y *= §[!n§ / 100;
                              while(true)
                              {
                                 _loc4_.height *= §[!n§ / 100;
                                 loop1:
                                 while(_loc6_)
                                 {
                                    while(true)
                                    {
                                       _loc4_.width *= §[!n§ / 100;
                                       loop2:
                                       while(true)
                                       {
                                          addr153:
                                          while(true)
                                          {
                                             if(_loc4_.width != _loc4_.height)
                                             {
                                             }
                                          }
                                          addr142:
                                          if(_loc7_ && §1"J§)
                                          {
                                             continue;
                                          }
                                          if(_loc7_)
                                          {
                                             continue loop1;
                                          }
                                          _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §'!S§.§2"<§;
                                          addr151:
                                          if(_loc6_ || param1)
                                          {
                                             addr113:
                                             if(_loc7_ && param1)
                                             {
                                                while(true)
                                                {
                                                   _loc3_[0] = _loc4_.width * §'!S§.§2"<§ / 2;
                                                   loop4:
                                                   while(true)
                                                   {
                                                      _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §'!S§.§2"<§;
                                                      addr135:
                                                      while(true)
                                                      {
                                                         if(_loc7_ && param1)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§goto(addr142);
                                                         §§goto(addr151);
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr113);
                                                }
                                                addr158:
                                             }
                                             return _loc3_;
                                          }
                                          §§goto(addr135);
                                       }
                                    }
                                 }
                              }
                              addr76:
                           }
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr200);
               }
               §§goto(addr76);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr62);
         }
         §§goto(addr35);
      }
      
      public static function §#!r§(param1:MovieClip) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(!(_loc6_ && param1))
         {
            if(!param1)
            {
               if(!_loc6_)
               {
                  return §'"7§(param1,false);
               }
            }
         }
         var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
         while(true)
         {
            if(_loc4_ < _loc3_.numChildren)
            {
               _loc2_[_loc4_] = new b2Vec2();
               if(_loc6_)
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(_loc7_ || param1)
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §'!S§.§2"<§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §'!S§.§2"<§);
                  if(_loc6_ && param1)
                  {
                     continue;
                  }
               }
               _loc4_++;
               continue;
            }
            if(!_loc6_)
            {
               _loc2_.reverse();
               if(_loc7_ || §1"J§)
               {
                  if(_loc2_.length < 3)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     addr170:
                     while(true)
                     {
                     }
                     addr170:
                  }
                  while(true)
                  {
                     param1.removeChild(_loc3_);
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§goto(addr170);
                  }
                  return _loc2_;
               }
               break;
            }
            §§goto(addr170);
         }
         return null;
      }
   }
}
