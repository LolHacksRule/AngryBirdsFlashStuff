package §9"%§
{
   import §4!!§.b2Settings;
   import §48§.b2Body;
   
   public class §^">§
   {
      
      public static const §,!'§:String = "max";
      
      public static const §4f§:String = "average";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §,!'§ = "max";
         }
         do
         {
            §4f§ = "average";
         }
         while(_loc2_);
         
      }
      
      private var §?+§:Number;
      
      private var §!"8§:uint;
      
      private var §6_§:Number;
      
      private var §<![§:Number;
      
      private var §>!U§:Vector.<Number>;
      
      private var §7!K§:Vector.<Number>;
      
      private var §%y§:Vector.<Number>;
      
      private var §&E§:int = 0;
      
      private var §8u§:Function;
      
      public function §^">§(param1:Number = 5, param2:uint = 10)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§>!U§ = new Vector.<Number>();
               loop1:
               for(; !(_loc3_ && this); if(_loc3_ && _loc3_)
               {
                  continue;
               },§§goto(addr74))
               {
                  this.§7!K§ = new Vector.<Number>();
                  while(true)
                  {
                     this.§%y§ = new Vector.<Number>();
                     addr97:
                     loop3:
                     while(true)
                     {
                        this.§@!U§ = param2;
                        do
                        {
                           this.limitMultiplier = param1;
                           continue loop3;
                        }
                        while(_loc3_);
                        
                        return;
                     }
                     if(_loc4_ || param1)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§?+§ = param1;
            while(true)
            {
               §§push(this);
               §§push(b2Settings.b2_linearSleepTolerance);
               if(_loc2_)
               {
                  §§push(§§pop() * this.§?+§);
               }
               §§pop().§6_§ = §§pop();
               while(!(_loc3_ && this))
               {
                  §§push(this);
                  §§push(b2Settings.b2_angularSleepTolerance);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() * this.§?+§);
                  }
                  §§pop().§<![§ = §§pop();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr65:
               }
            }
         }
         §§goto(addr65);
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§?+§;
      }
      
      public function set §@!U§(param1:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         if(!(_loc5_ && _loc3_))
         {
            this.§!"8§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§!"8§);
               loop1:
               while(§§pop() >= this.§>!U§.length)
               {
                  §§push(this.§!"8§);
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop() > this.§>!U§.length)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    while(true)
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             break;
                                          }
                                          break loop1;
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                    addr131:
                                 }
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 addr192:
                                 while(true)
                                 {
                                    this.§>!U§.splice(0,_loc2_);
                                    continue loop0;
                                 }
                              }
                              break loop0;
                              addr124:
                           }
                           _loc3_ = this.§>!U§.length;
                        }
                        addr28:
                        if(_loc3_ >= this.§!"8§)
                        {
                           if(!_loc5_)
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       this.§7!K§.push(0);
                                       addr67:
                                    }
                                    break loop0;
                                 }
                                 this.§%y§.push(0);
                              }
                              _loc3_++;
                           }
                           §§goto(addr28);
                        }
                        this.§>!U§.push(0);
                        §§goto(addr67);
                     }
                     break loop0;
                  }
               }
               while(true)
               {
                  §§push(this.§>!U§.length - this.§!"8§);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc2_ = §§pop();
                  §§goto(addr192);
               }
            }
            return;
         }
         §§goto(addr124);
      }
      
      public function get §@!U§() : uint
      {
         return this.§!"8§;
      }
      
      public function §'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            if(_loc1_)
            {
               §§push(this.§&E§);
               if(_loc1_)
               {
                  §§push(1);
                  if(_loc1_ || this)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc1_)
                     {
                        if(§§pop() >= this.§>!U§.length)
                        {
                           addr61:
                           §§push(0);
                           if(_loc1_)
                           {
                              §§goto(addr77);
                           }
                           else
                           {
                              addr74:
                              §§push(§§pop() + 1);
                           }
                        }
                        else
                        {
                           §§push(this.§&E§);
                           if(_loc1_ || this)
                           {
                              §§goto(addr74);
                           }
                        }
                        §§goto(addr77);
                     }
                     addr77:
                     §§pop().§&E§ = §§pop();
                     return;
                     §§push(int(§§pop()));
                  }
                  §§goto(addr74);
               }
               §§goto(addr77);
            }
            §§goto(addr61);
         }
         §§goto(addr77);
      }
      
      public function §^"#§(param1:b2Body) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>!U§[this.§&E§] = param1.GetLinearVelocity().x;
            while(true)
            {
               this.§7!K§[this.§&E§] = param1.GetLinearVelocity().y;
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§%y§[this.§&E§] = param1.§0!I§();
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
      
      public function §]!o§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Math.abs(this.§8u§(this.§>!U§)) < this.§6_§);
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
                        addr127:
                        while(true)
                        {
                           §§push(Math.abs(this.§8u§(this.§7!K§)) < this.§6_§);
                        }
                     }
                     addr126:
                  }
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
                              §§pop();
                              addr114:
                              loop9:
                              while(true)
                              {
                                 §§push(Math.abs(this.§8u§(this.§%y§)) < this.§<![§);
                                 if(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§push(false);
                                                while(_loc1_)
                                                {
                                                   continue loop6;
                                                }
                                                addr68:
                                                if(_loc2_ || _loc1_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr126);
                                                addr68:
                                             }
                                             else
                                             {
                                                if(_loc1_ && _loc2_)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc2_)
                                                {
                                                   addr20:
                                                   §§push(true);
                                                   if(!_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr68);
                                                }
                                             }
                                             §§goto(addr127);
                                          }
                                          §§goto(addr20);
                                       }
                                       continue loop0;
                                       addr48:
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr68);
                              }
                           }
                        }
                        §§goto(addr48);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      public function §<!^§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(_loc4_ || _loc2_)
         {
            §§push(§,!'§);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        addr88:
                        §§push(0);
                        if(!_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr95:
                        §§push(1);
                        if(_loc4_ || _loc2_)
                        {
                        }
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     §§goto(addr94);
                  }
               }
               §§goto(addr94);
            }
            addr94:
            if(§4f§ === _loc2_)
            {
               §§goto(addr95);
            }
            else
            {
               §§push(2);
            }
            addr108:
            switch(§§pop())
            {
               case 0:
                  this.§8u§ = this.§5!w§;
                  if(!_loc3_)
                  {
                     break;
                  }
                  addr39:
                  break;
               case 1:
               default:
                  this.§8u§ = this.§0"D§;
                  if(_loc4_ || this)
                  {
                     §§goto(addr39);
                  }
            }
            return;
         }
         §§goto(addr88);
      }
      
      private function §0"D§(param1:Vector.<Number>) : Number
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
               if(!(_loc4_ && this))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(§§pop() / param1.length);
                        }
                        if(!_loc4_)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              break;
                           }
                           addr104:
                           §§push(Number(§§pop() + param1[_loc3_]));
                        }
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                           addr96:
                           while(true)
                           {
                              §§push(§§pop() - 1);
                              addr97:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                           }
                        }
                        addr110:
                     }
                     while(_loc4_)
                     {
                        §§goto(addr110);
                     }
                     continue;
                  }
                  §§push(_loc2_);
                  §§goto(addr104);
               }
               §§goto(addr96);
            }
            §§goto(addr97);
         }
         return §§pop();
      }
      
      private function §5!w§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() < 0)
               {
                  if(_loc4_ || param1)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        break;
                     }
                     addr101:
                     _loc2_ = §§pop();
                     while(true)
                     {
                        addr59:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && _loc3_))
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
                     }
                     addr102:
                  }
                  while(_loc5_)
                  {
                     §§goto(addr102);
                  }
                  continue;
               }
               if(param1[_loc3_] > _loc2_)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     §§goto(addr101);
                     §§push(Number(param1[_loc3_]));
                  }
                  §§goto(addr101);
               }
               §§goto(addr59);
            }
            §§goto(addr79);
         }
         return §§pop();
      }
   }
}
