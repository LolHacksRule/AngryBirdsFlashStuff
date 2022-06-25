package §=b§
{
   import §#V§.b2Body;
   import §3!m§.b2Settings;
   
   public class §!K§
   {
      
      public static const §6!^§:String = "max";
      
      public static const §;i§:String = "average";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §!K§)
         {
            §6!^§ = "max";
            do
            {
               §;i§ = "average";
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private var §9O§:Number;
      
      private var §3!!§:uint;
      
      private var §<W§:Number;
      
      private var §5!y§:Number;
      
      private var §=s§:Vector.<Number>;
      
      private var §4k§:Vector.<Number>;
      
      private var §4j§:Vector.<Number>;
      
      private var § !T§:int = 0;
      
      private var §;!G§:Function;
      
      public function §!K§(param1:Number = 5, param2:uint = 10)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super();
            while(true)
            {
               this.§=s§ = new Vector.<Number>();
               loop1:
               for(; _loc4_; if(!(_loc4_ || _loc3_))
               {
                  continue;
               })
               {
                  this.§4k§ = new Vector.<Number>();
                  while(true)
                  {
                     this.§4j§ = new Vector.<Number>();
                     loop3:
                     while(!_loc3_)
                     {
                        this.§&Y§ = param2;
                        while(true)
                        {
                           this.limitMultiplier = param1;
                           while(!(_loc3_ && _loc3_))
                           {
                              this.§;!G§ = this.§-!q§;
                              if(!_loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§9O§ = param1;
            while(true)
            {
               §§push(this);
               §§push(b2Settings.b2_linearSleepTolerance);
               if(_loc2_)
               {
                  §§push(§§pop() * this.§9O§);
               }
               §§pop().§<W§ = §§pop();
               while(_loc2_)
               {
                  §§push(this);
                  §§push(b2Settings.b2_angularSleepTolerance);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() * this.§9O§);
                  }
                  §§pop().§5!y§ = §§pop();
                  if(_loc2_ || this)
                  {
                     return;
                     addr70:
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§9O§;
      }
      
      public function set §&Y§(param1:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            this.§3!!§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§3!!§);
               loop1:
               while(true)
               {
                  if(§§pop() >= this.§=s§.length)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     while(true)
                     {
                        §§push(this.§=s§.length - this.§3!!§);
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc2_ = §§pop();
                     }
                     addr165:
                  }
                  while(true)
                  {
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     this.§=s§.splice(0,_loc2_);
                     loop4:
                     while(true)
                     {
                        this.§4k§.splice(0,_loc2_);
                        addr138:
                        loop2:
                        while(true)
                        {
                           this.§4j§.splice(0,_loc2_);
                           addr124:
                           while(true)
                           {
                              if(_loc4_ || this)
                              {
                                 break loop2;
                              }
                              continue loop4;
                           }
                           continue loop4;
                        }
                        break loop1;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr165);
      }
      
      public function get §&Y§() : uint
      {
         return this.§3!!§;
      }
      
      public function §+!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            if(_loc2_)
            {
               §§push(this.§ !T§);
               if(_loc2_)
               {
                  §§push(1);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc1_ && _loc2_))
                     {
                        if(§§pop() >= this.§=s§.length)
                        {
                           addr72:
                           §§push(0);
                           if(!_loc2_)
                           {
                           }
                        }
                        else
                        {
                           §§push(this.§ !T§);
                           if(_loc2_ || _loc2_)
                           {
                              addr86:
                              §§push(§§pop() + 1);
                           }
                        }
                        §§goto(addr88);
                     }
                     addr88:
                     §§pop().§ !T§ = §§pop();
                     return;
                     §§push(int(§§pop()));
                  }
                  §§goto(addr86);
               }
               §§goto(addr88);
            }
            §§goto(addr72);
         }
         §§goto(addr88);
      }
      
      public function §8!X§(param1:b2Body) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=s§[this.§ !T§] = param1.GetLinearVelocity().x;
         }
         while(true)
         {
            this.§4k§[this.§ !T§] = param1.GetLinearVelocity().y;
            while(!(_loc3_ && param1))
            {
               this.§4j§[this.§ !T§] = param1.§8!G§();
               if(!(_loc3_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public function §5&§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(Math.abs(this.§;!G§(this.§=s§)) < this.§<W§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr126:
                        while(true)
                        {
                           §§push(Math.abs(this.§;!G§(this.§4k§)) < this.§<W§);
                        }
                     }
                     addr125:
                  }
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    addr62:
                                    §§push(false);
                                    if(_loc1_ || _loc2_)
                                    {
                                       break;
                                    }
                                    addr110:
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr62);
                                    }
                                 }
                                 else if(!(_loc2_ && _loc2_))
                                 {
                                    addr19:
                                    §§push(true);
                                    if(!_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc1_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr125);
                                    }
                                    else
                                    {
                                       §§goto(addr62);
                                    }
                                 }
                                 while(_loc1_)
                                 {
                                    §§push(Math.abs(this.§;!G§(this.§4j§)) < this.§5!y§);
                                    continue loop0;
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr19);
                           }
                           if(_loc1_)
                           {
                              return §§pop();
                           }
                           continue;
                           addr47:
                        }
                        §§goto(addr110);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      public function §1!I§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§6!^§);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(!(_loc3_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_)
                     {
                        addr78:
                        §§push(0);
                        if(!(_loc4_ || _loc2_))
                        {
                           addr93:
                        }
                     }
                     else
                     {
                        addr90:
                        §§push(1);
                        if(!_loc3_)
                        {
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     §§goto(addr89);
                  }
               }
               §§goto(addr89);
            }
            addr89:
            if(§;i§ === _loc2_)
            {
               §§goto(addr90);
            }
            else
            {
               §§push(2);
            }
            addr98:
            switch(§§pop())
            {
               case 0:
                  this.§;!G§ = this.§#!h§;
                  if(_loc4_)
                  {
                     break;
                  }
                  break;
               case 1:
               default:
                  this.§;!G§ = this.§-!q§;
                  if(!_loc3_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr78);
      }
      
      private function §-!q§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc5_)
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§pop() / param1.length);
                     }
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     addr98:
                     _loc2_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           addr79:
                           §§push(§§pop() - 1);
                           while(true)
                           {
                              _loc3_ = §§pop();
                           }
                           addr79:
                        }
                        §§goto(addr79);
                     }
                     addr99:
                  }
                  while(_loc5_ && param1)
                  {
                     §§goto(addr99);
                     §§goto(addr79);
                  }
                  continue;
               }
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(Number(§§pop() + param1[_loc3_]));
               }
               §§goto(addr98);
            }
            §§goto(addr79);
         }
         return §§pop();
      }
      
      private function §#!h§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && this))
            {
               if(§§pop() < 0)
               {
                  if(_loc5_)
                  {
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc3_))
                        {
                           break;
                        }
                     }
                     else
                     {
                        addr88:
                        §§push(Number(param1[_loc3_]));
                     }
                     _loc2_ = §§pop();
                     while(true)
                     {
                        addr72:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              addr77:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                              addr77:
                           }
                           §§goto(addr77);
                        }
                     }
                     addr93:
                  }
                  while(_loc4_)
                  {
                     §§goto(addr93);
                  }
                  continue;
               }
               if(param1[_loc3_] > _loc2_)
               {
                  §§goto(addr88);
               }
               §§goto(addr72);
            }
            §§goto(addr77);
         }
         return §§pop();
      }
   }
}
