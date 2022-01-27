package §`"1§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7!&§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §>!^§:int;
      
      public var §]l§:Number = 1;
      
      private var §3#4§:Vector.<§0"M§>;
      
      private var § q§:Number;
      
      public function §7!&§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§>!^§ = param2;
         this.§]l§ = param3;
         this.§ q§ = this.§]l§;
         this.§3#4§ = new Vector.<§0"M§>();
      }
      
      public function §]^§() : Boolean
      {
         var _loc2_:§0"M§ = null;
         if(this.§3#4§.length < this.§>!^§)
         {
            return true;
         }
         var _loc1_:int = this.§3#4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3#4§[_loc1_];
            if(_loc2_.§=!Z§ <= 0)
            {
               _loc2_.§ "R§();
            }
            _loc1_--;
         }
         return this.§3#4§.length < this.§>!^§;
      }
      
      public function §`!A§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §0"M§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§ q§;
         }
         else
         {
            volume *= this.§ q§;
         }
         var soundTransform:SoundTransform = new SoundTransform(volume);
         var sndChannel:SoundChannel = null;
         try
         {
            sndChannel = snd.play(startTime,loop,soundTransform);
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
            sndChannel = null;
         }
         if(sndChannel == null)
         {
            return null;
         }
         var sndEffect:§0"M§ = new §0"M§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§<#3§);
         if(this.§]l§ == 0)
         {
            sndEffect.§`!x§();
         }
         this.§3#4§.push(sndEffect);
         return sndEffect;
      }
      
      private function §<#3§(param1:Event) : void
      {
         var _loc3_:Vector.<§0"M§> = null;
         var _loc4_:§0"M§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§0"M§ = §0"M§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§<#3§);
         if(this.§3#4§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§3#4§.splice(this.§3#4§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §["z§() : Boolean
      {
         return this.§3#4§.length > 0;
      }
      
      public function §!#,§() : void
      {
         var _loc1_:§0"M§ = null;
         while(this.§3#4§.length > 0)
         {
            _loc1_ = this.§3#4§[0];
            _loc1_.§ "R§();
         }
      }
      
      public function §>"<§() : void
      {
         var _loc1_:§0"M§ = null;
         this.§]l§ = 0;
         for each(_loc1_ in this.§3#4§)
         {
            _loc1_.§`!x§();
         }
      }
      
      public function §4&§() : void
      {
         var _loc1_:§0"M§ = null;
         this.§]l§ = this.§ q§;
         for each(_loc1_ in this.§3#4§)
         {
            _loc1_.§7"j§();
         }
      }
      
      public function §0"6§(param1:String) : §0"M§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3#4§.length)
         {
            if(§0"M§(this.§3#4§[_loc2_]).id == param1)
            {
               return §0"M§(this.§3#4§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
