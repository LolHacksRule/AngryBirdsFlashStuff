package §6!B§
{
   import §8!v§.§+!W§;
   import §8!v§.§>!+§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §&Q§ extends EventDispatcher
   {
       
      
      private var §!q§:§,!p§;
      
      private var §]!2§:§+!W§;
      
      private var §;!Y§:String;
      
      public function §&Q§(param1:String, param2:§,!p§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§;!Y§ = param1;
            loop1:
            while(true)
            {
               this.§!q§ = param2;
               do
               {
                  this.§]!2§ = §>!+§.§;"§.§^!K§(this.§!q§,{"volume":param3},{"volume":this.§!q§.volume},param4,param6);
                  loop3:
                  do
                  {
                     §§push(this.§]!2§);
                     while(true)
                     {
                        §§pop().delay = param5;
                        continue loop0;
                        addr71:
                        while(_loc7_ || param2)
                        {
                           §§pop().§'l§ = false;
                           while(_loc7_ || this)
                           {
                              continue loop1;
                              §§pop().onComplete = this.§4"6§;
                              if(_loc7_ || param3)
                              {
                                 continue loop3;
                              }
                           }
                           §§push(this.§]!2§);
                           continue loop0;
                           if(!(_loc7_ || param1))
                           {
                              continue;
                           }
                           §§goto(addr38);
                        }
                     }
                  }
                  while(!_loc7_);
                  
               }
               while(!(_loc7_ || param2));
               
               return;
            }
         }
      }
      
      public function get id() : String
      {
         return this.§;!Y§;
      }
      
      public function get §%<§() : §,!p§
      {
         return this.§!q§;
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§]!2§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr47:
                     this.§]!2§.play();
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§]!2§);
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().stop();
         }
         addr49:
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§]!2§);
         }
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§]!2§);
            if(_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr29);
            }
            §§pop().pause();
         }
         addr29:
         if(!_loc1_)
         {
            §§push(this.§]!2§);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§]!2§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§]!2§);
                     addr73:
                     while(true)
                     {
                        §§pop().stop();
                        while(true)
                        {
                           §§push(this.§]!2§);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§pop().dispose();
                           loop3:
                           while(_loc1_)
                           {
                              while(true)
                              {
                                 this.§]!2§ = null;
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
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
               §§goto(addr44);
            }
            §§goto(addr73);
         }
         §§goto(addr65);
      }
      
      private function §4"6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§]!2§.dispose();
            while(true)
            {
               this.§]!2§ = null;
               while(_loc2_)
               {
                  dispatchEvent(new Event(Event.COMPLETE));
                  if(_loc2_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
   }
}
