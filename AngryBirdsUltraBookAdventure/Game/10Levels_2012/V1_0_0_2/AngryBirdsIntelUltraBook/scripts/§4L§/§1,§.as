package §4L§
{
   import §57§.§4!Z§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1,§ extends Sprite
   {
       
      
      private var §3!'§:Sprite;
      
      private var §->§:Number;
      
      private var §4@§:Number;
      
      private var §&!L§:§4!Z§;
      
      public function §1,§(param1:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         if(_loc6_ || param1)
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc6_ || _loc2_)
            {
               §§push(0);
               if(_loc6_ || _loc3_)
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || _loc2_)
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr300:
                           }
                        }
                        else
                        {
                           addr306:
                           §§push(6);
                           if(!(_loc5_ && _loc2_))
                           {
                              addr314:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc4_);
                           if(_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_ || param1)
                                 {
                                    §§push(1);
                                    if(_loc6_)
                                    {
                                       addr320:
                                       loop5:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             addr137:
                                             _loc3_ = "P_STAR_4";
                                             addr399:
                                             this.§3!'§ = this.§-!2§(_loc3_);
                                             while(true)
                                             {
                                                addChild(this.§3!'§);
                                                loop1:
                                                for(; _loc6_ || this; while(!(_loc5_ && _loc2_))
                                                {
                                                   this.§3!'§.x = -this.§3!'§.width / 2;
                                                   do
                                                   {
                                                      this.§3!'§.y = -this.§3!'§.height / 2;
                                                   }
                                                   while(_loc5_ && this);
                                                   
                                                   if(!_loc5_)
                                                   {
                                                      break loop5;
                                                   }
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      this.mouseEnabled = false;
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                             break;
                                             addr138:
                                          case 1:
                                             addr130:
                                             _loc3_ = "P_STAR_3";
                                             if(_loc6_)
                                             {
                                                §§goto(addr399);
                                             }
                                             break;
                                          case 2:
                                             addr117:
                                             _loc3_ = "P_STAR_2";
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§goto(addr399);
                                             }
                                             §§goto(addr363);
                                          case 3:
                                             addr104:
                                             _loc3_ = "P_STAR_1";
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§goto(addr399);
                                             }
                                             break;
                                          case 4:
                                             addr98:
                                             _loc3_ = "P_SMOKE_3";
                                             addr63:
                                             §§goto(addr399);
                                             addr99:
                                          case 5:
                                             addr67:
                                             §§push("P_SMOKE_2");
                                             if(_loc6_ || param1)
                                             {
                                                if(!_loc5_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr399);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr138);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr99);
                                                      }
                                                      §§goto(addr399);
                                                   }
                                                   §§goto(addr398);
                                                }
                                                else
                                                {
                                                   §§goto(addr137);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr104);
                                             }
                                             §§goto(addr137);
                                          case 6:
                                             §§push("P_SMOKE_1");
                                             if(_loc6_)
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr63);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr137);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr137);
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr130);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr117);
                                                   }
                                                   §§goto(addr363);
                                                }
                                                else
                                                {
                                                   §§goto(addr98);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr67);
                                             }
                                             §§goto(addr137);
                                          default:
                                             §§goto(addr137);
                                       }
                                       return;
                                       addr319:
                                    }
                                    else
                                    {
                                       §§goto(addr300);
                                    }
                                    §§goto(addr319);
                                 }
                                 else
                                 {
                                    addr251:
                                    §§push(3);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§goto(addr319);
                                    }
                                    else
                                    {
                                       addr286:
                                       §§push(_loc4_);
                                       if(!_loc5_)
                                       {
                                          addr289:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_ || this)
                                             {
                                                addr297:
                                                §§push(5);
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr300);
                                                }
                                                else
                                                {
                                                   addr304:
                                                   if(§§pop() !== _loc4_)
                                                   {
                                                      §§goto(addr319);
                                                      §§push(7);
                                                   }
                                                   §§goto(addr319);
                                                }
                                             }
                                             §§goto(addr306);
                                          }
                                          else
                                          {
                                             §§push(6);
                                             if(_loc6_)
                                             {
                                                §§goto(addr304);
                                             }
                                             §§goto(addr319);
                                          }
                                       }
                                       §§goto(addr304);
                                    }
                                 }
                                 §§goto(addr319);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_ || param1)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             addr228:
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                             }
                                             §§goto(addr319);
                                          }
                                          else
                                          {
                                             §§goto(addr306);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc6_ || _loc2_)
                                          {
                                             addr240:
                                             §§push(_loc4_);
                                             if(!_loc5_)
                                             {
                                                addr243:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr297);
                                                }
                                                else
                                                {
                                                   §§push(4);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§push(4);
                                                               if(!_loc5_)
                                                               {
                                                                  addr277:
                                                                  §§goto(addr319);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr286);
                                                               }
                                                            }
                                                            §§goto(addr306);
                                                         }
                                                         else
                                                         {
                                                            §§push(5);
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§goto(addr286);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                }
                                                §§goto(addr300);
                                             }
                                             §§goto(addr304);
                                          }
                                          §§goto(addr277);
                                       }
                                       §§goto(addr319);
                                    }
                                    §§goto(addr289);
                                 }
                                 §§goto(addr240);
                              }
                           }
                           §§goto(addr243);
                        }
                        §§goto(addr277);
                     }
                     §§goto(addr319);
                  }
                  §§goto(addr304);
               }
               §§goto(addr314);
            }
            §§goto(addr228);
         }
         §§goto(addr320);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§&!L§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr74:
                     this.§&!L§.stop();
                  }
                  while(true)
                  {
                     this.§&!L§ = null;
                     addr64:
                     while(true)
                     {
                     }
                  }
                  addr75:
               }
               loop2:
               while(true)
               {
                  removeChild(this.§3!'§);
                  while(_loc1_)
                  {
                     this.§3!'§ = null;
                     if(!_loc1_)
                     {
                        continue;
                     }
                     if(_loc1_)
                     {
                        break loop2;
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr64);
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      public function §-!2§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §%!G§.§^!B§(param1);
         _loc2_ = new _loc3_();
         if(!(_loc4_ && this))
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(!(_loc5_ || param1));
            
         }
         return _loc2_;
      }
      
      public function set §3v§(param1:§4!Z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!L§ = param1;
         }
      }
      
      public function get §3v§() : §4!Z§
      {
         return this.§&!L§;
      }
      
      public function get §8M§() : Number
      {
         return this.§->§;
      }
      
      public function set §8M§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§->§ = param1;
         }
      }
      
      public function get §>!^§() : Number
      {
         return this.§4@§;
      }
      
      public function set §>!^§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§4@§ = param1;
         }
      }
   }
}
