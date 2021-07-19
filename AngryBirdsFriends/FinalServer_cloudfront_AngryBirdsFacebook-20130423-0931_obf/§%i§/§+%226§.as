package §%i§
{
   import §1!t§.§!>§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   
   public class §+"6§ extends §0!Y§
   {
       
      
      public var §6"B§:int;
      
      public var §<'§:int;
      
      public var §2!k§:int;
      
      public var §8c§:int;
      
      public var §'o§:Number;
      
      public var §0!R§:Number;
      
      public var § !9§:Number;
      
      public var §3!f§:Number;
      
      public var §+!B§:Number;
      
      public function §+"6§(param1:XML, param2:§0!Y§, param3:§`_§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §'!u§ = true;
         }
         while(_loc6_ && this);
         
      }
      
      public function §2"[§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param3))
         {
            this.§2!k§ = param6;
            loop0:
            while(true)
            {
               this.§8c§ = param1 * this.§2!k§;
               loop1:
               while(true)
               {
                  this.§+!B§ = param7;
                  loop2:
                  while(true)
                  {
                     this.§ !9§ = param2;
                     while(true)
                     {
                        this.§3!f§ = param3;
                        continue loop2;
                        addr84:
                        if(!(_loc8_ || this))
                        {
                           continue;
                        }
                        if(§+?§.length > this.§8c§)
                        {
                           addr50:
                           if(!_loc9_)
                           {
                              this.§<'§ += Math.ceil((§+?§.length - this.§8c§) / (this.§2!k§ * this.§+!B§));
                              addr28:
                              this.§;!i§(0);
                              if(!_loc9_)
                              {
                                 if(!(_loc8_ || param3))
                                 {
                                    §§goto(addr50);
                                 }
                                 if(!_loc9_)
                                 {
                                    return;
                                    addr43:
                                 }
                                 continue loop0;
                              }
                              addr70:
                              §§goto(addr70);
                           }
                           addr77:
                           if(_loc8_ || param1)
                           {
                              §§goto(addr84);
                           }
                           loop5:
                           while(true)
                           {
                              this.§0!R§ = param5;
                              addr165:
                              loop6:
                              while(!(_loc9_ && param3))
                              {
                                 §§push(false);
                                 if(_loc8_ || param2)
                                 {
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          addr158:
                                          while(!_loc9_)
                                          {
                                             §§push(param1 == param7);
                                             if(!_loc9_)
                                             {
                                             }
                                             continue loop9;
                                          }
                                          continue loop6;
                                       }
                                       addr157:
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§<'§ = 1;
                                          break;
                                       }
                                       if(!_loc8_)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc8_ || param1)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr158);
                                       §§goto(addr160);
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr157);
                              }
                              continue loop2;
                           }
                           addr177:
                        }
                        §§goto(addr28);
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §;!i§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc6_ || this)
                        {
                           param1 = §§pop();
                           loop2:
                           while(true)
                           {
                              addr47:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc5_)
                                 {
                                    §§push(this.§<'§);
                                    if(_loc5_ && _loc3_)
                                    {
                                       break;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       while(true)
                                       {
                                          this.§6"B§ = param1;
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          if(_loc6_ || _loc3_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§<'§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() - 1);
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc6_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             addr122:
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       §§goto(addr31);
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop1;
                           }
                           addr99:
                        }
                        var _loc2_:* = §§pop();
                        §§push(_loc2_);
                        if(!(_loc5_ && param1))
                        {
                           §§push(int(§§pop() + this.§8c§));
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:int = 0;
                        loop8:
                        while(true)
                        {
                           if(_loc4_ >= §+?§.length)
                           {
                              if(_loc6_)
                              {
                                 §§push(§§findproperty(x));
                                 §§push(this.§ !9§);
                                 if(_loc6_ || this)
                                 {
                                    §§push(§§pop() - this.§6"B§ * this.§'o§);
                                 }
                                 §§pop().x = §§pop();
                              }
                              while(!(_loc5_ && _loc3_))
                              {
                                 §§push(§§findproperty(y));
                                 §§push(this.§3!f§);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§§pop() - this.§6"B§ * this.§0!R§);
                                 }
                                 §§pop().y = §§pop();
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 if(_loc6_ || _loc3_)
                                 {
                                    break loop8;
                                 }
                                 _loc4_++;
                                 break;
                                 addr234:
                              }
                              continue;
                           }
                           (§+?§[_loc4_] as §!>§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                           §§goto(addr234);
                        }
                        return;
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr47);
               }
            }
         }
         §§goto(addr45);
      }
   }
}
