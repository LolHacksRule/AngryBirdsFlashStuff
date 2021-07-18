package §-!n§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §6i§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §,w§:int;
      
      public var §#!u§:Number = 1;
      
      private var §3!X§:Vector.<§7v§>;
      
      private var §%#§:Number;
      
      public function §6i§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop1:
               while(!_loc5_)
               {
                  this.§,w§ = param2;
                  while(true)
                  {
                     this.§#!u§ = param3;
                     loop3:
                     while(_loc4_)
                     {
                        this.§%#§ = this.§#!u§;
                        while(true)
                        {
                           this.§3!X§ = new Vector.<§7v§>();
                           if(_loc4_)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §<s§() : Boolean
      {
         return this.§3!X§.length < this.§,w§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §7v§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[3] = param3;
                        addr136:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop4;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §;!M§(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§7v§> = null;
         var _loc4_:§7v§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§7v§ = §7v§(param1.currentTarget);
         if(!(_loc7_ && this))
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§;!M§);
            if(_loc6_ || this)
            {
               §§goto(addr61);
            }
            §§goto(addr67);
         }
         addr61:
         if(this.§3!X§.indexOf(_loc2_) > -1)
         {
            addr67:
            _loc3_ = this.§3!X§.splice(this.§3!X§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            if(!(_loc7_ && _loc3_))
            {
               dispatchEvent(_loc5_);
            }
         }
      }
      
      public function §if §() : Boolean
      {
         return this.§3!X§.length > 0;
      }
      
      public function §9&§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§7v§ = null;
         while(this.§3!X§.length > 0)
         {
            _loc1_ = this.§3!X§[0];
            if(!_loc3_)
            {
               _loc1_.stop();
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
            }
            _loc1_.§ !5§();
         }
      }
      
      public function §9"+§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7v§ = null;
         if(_loc4_)
         {
            this.§#!u§ = 0;
         }
         var _loc3_:* = this.§3!X§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc1_.§7!t§();
            }
         }
      }
      
      public function §0!m§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7v§ = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§#!u§ = this.§%#§;
         }
         for each(_loc1_ in this.§3!X§)
         {
            if(_loc4_)
            {
               _loc1_.§6!%§();
            }
         }
      }
      
      public function §7!=§(param1:String) : §7v§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§3!X§.length)
            {
               if(_loc4_)
               {
                  return null;
               }
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(§7v§(this.§3!X§[_loc2_]).id == param1)
            {
               break;
            }
            §§goto(addr42);
         }
         while(!(_loc3_ && this));
         
         return §7v§(this.§3!X§[_loc2_]);
      }
   }
}
