package §+!o§
{
   import §+S§.b2Body;
   import §=o§.b2Settings;
   
   public class §<P§
   {
      
      public static const §;E§:String = "max";
      
      public static const §0!1§:String = "average";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §;E§ = "max";
         }
         do
         {
            §0!1§ = "average";
         }
         while(!_loc2_);
         
      }
      
      private var §-!y§:Number;
      
      private var §&!?§:uint;
      
      private var §1!H§:Number;
      
      private var §^!b§:Number;
      
      private var §%r§:Vector.<Number>;
      
      private var §=w§:Vector.<Number>;
      
      private var §9?§:Vector.<Number>;
      
      private var §=!v§:int = 0;
      
      private var §&!Q§:Function;
      
      public function §<P§(param1:Number = 5, param2:uint = 10)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§%r§ = new Vector.<Number>();
            loop1:
            while(true)
            {
               this.§=w§ = new Vector.<Number>();
               while(true)
               {
                  this.§9?§ = new Vector.<Number>();
                  loop3:
                  while(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        this.§?8§ = param2;
                        loop4:
                        do
                        {
                           this.limitMultiplier = param1;
                           while(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 this.§&!Q§ = this.§3" §;
                                 if(!(_loc3_ && param2))
                                 {
                                    continue loop4;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        while(!(_loc4_ || this));
                        
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§-!y§ = param1;
            while(true)
            {
               §§push(this);
               §§push(b2Settings.b2_linearSleepTolerance);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() * this.§-!y§);
               }
               §§pop().§1!H§ = §§pop();
               while(!(_loc3_ && this))
               {
                  §§push(this);
                  §§push(b2Settings.b2_angularSleepTolerance);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * this.§-!y§);
                  }
                  §§pop().§^!b§ = §§pop();
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§-!y§;
      }
      
      public function set §?8§(param1:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            this.§&!?§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§&!?§);
               loop1:
               while(§§pop() >= this.§%r§.length)
               {
                  §§push(this.§&!?§);
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(§§pop() > this.§%r§.length)
                  {
                     if(_loc4_)
                     {
                        _loc3_ = this.§%r§.length;
                     }
                     if(_loc4_ || this)
                     {
                        if(_loc4_ || param1)
                        {
                           continue loop0;
                        }
                        loop4:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              this.§9?§.splice(0,_loc2_);
                              addr162:
                              while(true)
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       break;
                                    }
                                    break loop1;
                                 }
                                 addr197:
                                 while(true)
                                 {
                                    this.§%r§.splice(0,_loc2_);
                                 }
                                 §§goto(addr162);
                              }
                              addr162:
                              return;
                              addr139:
                              addr153:
                           }
                           while(true)
                           {
                              this.§=w§.splice(0,_loc2_);
                              continue loop4;
                           }
                           §§goto(addr162);
                        }
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr162);
               }
               while(true)
               {
                  §§push(this.§%r§.length - this.§&!?§);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc2_ = §§pop();
                  §§goto(addr197);
               }
            }
         }
         §§goto(addr153);
      }
      
      public function get §?8§() : uint
      {
         return this.§&!?§;
      }
      
      public function §>Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this);
            if(!_loc1_)
            {
               §§push(this.§=!v§);
               if(!_loc1_)
               {
                  §§push(1);
                  if(!_loc1_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc2_ || _loc1_)
                     {
                        if(§§pop() >= this.§%r§.length)
                        {
                           addr57:
                           §§push(0);
                           if(_loc2_ || _loc1_)
                           {
                           }
                        }
                        else
                        {
                           §§push(this.§=!v§);
                           if(!_loc1_)
                           {
                              addr82:
                              §§push(int(§§pop() + 1));
                           }
                        }
                        §§pop().§=!v§ = §§pop();
                        §§goto(addr84);
                     }
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr57);
         }
         addr84:
      }
      
      public function §,!d§(param1:b2Body) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%r§[this.§=!v§] = param1.GetLinearVelocity().x;
            while(true)
            {
               this.§=w§[this.§=!v§] = param1.GetLinearVelocity().y;
               while(!_loc2_)
               {
                  this.§9?§[this.§=!v§] = param1.§7"<§();
                  if(!(_loc2_ && this))
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §6!'§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(Math.abs(this.§&!Q§(this.§%r§)) < this.§1!H§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc1_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 addr103:
                                 while(true)
                                 {
                                    §§push(Math.abs(this.§&!Q§(this.§9?§)) < this.§^!b§);
                                    addr50:
                                    while(!_loc2_)
                                    {
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                           loop9:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                       }
                                       addr68:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(Math.abs(this.§&!Q§(this.§=w§)) < this.§1!H§);
                                          break loop9;
                                       }
                                       addr126:
                                    }
                                 }
                                 else
                                 {
                                    if(_loc1_)
                                    {
                                       addr19:
                                       §§push(true);
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc1_ || _loc1_)
                                             {
                                                return §§pop();
                                             }
                                             addr125:
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr126);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr50);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                break loop5;
                                             }
                                             break loop9;
                                          }
                                          addr69:
                                       }
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr69);
                              }
                              §§goto(addr19);
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return §§pop();
                     addr92:
                  }
                  §§goto(addr125);
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §+m§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(_loc3_)
         {
            §§push(§;E§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        addr72:
                        §§push(0);
                        if(_loc4_)
                        {
                           addr92:
                        }
                     }
                     else
                     {
                        addr79:
                        §§push(1);
                        if(_loc3_)
                        {
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr97);
                  }
                  else
                  {
                     §§goto(addr78);
                  }
               }
               §§goto(addr78);
            }
            addr78:
            if(§0!1§ === _loc2_)
            {
               §§goto(addr79);
            }
            else
            {
               §§push(2);
            }
            addr97:
            switch(§§pop())
            {
               case 0:
                  this.§&!Q§ = this.§`!$§;
                  if(_loc3_)
                  {
                     break;
                  }
                  addr38:
                  break;
               case 1:
               default:
                  this.§&!Q§ = this.§3" §;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr38);
                  }
            }
            return;
         }
         §§goto(addr72);
      }
      
      private function §3" §(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && this))
            {
               if(§§pop() < 0)
               {
                  if(_loc5_)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() / param1.length);
                           break;
                        }
                        addr99:
                        _loc2_ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              addr70:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr71:
                                 while(_loc4_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                              addr70:
                           }
                           §§goto(addr70);
                        }
                     }
                     break;
                  }
                  §§goto(addr71);
               }
               else
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop() + param1[_loc3_]));
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr70);
         }
         return §§pop();
      }
      
      private function §`!$§(param1:Vector.<Number>) : Number
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
               if(!(_loc4_ && param1))
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc4_)
                     {
                        if(_loc5_ || param1)
                        {
                           §§push(_loc2_);
                           if(!(_loc4_ && _loc3_))
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr93:
                           §§push(Number(param1[_loc3_]));
                        }
                        _loc2_ = §§pop();
                        while(true)
                        {
                           addr69:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr71:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr72:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                              }
                           }
                        }
                        addr98:
                     }
                     while(!_loc5_)
                     {
                        §§goto(addr98);
                     }
                     continue;
                  }
                  if(param1[_loc3_] > _loc2_)
                  {
                     §§goto(addr93);
                  }
                  §§goto(addr69);
               }
               §§goto(addr71);
            }
            §§goto(addr72);
         }
         return §§pop();
      }
   }
}
