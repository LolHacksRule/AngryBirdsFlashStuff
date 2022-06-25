package §?!?§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §]t§
   {
       
      
      private var §"K§:SoundChannel;
      
      private var §!l§:Function;
      
      private var §1!@§:Function;
      
      private var §6_§:Number;
      
      public function §]t§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            this.§"K§ = param1;
            if(_loc5_)
            {
               this.§!l§ = param2;
               if(!_loc4_)
               {
                  this.§1!@§ = param3;
                  this.§"K§.addEventListener(Event.SOUND_COMPLETE,this.§>^§);
                  if(!_loc4_)
                  {
                     addr68:
                     this.§6_§ = param1.soundTransform.volume;
                  }
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      private function §>^§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§"K§.removeEventListener(Event.SOUND_COMPLETE,this.§>^§);
            §§push(this.§1!@§);
            if(!_loc3_)
            {
               §§push(null);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() != §§pop())
                  {
                     addr53:
                     §§push(this.§1!@§);
                     if(!(_loc3_ && this))
                     {
                        §§pop().call();
                        this.§1!@§ = null;
                     }
                     addr85:
                     §§push(null);
                     if(_loc2_ || _loc3_)
                     {
                        if(§§pop() != §§pop())
                        {
                           addr97:
                           this.§!l§.call(null,this);
                           this.§!l§ = null;
                        }
                        return;
                     }
                     §§goto(addr97);
                  }
                  §§push(this.§!l§);
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr85);
                  }
               }
               §§goto(addr97);
            }
            §§goto(addr85);
         }
         §§goto(addr53);
      }
      
      public function §<e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§>^§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§"K§)
            {
               if(!_loc1_)
               {
                  addr24:
                  this.§"K§.stop();
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§"K§.removeEventListener(Event.SOUND_COMPLETE,this.§>^§);
            if(!(_loc2_ && this))
            {
               addr47:
               this.§"K§ = null;
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §var §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§"K§)
            {
               if(_loc2_)
               {
                  this.§"K§.soundTransform = new SoundTransform(0);
               }
            }
         }
      }
      
      public function § 2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§"K§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr44:
                  this.§"K§.soundTransform = new SoundTransform(this.§6_§);
               }
            }
            return;
         }
         §§goto(addr44);
      }
   }
}
