package §!!0§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §?!j§
   {
       
      
      private var §^E§:SoundChannel;
      
      private var §&!$§:Function;
      
      private var §2y§:Function;
      
      private var §-!c§:Number;
      
      public function §?!j§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super();
            while(true)
            {
               this.§^E§ = param1;
               loop1:
               while(_loc5_)
               {
                  this.§&!$§ = param2;
                  while(true)
                  {
                     this.§2y§ = param3;
                     while(true)
                     {
                        this.§^E§.addEventListener(Event.SOUND_COMPLETE,this.§5!W§);
                        addr75:
                        while(_loc5_)
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§-!c§ = param1.soundTransform.volume;
            if(_loc5_ || param1)
            {
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr89);
            }
            §§goto(addr75);
         }
      }
      
      private function §5!W§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^E§.removeEventListener(Event.SOUND_COMPLETE,this.§5!W§);
            while(true)
            {
               §§push(this.§2y§);
               if(!(_loc3_ && this))
               {
                  §§push(null);
                  loop1:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        while(true)
                        {
                           §§push(this.§2y§);
                           addr119:
                           while(true)
                           {
                              §§pop().call();
                              addr121:
                              while(true)
                              {
                                 this.§2y§ = null;
                                 addr104:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr117:
                     }
                     while(true)
                     {
                        §§push(this.§&!$§);
                        if(_loc2_)
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              §§pop().call(§§pop(),this);
                              while(true)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr117);
                              }
                           }
                           addr79:
                        }
                        else
                        {
                           while(true)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr79);
                                 §§push(null);
                              }
                           }
                           addr71:
                        }
                     }
                  }
               }
               §§goto(addr119);
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr71);
               §§push(this.§&!$§);
            }
         }
         §§goto(addr89);
      }
      
      public function §&p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§5!W§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§^E§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§^E§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^E§.removeEventListener(Event.SOUND_COMPLETE,this.§5!W§);
            do
            {
               this.§^E§ = null;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function §?I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§^E§)
            {
               if(_loc2_)
               {
                  addr25:
                  this.§^E§.soundTransform = new SoundTransform(0);
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §6!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§^E§)
            {
               if(!_loc1_)
               {
                  this.§^E§.soundTransform = new SoundTransform(this.§-!c§);
               }
            }
         }
      }
   }
}
