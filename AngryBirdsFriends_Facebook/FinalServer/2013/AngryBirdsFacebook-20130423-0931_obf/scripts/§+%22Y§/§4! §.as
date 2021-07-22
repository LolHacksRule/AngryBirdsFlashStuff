package §+"Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §4! § extends EventDispatcher implements §]g§
   {
       
      
      private var §1"'§:Object;
      
      private var §+-§:String;
      
      private var §2!c§:Vector.<String>;
      
      private var §`v§:Vector.<Number>;
      
      private var §1"+§:Vector.<Number>;
      
      private var §4=§:Function;
      
      private var §6"I§:Function;
      
      private var §[!r§:Function;
      
      private var §0!@§:Array;
      
      private var §'!z§:Array;
      
      private var §7",§:Array;
      
      private var §6!<§:Number;
      
      private var §4!;§:Number;
      
      private var §!"U§:Number;
      
      private var §-";§:Boolean;
      
      public function §4! §(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§1"'§ = param1;
               loop1:
               while(true)
               {
                  this.§4!;§ = 0;
                  while(true)
                  {
                     this.§6!<§ = Math.max(0.0001,param2);
                     continue loop1;
                     addr69:
                     if(!(_loc5_ || param1))
                     {
                        continue;
                     }
                     this.§1"+§ = new Vector.<Number>(0);
                     addr76:
                     if(_loc5_ || this)
                     {
                        if(!_loc5_)
                        {
                           loop7:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    addr52:
                                    break;
                                    addr52:
                                 }
                                 this.§`v§ = new Vector.<Number>(0);
                                 while(!(_loc4_ && param1))
                                 {
                                    §§goto(addr69);
                                    §§goto(addr76);
                                 }
                                 continue loop1;
                              }
                              loop6:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       this.§2!c§ = new Vector.<String>(0);
                                       continue loop7;
                                    }
                                    continue loop0;
                                 }
                                 addr104:
                                 addr104:
                                 while(true)
                                 {
                                    this.§-";§ = false;
                                    continue loop6;
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§+-§ = param3;
                              §§goto(addr104);
                           }
                           addr119:
                        }
                        return;
                     }
                     §§goto(addr52);
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public function §7!?§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(this.§1"'§ != null)
            {
               do
               {
                  this.§2!c§.push(param1);
                  do
                  {
                     this.§`v§.push(Number.NaN);
                     do
                     {
                        this.§1"+§.push(param2);
                     }
                     while(!(_loc4_ || _loc3_));
                     
                  }
                  while(!_loc4_);
                  
               }
               while(!(_loc4_ || param2));
               
               if(_loc4_ || _loc3_)
               {
                  return;
                  addr77:
               }
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function §%"!§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§7!?§("scaleX",param1);
            do
            {
               this.§7!?§("scaleY",param1);
            }
            while(!_loc3_);
            
         }
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§7!?§("x",param1);
         }
         do
         {
            this.§7!?§("y",param2);
         }
         while(_loc4_);
         
      }
      
      public function §8!3§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§7!?§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Function = null;
         var _loc10_:Number = NaN;
         if(_loc11_)
         {
            §§push(param1);
            if(_loc11_ || _loc3_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc12_ && _loc3_))
                  {
                     §§goto(addr46);
                  }
               }
               §§push(this.§4!;§);
               if(!(_loc12_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!(_loc12_ && param1))
            {
               §§push(this);
               §§push(this.§4!;§);
               if(!(_loc12_ && this))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§4!;§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§4!;§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§<"Y§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(null);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop());
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop17:
                                                                  while(!_loc12_)
                                                                  {
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(0);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(!(_loc12_ && param1))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc12_ && param1))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§4!;§);
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   addr233:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   break loop18;
                                                                                                   addr166:
                                                                                                }
                                                                                                break;
                                                                                                addr104:
                                                                                                if(!(_loc12_ && this))
                                                                                                {
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      §§push(this.§<"Y§);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         §§push(null);
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§pop().apply(§§pop(),this.§0!@§);
                                                                                                            addr123:
                                                                                                            if(_loc11_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     §§push(Math.min(this.§6!<§,this.§4!;§) / this.§6!<§);
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        §§goto(addr233);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr222:
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                                  break loop18;
                                                                                                               }
                                                                                                               break loop20;
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             continue loop17;
                                                                                          }
                                                                                          addr206:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             break loop20;
                                                                                          }
                                                                                          addr83:
                                                                                          §§push(§§pop() >= §§pop());
                                                                                          if(!(_loc11_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          if(!(_loc11_ || this))
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                §§goto(addr104);
                                                                                             }
                                                                                             §§goto(addr123);
                                                                                          }
                                                                                          §§goto(addr222);
                                                                                          addr100:
                                                                                       }
                                                                                       addr154:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr100);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                                 addr147:
                                                                              }
                                                                              §§goto(addr154);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     var _loc3_:* = §§pop();
                                                                     var _loc4_:int = this.§`v§.length;
                                                                     var _loc5_:int = 0;
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ >= _loc4_)
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(this.§!"E§);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§push(null);
                                                                                 if(!(_loc12_ && this))
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          addr448:
                                                                                          §§push(this.§!"E§);
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             §§push(null);
                                                                                             if(_loc11_ || _loc2_)
                                                                                             {
                                                                                                addr460:
                                                                                                §§push(this.§'!z§);
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   §§pop().apply(§§pop(),§§pop());
                                                                                                   if(!(_loc12_ && _loc2_))
                                                                                                   {
                                                                                                      addr558:
                                                                                                      §§push(_loc2_ < this.§6!<§);
                                                                                                      if(_loc2_ < this.§6!<§)
                                                                                                      {
                                                                                                         addr560:
                                                                                                         §§pop();
                                                                                                         addr561:
                                                                                                         §§push(this.§4!;§);
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            addr509:
                                                                                                            §§push(this.§6!<§);
                                                                                                            if(_loc11_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() >= §§pop());
                                                                                                               if(!(_loc12_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!(_loc12_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr543:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr545:
                                                                                                                        dispatchEvent(new Event(Event.§'J§));
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           §§push(this.onComplete);
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              §§push(null);
                                                                                                                              if(!(_loc12_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr490:
                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc12_)
                                                                                                                                    {
                                                                                                                                       if(!_loc12_)
                                                                                                                                       {
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr545);
                                                                                                                                          }
                                                                                                                                          addr502:
                                                                                                                                          this.onComplete.apply(null,this.§7",§);
                                                                                                                                          addr473:
                                                                                                                                          return;
                                                                                                                                          addr503:
                                                                                                                                          addr500:
                                                                                                                                          addr499:
                                                                                                                                          addr497:
                                                                                                                                       }
                                                                                                                                       §§goto(addr545);
                                                                                                                                    }
                                                                                                                                    §§goto(addr503);
                                                                                                                                 }
                                                                                                                                 §§goto(addr473);
                                                                                                                              }
                                                                                                                              §§goto(addr500);
                                                                                                                           }
                                                                                                                           §§goto(addr499);
                                                                                                                        }
                                                                                                                        §§goto(addr561);
                                                                                                                     }
                                                                                                                     §§goto(addr473);
                                                                                                                  }
                                                                                                                  §§goto(addr558);
                                                                                                               }
                                                                                                               §§goto(addr560);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr558);
                                                                                                      }
                                                                                                      §§goto(addr543);
                                                                                                   }
                                                                                                   §§goto(addr473);
                                                                                                }
                                                                                                §§goto(addr502);
                                                                                             }
                                                                                             §§goto(addr490);
                                                                                          }
                                                                                          §§goto(addr502);
                                                                                       }
                                                                                       §§goto(addr497);
                                                                                    }
                                                                                    §§goto(addr558);
                                                                                 }
                                                                                 §§goto(addr460);
                                                                              }
                                                                           }
                                                                           §§goto(addr502);
                                                                        }
                                                                        else
                                                                        {
                                                                           if(isNaN(this.§`v§[_loc5_]))
                                                                           {
                                                                              if(!(_loc12_ && _loc2_))
                                                                              {
                                                                                 this.§`v§[_loc5_] = this.§1"'§[this.§2!c§[_loc5_]] as Number;
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    addr296:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(this.§`v§[_loc5_]));
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          if(_loc11_ || this)
                                                                                          {
                                                                                             continue loop26;
                                                                                          }
                                                                                          §§goto(addr560);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr558);
                                                                                 }
                                                                              }
                                                                              §§goto(addr502);
                                                                           }
                                                                           §§goto(addr296);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr197);
                                                               }
                                                            }
                                                            §§goto(addr147);
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr197:
                                       return;
                                    }
                                 }
                                 addr195:
                              }
                              §§goto(addr206);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr166);
         }
         addr46:
      }
      
      public function get §[9§() : Boolean
      {
         return this.§4!;§ >= this.§6!<§;
      }
      
      public function get target() : Object
      {
         return this.§1"'§;
      }
      
      public function get §^!w§() : String
      {
         return this.§+-§;
      }
      
      public function get §4!3§() : Number
      {
         return this.§6!<§;
      }
      
      public function get §42§() : Number
      {
         return this.§4!;§;
      }
      
      public function get delay() : Number
      {
         return this.§!"U§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.§4!;§);
            if(_loc2_)
            {
               §§push(this.§!"U§);
               if(!(_loc3_ && _loc3_))
               {
                  addr79:
                  §§push(§§pop() + §§pop());
                  if(_loc2_ || this)
                  {
                     §§push(param1);
                  }
                  §§pop().§4!;§ = §§pop();
                  do
                  {
                     this.§!"U§ = param1;
                  }
                  while(!_loc2_);
                  
                  return;
                  addr80:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr79);
         }
         §§goto(addr80);
      }
      
      public function get §#u§() : Boolean
      {
         return this.§-";§;
      }
      
      public function set §#u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-";§ = param1;
         }
      }
      
      public function get §<"Y§() : Function
      {
         return this.§4=§;
      }
      
      public function set §<"Y§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4=§ = param1;
         }
      }
      
      public function get §!"E§() : Function
      {
         return this.§6"I§;
      }
      
      public function set §!"E§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§6"I§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§[!r§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[!r§ = param1;
         }
      }
      
      public function get §>`§() : Array
      {
         return this.§0!@§;
      }
      
      public function set §>`§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§0!@§ = param1;
         }
      }
      
      public function get §+§() : Array
      {
         return this.§'!z§;
      }
      
      public function set §+§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§'!z§ = param1;
         }
      }
      
      public function get §;-§() : Array
      {
         return this.§7",§;
      }
      
      public function set §;-§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§7",§ = param1;
         }
      }
   }
}
