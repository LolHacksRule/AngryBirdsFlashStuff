package §0j§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §=!,§ implements §,!Z§
   {
       
      
      private var §5! §:Vector.<§,!Z§>;
      
      private var §<y§:Number;
      
      private var §2W§:Boolean = false;
      
      private var §4!Y§:Number = 1.0;
      
      public function §=!,§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            do
            {
               this.§<y§ = 0;
               do
               {
                  this.§5! § = new Vector.<§,!Z§>(0);
               }
               while(_loc1_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§4!Y§ = param1;
         }
      }
      
      public function add(param1:§,!Z§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(_loc4_ || _loc3_)
         {
            §§push(param1 == null);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(_loc4_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr44:
                        §§pop();
                        §§goto(addr71);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        addr71:
                        §§goto(addr75);
                     }
                     addr75:
                     if(!_loc3_)
                     {
                        §§push(this.§5! §.indexOf(param1) == -1);
                     }
                     this.§5! §.push(param1);
                     _loc2_ = param1 as EventDispatcher;
                     if(_loc4_ || this)
                     {
                        if(_loc2_)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              _loc2_.addEventListener(Event.§<@§,this.§-H§);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr44);
      }
      
      public function set §5!T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2W§ = param1;
         }
      }
      
      public function §';§(param1:§,!Z§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§5! §.indexOf(param1);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ != -1)
            {
               if(_loc4_ || _loc2_)
               {
                  addr52:
                  this.§5! §.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(_loc4_)
               {
                  if(_loc3_)
                  {
                     if(!_loc5_)
                     {
                        _loc3_.removeEventListener(Event.§<@§,this.§-H§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §-p§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§2L§ = null;
         if(_loc5_ || param1)
         {
            if(param1 == null)
            {
               if(!(_loc6_ && _loc2_))
               {
                  §§goto(addr36);
               }
            }
            var _loc2_:int = this.§5! §.length;
            §§push(_loc2_);
            if(_loc5_)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§5! §[_loc3_] as §2L§));
               if(_loc5_ || param1)
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           addr93:
                           if(_loc4_.target == param1)
                           {
                              if(!_loc6_)
                              {
                                 this.§5! §.splice(_loc3_,1);
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                              }
                           }
                        }
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc3_ = §§pop();
                        continue;
                     }
                  }
               }
               §§goto(addr93);
            }
            return;
         }
         addr36:
      }
      
      public function §4f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5! §.length = 0;
         }
      }
      
      public function §-A§(param1:Function, param2:Number, ... rest) : §,c§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            if(param1 == null)
            {
               if(_loc6_ || this)
               {
                  §§goto(addr44);
               }
            }
            var _loc4_:§,c§ = new §,c§(param1,param2,rest);
            if(!(_loc5_ && param2))
            {
               this.add(_loc4_);
            }
            return _loc4_;
         }
         addr44:
         return null;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(!this.§2W§)
            {
               do
               {
                  §§push(param1);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop() * this.§4!Y§);
                     if(!(_loc5_ && _loc2_))
                     {
                        addr93:
                        §§push(Number(§§pop()));
                     }
                     param1 = §§pop();
                     loop1:
                     do
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§<y§);
                           if(!(_loc5_ && this))
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§<y§ = §§pop();
                           while(this.§5! §.length == 0)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 break loop2;
                              }
                              if(true)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           var _loc2_:int = this.§5! §.length;
                           var _loc3_:Vector.<§,!Z§> = this.§5! §.concat();
                           var _loc4_:int = 0;
                           while(true)
                           {
                              if(_loc4_ >= _loc2_)
                              {
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 if(_loc6_ || param1)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 _loc3_[_loc4_].advanceTime(param1);
                              }
                              _loc4_++;
                           }
                           return;
                        }
                        §§goto(addr99);
                     }
                     while(!(_loc6_ || _loc2_));
                     
                     continue;
                  }
                  §§goto(addr93);
               }
               while(!(_loc6_ || _loc3_));
               
               §§goto(addr44);
            }
            addr99:
            return;
         }
         addr44:
      }
      
      private function §-H§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§';§(param1.target as §,!Z§);
         }
      }
      
      public function get §&p§() : Number
      {
         return this.§<y§;
      }
   }
}
