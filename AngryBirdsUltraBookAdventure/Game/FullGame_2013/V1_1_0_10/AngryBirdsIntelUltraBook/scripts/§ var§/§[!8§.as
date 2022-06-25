package § var§
{
   import §#I§.b2Body;
   import §@!3§.b2Settings;
   
   public class §[!8§
   {
      
      public static const §+!'§:String = "max";
      
      public static const §'!v§:String = "average";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+!'§ = "max";
            do
            {
               §'!v§ = "average";
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private var §&"§:Number;
      
      private var §%!4§:uint;
      
      private var §<!p§:Number;
      
      private var §>!7§:Number;
      
      private var §,!o§:Vector.<Number>;
      
      private var §1!N§:Vector.<Number>;
      
      private var §switch§:Vector.<Number>;
      
      private var §4!T§:int = 0;
      
      private var §9!]§:Function;
      
      public function §[!8§(param1:Number = 5, param2:uint = 10)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§,!o§ = new Vector.<Number>();
               loop1:
               while(true)
               {
                  this.§1!N§ = new Vector.<Number>();
                  while(true)
                  {
                     this.§switch§ = new Vector.<Number>();
                     continue loop1;
                     addr71:
                     loop5:
                     while(_loc3_ || this)
                     {
                        this.limitMultiplier = param1;
                        while(!(_loc4_ && param1))
                        {
                           if(_loc3_)
                           {
                              this.§9!]§ = this.§!o§;
                              if(_loc3_ || _loc3_)
                              {
                                 if(!(_loc4_ && param2))
                                 {
                                    return;
                                 }
                                 continue loop5;
                                 continue loop5;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§;c§ = param2;
            §§goto(addr71);
         }
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&"§ = param1;
            do
            {
               §§push(this);
               §§push(b2Settings.b2_linearSleepTolerance);
               if(_loc2_)
               {
                  §§push(§§pop() * this.§&"§);
               }
               §§pop().§<!p§ = §§pop();
               do
               {
                  §§push(this);
                  §§push(b2Settings.b2_angularSleepTolerance);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() * this.§&"§);
                  }
                  §§pop().§>!7§ = §§pop();
               }
               while(!(_loc2_ || param1));
               
            }
            while(_loc3_);
            
         }
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§&"§;
      }
      
      public function set §;c§(param1:uint) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            this.§%!4§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§%!4§);
               loop1:
               while(§§pop() >= this.§,!o§.length)
               {
                  §§push(this.§%!4§);
                  if(_loc5_ || param1)
                  {
                     if(§§pop() > this.§,!o§.length)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           while(true)
                           {
                              _loc3_ = this.§,!o§.length;
                           }
                           addr112:
                        }
                        while(true)
                        {
                           if(_loc4_ && _loc2_)
                           {
                              while(true)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    break loop1;
                                 }
                                 addr198:
                                 while(true)
                                 {
                                    this.§,!o§.splice(0,_loc2_);
                                 }
                              }
                              break loop0;
                              addr133:
                           }
                           if(!_loc5_)
                           {
                              loop2:
                              while(true)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 addr180:
                                 while(true)
                                 {
                                    this.§1!N§.splice(0,_loc2_);
                                    continue loop2;
                                 }
                              }
                              continue loop0;
                           }
                           addr24:
                           if(_loc3_ >= this.§%!4§)
                           {
                              if(_loc4_ && _loc2_)
                              {
                                 addr42:
                                 if(_loc5_)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       §§goto(addr24);
                                    }
                                    addr63:
                                    if(_loc5_ || param1)
                                    {
                                       this.§switch§.push(0);
                                       _loc3_++;
                                       §§goto(addr42);
                                       addr57:
                                    }
                                    this.§1!N§.push(0);
                                    §§goto(addr63);
                                    addr78:
                                 }
                                 §§goto(addr57);
                              }
                              break loop0;
                           }
                           this.§,!o§.push(0);
                           §§goto(addr78);
                           §§goto(addr180);
                        }
                     }
                     break loop0;
                  }
               }
               while(true)
               {
                  §§push(this.§,!o§.length - this.§%!4§);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc2_ = §§pop();
                  §§goto(addr198);
               }
            }
            return;
         }
         §§goto(addr112);
      }
      
      public function get §;c§() : uint
      {
         return this.§%!4§;
      }
      
      public function §+!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this);
            if(_loc2_ || this)
            {
               §§push(this.§4!T§);
               if(_loc2_)
               {
                  §§push(1);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc1_)
                     {
                        if(§§pop() >= this.§,!o§.length)
                        {
                           addr72:
                           §§push(0);
                           if(_loc2_ || this)
                           {
                           }
                        }
                        else
                        {
                           §§push(this.§4!T§);
                           if(_loc2_)
                           {
                              addr87:
                              §§push(int(§§pop() + 1));
                           }
                        }
                        §§pop().§4!T§ = §§pop();
                        §§goto(addr89);
                     }
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr72);
         }
         addr89:
      }
      
      public function §4k§(param1:b2Body) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!o§[this.§4!T§] = param1.GetLinearVelocity().x;
         }
         while(true)
         {
            this.§1!N§[this.§4!T§] = param1.GetLinearVelocity().y;
            while(!_loc3_)
            {
               this.§switch§[this.§4!T§] = param1.§'K§();
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §""#§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Math.abs(this.§9!]§(this.§,!o§)) < this.§<!p§);
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
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr112:
                              while(!(_loc1_ && _loc2_))
                              {
                                 §§push(Math.abs(this.§9!]§(this.§switch§)) < this.§>!7§);
                              }
                              addr132:
                              while(true)
                              {
                                 §§push(Math.abs(this.§9!]§(this.§1!N§)) < this.§<!p§);
                                 continue loop0;
                              }
                              if(_loc1_ && _loc1_)
                              {
                                 continue;
                              }
                              if(!(_loc1_ && _loc1_))
                              {
                                 return §§pop();
                              }
                              addr131:
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr132);
                              }
                           }
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    if(_loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                       }
                                       addr74:
                                    }
                                    else
                                    {
                                       §§goto(addr112);
                                    }
                                 }
                                 else
                                 {
                                    addr20:
                                    §§push(true);
                                    if(_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr132);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       break loop5;
                                    }
                                    break loop9;
                                 }
                              }
                              §§goto(addr20);
                           }
                           continue loop0;
                        }
                     }
                     return §§pop();
                     addr106:
                  }
                  §§goto(addr131);
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §4![§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(_loc3_ || this)
         {
            §§push(§+!'§);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_)
                     {
                        addr82:
                        §§push(0);
                        if(_loc4_)
                        {
                           addr92:
                        }
                     }
                     else
                     {
                        addr89:
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
                     §§goto(addr88);
                  }
               }
               §§goto(addr88);
            }
            addr88:
            if(§'!v§ === _loc2_)
            {
               §§goto(addr89);
            }
            else
            {
               §§push(2);
            }
            addr97:
            switch(§§pop())
            {
               case 0:
                  this.§9!]§ = this.§^!U§;
                  if(!(_loc4_ && _loc2_))
                  {
                     break;
                  }
                  addr48:
                  break;
               case 1:
               default:
                  this.§9!]§ = this.§!o§;
                  if(_loc3_)
                  {
                     §§goto(addr48);
                  }
            }
            return;
         }
         §§goto(addr82);
      }
      
      private function §!o§(param1:Vector.<Number>) : Number
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
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(_loc5_ || this)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           §§push(§§pop() / param1.length);
                           break;
                        }
                        addr94:
                        _loc2_ = §§pop();
                        §§push(_loc3_);
                        if(!(_loc4_ && this))
                        {
                           addr82:
                           _loc3_ = §§pop() - 1;
                           continue;
                        }
                        §§goto(addr82);
                        addr95:
                     }
                     break;
                  }
                  §§goto(addr95);
               }
               else
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop() + param1[_loc3_]));
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr82);
         }
         return §§pop();
      }
      
      private function §^!U§(param1:Vector.<Number>) : Number
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
               if(_loc5_ || _loc2_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && this))
                        {
                           break;
                        }
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr98:
                           while(true)
                           {
                              addr77:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr79:
                                 while(true)
                                 {
                                    §§push(§§pop() - 1);
                                    addr80:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                        addr97:
                     }
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           addr93:
                           while(true)
                           {
                              §§goto(addr97);
                           }
                        }
                        §§goto(addr98);
                     }
                     continue;
                  }
                  if(param1[_loc3_] > _loc2_)
                  {
                     §§goto(addr93);
                  }
                  §§goto(addr77);
               }
               §§goto(addr79);
            }
            §§goto(addr80);
         }
         return §§pop();
      }
   }
}
