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
         if(_loc4_ || param3)
         {
            super();
            while(true)
            {
               this.§9!I§ = param1;
               while(true)
               {
                  this.§^V§ = param2;
                  while(true)
                  {
                     this.§]o§ = param3;
                     while(true)
                     {
                        this.§9!I§.addEventListener(Event.SOUND_COMPLETE,this.§^#§);
                        §§goto(addr85);
                     }
                  }
               }
            }
         }
         addr85:
         while(true)
         {
            this.§0[§ = param1.soundTransform.volume;
            if(!(_loc5_ && param2))
            {
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  continue loop2;
               }
               continue loop3;
            }
         }
         addr74:
      }
      
      private function §^#§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
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
                     if(§§pop() != §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§]o§);
                           addr119:
                           while(true)
                           {
                              §§pop().call();
                              addr121:
                              while(true)
                              {
                                 this.§]o§ = null;
                                 loop6:
                                 while(true)
                                 {
                                    addr106:
                                    while(true)
                                    {
                                       this.§^V§ = null;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§goto(addr24);
                                             }
                                             continue loop3;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(this.§^V§);
                        if(!(_loc3_ && this))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§push(null);
                           if(_loc2_ || _loc3_)
                           {
                              if(!_loc3_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          addr90:
                                          §§push(this.§^V§);
                                          if(_loc2_)
                                          {
                                             addr103:
                                             §§pop().call(null,this);
                                             §§goto(addr106);
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr106);
                                 }
                                 addr24:
                              }
                              continue loop2;
                              return;
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr90);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §case §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§^#§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§9!I§)
            {
               if(!(_loc1_ && _loc1_))
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
         if(_loc2_)
         {
            this.§9!I§.removeEventListener(Event.SOUND_COMPLETE,this.§^#§);
         }
         do
         {
            this.§9!I§ = null;
         }
         while(!_loc2_);
         
      }
      
      public function §<!`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§9!I§)
            {
               if(!_loc2_)
               {
                  this.§9!I§.soundTransform = new SoundTransform(0);
               }
            }
         }
      }
      
      public function §0z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§9!I§)
            {
               if(_loc2_ || this)
               {
                  this.§9!I§.soundTransform = new SoundTransform(this.§0[§);
               }
            }
         }
      }
   }
}
