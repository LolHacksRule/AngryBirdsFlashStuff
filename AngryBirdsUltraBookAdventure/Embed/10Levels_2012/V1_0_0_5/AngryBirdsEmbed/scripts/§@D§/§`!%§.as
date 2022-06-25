package §@D§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §`!%§
   {
       
      
      private var §7^§:SoundChannel;
      
      private var §4!2§:Function;
      
      private var §;F§:Function;
      
      private var §,i§:Number;
      
      public function §`!%§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            this.§7^§ = param1;
            if(_loc5_)
            {
               this.§4!2§ = param2;
               if(!_loc4_)
               {
                  this.§;F§ = param3;
                  this.§7^§.addEventListener(Event.SOUND_COMPLETE,this.§,x§);
                  if(!_loc4_)
                  {
                     addr68:
                     this.§,i§ = param1.soundTransform.volume;
                  }
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      private function §,x§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§7^§.removeEventListener(Event.SOUND_COMPLETE,this.§,x§);
            §§push(this.§;F§);
            if(!_loc3_)
            {
               §§push(null);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() != §§pop())
                  {
                     addr53:
                     §§push(this.§;F§);
                     if(!(_loc3_ && this))
                     {
                        §§pop().call();
                        this.§;F§ = null;
                     }
                     addr85:
                     §§push(null);
                     if(_loc2_ || _loc3_)
                     {
                        if(§§pop() != §§pop())
                        {
                           addr97:
                           this.§4!2§.call(null,this);
                           this.§4!2§ = null;
                        }
                        return;
                     }
                     §§goto(addr97);
                  }
                  §§push(this.§4!2§);
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
      
      public function §0+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§,x§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§7^§)
            {
               if(!_loc1_)
               {
                  addr24:
                  this.§7^§.stop();
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
            this.§7^§.removeEventListener(Event.SOUND_COMPLETE,this.§,x§);
            if(!(_loc2_ && this))
            {
               addr47:
               this.§7^§ = null;
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §2I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§7^§)
            {
               if(_loc2_)
               {
                  this.§7^§.soundTransform = new SoundTransform(0);
               }
            }
         }
      }
      
      public function §5!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§7^§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr44:
                  this.§7^§.soundTransform = new SoundTransform(this.§,i§);
               }
            }
            return;
         }
         §§goto(addr44);
      }
   }
}
