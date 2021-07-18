package §"h§
{
   import §!E§.§!U§;
   import §"!I§.§^!2§;
   import §2Y§.§7!f§;
   import §9b§.§"!S§;
   import §=!<§.§>"§;
   import §=!<§.§>a§;
   import §@R§.§;U§;
   
   public class §?q§ extends §!U§
   {
      
      public static const §-! §:int = 4;
      
      public static const §%!9§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §?q§)
         {
            §-! § = 4;
            do
            {
               §%!9§ = 5;
            }
            while(!_loc1_);
            
         }
      }
      
      private var §?!<§:Number;
      
      private var §3I§:Number;
      
      private var §]u§:int;
      
      public function §?q§(param1:§>"§, param2:§>a§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         if(_loc21_)
         {
            §§push(this);
            §§push(param6);
            if(!_loc20_)
            {
               §§push(§§pop() + Math.random() * param18);
            }
            §§pop().§?!<§ = §§pop();
         }
         loop0:
         do
         {
            this.§]u§ = param19;
            loop1:
            while(true)
            {
               super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
               while(true)
               {
                  if(!_loc20_)
                  {
                     if(this.§+!?§ == §-! §)
                     {
                        break;
                     }
                     addr20:
                     if(this.§+!?§ == §%!9§)
                     {
                        if(!_loc20_)
                        {
                           this.§?!<§ = param6;
                        }
                        do
                        {
                           this.§3I§ = param7;
                        }
                        while(_loc20_ && param2);
                        
                        if(!(_loc20_ && param3))
                        {
                           if(_loc20_)
                           {
                              break;
                           }
                           continue;
                        }
                        addr101:
                     }
                     return;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
         while(_loc20_);
         
         §§push(§§findproperty(§-!&§));
         §§push(§"!S§.§-!7§.§8z§.§"N§);
         if(_loc21_ || param3)
         {
            §§push(§§pop() + §-L§.height * §^!2§.§3!S§);
         }
         §§pop().§-!&§ = §§pop();
         §§goto(addr101);
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(§+!?§ == §-! §)
            {
               if(!_loc3_)
               {
                  §§push(§-!&§ > 0);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr108:
                           while(true)
                           {
                              §§push(§,!W§ > §-!&§);
                           }
                        }
                        addr107:
                     }
                     loop0:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§push(false);
                              }
                              else
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr24);
                                 }
                              }
                              while(true)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    break loop0;
                                 }
                              }
                           }
                           §§goto(addr24);
                        }
                        §§goto(addr108);
                     }
                     return §§pop();
                  }
                  §§goto(addr107);
               }
               §§goto(addr108);
            }
            addr24:
            while(true)
            {
               §§push(super.update(param1));
               if(_loc2_ || _loc3_)
               {
                  if(_loc2_ || _loc3_)
                  {
                     break;
                  }
                  continue loop1;
               }
            }
            return §§pop();
         }
         §§goto(addr79);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         if(!_loc4_)
         {
            if(§+!?§ == §-! §)
            {
               if(_loc5_)
               {
                  §-L§.alpha = Math.max(0,Math.min(1,2 * §;U§.§+r§((§7!T§ - §'!C§) / §7!T§,false)));
                  if(!_loc4_)
                  {
                     §§push(Math.atan2(-§0!@§,§7_§) * (180 / Math.PI));
                     if(!_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(_loc5_ || _loc3_)
                     {
                        §-L§.scaleX = Math.max(0.2,§-L§.alpha);
                        if(!(_loc4_ && _loc3_))
                        {
                           §-L§.scaleY = Math.max(0.2,§-L§.alpha);
                           if(!_loc4_)
                           {
                              §-L§.rotation = (360 - _loc2_) / 180 * Math.PI;
                              §,!W§ += §0!@§ * param1 / 1000;
                              if(!(_loc4_ && param1))
                              {
                                 §§push(§§findproperty(§"!d§));
                                 §§push(this.§?!<§);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop() + Math.sin(§,!W§) * this.§]u§);
                                 }
                                 §§pop().§"!d§ = §§pop();
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr59:
                                    §§push(true);
                                    if(!_loc4_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr233);
                                 }
                                 addr109:
                              }
                              else
                              {
                                 §,!W§ = this.§3I§;
                                 addr269:
                              }
                              §§push(true);
                              addr121:
                              addr264:
                           }
                           else
                           {
                              addr248:
                              §§push(false);
                              if(_loc5_)
                              {
                                 §§goto(addr233);
                              }
                              addr248:
                           }
                           return §§pop();
                        }
                     }
                  }
                  §§goto(addr248);
               }
               §§goto(addr269);
            }
            else
            {
               while(true)
               {
                  if(§+!?§ == §%!9§)
                  {
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           §-L§.alpha = Math.max(0,Math.min(1,2 * §;U§.§+r§((§7!T§ - §'!C§) / §7!T§,false)));
                           if(_loc5_)
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr59);
                                 }
                                 else
                                 {
                                    §-L§.scaleX = §-L§.scaleY = §;U§.§+r§((§7!T§ + (§'!C§ + 0.2)) / §7!T§,false);
                                    if(!_loc4_)
                                    {
                                       §"!d§ = this.§?!<§;
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr121);
                              }
                              §§goto(addr269);
                           }
                           else
                           {
                              §§goto(addr248);
                           }
                        }
                        continue;
                        return §§pop();
                     }
                     break;
                  }
               }
               §§goto(addr264);
            }
         }
         §§goto(addr109);
      }
      
      override protected function createParticleImage(param1:Texture) : §7!f§
      {
         return new §7!f§(param1,true);
      }
   }
}
