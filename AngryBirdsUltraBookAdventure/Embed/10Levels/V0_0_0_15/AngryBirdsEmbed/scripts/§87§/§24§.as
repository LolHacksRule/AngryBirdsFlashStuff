package §87§
{
   import §`F§.§?!3§;
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §24§ extends Sprite
   {
       
      
      private var §2!-§:Sprite;
      
      private var § !2§:Number;
      
      private var §;!>§:Number;
      
      private var §#N§:§?!3§;
      
      public function §24§(param1:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         if(_loc5_)
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            §§push(0);
            §§push(_loc4_);
            if(_loc5_ || param1)
            {
               if(§§pop() === §§pop())
               {
                  §§push(0);
               }
               else
               {
                  §§push(1);
                  if(!_loc6_)
                  {
                     §§push(_loc4_);
                     if(!_loc6_)
                     {
                        addr133:
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr221);
                        }
                        else
                        {
                           §§push(2);
                           if(!_loc6_)
                           {
                              §§push(_loc4_);
                              if(!(_loc6_ && this))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       addr221:
                                       switch(1)
                                       {
                                          case 0:
                                             §§push("P_STAR_4");
                                             if(_loc5_ || this)
                                             {
                                                _loc3_ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   addr225:
                                                   this.§2!-§ = this.§8#§(_loc3_);
                                                   if(_loc5_)
                                                   {
                                                      addChild(this.§2!-§);
                                                      addr232:
                                                   }
                                                   this.mouseEnabled = false;
                                                }
                                                break;
                                             }
                                             addr64:
                                             _loc3_ = §§pop();
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§goto(addr225);
                                             }
                                             this.§2!-§.x = -this.§2!-§.width / 2;
                                             if(!(_loc6_ && param1))
                                             {
                                                addr265:
                                                this.§2!-§.y = -this.§2!-§.height / 2;
                                                break;
                                             }
                                             break;
                                          case 1:
                                             _loc3_ = "P_STAR_3";
                                             if(_loc6_ && this)
                                             {
                                             }
                                             §§goto(addr225);
                                          case 2:
                                             _loc3_ = "P_STAR_2";
                                             if(!_loc6_)
                                             {
                                                §§goto(addr225);
                                             }
                                             §§goto(addr232);
                                          case 3:
                                             §§push("P_STAR_1");
                                             if(!_loc6_)
                                             {
                                                §§goto(addr64);
                                             }
                                             else
                                             {
                                                addr82:
                                                _loc3_ = §§pop();
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§goto(addr225);
                                                }
                                             }
                                             §§goto(addr265);
                                          case 4:
                                             §§push("P_SMOKE_3");
                                             if(_loc5_ || this)
                                             {
                                                §§goto(addr82);
                                             }
                                             else
                                             {
                                                addr93:
                                                _loc3_ = §§pop();
                                             }
                                             §§goto(addr225);
                                          case 5:
                                             §§goto(addr93);
                                          case 6:
                                             _loc3_ = "P_SMOKE_1";
                                             §§goto(addr225);
                                          default:
                                             §§goto(addr225);
                                       }
                                       "P_SMOKE_2";
                                       return;
                                       §§push(2);
                                    }
                                    else
                                    {
                                       addr190:
                                       §§push(4);
                                       if(_loc6_)
                                       {
                                          addr216:
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr221);
                                 }
                                 else
                                 {
                                    §§push(3);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc6_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(3);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   addr179:
                                                }
                                                §§goto(addr221);
                                             }
                                             else
                                             {
                                                addr199:
                                                §§push(5);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§goto(addr221);
                                                }
                                                else
                                                {
                                                   §§goto(addr216);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(4);
                                             if(_loc5_ || _loc2_)
                                             {
                                                addr189:
                                                if(§§pop() === _loc4_)
                                                {
                                                   §§goto(addr190);
                                                }
                                                else
                                                {
                                                   §§push(5);
                                                   §§push(_loc4_);
                                                   if(_loc5_)
                                                   {
                                                      addr198:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr199);
                                                      }
                                                      else
                                                      {
                                                         §§push(6);
                                                         if(!_loc6_)
                                                         {
                                                            addr211:
                                                            §§push(_loc4_);
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                   }
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§push(6);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr216);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr221);
                                                      §§push(7);
                                                   }
                                                   §§goto(addr221);
                                                }
                                             }
                                          }
                                          §§goto(addr221);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr211);
                                 }
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr179);
                        }
                     }
                     §§goto(addr189);
                  }
                  §§goto(addr216);
               }
               §§goto(addr221);
            }
            §§goto(addr133);
         }
         §§goto(addr221);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§#N§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     addr62:
                     this.§#N§.stop();
                     if(!_loc2_)
                     {
                        §§goto(addr65);
                     }
                  }
                  §§goto(addr65);
               }
               §§goto(addr70);
            }
            §§goto(addr62);
         }
         addr65:
         this.§#N§ = null;
         if(!_loc2_)
         {
            addr70:
            removeChild(this.§2!-§);
            if(!(_loc2_ && _loc2_))
            {
               this.§2!-§ = null;
            }
         }
      }
      
      public function §8#§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §'!H§.§&!G§(param1);
         _loc2_ = new _loc3_();
         if(!_loc5_)
         {
            _loc2_.x = _loc2_.width / 2;
            if(_loc4_ || this)
            {
               _loc2_.y = _loc2_.height / 2;
            }
         }
         return _loc2_;
      }
      
      public function set §@U§(param1:§?!3§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§#N§ = param1;
         }
      }
      
      public function get §@U§() : §?!3§
      {
         return this.§#N§;
      }
      
      public function get §#!0§() : Number
      {
         return this.§ !2§;
      }
      
      public function set §#!0§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !2§ = param1;
         }
      }
      
      public function get § ^§() : Number
      {
         return this.§;!>§;
      }
      
      public function set § ^§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§;!>§ = param1;
         }
      }
   }
}
