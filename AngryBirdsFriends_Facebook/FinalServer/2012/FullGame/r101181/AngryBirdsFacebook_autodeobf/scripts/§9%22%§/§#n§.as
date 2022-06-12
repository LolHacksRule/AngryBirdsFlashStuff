package §9"%§
{
   import §#]§.b2Vec2;
   import §9"!§.§9"3§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §#n§
   {
      
      public static const §<G§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §<G§ = 100;
         }
      }
      
      public function §#n§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §4![§(param1:MovieClip, param2:Boolean) : Array
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
               if(_loc7_ || §#n§)
               {
                  param1.removeChild(_loc5_);
                  if(!(_loc6_ && param1))
                  {
                     addr67:
                     if(param2)
                     {
                        if(!(_loc6_ && param1))
                        {
                           _loc3_.x *= §<G§ / 100;
                           if(!(_loc6_ && param2))
                           {
                              _loc3_.y *= §<G§ / 100;
                              loop0:
                              while(true)
                              {
                                 _loc3_.height *= §<G§ / 100;
                                 loop1:
                                 while(true)
                                 {
                                    _loc3_.width *= §<G§ / 100;
                                    loop2:
                                    while(_loc7_)
                                    {
                                       while(true)
                                       {
                                          addr195:
                                          while(true)
                                          {
                                             _loc4_[0] = new b2Vec2(_loc3_.x * §9"3§.§'"F§,_loc3_.y * §9"3§.§'"F§);
                                             addr210:
                                             addr212:
                                             addr193:
                                             while(!_loc7_)
                                             {
                                                continue loop2;
                                             }
                                             _loc4_[1] = new b2Vec2(_loc3_.x * §9"3§.§'"F§,(_loc3_.y + _loc3_.height) * §9"3§.§'"F§);
                                             addr173:
                                             loop5:
                                             while(true)
                                             {
                                                _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §9"3§.§'"F§,(_loc3_.y + _loc3_.height) * §9"3§.§'"F§);
                                                addr166:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      break loop5;
                                                   }
                                                   §§goto(addr210);
                                                }
                                                §§goto(addr212);
                                             }
                                             loop3:
                                             while(true)
                                             {
                                                _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §9"3§.§'"F§,_loc3_.y * §9"3§.§'"F§);
                                                for(; _loc7_; _loc4_.reverse(),if(_loc7_ || param1)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop1;
                                                })
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr166);
                                             }
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr173);
                        }
                        return _loc4_;
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr173);
               }
               §§goto(addr234);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr67);
         }
         §§goto(addr31);
      }
      
      public static function §4!T§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(!(_loc6_ && param1))
         {
            if(param1)
            {
               §§goto(addr36);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr68);
         }
         addr36:
         _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
         if(_loc7_ || §#n§)
         {
            param1.removeChild(_loc5_);
            if(_loc7_ || param2)
            {
               addr68:
               if(param2)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr72);
                  }
                  §§goto(addr159);
               }
               §§goto(addr145);
            }
            addr72:
            _loc4_.x *= §<G§ / 100;
            if(_loc7_ || _loc3_)
            {
               _loc4_.y *= §<G§ / 100;
               loop0:
               while(true)
               {
                  _loc4_.height *= §<G§ / 100;
                  while(true)
                  {
                     _loc4_.width *= §<G§ / 100;
                     loop2:
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           if(_loc4_.width != _loc4_.height)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    _loc3_[0] = _loc4_.width * §9"3§.§'"F§ / 2;
                                 }
                              }
                              while(true)
                              {
                                 _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §9"3§.§'"F§;
                                 addr136:
                                 §§goto(addr143);
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr143);
         }
         addr143:
         while(_loc6_ && param1)
         {
            continue loop6;
         }
         while(true)
         {
            _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §9"3§.§'"F§;
            if(!_loc6_)
            {
               if(_loc7_)
               {
                  break;
               }
               continue loop1;
            }
            §§goto(addr136);
         }
         return _loc3_;
      }
      
      public static function §>r§(param1:MovieClip) : Array
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
               if(_loc7_)
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
            while(true)
            {
               if(_loc4_ >= _loc3_.numChildren)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc2_.reverse();
                     if(!_loc6_)
                     {
                        if(_loc2_.length < 3)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr150);
                           }
                        }
                        addr150:
                        §§goto(addr161);
                     }
                     break;
                  }
                  addr161:
                  while(true)
                  {
                     param1.removeChild(_loc3_);
                     if(!(_loc6_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
               }
               _loc2_[_loc4_] = new b2Vec2();
               if(_loc6_)
               {
                  break;
               }
               _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
               if(!(_loc6_ && _loc3_))
               {
                  _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §9"3§.§'"F§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §9"3§.§'"F§);
                  if(!_loc6_)
                  {
                     _loc4_++;
                  }
               }
               continue;
               return _loc2_;
            }
            return null;
         }
         addr37:
         return §4![§(param1,false);
      }
   }
}
