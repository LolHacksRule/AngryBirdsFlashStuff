package §_-4g§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-9c§
   {
       
      
      private var §_-2P§:SoundChannel;
      
      private var §_-qH§:Function;
      
      private var §_-dn§:Function;
      
      private var §_-011§:Number;
      
      public function §_-9c§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super();
            while(true)
            {
               this.§_-2P§ = param1;
               addr36:
               if(!(_loc5_ && param3))
               {
                  return;
               }
            }
         }
         while(true)
         {
            this.§_-qH§ = param2;
            loop2:
            while(!(_loc5_ && this))
            {
               this.§_-dn§ = param3;
               loop3:
               while(true)
               {
                  this.§_-2P§.addEventListener(Event.SOUND_COMPLETE,this.§_-1O§);
                  while(true)
                  {
                     if(_loc4_ || param3)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  continue loop2;
               }
            }
         }
      }
      
      private function §_-1O§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-2P§.removeEventListener(Event.SOUND_COMPLETE,this.§_-1O§);
            loop0:
            while(true)
            {
               §§push(this.§_-dn§);
               if(!_loc2_)
               {
                  §§push(null);
                  loop1:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        addr112:
                        while(true)
                        {
                           §§push(this.§_-dn§);
                           addr114:
                           while(true)
                           {
                              §§pop().call();
                              addr115:
                              while(true)
                              {
                                 this.§_-dn§ = null;
                                 addr104:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr112:
                     }
                     while(true)
                     {
                        §§push(this.§_-qH§);
                        if(_loc3_ || param1)
                        {
                           if(!_loc2_)
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr112);
                                          }
                                          §§goto(addr104);
                                       }
                                       else
                                       {
                                          do
                                          {
                                             this.§_-qH§ = null;
                                          }
                                          while(_loc2_ && _loc2_);
                                          
                                          if(!(_loc2_ && this))
                                          {
                                             break;
                                          }
                                          addr99:
                                       }
                                       §§goto(addr115);
                                    }
                                    break;
                                 }
                                 continue loop1;
                              }
                              addr97:
                              §§pop().call(§§pop(),this);
                              §§goto(addr99);
                           }
                           §§goto(addr114);
                        }
                        else
                        {
                           addr96:
                           §§push(null);
                        }
                        §§goto(addr97);
                     }
                     return;
                  }
               }
               §§goto(addr114);
            }
         }
         §§goto(addr112);
      }
      
      public function §_-T5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-1O§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§_-2P§)
            {
               if(!_loc2_)
               {
                  addr23:
                  this.§_-2P§.stop();
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-2P§.removeEventListener(Event.SOUND_COMPLETE,this.§_-1O§);
         }
         do
         {
            this.§_-2P§ = null;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §_-d7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§_-2P§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§_-2P§.soundTransform = new SoundTransform(0);
               }
            }
         }
      }
      
      public function §_-XX§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§_-2P§)
            {
               if(_loc2_ || this)
               {
                  this.§_-2P§.soundTransform = new SoundTransform(this.§_-011§);
               }
            }
         }
      }
   }
}
