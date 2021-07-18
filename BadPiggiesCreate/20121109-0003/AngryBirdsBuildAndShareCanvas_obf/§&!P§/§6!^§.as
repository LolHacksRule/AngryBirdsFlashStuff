package §&!P§
{
   import §"J§.b2Body;
   import §<";§.b2Settings;
   
   public class §6!^§
   {
      
      public static const §&!0§:String = "max";
      
      public static const §`5§:String = "average";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §&!0§ = "max";
            do
            {
               §`5§ = "average";
            }
            while(!_loc2_);
            
         }
      }
      
      private var §`!d§:Number;
      
      private var §]!s§:uint;
      
      private var §33§:Number;
      
      private var §@T§:Number;
      
      private var §#!-§:Vector.<Number>;
      
      private var §6?§:Vector.<Number>;
      
      private var §%!X§:Vector.<Number>;
      
      private var §&"%§:int = 0;
      
      private var §"!y§:Function;
      
      public function §6!^§(param1:Number = 5, param2:uint = 10)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§#!-§ = new Vector.<Number>();
               addr115:
               while(true)
               {
                  this.§6?§ = new Vector.<Number>();
                  loop2:
                  while(true)
                  {
                     this.§%!X§ = new Vector.<Number>();
                     while(true)
                     {
                        this.§8z§ = param2;
                        addr31:
                        if(_loc4_ || param2)
                        {
                           continue loop2;
                        }
                     }
                  }
                  if(_loc4_ || _loc3_)
                  {
                     return;
                     addr62:
                  }
               }
               addr69:
               if(_loc3_ && param2)
               {
                  continue;
               }
               this.§"!y§ = this.§'!4§;
               if(!_loc3_)
               {
                  §§goto(addr31);
               }
               loop5:
               while(true)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr69);
                  }
                  else
                  {
                     while(true)
                     {
                        this.limitMultiplier = param1;
                        continue loop5;
                     }
                     §§goto(addr62);
                     addr81:
                  }
               }
               addr76:
               §§goto(addr115);
            }
         }
         §§goto(addr81);
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`!d§ = param1;
            while(true)
            {
               §§push(this);
               §§push(b2Settings.b2_linearSleepTolerance);
               if(_loc3_ || this)
               {
                  §§push(§§pop() * this.§`!d§);
               }
               §§pop().§33§ = §§pop();
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(b2Settings.b2_angularSleepTolerance);
                     if(!_loc2_)
                     {
                        §§push(§§pop() * this.§`!d§);
                     }
                     §§pop().§@T§ = §§pop();
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§`!d§;
      }
      
      public function set §8z§(param1:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         if(_loc4_)
         {
            this.§]!s§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§]!s§);
               while(§§pop() >= this.§#!-§.length)
               {
                  §§push(this.§]!s§);
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop() > this.§#!-§.length)
                     {
                        if(!_loc5_)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              if(!_loc5_)
                              {
                                 _loc3_ = this.§#!-§.length;
                                 addr115:
                                 if(_loc5_ && this)
                                 {
                                    break;
                                 }
                                 addr23:
                                 if(_loc3_ >= this.§]!s§)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          addr49:
                                          if(_loc4_)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                _loc3_++;
                                                addr43:
                                                §§goto(addr23);
                                             }
                                             this.§6?§.push(0);
                                             addr72:
                                          }
                                          this.§%!X§.push(0);
                                          §§goto(addr49);
                                       }
                                       break loop0;
                                    }
                                    §§goto(addr43);
                                 }
                                 this.§#!-§.push(0);
                                 §§goto(addr72);
                              }
                              loop2:
                              while(true)
                              {
                                 if(_loc4_ || this)
                                 {
                                    this.§%!X§.splice(0,_loc2_);
                                    while(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          this.§#!-§.splice(0,_loc2_);
                                       }
                                    }
                                    break loop0;
                                    addr129:
                                 }
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr115);
                     }
                     break loop0;
                  }
               }
               §§push(this.§#!-§.length - this.§]!s§);
               if(_loc4_ || this)
               {
                  §§push(Number(§§pop()));
               }
               _loc2_ = §§pop();
               §§goto(addr187);
            }
            return;
         }
         §§goto(addr154);
      }
      
      public function get §8z§() : uint
      {
         return this.§]!s§;
      }
      
      public function §=!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            if(_loc1_)
            {
               §§push(this.§&"%§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(1);
                  if(_loc1_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc2_ && this))
                     {
                        if(§§pop() >= this.§#!-§.length)
                        {
                           addr56:
                           §§push(0);
                           if(!_loc2_)
                           {
                              addr59:
                           }
                        }
                        else
                        {
                           §§push(this.§&"%§);
                           if(!_loc2_)
                           {
                              addr76:
                              §§push(int(§§pop() + 1));
                           }
                        }
                        §§pop().§&"%§ = §§pop();
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr59);
            }
            §§goto(addr56);
         }
         addr78:
      }
      
      public function §5F§(param1:b2Body) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#!-§[this.§&"%§] = param1.GetLinearVelocity().x;
            while(true)
            {
               this.§6?§[this.§&"%§] = param1.GetLinearVelocity().y;
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§%!X§[this.§&"%§] = param1.§[A§();
            if(_loc3_)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §7!]§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(Math.abs(this.§"!y§(this.§#!-§)) < this.§33§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(Math.abs(this.§"!y§(this.§6?§)) < this.§33§);
                           if(!_loc1_)
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc1_ && _loc1_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(_loc1_)
                                          {
                                             break;
                                             addr102:
                                          }
                                          §§pop();
                                          while(!(_loc1_ && _loc1_))
                                          {
                                             §§push(Math.abs(this.§"!y§(this.§%!X§)) < this.§@T§);
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    continue loop0;
                                    addr92:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             addr67:
                                             §§push(false);
                                          }
                                          else
                                          {
                                             §§goto(addr102);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr25);
                                       }
                                       §§goto(addr68);
                                    }
                                    §§goto(addr25);
                                 }
                              }
                              continue loop1;
                              addr82:
                           }
                           §§goto(addr92);
                        }
                     }
                  }
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §%!U§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(_loc3_ || param1)
         {
            §§push(§&!0§);
            if(_loc3_ || _loc2_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr89:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr107);
                  }
                  else
                  {
                     addr87:
                     §§push(§`5§);
                     §§push(_loc2_);
                  }
                  §§goto(addr89);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr89);
               }
               else
               {
                  §§push(2);
               }
               addr107:
               switch(§§pop())
               {
                  case 0:
                     this.§"!y§ = this.§`!`§;
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     break;
                  case 1:
                  default:
                     this.§"!y§ = this.§'!4§;
                     if(_loc3_)
                     {
                        break;
                     }
               }
               return;
            }
            §§goto(addr87);
         }
         §§goto(addr89);
      }
      
      private function §'!4§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                        §§push(§§pop() / param1.length);
                     }
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && this))
                        {
                           break;
                        }
                        addr89:
                        §§push(Number(§§pop() + param1[_loc3_]));
                     }
                     _loc2_ = §§pop();
                  }
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     addr74:
                     _loc3_ = §§pop() - 1;
                     continue;
                  }
                  §§goto(addr74);
               }
               else
               {
                  §§push(_loc2_);
               }
               §§goto(addr89);
            }
            §§goto(addr74);
         }
         return §§pop();
      }
      
      private function §`!`§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc5_ && param1))
                  {
                     §§push(_loc2_);
                     if(_loc4_ || param1)
                     {
                        break;
                     }
                     addr106:
                     _loc2_ = §§pop();
                     loop1:
                     while(true)
                     {
                        addr64:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr74:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop1;
                              }
                              addr74:
                           }
                           §§goto(addr74);
                        }
                     }
                     addr107:
                  }
                  while(!(_loc4_ || param1))
                  {
                     §§goto(addr107);
                  }
                  continue;
               }
               if(param1[_loc3_] > _loc2_)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr106);
                     §§push(Number(param1[_loc3_]));
                  }
                  §§goto(addr106);
               }
               §§goto(addr64);
            }
            §§goto(addr74);
         }
         return §§pop();
      }
   }
}
