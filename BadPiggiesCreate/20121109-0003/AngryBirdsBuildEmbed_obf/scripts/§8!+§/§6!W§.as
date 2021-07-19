package §8!+§
{
   import §&!m§.§;5§;
   import §+]§.§"U§;
   import §<!B§.b2Vec2;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §6!W§ extends §]p§
   {
       
      
      private const §#l§:Number = 22.5;
      
      private const §`!Q§:int = 20;
      
      private var §1G§:Point;
      
      public function §6!W§(param1:§"U§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            if(!(_loc2_ && _loc1_))
            {
               this.§1G§ = §%!3§.mMousePosition.clone();
            }
         }
      }
      
      override public function onMouseUp() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §%!3§.setTool(§"!X§);
         }
      }
      
      override public function onMouseMove() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Point = null;
         var _loc2_:* = 0;
         if(!_loc3_)
         {
            if(this.§1G§)
            {
               addr27:
               _loc1_ = this.§1G§.subtract(§%!3§.mMousePosition);
               if(_loc1_.length > this.§`!Q§)
               {
                  dispatchEvent(new Event(Event.CHANGE));
                  if(Math.abs(_loc1_.x) > Math.abs(_loc1_.y))
                  {
                     if(_loc4_ || this)
                     {
                        if(_loc1_.x < 0)
                        {
                           §§push(-1);
                           if(!(_loc3_ && _loc1_))
                           {
                              addr77:
                              _loc2_ = int(§§pop());
                              if(§%!3§.mMousePosition.y > §0j§().y)
                              {
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    §§push(_loc2_);
                                    §§push(-1);
                                    if(_loc4_ || this)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc3_)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc4_ || _loc1_)
                                          {
                                             _loc2_ = §§pop();
                                             addr186:
                                             this.§1G§ = §%!3§.mMousePosition.clone();
                                             addr191:
                                             §%!3§.addAction(this.§ !9§,this.§#l§ * _loc2_);
                                             return;
                                             addr124:
                                          }
                                          else
                                          {
                                             addr146:
                                             §§push(int(§§pop()));
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr154:
                                                _loc2_ = §§pop();
                                                if(§%!3§.mMousePosition.x > §0j§().x)
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc3_)
                                                      {
                                                         addr184:
                                                         §§push(int(§§pop() * -1));
                                                      }
                                                   }
                                                }
                                                §§goto(addr186);
                                             }
                                             _loc2_ = §§pop();
                                             §§goto(addr186);
                                          }
                                          §§goto(addr186);
                                       }
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr146);
                        }
                        else
                        {
                           §§push(1);
                           if(!_loc3_)
                           {
                              §§goto(addr77);
                           }
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr191);
                  }
                  else if(_loc1_.y < 0)
                  {
                     if(_loc4_ || _loc1_)
                     {
                        §§push(1);
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr146);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr186);
                  }
                  else
                  {
                     §§push(-1);
                  }
                  §§goto(addr146);
               }
            }
            §§goto(addr186);
         }
         §§goto(addr27);
      }
      
      public function § !9§(param1:Number) : void
      {
         var _loc5_:§;5§ = null;
         var _loc2_:int = 0;
         var _loc3_:b2Vec2 = §>!p§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in §4!-§)
         {
            _loc5_.§ !-§(param1,_loc4_);
         }
      }
   }
}
