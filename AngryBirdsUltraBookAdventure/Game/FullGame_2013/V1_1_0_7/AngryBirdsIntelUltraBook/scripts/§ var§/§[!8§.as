package § var§
{
   import §#I§.b2Body;
   import §@!3§.b2Settings;
   
   public class §[!8§
   {
      
      public static const §+!'§:String = "max";
      
      public static const §'!v§:String = "average";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+!'§ = "max";
            do
            {
               §'!v§ = "average";
            }
            while(_loc1_ && _loc2_);
            
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
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
                  while(_loc4_)
                  {
                     while(!(_loc3_ && this))
                     {
                        this.§;c§ = param2;
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§switch§ = new Vector.<Number>();
            §§goto(addr95);
         }
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§&"§ = param1;
         }
         while(true)
         {
            §§push(this);
            §§push(b2Settings.b2_linearSleepTolerance);
            if(_loc3_)
            {
               §§push(§§pop() * this.§&"§);
            }
            §§pop().§<!p§ = §§pop();
            while(_loc3_)
            {
               §§push(this);
               §§push(b2Settings.b2_angularSleepTolerance);
               if(_loc3_)
               {
                  §§push(§§pop() * this.§&"§);
               }
               §§pop().§>!7§ = §§pop();
               if(!_loc2_)
               {
                  return;
               }
            }
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
         if(!_loc4_)
         {
            this.§%!4§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§%!4§);
               while(§§pop() >= this.§,!o§.length)
               {
                  §§push(this.§%!4§);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop() > this.§,!o§.length)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc5_ || param1)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              _loc3_ = this.§,!o§.length;
                              addr126:
                              if(_loc5_ || _loc2_)
                              {
                                 addr24:
                                 if(_loc3_ >= this.§%!4§)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!(_loc5_ || _loc2_))
                                          {
                                             this.§switch§.push(0);
                                             addr70:
                                          }
                                          break loop0;
                                       }
                                       if(!(_loc4_ && this))
                                       {
                                          _loc3_++;
                                          addr51:
                                          §§goto(addr24);
                                       }
                                       this.§1!N§.push(0);
                                       §§goto(addr70);
                                       addr78:
                                    }
                                    §§goto(addr51);
                                 }
                                 this.§,!o§.push(0);
                                 §§goto(addr78);
                              }
                              else
                              {
                                 loop5:
                                 while(_loc4_ && this)
                                 {
                                    while(true)
                                    {
                                       this.§1!N§.splice(0,_loc2_);
                                       continue loop5;
                                    }
                                 }
                                 break loop0;
                                 addr140:
                              }
                           }
                           loop4:
                           while(true)
                           {
                              if(_loc5_ || this)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§switch§.splice(0,_loc2_);
                                    §§goto(addr140);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§,!o§.splice(0,_loc2_);
                                    continue loop4;
                                 }
                                 addr203:
                              }
                              §§goto(addr180);
                           }
                           continue loop0;
                        }
                        §§goto(addr126);
                     }
                     break loop0;
                  }
               }
               §§push(this.§,!o§.length - this.§%!4§);
               if(_loc5_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               _loc2_ = §§pop();
               §§goto(addr203);
            }
            return;
         }
         §§goto(addr163);
      }
      
      public function get §;c§() : uint
      {
         return this.§%!4§;
      }
      
      public function §+!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this);
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.§4!T§);
               if(_loc1_ || _loc2_)
               {
                  §§push(1);
                  if(!_loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc2_)
                     {
                        if(§§pop() >= this.§,!o§.length)
                        {
                           addr71:
                           §§push(0);
                           if(_loc2_ && _loc1_)
                           {
                              addr84:
                              §§push(int(§§pop() + 1));
                           }
                        }
                        else
                        {
                           §§push(this.§4!T§);
                           if(!_loc2_)
                           {
                              §§goto(addr84);
                           }
                        }
                        §§pop().§4!T§ = §§pop();
                        §§goto(addr88);
                     }
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr71);
         }
         addr88:
      }
      
      public function §4k§(param1:b2Body) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§,!o§[this.§4!T§] = param1.GetLinearVelocity().x;
         }
         while(true)
         {
            this.§1!N§[this.§4!T§] = param1.GetLinearVelocity().y;
            while(_loc2_ || param1)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Math.abs(this.§9!]§(this.§,!o§)) < this.§<!p§);
            if(!_loc2_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr126:
                        loop6:
                        while(true)
                        {
                           §§push(Math.abs(this.§9!]§(this.§1!N§)) < this.§<!p§);
                           addr98:
                           while(true)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 break loop6;
                              }
                              continue loop8;
                           }
                           continue loop8;
                        }
                     }
                     addr125:
                  }
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr111:
                              addr25:
                              while(true)
                              {
                                 §§push(Math.abs(this.§9!]§(this.§switch§)) < this.§>!7§);
                              }
                              if(_loc1_ || this)
                              {
                                 §§goto(addr32);
                              }
                           }
                        }
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       break loop5;
                                    }
                                    addr61:
                                 }
                                 else
                                 {
                                    §§goto(addr111);
                                 }
                              }
                              else
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr126);
                              }
                           }
                           while(true)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 break loop1;
                              }
                              §§goto(addr98);
                           }
                        }
                        addr32:
                     }
                     continue loop0;
                     return §§pop();
                  }
                  return §§pop();
               }
            }
            §§goto(addr125);
         }
         §§goto(addr61);
      }
      
      public function §4![§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(!(_loc4_ && _loc2_))
         {
            §§push(§+!'§);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc3_ || _loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr99:
                        §§push(1);
                        if(!_loc3_)
                        {
                        }
                     }
                     §§goto(addr107);
                  }
                  else
                  {
                     addr97:
                     §§push(§'!v§);
                     §§push(_loc2_);
                  }
                  §§goto(addr99);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr99);
               }
               else
               {
                  §§push(2);
               }
               addr107:
               switch(§§pop())
               {
                  case 0:
                     this.§9!]§ = this.§^!U§;
                     if(!(_loc4_ && _loc2_))
                     {
                        break;
                     }
                     break;
                  case 1:
                  default:
                     this.§9!]§ = this.§!o§;
                     if(_loc3_ || this)
                     {
                        break;
                     }
               }
               return;
            }
            §§goto(addr97);
         }
         §§goto(addr99);
      }
      
      private function §!o§(param1:Vector.<Number>) : Number
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
               if(!(_loc5_ && this))
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || this)
                        {
                           if(!_loc5_)
                           {
                              addr73:
                              §§push(§§pop() / param1.length);
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr93:
                              §§push(Number(§§pop() + param1[_loc3_]));
                           }
                           _loc2_ = §§pop();
                           loop1:
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
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr82);
                  }
                  else
                  {
                     §§push(_loc2_);
                  }
                  §§goto(addr93);
               }
               §§goto(addr80);
            }
            §§goto(addr81);
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
            if(_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     addr92:
                     _loc2_ = §§pop();
                     while(true)
                     {
                        addr65:
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
                              }
                              addr70:
                           }
                           §§goto(addr70);
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
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr92);
                     §§push(Number(param1[_loc3_]));
                  }
                  §§goto(addr92);
               }
               §§goto(addr65);
            }
            §§goto(addr70);
         }
         return §§pop();
      }
   }
}
