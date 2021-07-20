package §&!8§
{
   import § o§.b2Body;
   import §"0§.b2Settings;
   
   public class §?!G§
   {
      
      public static const §1X§:String = "max";
      
      public static const §4a§:String = "average";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1X§ = "max";
            do
            {
               §4a§ = "average";
            }
            while(!_loc2_);
            
         }
      }
      
      private var §5!&§:Number;
      
      private var §6m§:uint;
      
      private var §4!§:Number;
      
      private var § d§:Number;
      
      private var §%!f§:Vector.<Number>;
      
      private var §!q§:Vector.<Number>;
      
      private var §9!_§:Vector.<Number>;
      
      private var §9!c§:int = 0;
      
      private var §,P§:Function;
      
      public function §?!G§(param1:Number = 5, param2:uint = 10)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§%!f§ = new Vector.<Number>();
               loop1:
               while(true)
               {
                  this.§!q§ = new Vector.<Number>();
                  loop2:
                  while(true)
                  {
                     this.§9!_§ = new Vector.<Number>();
                     while(true)
                     {
                        this.§=V§ = param2;
                        loop4:
                        while(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              this.limitMultiplier = param1;
                              loop5:
                              while(!_loc4_)
                              {
                                 while(true)
                                 {
                                    this.§,P§ = this.§9!B§;
                                    if(_loc3_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          continue loop2;
                                       }
                                       continue loop4;
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 return;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5!&§ = param1;
            do
            {
               §§push(this);
               §§push(b2Settings.b2_linearSleepTolerance);
               if(_loc3_)
               {
                  §§push(§§pop() * this.§5!&§);
               }
               §§pop().§4!§ = §§pop();
               do
               {
                  §§push(this);
                  §§push(b2Settings.b2_angularSleepTolerance);
                  if(_loc3_)
                  {
                     §§push(§§pop() * this.§5!&§);
                  }
                  §§pop().§ d§ = §§pop();
               }
               while(!(_loc3_ || _loc2_));
               
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§5!&§;
      }
      
      public function set §=V§(param1:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         if(!(_loc5_ && param1))
         {
            this.§6m§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§6m§);
               while(true)
               {
                  if(§§pop() >= this.§%!f§.length)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     §§push(this.§%!f§.length - this.§6m§);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
                  loop5:
                  while(true)
                  {
                     this.§%!f§.splice(0,_loc2_);
                     addr143:
                     while(!(_loc4_ || _loc3_))
                     {
                        continue loop5;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr115);
      }
      
      public function get §=V§() : uint
      {
         return this.§6m§;
      }
      
      public function §^!@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            if(!(_loc1_ && _loc1_))
            {
               §§push(this.§9!c§);
               if(_loc2_)
               {
                  §§push(1);
                  if(!_loc1_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc2_)
                     {
                        if(§§pop() >= this.§%!f§.length)
                        {
                           addr52:
                           §§push(0);
                           if(!_loc2_)
                           {
                              addr70:
                              §§push(int(§§pop() + 1));
                           }
                        }
                        else
                        {
                           §§push(this.§9!c§);
                           if(_loc2_)
                           {
                              §§goto(addr70);
                           }
                        }
                        §§pop().§9!c§ = §§pop();
                        §§goto(addr74);
                     }
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr52);
         }
         addr74:
      }
      
      public function §`t§(param1:b2Body) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%!f§[this.§9!c§] = param1.GetLinearVelocity().x;
         }
         do
         {
            this.§!q§[this.§9!c§] = param1.GetLinearVelocity().y;
            do
            {
               this.§9!_§[this.§9!c§] = param1.§[H§();
            }
            while(!_loc2_);
            
         }
         while(!_loc2_);
         
      }
      
      public function §;Q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(Math.abs(this.§,P§(this.§%!f§)) < this.§4!§);
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
                        addr137:
                        while(true)
                        {
                           §§push(Math.abs(this.§,P§(this.§!q§)) < this.§4!§);
                        }
                     }
                     addr136:
                  }
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Math.abs(this.§,P§(this.§9!_§)) < this.§ d§);
                                    if(_loc1_)
                                    {
                                       addr36:
                                       break;
                                       addr70:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc1_)
                                          {
                                             break loop4;
                                          }
                                          continue loop7;
                                       }
                                       addr25:
                                       §§push(true);
                                       if(_loc1_)
                                       {
                                          break loop7;
                                       }
                                       continue loop6;
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr75);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr70);
                     }
                     continue loop1;
                  }
               }
            }
         }
         addr75:
         false;
         return §§pop();
      }
      
      public function §#5§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(_loc3_ || param1)
         {
            §§push(§1X§);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        addr72:
                        §§push(0);
                        if(_loc4_ && _loc2_)
                        {
                           addr97:
                        }
                     }
                     else
                     {
                        addr84:
                        §§push(1);
                        if(_loc3_)
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr102);
                  }
                  else
                  {
                     §§goto(addr83);
                  }
               }
               §§goto(addr83);
            }
            addr83:
            if(§4a§ === _loc2_)
            {
               §§goto(addr84);
            }
            else
            {
               §§push(2);
            }
            addr102:
            switch(§§pop())
            {
               case 0:
                  this.§,P§ = this.§^!'§;
                  if(_loc3_ || _loc3_)
                  {
                     break;
                  }
                  addr53:
                  break;
               case 1:
               default:
                  this.§,P§ = this.§9!B§;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr53);
                  }
            }
            return;
         }
         §§goto(addr72);
      }
      
      private function §9!B§(param1:Vector.<Number>) : Number
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
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(_loc5_ || _loc2_)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / param1.length);
                     }
                     if(_loc5_ || param1)
                     {
                        break;
                     }
                     addr94:
                     _loc2_ = §§pop();
                  }
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     addr72:
                     _loc3_ = §§pop() - 1;
                     continue;
                  }
                  §§goto(addr72);
               }
               else
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop() + param1[_loc3_]));
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr72);
         }
         return §§pop();
      }
      
      private function §^!'§(param1:Vector.<Number>) : Number
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
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr108:
                        loop2:
                        while(true)
                        {
                           addr65:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc5_ || param1)
                              {
                                 addr75:
                                 §§push(§§pop() - 1);
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    continue loop2;
                                 }
                                 addr75:
                              }
                              §§goto(addr75);
                           }
                        }
                     }
                     addr107:
                  }
                  while(true)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr103:
                        while(true)
                        {
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr108);
                  }
                  continue;
               }
               if(param1[_loc3_] > _loc2_)
               {
                  §§goto(addr103);
               }
               §§goto(addr65);
            }
            §§goto(addr75);
         }
         return §§pop();
      }
   }
}
