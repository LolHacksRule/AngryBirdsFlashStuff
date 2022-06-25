package §3!j§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §%[§
   {
       
      
      private var §,!W§:SoundChannel;
      
      private var §?#§:Function;
      
      private var §8L§:Function;
      
      private var §'!!§:Number;
      
      public function §%[§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§,!W§ = param1;
               addr95:
               loop1:
               while(true)
               {
                  this.§?#§ = param2;
                  while(true)
                  {
                     this.§8L§ = param3;
                     addr31:
                     if(!(_loc5_ && param2))
                     {
                        continue loop1;
                     }
                  }
               }
            }
            addr98:
         }
         loop3:
         while(true)
         {
            this.§,!W§.addEventListener(Event.SOUND_COMPLETE,this.§@q§);
            while(true)
            {
               if(_loc5_)
               {
                  continue loop3;
               }
               if(_loc4_)
               {
                  continue;
               }
               §§goto(addr98);
            }
            §§goto(addr95);
         }
         §§goto(addr55);
      }
      
      private function §@q§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!W§.removeEventListener(Event.SOUND_COMPLETE,this.§@q§);
            loop0:
            while(true)
            {
               §§push(this.§8L§);
               loop1:
               while(true)
               {
                  §§push(null);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§push(this.§?#§);
                           if(_loc2_)
                           {
                              §§push(null);
                              if(!(_loc3_ && param1))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       continue loop2;
                                    }
                                    addr91:
                                    §§pop().call(§§pop(),this);
                                    do
                                    {
                                       this.§?#§ = null;
                                    }
                                    while(!_loc2_);
                                    
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             addr45:
                                             break loop7;
                                          }
                                          continue loop0;
                                       }
                                       addr126:
                                       while(true)
                                       {
                                          this.§8L§ = null;
                                       }
                                    }
                                    else
                                    {
                                       while(!_loc3_)
                                       {
                                          §§push(this.§?#§);
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                break loop9;
                                             }
                                             continue loop1;
                                          }
                                          continue loop1;
                                          §§goto(addr91);
                                       }
                                       addr70:
                                    }
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().call();
                                    §§goto(addr126);
                                 }
                                 addr84:
                                 addr124:
                              }
                              §§goto(addr70);
                           }
                           §§goto(addr74);
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §;Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§@q§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§,!W§)
            {
               if(_loc2_)
               {
                  this.§,!W§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§,!W§.removeEventListener(Event.SOUND_COMPLETE,this.§@q§);
         }
         do
         {
            this.§,!W§ = null;
         }
         while(_loc2_);
         
      }
      
      public function §@!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§,!W§)
            {
               if(_loc2_ || this)
               {
                  this.§,!W§.soundTransform = new SoundTransform(0);
               }
            }
         }
      }
      
      public function §6!f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§,!W§)
            {
               if(!_loc2_)
               {
                  this.§,!W§.soundTransform = new SoundTransform(this.§'!!§);
               }
            }
         }
      }
   }
}
