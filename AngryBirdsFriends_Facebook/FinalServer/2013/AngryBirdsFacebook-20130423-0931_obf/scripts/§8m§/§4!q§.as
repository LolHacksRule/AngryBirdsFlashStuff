package §8m§
{
   import §2"'§.§'v§;
   import §2"'§.§0W§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §4!q§ extends EventDispatcher
   {
       
      
      private var §6s§:§7!>§;
      
      private var § !5§:§'v§;
      
      private var §&N§:String;
      
      public function §4!q§(param1:String, param2:§7!>§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               this.§&N§ = param1;
               while(true)
               {
                  this.§6s§ = param2;
                  while(_loc7_ || param3)
                  {
                     continue loop0;
                     addr81:
                     if(!(_loc7_ || this))
                     {
                        continue;
                     }
                     §§push(this.§ !5§);
                     loop6:
                     while(_loc7_ || param2)
                     {
                        §§pop().§="6§ = false;
                        while(true)
                        {
                           §§push(this.§ !5§);
                           if(!(_loc7_ || param2))
                           {
                              break;
                           }
                           §§pop().onComplete = this.§8!8§;
                           if(_loc8_)
                           {
                              continue;
                           }
                           if(!_loc8_)
                           {
                              return;
                           }
                           addr117:
                           addr74:
                           while(_loc7_ || param3)
                           {
                              §§goto(addr81);
                           }
                           while(true)
                           {
                              §§push(this.§ !5§);
                              break loop6;
                              §§goto(addr74);
                           }
                           addr74:
                        }
                     }
                     while(true)
                     {
                        §§pop().delay = param5;
                        §§goto(addr74);
                        §§goto(addr49);
                     }
                     addr49:
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      public function get id() : String
      {
         return this.§&N§;
      }
      
      public function get §?!h§() : §7!>§
      {
         return this.§6s§;
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§ !5§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr48);
            }
            §§pop().play();
         }
         addr48:
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§ !5§);
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§ !5§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr33);
            }
            §§pop().stop();
         }
         addr33:
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§ !5§);
         }
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§ !5§);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().pause();
         }
         addr49:
         if(_loc2_)
         {
            §§push(this.§ !5§);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§ !5§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr83:
                     §§push(this.§ !5§);
                     while(true)
                     {
                        §§pop().stop();
                     }
                     addr83:
                  }
                  while(true)
                  {
                     §§push(this.§ !5§);
                     if(!(_loc2_ && this))
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§ !5§ = null;
                        }
                        while(!_loc1_);
                        
                        if(_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr83);
                  }
                  addr56:
               }
               return;
            }
            §§goto(addr83);
         }
         §§goto(addr56);
      }
      
      private function §8!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§ !5§.dispose();
         }
         while(true)
         {
            this.§ !5§ = null;
            while(_loc2_)
            {
               dispatchEvent(new Event(Event.COMPLETE));
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
