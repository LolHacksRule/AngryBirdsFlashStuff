package §[v§
{
   import §2]§.§#H§;
   import §`W§.§`H§;
   import flash.display.MovieClip;
   
   public class §4H§ extends §&F§
   {
       
      
      public var §!O§:int;
      
      public var §>§:int;
      
      public var §%-§:int;
      
      public var §<L§:int;
      
      public var §"!3§:Number;
      
      public var §`h§:Number;
      
      public var §+D§:Number;
      
      public var §7J§:Number;
      
      public var §@n§:Number;
      
      public function §4H§(param1:XML, param2:§&F§, param3:§#H§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §3!A§ = true;
         }
         while(!_loc5_);
         
      }
      
      public function §+!5§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         this.§%-§ = param6;
         loop0:
         while(true)
         {
            this.§<L§ = param1 * this.§%-§;
            loop1:
            while(true)
            {
               this.§@n§ = param7;
               this.§+D§ = param2;
               loop2:
               while(true)
               {
                  this.§7J§ = param3;
                  loop3:
                  while(true)
                  {
                     this.§"!3§ = param4;
                     this.§`h§ = param5;
                     loop4:
                     while(true)
                     {
                        §§push(false);
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 addr150:
                                 do
                                 {
                                    §§push(param1 == param7);
                                    if(!(_loc9_ || param2))
                                    {
                                       continue loop6;
                                    }
                                 }
                                 while(!_loc8_);
                                 
                                 continue loop5;
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 continue loop0;
                              }
                              this.§>§ = 1;
                              if(§1I§.length <= this.§<L§)
                              {
                                 loop12:
                                 do
                                 {
                                    this.§ T§(0);
                                    if(_loc8_)
                                    {
                                       while(true)
                                       {
                                          if(_loc9_ || this)
                                          {
                                             continue loop2;
                                          }
                                          addr144:
                                          while(true)
                                          {
                                             continue loop12;
                                          }
                                       }
                                       continue loop2;
                                       addr78:
                                    }
                                 }
                                 while(!_loc9_);
                                 
                                 if(_loc9_ || param2)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr150);
                                 addr22:
                              }
                              while(!_loc8_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function § T§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param1);
            §§push(0);
            loop0:
            while(true)
            {
               if(§§pop() < §§pop())
               {
                  while(true)
                  {
                     §§push(0);
                     addr77:
                     while(true)
                     {
                        param1 = §§pop();
                        addr78:
                        while(true)
                        {
                        }
                     }
                  }
                  addr76:
               }
               loop4:
               while(true)
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§push(this.§>§);
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(this.§>§ - 1);
                           if(!_loc5_)
                           {
                              §§push(int(§§pop()));
                              if(_loc6_)
                              {
                                 param1 = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    addr20:
                                    while(true)
                                    {
                                       this.§!O§ = param1;
                                       if(_loc6_ || this)
                                       {
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                §§push(this.§!O§);
                                             }
                                             continue loop4;
                                          }
                                          addr45:
                                       }
                                       else
                                       {
                                          §§goto(addr76);
                                       }
                                    }
                                    §§goto(addr78);
                                 }
                                 addr72:
                              }
                              §§goto(addr77);
                           }
                           addr99:
                           var _loc2_:int = §§pop() * this.§%-§;
                           addr96:
                           §§push(_loc2_);
                           if(_loc6_ || this)
                           {
                              §§push(int(§§pop() + this.§<L§));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:int = 0;
                           while(true)
                           {
                              if(_loc4_ >= §1I§.length)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(§§findproperty(x));
                                    §§push(this.§+D§);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() - this.§!O§ * this.§"!3§);
                                    }
                                    §§pop().x = §§pop();
                                 }
                                 while(_loc6_)
                                 {
                                    §§push(§§findproperty(y));
                                    §§push(this.§7J§);
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(§§pop() - this.§!O§ * this.§`h§);
                                    }
                                    §§pop().y = §§pop();
                                    if(!_loc5_)
                                    {
                                       return;
                                    }
                                 }
                              }
                              else
                              {
                                 (§1I§[_loc4_] as §`H§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                                 while(true)
                                 {
                                    _loc4_++;
                                 }
                                 addr196:
                              }
                              while(!_loc6_)
                              {
                                 §§goto(addr196);
                              }
                           }
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr20);
                  }
                  break;
               }
               §§push(§§pop() * this.§@n§);
               if(_loc6_)
               {
                  §§goto(addr96);
               }
               §§goto(addr99);
            }
         }
         §§goto(addr45);
      }
   }
}
