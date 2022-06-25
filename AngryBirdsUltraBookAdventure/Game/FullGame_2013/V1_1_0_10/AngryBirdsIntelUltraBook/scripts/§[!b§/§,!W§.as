package §[!b§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,!W§ extends EventDispatcher
   {
       
      
      private var §9!1§:SoundChannel;
      
      private var §9!^§:String;
      
      private var §'9§:Number;
      
      private var §1[§:Boolean;
      
      public function §,!W§(param1:SoundChannel, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super();
            while(true)
            {
               this.§9!1§ = param1;
               addr75:
               if(_loc4_ || param2)
               {
                  this.§'9§ = param1.soundTransform.volume;
                  do
                  {
                     this.§1[§ = false;
                  }
                  while(!_loc4_);
                  
                  addr82:
                  if(!_loc4_)
                  {
                     while(!_loc3_)
                     {
                        §§goto(addr75);
                        §§goto(addr82);
                     }
                     while(!_loc3_)
                     {
                        this.§9!1§.addEventListener(Event.SOUND_COMPLETE,this.§^!l§);
                        §§goto(addr73);
                     }
                     addr73:
                     while(true)
                     {
                        this.§9!^§ = param2;
                        §§goto(addr87);
                     }
                     addr87:
                     addr94:
                  }
                  return;
               }
            }
         }
         §§goto(addr94);
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'9§ = param1;
            while(!this.§1[§)
            {
               if(!_loc3_)
               {
                  break;
               }
               addr51:
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               this.§[,§(this.§'9§);
               §§goto(addr51);
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function get volume() : Number
      {
         return this.§'9§;
      }
      
      public function get id() : String
      {
         return this.§9!^§;
      }
      
      public function get position() : Number
      {
         return this.§9!1§.position;
      }
      
      private function §^!l§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9!1§.removeEventListener(Event.SOUND_COMPLETE,this.§^!l§);
         }
         do
         {
            dispatchEvent(param1);
         }
         while(_loc3_);
         
      }
      
      private function §[,§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            if(this.§9!1§ == null)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:SoundTransform = this.§9!1§.soundTransform;
         if(_loc4_ || this)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  _loc2_.volume = param1;
                  do
                  {
                     this.§9!1§.soundTransform = _loc2_;
                  }
                  while(_loc3_);
                  
                  addr83:
               }
               §§goto(addr83);
            }
            return;
         }
         §§goto(addr83);
      }
      
      public function §@!M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.stop();
            do
            {
               this.§^!l§(new Event(Event.SOUND_COMPLETE));
            }
            while(_loc2_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§9!1§)
            {
               if(!(_loc1_ && this))
               {
                  this.§9!1§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.stop();
            while(true)
            {
               this.§9!1§.removeEventListener(Event.SOUND_COMPLETE,this.§^!l§);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§9!1§ = null;
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §3!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§9!1§)
            {
               loop0:
               while(true)
               {
                  this.§[,§(0);
                  addr54:
                  while(true)
                  {
                     this.§1[§ = true;
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr35);
               }
            }
            addr35:
            return;
         }
         §§goto(addr54);
      }
      
      public function §9!n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§9!1§)
            {
               if(_loc1_)
               {
                  this.§[,§(this.§'9§);
                  do
                  {
                     this.§1[§ = false;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  addr59:
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
   }
}
