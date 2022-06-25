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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super();
         }
         while(true)
         {
            this.§'§ = param1;
            loop1:
            for(; _loc5_; if(_loc4_ && param1)
            {
               continue;
            },this.§'§.addEventListener(Event.SOUND_COMPLETE,this.§'!3§),§§goto(addr56))
            {
               this.§<i§ = param2;
               loop2:
               while(true)
               {
                  this.§",§ = param3;
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                     addr56:
                     while(!(_loc4_ && param1))
                     {
                        this.§1P§ = param1.soundTransform.volume;
                        if(_loc5_)
                        {
                           return;
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private function §'!3§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§'§.removeEventListener(Event.SOUND_COMPLETE,this.§'!3§);
            loop0:
            while(true)
            {
               §§push(this.§",§);
               if(_loc2_ || this)
               {
                  §§push(null);
                  loop1:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        while(true)
                        {
                           §§push(this.§",§);
                           addr123:
                           while(true)
                           {
                              §§pop().call();
                              loop10:
                              while(true)
                              {
                                 this.§",§ = null;
                                 addr104:
                                 while(_loc3_)
                                 {
                                    continue loop10;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr121:
                     }
                     while(true)
                     {
                        §§push(this.§<i§);
                        if(_loc2_ || this)
                        {
                           §§push(null);
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 §§pop().call(§§pop(),this);
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr123);
                              }
                              return;
                           }
                           addr24:
                           continue loop1;
                        }
                        §§goto(addr82);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr123);
            }
         }
         §§goto(addr108);
      }
      
      public function §<@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'!3§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§'§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§'§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'§.removeEventListener(Event.SOUND_COMPLETE,this.§'!3§);
            do
            {
               this.§'§ = null;
            }
            while(!_loc2_);
            
         }
      }
      
      public function §2!M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§'§)
            {
               if(_loc1_ || this)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§'§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr38:
                  this.§'§.soundTransform = new SoundTransform(this.§1P§);
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
