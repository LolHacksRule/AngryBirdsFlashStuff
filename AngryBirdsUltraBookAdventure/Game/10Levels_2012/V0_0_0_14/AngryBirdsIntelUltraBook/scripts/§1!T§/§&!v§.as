package §1!T§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&!v§
   {
       
      
      private var §"!r§:SoundChannel;
      
      private var §??§:Function;
      
      private var §@!x§:Function;
      
      private var §^j§:Number;
      
      public function §&!v§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super();
            while(true)
            {
               this.§"!r§ = param1;
               loop2:
               for(; !(_loc4_ && this); if(!(_loc5_ || param1))
               {
                  continue;
               },if(_loc5_)
               {
                  return;
               },while(true)
               {
                  this.§??§ = param2;
                  continue loop2;
               },addr99:)
               {
                  this.§@!x§ = param3;
                  while(true)
                  {
                     this.§"!r§.addEventListener(Event.SOUND_COMPLETE,this.§&+§);
                     while(_loc5_)
                     {
                        this.§^j§ = param1.soundTransform.volume;
                        if(!_loc4_)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      private function §&+§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§"!r§.removeEventListener(Event.SOUND_COMPLETE,this.§&+§);
            loop0:
            while(true)
            {
               §§push(this.§@!x§);
               loop1:
               while(true)
               {
                  §§push(null);
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(this.§@!x§);
                           while(true)
                           {
                              §§pop().call();
                              addr124:
                              while(true)
                              {
                                 this.§@!x§ = null;
                                 addr113:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr123:
                        }
                        §§goto(addr124);
                     }
                     while(true)
                     {
                        §§push(this.§??§);
                        if(_loc2_ || this)
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           §§push(null);
                           if(!_loc3_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr84:
                                    §§push(this.§??§);
                                    if(_loc2_)
                                    {
                                       addr87:
                                       §§push(null);
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          break;
                                       }
                                       §§pop().call(§§pop(),this);
                                       while(!_loc3_)
                                       {
                                          this.§??§ = null;
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(_loc2_ || this)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§goto(addr24);
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr124);
                                       }
                                       addr106:
                                    }
                                    else
                                    {
                                       §§goto(addr123);
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr106);
                              }
                              addr24:
                              return;
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr84);
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      public function §0!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&+§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§"!r§)
            {
               if(!_loc2_)
               {
                  this.§"!r§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§"!r§.removeEventListener(Event.SOUND_COMPLETE,this.§&+§);
            do
            {
               this.§"!r§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      public function §0$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§"!r§)
            {
               if(!(_loc2_ && this))
               {
                  this.§"!r§.soundTransform = new SoundTransform(0);
               }
            }
         }
      }
      
      public function §%!v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§"!r§)
            {
               if(!_loc2_)
               {
                  addr23:
                  this.§"!r§.soundTransform = new SoundTransform(this.§^j§);
               }
            }
            return;
         }
         §§goto(addr23);
      }
   }
}
