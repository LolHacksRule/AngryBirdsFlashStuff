package §,"N§
{
   import §!"W§.§#"[§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   
   public class §?v§ extends EventDispatcher
   {
      
      public static const §]"E§:int = 5;
      
      public static const §`"n§:int = 10;
      
      public static const §@"I§:int = 20;
      
      public static const §5!H§:int = 100;
      
      public static const §5"=§:String = "EnergyRefill";
      
      public static const §=#-§:int = 600000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]"E§ = 5;
            while(true)
            {
               §`"n§ = 10;
               addr78:
               while(true)
               {
                  §@"I§ = 20;
                  addr73:
                  while(true)
                  {
                     §5!H§ = 100;
                  }
               }
            }
            addr82:
         }
         loop3:
         while(true)
         {
            §5"=§ = "EnergyRefill";
            for(; _loc2_; §=#-§ = 600000,if(!_loc1_)
            {
               continue loop3;
            })
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr78);
            }
            §§goto(addr73);
            if(_loc1_)
            {
               continue;
            }
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr82);
         }
      }
      
      private var §2!S§:int;
      
      private var §&"W§:int;
      
      private var §7"P§:Number;
      
      private var §[4§:Shape;
      
      private var §2$§:int;
      
      private var §4#J§:§@#B§;
      
      private var §0g§:int;
      
      public function §?v§(param1:int, param2:int, param3:int, param4:int, param5:§@#B§)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.§4#J§ = param5;
               loop1:
               while(true)
               {
                  this.update(param1,param2,param3,param4);
                  while(true)
                  {
                     this.§0g§ = -1;
                     loop3:
                     while(_loc6_)
                     {
                        continue loop1;
                        while(true)
                        {
                           this.§[4§ = new Shape();
                           do
                           {
                              this.§[4§.addEventListener(Event.ENTER_FRAME,this.§-!u§);
                           }
                           while(!(_loc6_ || this));
                           
                           if(_loc6_ || param1)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function get §6"g§() : int
      {
         return this.§2$§;
      }
      
      public function get §%#7§() : int
      {
         return this.§&"W§;
      }
      
      public function §#4§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§0g§);
            while(true)
            {
               §§push(-1);
               addr97:
               §§goto(addr68);
            }
         }
         this.§0g§ = getTimer();
         addr68:
         while(true)
         {
            if(§§pop() != §§pop())
            {
               continue loop0;
            }
         }
         true;
         return §§pop();
      }
      
      public function §^"4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§0g§ = getTimer();
         }
      }
      
      public function get energy() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = -1;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§4#J§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop().§4"Z§);
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§4#J§);
                        addr104:
                        while(true)
                        {
                           §§push(§§pop().§4"Z§);
                           addr105:
                           while(true)
                           {
                              §§push(§§pop().§@#3§(§<!9§.§ v§));
                              if(!_loc2_)
                              {
                                 §§push(int(§§pop()));
                              }
                              addr111:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 addr112:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr92:
                  }
                  loop1:
                  while(true)
                  {
                     §§push(_loc1_);
                     while(_loc3_ || _loc2_)
                     {
                        if(§§pop() >= 0)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           if(_loc2_)
                           {
                              §§goto(addr92);
                           }
                        }
                        §§push(this.§2!S§);
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                     }
                     §§goto(addr111);
                  }
                  return Math.max(this.§2!S§,§5!H§);
               }
               §§goto(addr105);
            }
            §§goto(addr104);
         }
         §§goto(addr112);
      }
      
      public function §@#K§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2!S§ = param1;
         }
         do
         {
            dispatchEvent(new §#"[§(§#"[§.§1c§,this.energy));
         }
         while(_loc3_);
         
      }
      
      public function §%K§(param1:int) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2!S§ += param1;
            do
            {
               dispatchEvent(new §#"[§(§#"[§.ADD,this.energy));
            }
            while(!_loc2_);
            
         }
         return true;
      }
      
      public function §9!a§(param1:int) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2!S§ -= param1;
            do
            {
               dispatchEvent(new §#"[§(§#"[§.§["P§,this.energy));
            }
            while(_loc3_ && _loc2_);
            
         }
         return true;
      }
      
      public function get §]"w§() : int
      {
         return Math.max(0,(this.§7"P§ - getTimer()) / 1000);
      }
      
      public function get §>#!§() : Number
      {
         return this.§7"P§;
      }
      
      public function update(param1:int, param2:int, param3:int, param4:int, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§&"W§ = param2;
            while(true)
            {
               this.§7"P§ = getTimer() + (param2 - param3) * 1000;
               loop2:
               while(!(_loc7_ && param1))
               {
                  this.§@#K§(param1);
                  if(!(_loc7_ && param1))
                  {
                     addr34:
                     if(!(_loc6_ || this))
                     {
                        while(true)
                        {
                           this.§2$§ = param4;
                           continue loop2;
                           §§goto(addr34);
                        }
                        addr85:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §-!u§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§2!S§);
            if(!_loc5_)
            {
               if(§§pop() >= this.§6"g§)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr27);
                  }
               }
               §§push(int(getTimer()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§7"P§);
            if(!_loc5_)
            {
               §§push(§§pop() - _loc2_);
               if(_loc4_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               if(_loc3_ <= 0)
               {
                  loop0:
                  do
                  {
                     §§push(this);
                     §§push(this.§&"W§ * 1000);
                     if(_loc4_ || param1)
                     {
                        §§push(§§pop() + _loc3_);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + _loc2_);
                        }
                     }
                     §§pop().§7"P§ = §§pop();
                     loop1:
                     while(true)
                     {
                        this.§%K§(1);
                        do
                        {
                           §@!m§(§4#;§.singleton).§""s§.§5!Z§();
                           continue loop1;
                        }
                        while(_loc5_ && _loc3_);
                        
                        continue loop0;
                     }
                  }
                  while(!(_loc4_ || _loc2_));
                  
                  addr118:
               }
               return;
            }
            §§goto(addr118);
         }
         addr27:
      }
      
      public function get §3!@§() : Boolean
      {
         return §@#B§(§4#;§.singleton.dataModel).§4"Z§.§@#3§(§<!9§.§ v§) >= 0;
      }
      
      public function clone() : §?v§
      {
         return new §?v§(this.energy,this.§%#7§,this.§%#7§ - this.§]"w§,this.§6"g§,this.§4#J§);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[4§.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
            do
            {
               this.§[4§ = null;
            }
            while(_loc1_ && _loc2_);
            
         }
      }
   }
}
