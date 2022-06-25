package §0,§
{
   import §#P§.§ !=§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §4F§ extends Sprite
   {
       
      
      private var §-!F§:Sprite;
      
      private var §implements§:Number;
      
      private var §@e§:Number;
      
      private var §73§:§ !=§;
      
      public function §4F§(param1:Number, param2:Boolean)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = null;
         if(!(_loc7_ && param1))
         {
            super();
         }
         var _loc3_:* = 7;
         if(!(_loc7_ && this))
         {
            if(param2)
            {
               if(_loc8_)
               {
                  addr42:
                  §§push(10);
                  if(!(_loc7_ && this))
                  {
                     _loc3_ = §§pop();
                     addr51:
                     §§push(int(Math.random() * _loc3_));
                  }
                  var _loc4_:* = §§pop();
                  §§push(_loc4_);
                  if(_loc8_)
                  {
                     var _loc6_:* = §§pop();
                     if(_loc8_)
                     {
                        §§push(0);
                        §§push(_loc6_);
                        if(!(_loc7_ && param2))
                        {
                           if(§§pop() === §§pop())
                           {
                              §§push(0);
                           }
                           else
                           {
                              §§push(1);
                              §§push(_loc6_);
                              if(!_loc7_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                    }
                                 }
                                 else if(2 !== _loc6_)
                                 {
                                    addr167:
                                    if(3 === _loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(3);
                                          if(_loc8_)
                                          {
                                             §§goto(addr272);
                                          }
                                          else
                                          {
                                             addr177:
                                             §§push(_loc6_);
                                             if(_loc8_ || this)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   §§push(4);
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      §§goto(addr272);
                                                   }
                                                   else
                                                   {
                                                      addr229:
                                                      §§push(_loc6_);
                                                      if(!_loc7_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            addr233:
                                                            §§push(7);
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               addr241:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(8);
                                                            if(_loc8_ || param2)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  addr258:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        addr262:
                                                                        addr272:
                                                                        switch(1)
                                                                        {
                                                                           case 0:
                                                                              §§push("P_STAR_4");
                                                                              if(_loc8_ || param2)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(!(_loc8_ || this))
                                                                                 {
                                                                                    addr101:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr96:
                                                                                 _loc5_ = §§pop();
                                                                              }
                                                                              addr281:
                                                                              this.§-!F§ = this.§%[§(_loc5_);
                                                                              addChild(this.§-!F§);
                                                                              if(_loc8_)
                                                                              {
                                                                                 this.mouseEnabled = false;
                                                                              }
                                                                              this.§-!F§.x = -this.§-!F§.width / 2;
                                                                              if(_loc8_ || param2)
                                                                              {
                                                                                 addr321:
                                                                                 this.§-!F§.y = -this.§-!F§.height / 2;
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           case 1:
                                                                              _loc5_ = "P_STAR_3";
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§goto(addr281);
                                                                              }
                                                                              §§goto(addr321);
                                                                           case 2:
                                                                              §§push("P_STAR_2");
                                                                              if(_loc8_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr96);
                                                                              }
                                                                              §§goto(addr281);
                                                                           case 3:
                                                                              _loc5_ = "P_STAR_1";
                                                                              §§goto(addr281);
                                                                           case 4:
                                                                              §§push("P_SMOKE_3");
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§goto(addr96);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr117:
                                                                                 _loc5_ = §§pop();
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr120:
                                                                                    §§goto(addr281);
                                                                                 }
                                                                              }
                                                                              §§goto(addr281);
                                                                           case 5:
                                                                              _loc5_ = "P_SMOKE_2";
                                                                              §§goto(addr101);
                                                                           case 6:
                                                                              §§push("P_SMOKE_1");
                                                                              if(_loc8_ || param2)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§goto(addr120);
                                                                                 }
                                                                                 §§goto(addr281);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr117);
                                                                              }
                                                                           case 7:
                                                                           case 8:
                                                                           case 9:
                                                                              §§goto(addr117);
                                                                           default:
                                                                              §§goto(addr281);
                                                                        }
                                                                        "P_COIN_1";
                                                                        return;
                                                                        §§push(8);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr266:
                                                                        §§push(9);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr265:
                                                                     if(9 === _loc6_)
                                                                     {
                                                                        §§goto(addr266);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr272);
                                                                        §§push(10);
                                                                     }
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(5);
                                                   if(_loc8_ || this)
                                                   {
                                                      if(§§pop() === _loc6_)
                                                      {
                                                         §§push(5);
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr272);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr241);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr210:
                                                         §§push(6);
                                                         §§push(_loc6_);
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            addr218:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§push(6);
                                                               if(_loc8_ || param1)
                                                               {
                                                                  addr227:
                                                                  §§goto(addr272);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr262);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr229);
                                                               §§push(7);
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr227);
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr265);
                                          }
                                       }
                                       §§goto(addr233);
                                    }
                                    else
                                    {
                                       §§push(4);
                                       if(_loc8_)
                                       {
                                          §§goto(addr177);
                                       }
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr272);
                                 §§push(2);
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr272);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr266);
                  }
                  §§goto(addr272);
               }
            }
            §§goto(addr51);
         }
         §§goto(addr42);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§73§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr58:
                     this.§73§.stop();
                     if(_loc2_)
                     {
                        §§goto(addr61);
                     }
                  }
                  §§goto(addr61);
               }
               §§goto(addr66);
            }
            §§goto(addr58);
         }
         addr61:
         this.§73§ = null;
         if(!_loc1_)
         {
            addr66:
            removeChild(this.§-!F§);
            if(_loc2_ || this)
            {
               this.§-!F§ = null;
            }
         }
      }
      
      public function §%[§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §]!>§.§8!@§(param1);
         _loc2_ = new _loc3_();
         if(_loc4_)
         {
            _loc2_.x = _loc2_.width / 2;
            if(!_loc5_)
            {
               _loc2_.y = _loc2_.height / 2;
            }
         }
         return _loc2_;
      }
      
      public function set §5§(param1:§ !=§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§73§ = param1;
         }
      }
      
      public function get §5§() : § !=§
      {
         return this.§73§;
      }
      
      public function get §0F§() : Number
      {
         return this.§implements§;
      }
      
      public function set §0F§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§implements§ = param1;
         }
      }
      
      public function get §]!5§() : Number
      {
         return this.§@e§;
      }
      
      public function set §]!5§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@e§ = param1;
         }
      }
   }
}
