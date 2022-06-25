package §=?§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7[§
   {
       
      
      private var §9!I§:SoundChannel;
      
      private var §^V§:Function;
      
      private var §]o§:Function;
      
      private var §0[§:Number;
      
      public function §7[§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§9!I§ = param1;
               loop1:
               for(; _loc4_; while(!(_loc5_ && param3))
               {
                  this.§0[§ = param1.soundTransform.volume;
                  if(!(_loc4_ || param2))
                  {
                     continue;
                  }
                  §§goto(addr36);
               })
               {
                  this.§^V§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§]o§ = param3;
                     do
                     {
                        if(_loc4_)
                        {
                           this.§9!I§.addEventListener(Event.SOUND_COMPLETE,this.§^#§);
                           continue loop1;
                        }
                        continue loop2;
                     }
                     while(_loc5_ && param3);
                     
                  }
               }
            }
         }
      }
      
      private function §^#§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9!I§.removeEventListener(Event.SOUND_COMPLETE,this.§^#§);
            loop0:
            while(true)
            {
               §§push(this.§]o§);
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
                           §§push(this.§^V§);
                           if(!(_loc2_ && param1))
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          addr59:
                                          if(!(_loc2_ && this))
                                          {
                                             if(_loc3_)
                                             {
                                                addr80:
                                                §§push(this.§^V§);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§]o§);
                                                }
                                                addr126:
                                             }
                                             while(true)
                                             {
                                                §§pop().call();
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                continue loop7;
                                                §§goto(addr59);
                                             }
                                             addr120:
                                          }
                                       }
                                       else
                                       {
                                          do
                                          {
                                             if(!(_loc2_ && param1))
                                             {
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          while(this.§^V§ = null, !(_loc3_ || this));
                                          
                                          addr35:
                                          break;
                                          addr98:
                                       }
                                    }
                                    break;
                                 }
                                 continue loop2;
                              }
                              addr95:
                              §§pop().call(§§pop(),this);
                              §§goto(addr98);
                           }
                           §§goto(addr80);
                        }
                        return;
                     }
                     §§goto(addr126);
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public function §case §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^#§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§9!I§)
            {
               if(_loc2_)
               {
                  this.§9!I§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§9!I§.removeEventListener(Event.SOUND_COMPLETE,this.§^#§);
            do
            {
               this.§9!I§ = null;
            }
            while(_loc1_);
            
         }
      }
      
      public function §<!`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§9!I§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§9!I§.soundTransform = new SoundTransform(0);
               }
            }
         }
      }
      
      public function §0z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§9!I§)
            {
               if(_loc1_ || _loc1_)
               {
                  addr44:
                  this.§9!I§.soundTransform = new SoundTransform(this.§0[§);
               }
            }
            return;
         }
         §§goto(addr44);
      }
   }
}
