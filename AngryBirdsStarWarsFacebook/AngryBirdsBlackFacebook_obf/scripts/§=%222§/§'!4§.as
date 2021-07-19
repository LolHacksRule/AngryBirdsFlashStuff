package §="2§
{
   import §3y§.§3#§;
   import §6"G§.§ #B§;
   import §6"G§.§-#C§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §'!4§ extends EventDispatcher
   {
       
      
      private var §9@§:§4!5§;
      
      private var §1"8§:§ #B§;
      
      private var §6##§:String;
      
      public function §'!4§(param1:String, param2:§4!5§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            while(true)
            {
               this.§6##§ = param1;
               loop1:
               for(; !(_loc8_ && this); while(true)
               {
                  if(!(_loc8_ && param1))
                  {
                     §§push(param6);
                     if(!param6)
                     {
                        §§pop();
                        if(_loc8_)
                        {
                           continue;
                        }
                        if(true)
                        {
                           §§push(§3#§.§%"K§);
                           break;
                        }
                        §§goto(addr29);
                     }
                     break;
                  }
                  continue loop1;
               },param6 = §§pop(),if(!_loc8_)
               {
                  this.§1"8§ = §-#C§.§%!E§.§^!H§(this.§9@§,{"volume":param3},{"volume":this.§9@§.volume},param4,param6);
               },addr119:,this.§1"8§.delay = param5,addr106:,this.§1"8§.§>h§ = false,addr121:,if(!(_loc8_ && param1))
               {
                  §§push(this.§1"8§);
                  if(!_loc8_)
                  {
                     if(!_loc8_)
                     {
                        §§pop().onComplete = this.§5$§;
                        if(!(_loc8_ && this))
                        {
                           if(!(_loc7_ || param3))
                           {
                              §§goto(addr121);
                           }
                           return;
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr106);
               },addr149:,§§goto(addr149))
               {
                  while(true)
                  {
                     addr29:
                     while(true)
                     {
                        this.§9@§ = param2;
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function get §6"h§() : §4!5§
      {
         return this.§9@§;
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§1"8§);
            if(_loc1_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr58);
            }
            §§pop().play();
         }
         addr58:
         if(_loc1_ || this)
         {
            §§push(this.§1"8§);
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§1"8§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr52:
                     this.§1"8§.stop();
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§1"8§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr58:
                     this.§1"8§.pause();
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§1"8§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr79:
                     §§push(this.§1"8§);
                     while(true)
                     {
                        §§pop().stop();
                     }
                     addr79:
                  }
                  while(true)
                  {
                     §§push(this.§1"8§);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§1"8§ = null;
                        }
                        while(_loc1_ && this);
                        
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr79);
                  }
                  addr47:
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr47);
      }
      
      private function §5$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§1"8§.dispose();
         }
         while(true)
         {
            this.§1"8§ = null;
            while(_loc2_)
            {
               dispatchEvent(new Event(Event.COMPLETE));
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
   }
}
