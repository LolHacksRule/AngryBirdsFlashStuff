package §9!$§
{
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §=U§.§3p§;
   
   public class §%!k§ extends §&!W§
   {
      
      public static const §&d§:Number = 1024;
      
      public static const §6k§:Number = 658;
      
      public static const §,@§:Number = 55;
      
      public static const §6E§:String = "cubic_in_out";
      
      public static const §=?§:String = "sin_in_out";
      
      public static const §5s§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&d§ = 1024;
            if(!(_loc2_ && _loc2_))
            {
               §6k§ = 658;
               if(_loc1_ || _loc2_)
               {
                  §,@§ = 55;
                  if(_loc1_ || _loc2_)
                  {
                     §6E§ = "cubic_in_out";
                     §=?§ = "sin_in_out";
                  }
               }
               §§goto(addr77);
            }
            §5s§ = "none";
         }
         addr77:
      }
      
      private var §'!E§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §4!L§:Number;
      
      private var §"!C§:Number;
      
      private var §`!$§:Boolean = true;
      
      private var §&"§:String = "cubic_in_out";
      
      public function §%!k§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2);
            if(!_loc8_)
            {
               this.§'!E§ = param3;
               if(_loc7_ || param2)
               {
                  this.mX = param4;
                  if(!_loc8_)
                  {
                     this.mY = param5;
                     if(_loc7_ || param3)
                     {
                        addr69:
                        this.§&"§ = param6;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr69);
      }
      
      public function set §#!O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§`!$§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3p§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(!_loc6_)
                     {
                        addr38:
                        param1 = §§pop();
                        if(_loc5_ || param2)
                        {
                           addr46:
                           §§push(param1);
                           if(!(_loc6_ && param1))
                           {
                              if(§§pop() > this.time)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§'!E§))
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          if(_loc4_.name == §!!N§.§!6§)
                                          {
                                             if(_loc5_)
                                             {
                                                if(this.§`!$§)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§@X§());
                                                      if(_loc5_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            §§push(§§pop() * this.§-!r§(param1));
                                                         }
                                                      }
                                                      §§pop().x = §§pop();
                                                      addr176:
                                                      if(param1 >= this.time + duration)
                                                      {
                                                         if(_loc5_ || param2)
                                                         {
                                                            addr189:
                                                            §§push(false);
                                                            if(!_loc6_)
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr193:
                                                            §§push(true);
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr193);
                                                      addr142:
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§@X§());
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§pop() * this.§-!r§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      §§goto(addr142);
                                                   }
                                                }
                                             }
                                             §§goto(addr176);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() - this.mX);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          §§push(_loc4_);
                                          §§push(_loc4_.y);
                                          if(_loc5_ || param3)
                                          {
                                             §§push(§§pop() - this.mY);
                                          }
                                          §§pop().y = §§pop();
                                       }
                                       §§goto(addr176);
                                    }
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr176);
                           }
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr193);
               }
               §§goto(addr46);
            }
            §§goto(addr38);
         }
         §§goto(addr189);
      }
      
      private function §-!r§(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(§§pop() - this.time);
            if(_loc5_ || param1)
            {
               §§push(§§pop() / duration);
               if(_loc5_ || _loc2_)
               {
               }
               addr45:
               var _loc2_:* = §§pop();
               var _loc3_:* = this.§&"§;
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§6E§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc4_)
                           {
                              addr166:
                              §§push(0);
                              if(_loc5_ || this)
                              {
                              }
                           }
                           else
                           {
                              addr178:
                              §§push(1);
                              if(_loc4_)
                              {
                              }
                           }
                           addr186:
                           switch(§§pop())
                           {
                              case 0:
                                 §§push(_loc2_);
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    _loc2_ = Number(§§pop() * §§pop());
                                    §§push(_loc2_);
                                    if(!_loc4_)
                                    {
                                       §§push(1);
                                       if(_loc5_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             return Math.pow(_loc2_,3) / 2;
                                          }
                                          §§push(_loc2_);
                                          if(_loc4_ && this)
                                          {
                                             break;
                                          }
                                          §§push(2);
                                          if(_loc5_)
                                          {
                                             addr97:
                                             §§push(§§pop() - §§pop());
                                          }
                                          else
                                          {
                                             §§goto(addr129);
                                          }
                                       }
                                       §§goto(addr97);
                                    }
                                    _loc2_ = Number(§§pop());
                                    return (Math.pow(_loc2_,3) + 2) / 2;
                                 }
                                 §§goto(addr97);
                              case 1:
                                 §§push(-(Math.cos(Math.PI * _loc2_) - 1));
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr129);
                              default:
                                 return _loc2_;
                           }
                           addr129:
                           return §§pop() / §§pop();
                           §§push(2);
                        }
                        else
                        {
                           addr177:
                           if(§=?§ === _loc3_)
                           {
                              §§goto(addr178);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr178);
                     }
                  }
                  §§goto(addr177);
               }
               §§goto(addr166);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr45);
      }
      
      protected function §@X§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§`!$§)
            {
               if(_loc1_ || this)
               {
                  addr48:
                  §§push(this.§4!L§);
                  if(!_loc2_)
                  {
                     §§goto(addr70);
                  }
                  §§goto(addr63);
               }
               else
               {
                  addr64:
                  §§push(this.§"!C§);
                  if(!_loc2_)
                  {
                     §§goto(addr68);
                  }
               }
               addr70:
               §§push(§&d§);
               if(_loc1_ || this)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc2_)
                  {
                     addr63:
                     return §§pop();
                  }
                  addr68:
                  §§push(§6k§);
               }
               return §§pop() - §§pop();
            }
            §§goto(addr64);
         }
         §§goto(addr48);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§4!L§ = param1;
            if(_loc4_)
            {
               this.§"!C§ = param2;
            }
         }
      }
      
      override public function clone() : §&!W§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§%!k§ = new §%!k§(time,duration,this.§'!E§,this.mX,this.mY,this.§&"§);
         if(_loc3_)
         {
            _loc1_.§4!L§ = this.§4!L§;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.§"!C§ = this.§"!C§;
               if(!_loc2_)
               {
                  addr70:
                  _loc1_.§`!$§ = this.§`!$§;
               }
            }
            return _loc1_;
         }
         §§goto(addr70);
      }
   }
}
