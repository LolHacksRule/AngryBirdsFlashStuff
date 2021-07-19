package § !m§
{
   import §#!'§.§6"]§;
   import §,"N§.§=o§;
   import §,"N§.§@#B§;
   import §2"§.§ "F§;
   import §2"§.§7#V§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public dynamic class §^"j§ extends EventDispatcher
   {
      
      public static const §-"9§:String = "spinComplete";
      
      public static const §93§:String = "freeSpinConsumed";
      
      private static const §["o§:Number = 2000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-"9§ = "spinComplete";
            do
            {
               §93§ = "freeSpinConsumed";
               do
               {
                  §["o§ = 2000;
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public var §%5§:Boolean = false;
      
      public var §9!h§:Boolean = false;
      
      private var §,!§:int;
      
      private var §#"<§:Boolean = false;
      
      private var §9q§:§7#V§;
      
      private var §&#A§:§ "F§;
      
      private var §'!8§:int;
      
      private var §&!_§:Timer;
      
      public function §^"j§(param1:int)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         do
         {
            this.§,!§ = param1;
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function get §8!Q§() : int
      {
         return this.§,!§;
      }
      
      public function get §1"d§() : Boolean
      {
         return this.§#"<§;
      }
      
      public function §^"#§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=o§ = null;
         if(_loc5_)
         {
            if(this.§#"<§)
            {
               if(!(_loc4_ && this))
               {
                  throw new Error("Can\'t spin while it\'s already spinning.");
               }
               addr45:
               this.§&#A§ = new § "F§(§4#;§.SERVER_ROOT);
               if(_loc5_)
               {
                  addr53:
                  if(this.§,!§ > 0)
                  {
                     if(!(_loc4_ && this))
                     {
                        addr64:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§,!§);
                        if(_loc5_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc4_)
                        {
                           _loc2_.§,!§ = _loc3_;
                        }
                        if(!(_loc4_ && _loc1_))
                        {
                           dispatchEvent(new Event(§93§));
                           if(_loc5_)
                           {
                              addr126:
                              this.§#"<§ = true;
                              if(_loc5_ || _loc2_)
                              {
                                 this.§9!h§ = true;
                                 while(true)
                                 {
                                    this.§'!8§ = getTimer();
                                    addr154:
                                    if(_loc4_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    return;
                                    addr161:
                                 }
                                 addr181:
                              }
                              addr103:
                           }
                           loop1:
                           while(true)
                           {
                              §§push(this.§&#A§);
                              addr144:
                              while(true)
                              {
                                 §§pop().§^"#§(this.§65§);
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr161);
                           }
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr181);
                  }
                  else
                  {
                     _loc1_ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
                     if(!_loc4_)
                     {
                        _loc1_.§@w§(_loc1_.starCoins - §@#B§(§4#;§.singleton.dataModel).§1!f§.§]"g§);
                     }
                  }
               }
               §§goto(addr126);
            }
            else
            {
               §§push(this.§&#A§);
               if(_loc5_)
               {
                  if(!§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr45);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr53);
               }
            }
            §§goto(addr144);
         }
         §§goto(addr64);
      }
      
      public function get §^"s§() : §7#V§
      {
         return this.§9q§;
      }
      
      private function §65§(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§9q§ = §7#V§(param1);
         }
         var _loc2_:int = getTimer() - this.§'!8§;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ >= §["o§)
            {
               this.§[>§();
               if(!(_loc4_ && this))
               {
                  if(_loc4_)
                  {
                     loop0:
                     while(true)
                     {
                        if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr103:
                        while(true)
                        {
                           this.§&!_§ = new Timer(§["o§ - _loc2_);
                           continue loop0;
                        }
                     }
                     this.§&!_§.start();
                     addr71:
                  }
                  return;
               }
               §§goto(addr71);
            }
            §§goto(addr103);
         }
         §§goto(addr71);
      }
      
      private function §-!m§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[>§();
         }
         do
         {
            this.§&!_§.reset();
            do
            {
               this.§&!_§ = null;
            }
            while(_loc3_);
            
         }
         while(_loc3_);
         
      }
      
      private function §[>§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || _loc3_)
         {
            this.§#"<§ = false;
         }
         var _loc1_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         §§push(this.§9q§.itemId);
         if(_loc7_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(this.§9q§.quantity);
         if(!(_loc6_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§9q§.wasFree);
         if(_loc7_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc7_)
         {
            _loc1_.§`!W§.§@w§(this.§9q§.§<!d§);
            if(!(_loc6_ && _loc2_))
            {
               addr90:
               _loc1_.§]"<§.§#!+§(_loc2_,_loc3_ + _loc1_.§]"<§.§8#K§(_loc2_));
               if(_loc7_)
               {
                  if(_loc4_)
                  {
                     addr104:
                     §§push(§6"]§.§2"#§);
                     if(_loc7_ || this)
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           addr124:
                           §§push(§§pop());
                        }
                        else
                        {
                           addr121:
                           §§push(§§pop());
                           if(_loc7_)
                           {
                              §§goto(addr124);
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(§6"]§.§'"X§);
                     if(_loc7_)
                     {
                        §§goto(addr121);
                     }
                  }
                  var _loc5_:* = §§pop();
                  if(_loc7_)
                  {
                     §6"]§.§4!9§(_loc5_,_loc2_,_loc3_);
                  }
                  do
                  {
                     dispatchEvent(new Event(§-"9§));
                  }
                  while(_loc6_);
                  
                  return;
               }
            }
            §§goto(addr104);
         }
         §§goto(addr90);
      }
   }
}
