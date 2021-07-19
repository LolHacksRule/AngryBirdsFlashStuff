package §!`§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>D§ implements §%9§
   {
       
      
      private var §]!I§:Vector.<§%9§>;
      
      private var §>!%§:Number;
      
      private var §4@§:Boolean = false;
      
      private var §`!;§:Number = 1.0;
      
      public function §>D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            while(true)
            {
               this.§>!%§ = 0;
               loop1:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     this.§]!I§ = new Vector.<§%9§>(0);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!;§ = param1;
         }
      }
      
      public function add(param1:§%9§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(_loc4_ || _loc2_)
         {
            §§push(param1 == null);
            if(_loc4_ || this)
            {
               §§push(!§§pop());
               if(_loc4_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr59:
                        §§pop();
                        §§goto(addr86);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr86:
                        §§goto(addr90);
                     }
                     addr90:
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(this.§]!I§.indexOf(param1) == -1);
                     }
                     this.§]!I§.push(param1);
                     _loc2_ = param1 as EventDispatcher;
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc2_)
                        {
                           if(_loc4_)
                           {
                              _loc2_.addEventListener(Event.§,m§,this.§&!-§);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr86);
               }
            }
         }
         §§goto(addr59);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§4@§ = param1;
         }
      }
      
      public function §2!&§(param1:§%9§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§]!I§.indexOf(param1);
         if(_loc5_)
         {
            if(_loc2_ != -1)
            {
               if(_loc5_ || param1)
               {
                  this.§]!I§.splice(_loc2_,1);
                  addr63:
                  _loc3_ = param1 as EventDispatcher;
                  if(!(_loc4_ && param1))
                  {
                     if(_loc3_)
                     {
                        if(_loc4_ && _loc3_)
                        {
                        }
                     }
                     §§goto(addr90);
                  }
                  _loc3_.removeEventListener(Event.§,m§,this.§&!-§);
               }
               §§goto(addr63);
            }
            addr90:
            return;
         }
         §§goto(addr63);
      }
      
      public function §<!G§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§>!§ = null;
         if(!_loc5_)
         {
            if(param1 == null)
            {
               if(_loc6_ || param1)
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§]!I§.length;
         §§push(_loc2_);
         if(_loc6_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§]!I§[_loc3_] as §>!§));
            if(!(_loc5_ && this))
            {
               if(§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        addr89:
                        if(_loc4_.target == param1)
                        {
                           if(!(_loc5_ && this))
                           {
                              this.§]!I§.splice(_loc3_,1);
                              if(_loc5_ && _loc2_)
                              {
                                 continue;
                              }
                           }
                        }
                     }
                     §§push(_loc3_);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
               }
            }
            §§goto(addr89);
         }
      }
      
      public function §=i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§]!I§.length = 0;
         }
      }
      
      public function §!B§(param1:Function, param2:Number, ... rest) : §<§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            if(param1 == null)
            {
               if(_loc5_ || rest)
               {
                  return null;
               }
            }
         }
         var _loc4_:§<§ = new §<§(param1,param2,rest);
         if(!_loc6_)
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            if(this.§4@§)
            {
               return;
            }
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop() * this.§`!;§);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(true)
         {
            addr38:
            while(true)
            {
               §§push(this);
               §§push(this.§>!%§);
               if(_loc6_ || this)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§>!%§ = §§pop();
               continue loop0;
            }
         }
      }
      
      private function §&!-§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§2!&§(param1.target as §%9§);
         }
      }
      
      public function get §6!G§() : Number
      {
         return this.§>!%§;
      }
   }
}
