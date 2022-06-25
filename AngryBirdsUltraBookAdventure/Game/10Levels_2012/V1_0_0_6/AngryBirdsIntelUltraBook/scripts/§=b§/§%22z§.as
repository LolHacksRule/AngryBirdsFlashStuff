package §=b§
{
   import §2_§.§'u§;
   import §;%§.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §"z§
   {
      
      public static const §,O§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §,O§ = 100;
         }
      }
      
      public function §"z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §6!,§(param1:MovieClip, param2:Boolean) : Array
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
               if(_loc6_)
               {
                  param1.removeChild(_loc5_);
                  if(_loc6_)
                  {
                     addr56:
                     if(param2)
                     {
                        if(!_loc7_)
                        {
                           _loc3_.x *= §,O§ / 100;
                           if(_loc6_ || _loc3_)
                           {
                              _loc3_.y *= §,O§ / 100;
                              while(true)
                              {
                                 _loc3_.height *= §,O§ / 100;
                                 addr228:
                                 while(true)
                                 {
                                    _loc3_.width *= §,O§ / 100;
                                    loop2:
                                    while(true)
                                    {
                                       addr174:
                                       while(true)
                                       {
                                          _loc4_[0] = new b2Vec2(_loc3_.x * §'u§.§18§,_loc3_.y * §'u§.§18§);
                                          continue loop2;
                                       }
                                    }
                                 }
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr208);
                              }
                           }
                           §§goto(addr172);
                        }
                        loop6:
                        while(true)
                        {
                           _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §'u§.§18§,_loc3_.y * §'u§.§18§);
                           while(_loc6_)
                           {
                              _loc4_.reverse();
                              if(_loc7_)
                              {
                                 continue;
                              }
                              if(_loc6_ || param1)
                              {
                                 break loop6;
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr148);
                        }
                        return _loc4_;
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr172);
               }
               §§goto(addr228);
            }
            else
            {
               _loc3_ = new Rectangle(0,0,50,50);
            }
            §§goto(addr56);
         }
         §§goto(addr30);
      }
      
      public static function §"!6§(param1:MovieClip, param2:Boolean) : Array
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
               addr36:
               _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
               if(!(_loc6_ && _loc3_))
               {
                  param1.removeChild(_loc5_);
                  if(_loc7_)
                  {
                     addr63:
                     if(param2)
                     {
                        if(!_loc6_)
                        {
                           _loc4_.x *= §,O§ / 100;
                           if(!(_loc6_ && param1))
                           {
                              _loc4_.y *= §,O§ / 100;
                              addr215:
                              while(true)
                              {
                                 _loc4_.height *= §,O§ / 100;
                                 loop1:
                                 for(; _loc7_ || param2; if(!(_loc7_ || param2))
                                 {
                                    continue;
                                 },_loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §'u§.§18§,loop6:
                                 while(_loc7_)
                                 {
                                    while(true)
                                    {
                                       _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §'u§.§18§;
                                       if(!(_loc7_ || _loc3_))
                                       {
                                          continue loop6;
                                       }
                                       §§goto(addr119);
                                    }
                                 },§§goto(addr160))
                                 {
                                    _loc4_.width *= §,O§ / 100;
                                    loop2:
                                    while(true)
                                    {
                                       addr145:
                                       while(true)
                                       {
                                          if(_loc4_.width != _loc4_.height)
                                          {
                                          }
                                          do
                                          {
                                             _loc3_[0] = _loc4_.width * §'u§.§18§ / 2;
                                             while(!_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                          while(!(_loc7_ || §"z§));
                                          
                                          §§goto(addr126);
                                       }
                                    }
                                 }
                              }
                              addr215:
                           }
                           addr126:
                           return _loc3_;
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr143);
               }
               §§goto(addr215);
            }
            else
            {
               _loc4_ = new Rectangle();
            }
            §§goto(addr63);
         }
         §§goto(addr36);
      }
      
      public static function §?!`§(param1:MovieClip) : Array
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
               if(_loc7_)
               {
                  return §6!,§(param1,false);
               }
            }
         }
         var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
         loop0:
         while(true)
         {
            if(_loc4_ >= _loc3_.numChildren)
            {
               if(_loc7_ || §"z§)
               {
                  _loc2_.reverse();
                  if(!_loc6_)
                  {
                     if(_loc2_.length < 3)
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr163);
                        }
                        while(true)
                        {
                        }
                        addr165:
                     }
                     while(true)
                     {
                        param1.removeChild(_loc3_);
                        if(_loc7_)
                        {
                           break loop0;
                        }
                        §§goto(addr165);
                     }
                  }
                  break;
               }
               addr163:
            }
            _loc2_[_loc4_] = new b2Vec2();
            if(!(_loc7_ || §"z§))
            {
               break;
            }
            _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
            if(_loc7_)
            {
               _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §'u§.§18§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §'u§.§18§);
               if(_loc7_ || _loc3_)
               {
                  _loc4_++;
               }
            }
            continue;
            return null;
         }
         return _loc2_;
      }
   }
}
