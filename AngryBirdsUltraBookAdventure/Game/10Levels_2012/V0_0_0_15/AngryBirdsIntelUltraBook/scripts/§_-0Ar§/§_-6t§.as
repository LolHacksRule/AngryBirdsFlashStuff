package §_-0Ar§
{
   import §_-0AB§.§_-dd§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-6t§ extends Sprite
   {
       
      
      private var §_-sh§:Sprite;
      
      private var §_-mM§:Number;
      
      private var §_-yT§:Number;
      
      private var §_-wi§:§_-dd§;
      
      public function §_-6t§(param1:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         if(!(_loc6_ && param1))
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || this)
            {
               §§push(0);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                              addr212:
                           }
                        }
                        else
                        {
                           addr288:
                           §§push(4);
                           if(!(_loc6_ && _loc3_))
                           {
                              addr296:
                           }
                           else
                           {
                              addr328:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(_loc5_ || this)
                        {
                           §§push(_loc4_);
                           if(_loc5_ || this)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr212);
                                    }
                                    else
                                    {
                                       addr272:
                                       §§push(_loc4_);
                                       if(!(_loc6_ && param1))
                                       {
                                          addr280:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                §§goto(addr288);
                                             }
                                             else
                                             {
                                                addr311:
                                                §§push(5);
                                                if(_loc6_)
                                                {
                                                   addr323:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      addr325:
                                                      §§push(6);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr328);
                                                      }
                                                      addr334:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            addr129:
                                                            _loc3_ = "P_STAR_4";
                                                            if(!_loc6_)
                                                            {
                                                               addr398:
                                                               this.§_-sh§ = this.§_-lg§(_loc3_);
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  addChild(this.§_-sh§);
                                                                  addr397:
                                                                  while(true)
                                                                  {
                                                                     this.mouseEnabled = false;
                                                                     while(!_loc6_)
                                                                     {
                                                                        this.§_-sh§.x = -this.§_-sh§.width / 2;
                                                                        loop3:
                                                                        while(!_loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§_-sh§.y = -this.§_-sh§.height / 2;
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                               addr403:
                                                            }
                                                            §§goto(addr384);
                                                         case 1:
                                                            addr117:
                                                            _loc3_ = "P_STAR_3";
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§goto(addr398);
                                                            }
                                                            break;
                                                         case 2:
                                                            addr104:
                                                            _loc3_ = "P_STAR_2";
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               §§goto(addr398);
                                                            }
                                                            §§goto(addr384);
                                                         case 3:
                                                            addr91:
                                                            §§push("P_STAR_1");
                                                            if(!(_loc6_ && this))
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr99:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr117);
                                                            }
                                                            §§goto(addr398);
                                                         case 4:
                                                            addr69:
                                                            §§push("P_SMOKE_3");
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr99);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr52:
                                                                  }
                                                                  §§goto(addr398);
                                                               }
                                                               §§goto(addr403);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr104);
                                                            }
                                                         case 5:
                                                            addr56:
                                                            _loc3_ = "P_SMOKE_2";
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               §§goto(addr398);
                                                            }
                                                            §§goto(addr397);
                                                         case 6:
                                                            §§push("P_SMOKE_1");
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr52);
                                                                           }
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr129);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr91);
                                                                  }
                                                                  §§goto(addr398);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr69);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr56);
                                                            }
                                                            §§goto(addr397);
                                                         default:
                                                            §§goto(addr398);
                                                      }
                                                      return;
                                                      addr333:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr333);
                                                      §§push(7);
                                                   }
                                                }
                                                §§goto(addr333);
                                             }
                                          }
                                          else
                                          {
                                             §§push(5);
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc5_)
                                                {
                                                   addr308:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr311);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(6);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§goto(addr323);
                                                      }
                                                   }
                                                   §§goto(addr325);
                                                }
                                                §§goto(addr323);
                                             }
                                          }
                                          addr314:
                                          §§goto(addr325);
                                       }
                                       §§goto(addr308);
                                    }
                                 }
                                 §§goto(addr325);
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc6_ && param1))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             addr232:
                                             §§push(2);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§goto(addr325);
                                             }
                                             else
                                             {
                                                addr249:
                                                §§push(_loc4_);
                                                if(_loc5_)
                                                {
                                                   addr252:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(3);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            addr263:
                                                            §§goto(addr325);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr314);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                   else
                                                   {
                                                      §§push(4);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr296);
                                                   }
                                                }
                                                §§goto(addr308);
                                             }
                                          }
                                          §§goto(addr311);
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§goto(addr249);
                                          }
                                       }
                                       §§goto(addr272);
                                    }
                                    §§goto(addr308);
                                 }
                              }
                              §§goto(addr296);
                           }
                           §§goto(addr252);
                        }
                        §§goto(addr323);
                     }
                     §§goto(addr325);
                  }
                  §§goto(addr280);
               }
               §§goto(addr263);
            }
            §§goto(addr232);
         }
         §§goto(addr334);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§_-wi§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  addr93:
                  while(true)
                  {
                     §§push(this.§_-wi§);
                     addr95:
                     while(true)
                     {
                        §§pop().stop();
                        loop4:
                        while(true)
                        {
                           this.§_-wi§ = null;
                           addr75:
                           addr82:
                           while(!(_loc2_ || _loc1_))
                           {
                              continue loop4;
                           }
                        }
                     }
                  }
                  addr93:
               }
               while(true)
               {
                  removeChild(this.§_-sh§);
                  while(_loc2_ || this)
                  {
                     if(!_loc1_)
                     {
                        this.§_-sh§ = null;
                        if(_loc2_)
                        {
                           return;
                        }
                        continue;
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr75);
                  §§goto(addr82);
               }
            }
            §§goto(addr95);
         }
         §§goto(addr93);
      }
      
      public function §_-lg§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-Fc§.§_-YE§(param1);
         _loc2_ = new _loc3_();
         if(_loc4_)
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(_loc5_ && _loc2_);
            
         }
         return _loc2_;
      }
      
      public function set §_-fU§(param1:§_-dd§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-wi§ = param1;
         }
      }
      
      public function get §_-fU§() : §_-dd§
      {
         return this.§_-wi§;
      }
      
      public function get §_-Zo§() : Number
      {
         return this.§_-mM§;
      }
      
      public function set §_-Zo§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-mM§ = param1;
         }
      }
      
      public function get §_-Vp§() : Number
      {
         return this.§_-yT§;
      }
      
      public function set §_-Vp§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-yT§ = param1;
         }
      }
   }
}
