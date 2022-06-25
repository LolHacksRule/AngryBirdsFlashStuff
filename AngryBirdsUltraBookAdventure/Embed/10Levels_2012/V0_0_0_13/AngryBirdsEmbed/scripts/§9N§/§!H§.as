package §9N§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!H§ extends EventDispatcher implements §!o§
   {
       
      
      private var §1!E§:Number = 0;
      
      private var §1I§:Number;
      
      private var §2X§:Function;
      
      private var §@F§:Array;
      
      private var §=<§:int = 1;
      
      public function §!H§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
            if(!(_loc5_ && param3))
            {
               this.§2X§ = param1;
               if(!_loc5_)
               {
                  this.§1I§ = Math.max(param2,0.0001);
                  if(!(_loc5_ && param1))
                  {
                     addr70:
                     this.§@F§ = param3;
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§1!E§);
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§1!E§ = Math.min(this.§1I§,this.§1!E§ + param1);
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               §§push(this.§1I§);
               if(!_loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           addr59:
                           §§pop();
                           if(_loc4_)
                           {
                              §§goto(addr77);
                           }
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr59);
               }
               §§goto(addr77);
            }
            addr77:
            if(this.§1!E§ >= this.§1I§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr85:
                  this.§2X§.apply(null,this.§@F§);
                  if(_loc4_)
                  {
                     if(this.§=<§ <= 1)
                     {
                        dispatchEvent(new Event(Event.§0=§));
                     }
                     §§goto(addr150);
                  }
                  this.§1!E§ = 0;
                  §§goto(addr109);
               }
               this.§=<§ = this.§=<§ - 1;
               if(!(_loc3_ && _loc3_))
               {
                  addr109:
                  §§push(this);
                  §§push(_loc2_);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§goto(addr140);
                     }
                     §§push(§§pop() - §§pop());
                  }
                  addr140:
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                     §§push(this.§1I§);
                  }
                  §§pop().advanceTime(§§pop());
                  if(!_loc3_)
                  {
                     addr143:
                  }
                  §§goto(addr150);
               }
               §§goto(addr143);
            }
            addr150:
            return;
         }
         §§goto(addr85);
      }
      
      public function get §!D§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§=<§ == 1);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr64:
                     §§pop();
                     §§push(this.§1!E§ >= this.§1I§);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr64);
      }
      
      public function get §2r§() : Number
      {
         return this.§1I§;
      }
      
      public function get currentTime() : Number
      {
         return this.§1!E§;
      }
      
      public function get §-D§() : int
      {
         return this.§=<§;
      }
      
      public function set §-D§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§=<§ = param1;
         }
      }
   }
}
