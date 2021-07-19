package §"U§
{
   import §6v§.§var §;
   import §]!-§.§`o§;
   import flash.display.MovieClip;
   
   public class §@!E§ extends §[Q§
   {
       
      
      public var §,8§:int;
      
      public var §#$§:int;
      
      public var §&R§:int;
      
      public var §>I§:int;
      
      public var §?!K§:Number;
      
      public var § !7§:Number;
      
      public var §-l§:Number;
      
      public var §<!?§:Number;
      
      public var §^T§:Number;
      
      public function §@!E§(param1:XML, param2:§[Q§, param3:§`o§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super(param1,param2,param3,param4);
            do
            {
               §82§ = true;
            }
            while(!_loc5_);
            
         }
      }
      
      public function §%7§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         this.§&R§ = param6;
         this.§>I§ = param1 * this.§&R§;
         loop0:
         while(true)
         {
            this.§^T§ = param7;
            loop1:
            while(true)
            {
               this.§-l§ = param2;
               while(true)
               {
                  this.§<!?§ = param3;
                  while(true)
                  {
                     this.§?!K§ = param4;
                     if(!_loc8_)
                     {
                        break;
                     }
                     this.§ !7§ = param5;
                     if(!_loc8_)
                     {
                        continue;
                     }
                     §§push(false);
                     while(§§pop())
                     {
                        do
                        {
                           §§pop();
                           §§push(param1 == param7);
                        }
                        while(_loc9_ && this);
                        
                        if(_loc8_)
                        {
                           break;
                        }
                     }
                     if(!§§pop())
                     {
                        continue loop0;
                     }
                     loop9:
                     while(true)
                     {
                        this.§#$§ = Math.max(1,Math.ceil(§`!O§.length / this.§>I§));
                        loop10:
                        while(true)
                        {
                           addr21:
                           while(true)
                           {
                              this.§5N§(0);
                              if(_loc8_)
                              {
                                 addr27:
                                 if(!(_loc9_ && param1))
                                 {
                                    break;
                                 }
                                 addr41:
                                 while(true)
                                 {
                                    this.§#$§ += Math.ceil((§`!O§.length - this.§>I§) / (this.§&R§ * this.§^T§));
                                    §§goto(addr27);
                                 }
                              }
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    if(!_loc9_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop9;
                                 }
                                 continue loop10;
                              }
                              continue loop1;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §5N§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            §§push(param1);
            if(_loc6_ || _loc3_)
            {
               §§push(0);
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(0);
                        addr106:
                        while(true)
                        {
                           param1 = §§pop();
                           addr107:
                           while(true)
                           {
                           }
                        }
                     }
                     addr95:
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(this.§#$§);
                        if(_loc5_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§#$§);
                              if(_loc5_ && _loc2_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 if(_loc6_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc5_)
                                    {
                                       param1 = §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc6_ || _loc3_)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                addr84:
                                                while(true)
                                                {
                                                   this.§,8§ = param1;
                                                   if(!_loc5_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop6;
                                                   §§goto(addr84);
                                                }
                                                addr25:
                                             }
                                             else
                                             {
                                                §§goto(addr95);
                                             }
                                          }
                                          §§goto(addr107);
                                       }
                                    }
                                    break;
                                 }
                                 addr126:
                                 §§goto(addr122);
                              }
                              §§goto(addr106);
                           }
                           §§push(§§pop() * this.§^T§);
                           if(!_loc5_)
                           {
                              addr122:
                              §§goto(addr125);
                           }
                           addr125:
                           var _loc2_:int = §§pop() * this.§&R§;
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              §§push(int(§§pop() + this.§>I§));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:int = 0;
                           loop10:
                           while(true)
                           {
                              if(_loc4_ >= §`!O§.length)
                              {
                                 while(!_loc5_)
                                 {
                                    §§push(§§findproperty(x));
                                    §§push(this.§-l§);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(§§pop() - this.§,8§ * this.§?!K§);
                                    }
                                    §§pop().x = §§pop();
                                    do
                                    {
                                       §§push(§§findproperty(y));
                                       §§push(this.§<!?§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() - this.§,8§ * this.§ !7§);
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    while(_loc5_);
                                    
                                    if(_loc5_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc6_)
                                    {
                                       break loop10;
                                    }
                                 }
                                 continue;
                              }
                              (§`!O§[_loc4_] as §var §).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                              _loc4_++;
                           }
                           return;
                        }
                        §§goto(addr25);
                     }
                     §§goto(addr63);
                  }
               }
            }
            §§goto(addr106);
         }
         §§goto(addr38);
      }
   }
}
