package §`!G§
{
   import §,"[§.b2Settings;
   import §6"1§.b2Body;
   
   public class §%"B§
   {
      
      public static const §@"!§:String = "max";
      
      public static const §1L§:String = "average";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §@"!§ = "max";
            do
            {
               §1L§ = "average";
            }
            while(!_loc1_);
            
         }
      }
      
      private var §4u§:Number;
      
      private var §-!u§:uint;
      
      private var §3!`§:Number;
      
      private var §>!i§:Number;
      
      private var §1"8§:Vector.<Number>;
      
      private var §9!B§:Vector.<Number>;
      
      private var §&Y§:Vector.<Number>;
      
      private var §'!`§:int = 0;
      
      private var §-!B§:Function;
      
      public function §%"B§(param1:Number = 5, param2:uint = 10)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§1"8§ = new Vector.<Number>();
               addr109:
               while(true)
               {
                  this.§9!B§ = new Vector.<Number>();
                  addr101:
                  while(true)
                  {
                     this.§&Y§ = new Vector.<Number>();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4u§ = param1;
            while(true)
            {
               §§push(this);
               §§push(b2Settings.b2_linearSleepTolerance);
               if(!_loc3_)
               {
                  §§push(§§pop() * this.§4u§);
               }
               §§pop().§3!`§ = §§pop();
               loop1:
               while(!(_loc3_ && this))
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(b2Settings.b2_angularSleepTolerance);
                     if(!_loc3_)
                     {
                        §§push(§§pop() * this.§4u§);
                     }
                     §§pop().§>!i§ = §§pop();
                     if(_loc2_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§4u§;
      }
      
      public function set §8!A§(param1:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         if(_loc4_ || _loc3_)
         {
            this.§-!u§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§-!u§);
               loop1:
               while(§§pop() >= this.§1"8§.length)
               {
                  §§push(this.§-!u§);
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop() > this.§1"8§.length)
                     {
                        if(_loc4_)
                        {
                           if(!_loc5_)
                           {
                              if(!(_loc5_ && this))
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    _loc3_ = this.§1"8§.length;
                                    addr28:
                                    if(_loc3_ >= this.§-!u§)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(!_loc4_)
                                             {
                                                this.§&Y§.push(0);
                                                addr74:
                                             }
                                             break loop0;
                                          }
                                          if(!(_loc5_ && this))
                                          {
                                             _loc3_++;
                                             addr55:
                                             §§goto(addr28);
                                          }
                                          this.§9!B§.push(0);
                                          §§goto(addr74);
                                          addr82:
                                       }
                                       §§goto(addr55);
                                    }
                                    this.§1"8§.push(0);
                                    §§goto(addr82);
                                    addr132:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       this.§9!B§.splice(0,_loc2_);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§&Y§.splice(0,_loc2_);
                              }
                           }
                           while(_loc5_ && param1)
                           {
                              break loop1;
                           }
                           continue loop0;
                        }
                        §§goto(addr132);
                     }
                     break loop0;
                  }
               }
               while(true)
               {
                  §§push(this.§1"8§.length - this.§-!u§);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc2_ = §§pop();
                  §§goto(addr202);
               }
            }
            §§goto(addr49);
         }
         addr49:
      }
      
      public function get §8!A§() : uint
      {
         return this.§-!u§;
      }
      
      public function §2!m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this);
            if(_loc1_ || this)
            {
               §§push(this.§'!`§);
               if(_loc1_)
               {
                  §§push(1);
                  if(_loc1_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc2_)
                     {
                        if(§§pop() >= this.§1"8§.length)
                        {
                           addr66:
                           §§push(0);
                           if(_loc1_)
                           {
                              §§goto(addr82);
                           }
                           else
                           {
                              addr79:
                              §§push(§§pop() + 1);
                           }
                        }
                        else
                        {
                           §§push(this.§'!`§);
                           if(!(_loc2_ && this))
                           {
                              §§goto(addr79);
                           }
                        }
                        §§goto(addr82);
                     }
                     addr82:
                     §§pop().§'!`§ = §§pop();
                     return;
                     §§push(int(§§pop()));
                  }
                  §§goto(addr79);
               }
               §§goto(addr82);
            }
            §§goto(addr66);
         }
         §§goto(addr82);
      }
      
      public function §="!§(param1:b2Body) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1"8§[this.§'!`§] = param1.GetLinearVelocity().x;
         }
         while(true)
         {
            this.§9!B§[this.§'!`§] = param1.GetLinearVelocity().y;
            while(_loc2_)
            {
               this.§&Y§[this.§'!`§] = param1.GetAngularVelocity();
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §%`§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Math.abs(this.§-!B§(this.§1"8§)) < this.§3!`§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr137:
                        while(true)
                        {
                           §§push(Math.abs(this.§-!B§(this.§9!B§)) < this.§3!`§);
                           addr111:
                           while(!_loc1_)
                           {
                           }
                           continue loop0;
                        }
                     }
                     addr136:
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc1_ && _loc2_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           loop7:
                           while(true)
                           {
                              §§push(Math.abs(this.§-!B§(this.§&Y§)) < this.§>!i§);
                              if(_loc1_ && _loc1_)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          if(_loc1_ && this)
                                          {
                                             continue loop7;
                                          }
                                          if(_loc2_)
                                          {
                                             while(true)
                                             {
                                                §§push(false);
                                                break loop7;
                                             }
                                             addr86:
                                          }
                                       }
                                       else
                                       {
                                          addr20:
                                          §§push(true);
                                          if(_loc1_ && _loc2_)
                                          {
                                             break loop7;
                                          }
                                          if(_loc2_ || _loc2_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr20);
                                 }
                                 addr68:
                              }
                              §§goto(addr111);
                           }
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 break loop6;
                              }
                              continue loop6;
                           }
                        }
                        return §§pop();
                     }
                     §§goto(addr68);
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §=$§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(!_loc4_)
         {
            §§push(§@"!§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        addr92:
                        §§push(0);
                        if(!_loc3_)
                        {
                           addr107:
                        }
                     }
                     else
                     {
                        addr99:
                        §§push(1);
                        if(!(_loc4_ && param1))
                        {
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr112);
                  }
                  else
                  {
                     §§goto(addr98);
                  }
               }
               §§goto(addr98);
            }
            addr98:
            if(§1L§ === _loc2_)
            {
               §§goto(addr99);
            }
            else
            {
               §§push(2);
            }
            addr112:
            switch(§§pop())
            {
               case 0:
                  this.§-!B§ = this.§5d§;
                  if(!(_loc4_ && param1))
                  {
                     break;
                  }
                  addr53:
                  break;
               case 1:
               default:
                  this.§-!B§ = this.§4i§;
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr53);
                  }
            }
            return;
         }
         §§goto(addr92);
      }
      
      private function §4i§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               if(§§pop() < 0)
               {
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           addr64:
                           §§push(§§pop() / param1.length);
                           if(_loc5_ || param1)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr99:
                           §§push(Number(§§pop() + param1[_loc3_]));
                        }
                        _loc2_ = §§pop();
                        §§push(_loc3_);
                        if(_loc5_ || param1)
                        {
                           addr94:
                           _loc3_ = §§pop() - 1;
                           continue;
                        }
                        §§goto(addr94);
                        addr105:
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr105);
               }
               else
               {
                  §§push(_loc2_);
               }
               §§goto(addr99);
            }
            §§goto(addr94);
         }
         return §§pop();
      }
      
      private function §5d§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && param1))
            {
               if(_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc5_ && param1))
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr92:
                           §§push(Number(param1[_loc3_]));
                        }
                        _loc2_ = §§pop();
                        while(true)
                        {
                           addr78:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr80:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr81:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                              }
                           }
                        }
                        addr97:
                     }
                     while(!_loc4_)
                     {
                        §§goto(addr97);
                     }
                     continue;
                  }
                  if(param1[_loc3_] > _loc2_)
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr78);
               }
               §§goto(addr80);
            }
            §§goto(addr81);
         }
         return §§pop();
      }
   }
}
