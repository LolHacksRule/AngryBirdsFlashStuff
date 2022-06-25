package §"R§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §`a§
   {
       
      
      private var §'§:SoundChannel;
      
      private var §<i§:Function;
      
      private var §",§:Function;
      
      private var §1P§:Number;
      
      public function §`a§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§'§ = param1;
               addr98:
               while(true)
               {
                  this.§<i§ = param2;
                  continue loop0;
               }
            }
         }
         §§goto(addr53);
      }
      
      private function §'!3§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'§.removeEventListener(Event.SOUND_COMPLETE,this.§'!3§);
            loop0:
            while(true)
            {
               §§push(this.§",§);
               loop1:
               while(true)
               {
                  §§push(null);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr123:
                           §§push(this.§",§);
                           while(true)
                           {
                              §§pop().call();
                           }
                           addr123:
                        }
                        while(true)
                        {
                           this.§",§ = null;
                           while(_loc2_)
                           {
                              continue loop0;
                              loop7:
                              while(!(_loc3_ && this))
                              {
                                 §§push(this.§<i§);
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr123);
                                 }
                                 continue loop1;
                                 while(true)
                                 {
                                    this.§<i§ = null;
                                    if(!_loc3_)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§goto(addr19);
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(this.§<i§);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(null);
                              if(!_loc2_)
                              {
                                 while(!_loc3_)
                                 {
                                    §§pop().call(§§pop(),this);
                                    §§goto(addr84);
                                 }
                                 continue loop2;
                                 addr80:
                              }
                              if(§§pop() == §§pop())
                              {
                                 break;
                              }
                              §§goto(addr51);
                           }
                           §§goto(addr70);
                        }
                        addr19:
                        return;
                        addr37:
                     }
                     §§goto(addr123);
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §<@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'!3§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§'§)
            {
               if(!_loc1_)
               {
                  this.§'§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'§.removeEventListener(Event.SOUND_COMPLETE,this.§'!3§);
         }
         do
         {
            this.§'§ = null;
         }
         while(!_loc1_);
         
      }
      
      public function §2!M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§'§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr38:
                  this.§'§.soundTransform = new SoundTransform(0);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §<!x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§'§)
            {
               if(!_loc1_)
               {
                  addr24:
                  this.§'§.soundTransform = new SoundTransform(this.§1P§);
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
