package §-!Q§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;l§ extends EventDispatcher
   {
       
      
      private var §>e§:SoundChannel;
      
      private var §7Q§:String;
      
      private var §+!#§:Number;
      
      private var §67§:Boolean;
      
      public function §;l§(param1:SoundChannel, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§>e§ = param1;
               addr88:
               while(true)
               {
                  this.§7Q§ = param2;
               }
            }
            addr91:
         }
         loop2:
         while(true)
         {
            this.§>e§.addEventListener(Event.SOUND_COMPLETE,this.§#!4§);
            while(!_loc4_)
            {
               this.§+!#§ = param1.soundTransform.volume;
               do
               {
                  this.§67§ = false;
               }
               while(_loc4_);
               
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     break loop2;
                  }
                  §§goto(addr91);
               }
               §§goto(addr88);
            }
         }
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§+!#§ = param1;
            while(!this.§67§)
            {
               if(!(_loc3_ || _loc2_))
               {
                  break;
               }
               addr71:
               if(_loc2_ && this)
               {
                  continue;
               }
               this.§8k§(this.§+!#§);
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function get volume() : Number
      {
         return this.§+!#§;
      }
      
      public function get id() : String
      {
         return this.§7Q§;
      }
      
      public function get position() : Number
      {
         return this.§>e§.position;
      }
      
      private function §#!4§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>e§.removeEventListener(Event.SOUND_COMPLETE,this.§#!4§);
         }
         do
         {
            dispatchEvent(param1);
         }
         while(_loc3_);
         
      }
      
      private function §8k§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            if(this.§>e§ == null)
            {
               if(_loc4_ || param1)
               {
                  return;
               }
            }
         }
         var _loc2_:SoundTransform = this.§>e§.soundTransform;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_)
            {
               do
               {
                  _loc2_.volume = param1;
                  do
                  {
                     this.§>e§.soundTransform = _loc2_;
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               while(!(_loc4_ || param1));
               
               addr95:
            }
            return;
         }
         §§goto(addr95);
      }
      
      public function §8!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.stop();
            do
            {
               this.§#!4§(new Event(Event.SOUND_COMPLETE));
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§>e§)
            {
               if(_loc2_)
               {
                  addr44:
                  this.§>e§.stop();
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §;@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.stop();
            while(true)
            {
               this.§>e§.removeEventListener(Event.SOUND_COMPLETE,this.§#!4§);
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§>e§ = null;
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §^!f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§>e§)
            {
               do
               {
                  this.§8k§(0);
                  do
                  {
                     this.§67§ = true;
                  }
                  while(_loc2_ && this);
                  
               }
               while(_loc2_);
               
               addr60:
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function §2!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§>e§)
            {
               if(_loc1_ || _loc1_)
               {
                  this.§8k§(this.§+!#§);
                  do
                  {
                     this.§67§ = false;
                  }
                  while(_loc2_);
                  
                  addr64:
               }
               §§goto(addr64);
            }
            return;
         }
         §§goto(addr64);
      }
   }
}
