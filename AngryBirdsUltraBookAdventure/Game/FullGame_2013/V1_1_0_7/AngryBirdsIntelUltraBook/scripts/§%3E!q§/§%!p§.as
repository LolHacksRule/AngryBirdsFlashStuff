package §>!q§
{
   import §]F§.§^v§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §%!p§ extends Sprite
   {
       
      
      private var §6-§:Sprite;
      
      private var §?!;§:Number;
      
      private var §,6§:Number;
      
      private var §`d§:§^v§;
      
      public function §%!p§(param1:Number, param2:Boolean)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = null;
         if(_loc7_ || param1)
         {
            super();
         }
         var _loc3_:* = 7;
         if(!_loc8_)
         {
            if(param2)
            {
               if(!_loc8_)
               {
                  addr36:
                  §§push(10);
                  if(_loc7_ || param1)
                  {
                     _loc3_ = §§pop();
                     addr45:
                     §§push(int(Math.random() * _loc3_));
                  }
                  var _loc4_:* = §§pop();
                  §§push(_loc4_);
                  if(!(_loc8_ && this))
                  {
                     var _loc6_:* = §§pop();
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           §§push(_loc6_);
                           if(!_loc8_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_ || param1)
                                 {
                                    §§push(0);
                                    if(!_loc7_)
                                    {
                                       addr352:
                                    }
                                 }
                                 else
                                 {
                                    addr231:
                                    §§push(1);
                                    if(_loc8_ && param2)
                                    {
                                       addr339:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(1);
                                 if(!(_loc8_ && param1))
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc8_ && param2))
                                    {
                                       addr218:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             §§goto(addr231);
                                          }
                                          else
                                          {
                                             addr290:
                                             §§push(4);
                                             if(!(_loc8_ && param1))
                                             {
                                                addr389:
                                                loop6:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      addr161:
                                                      _loc5_ = "P_STAR_4";
                                                      if(!_loc8_)
                                                      {
                                                         addr459:
                                                         this.§6-§ = this.§?!y§(_loc5_);
                                                         while(true)
                                                         {
                                                            addChild(this.§6-§);
                                                            if(_loc7_ || this)
                                                            {
                                                               return;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.mouseEnabled = false;
                                                         loop2:
                                                         while(_loc7_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§6-§.x = -this.§6-§.width / 2;
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                      break;
                                                      addr458:
                                                   case 1:
                                                      addr149:
                                                      §§push("P_STAR_3");
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         §§goto(addr459);
                                                         addr157:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr458);
                                                   case 2:
                                                      addr141:
                                                      _loc5_ = "P_STAR_2";
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr459);
                                                      }
                                                      §§goto(addr452);
                                                   case 3:
                                                      addr126:
                                                      §§push("P_STAR_1");
                                                      if(!(_loc8_ && this))
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr459);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr149);
                                                      §§goto(addr161);
                                                   case 4:
                                                      addr120:
                                                      _loc5_ = "P_SMOKE_3";
                                                      §§goto(addr459);
                                                      addr121:
                                                   case 5:
                                                      addr103:
                                                      §§push("P_SMOKE_2");
                                                      if(_loc7_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§goto(addr121);
                                                            }
                                                            else
                                                            {
                                                               addr77:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr393:
                                                         }
                                                         §§goto(addr459);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr120);
                                                      }
                                                   case 6:
                                                      addr81:
                                                      §§push("P_SMOKE_1");
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!_loc8_)
                                                            {
                                                               §§goto(addr459);
                                                            }
                                                            §§goto(addr161);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr141);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr126);
                                                      }
                                                      §§goto(addr161);
                                                   case 7:
                                                   case 8:
                                                   case 9:
                                                      §§push("P_COIN_1");
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr77);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr157);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr393);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr103);
                                                         }
                                                         §§goto(addr459);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr81);
                                                      }
                                                   default:
                                                      §§goto(addr459);
                                                }
                                                continue loop5;
                                                addr389:
                                                addr298:
                                             }
                                             §§goto(addr389);
                                          }
                                       }
                                       else
                                       {
                                          §§push(2);
                                          if(_loc7_)
                                          {
                                             §§push(_loc6_);
                                             if(!_loc8_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(2);
                                                      if(_loc8_ && _loc3_)
                                                      {
                                                         addr379:
                                                         if(§§pop() === _loc6_)
                                                         {
                                                            addr381:
                                                            §§push(9);
                                                            if(_loc7_)
                                                            {
                                                               addr384:
                                                            }
                                                            §§goto(addr389);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr389);
                                                            §§push(10);
                                                         }
                                                      }
                                                      §§goto(addr389);
                                                   }
                                                   else
                                                   {
                                                      addr272:
                                                      §§push(3);
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr389);
                                                      }
                                                      else
                                                      {
                                                         addr307:
                                                         §§push(_loc6_);
                                                         if(_loc7_ || param2)
                                                         {
                                                            addr315:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  §§push(5);
                                                                  if(!_loc7_)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                            else
                                                            {
                                                               §§push(6);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr336:
                                                                           §§push(6);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§goto(addr339);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr384);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr349:
                                                                           §§push(7);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§goto(addr379);
                                                                           }
                                                                           §§goto(addr389);
                                                                        }
                                                                        §§goto(addr389);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(7);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr343:
                                                                           §§push(_loc6_);
                                                                           if(_loc7_)
                                                                           {
                                                                              addr346:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(8);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr356:
                                                                                    §§push(_loc6_);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr359:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             addr367:
                                                                                             §§push(8);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr370:
                                                                                                §§goto(addr389);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr384);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr381);
                                                                                          }
                                                                                          §§goto(addr389);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(9);
                                                                                          if(_loc8_ && param2)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr384);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr379);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr379);
                                                                        }
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                                  §§goto(addr346);
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                         }
                                                         §§goto(addr359);
                                                      }
                                                   }
                                                   §§goto(addr384);
                                                }
                                                else
                                                {
                                                   §§push(3);
                                                   if(_loc7_)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc7_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               §§goto(addr272);
                                                            }
                                                            §§goto(addr367);
                                                         }
                                                         else
                                                         {
                                                            §§push(4);
                                                            if(_loc7_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(_loc7_ || this)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr290);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr336);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(5);
                                                                     if(!(_loc8_ && param2))
                                                                     {
                                                                        §§goto(addr307);
                                                                     }
                                                                     §§goto(addr356);
                                                                  }
                                                                  §§goto(addr389);
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      §§goto(addr346);
                                                   }
                                                   §§goto(addr389);
                                                }
                                             }
                                             §§goto(addr315);
                                          }
                                       }
                                       §§goto(addr384);
                                    }
                                    §§goto(addr379);
                                 }
                                 §§goto(addr298);
                              }
                              §§goto(addr389);
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr370);
                     }
                     §§goto(addr290);
                  }
                  §§goto(addr389);
               }
            }
            §§goto(addr45);
         }
         §§goto(addr36);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§`d§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§`d§);
                     addr84:
                     while(true)
                     {
                        §§pop().stop();
                        addr85:
                        while(true)
                        {
                           this.§`d§ = null;
                           addr76:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr82:
               }
               loop1:
               while(true)
               {
                  removeChild(this.§6-§);
                  while(_loc1_ || _loc1_)
                  {
                     this.§6-§ = null;
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(!(_loc2_ && this))
                     {
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr76);
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr85);
      }
      
      public function §?!y§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §,!j§.§!!N§(param1);
         _loc2_ = new _loc3_();
         if(_loc4_)
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(_loc5_);
            
         }
         return _loc2_;
      }
      
      public function set §'!y§(param1:§^v§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`d§ = param1;
         }
      }
      
      public function get §'!y§() : §^v§
      {
         return this.§`d§;
      }
      
      public function get §,"#§() : Number
      {
         return this.§?!;§;
      }
      
      public function set §,"#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§?!;§ = param1;
         }
      }
      
      public function get §#o§() : Number
      {
         return this.§,6§;
      }
      
      public function set §#o§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§,6§ = param1;
         }
      }
   }
}
