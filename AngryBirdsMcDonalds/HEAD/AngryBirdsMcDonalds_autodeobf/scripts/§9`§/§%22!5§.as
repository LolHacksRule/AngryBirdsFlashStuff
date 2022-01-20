package §9`§
{
   import §#a§.§ get§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §"!5§ extends EventDispatcher
   {
       
      
      private var §3y§:String = "";
      
      private var §`I§:String;
      
      private var §]!c§:URLLoader;
      
      private var §>3§:Dictionary;
      
      private var §;C§:String = null;
      
      private var §1!Y§:String = null;
      
      private var §&!B§:String = null;
      
      private var §&!a§:Boolean;
      
      private var §<!§:§ get§;
      
      private var §9k§:§#U§;
      
      private var § +§:Vector.<§#U§>;
      
      private var §8!4§:String = "pak";
      
      private var §-! §:Boolean = true;
      
      private var §4!i§:int = 1;
      
      public function §"!5§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§>3§ = new Dictionary();
         this.§ +§ = new Vector.<§#U§>();
         super();
         this.§3y§ = param2;
         this.§`I§ = param1;
         this.§-! § = param3;
         this.§4!i§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §#U§
      {
         return this.§9k§;
      }
      
      public function §?!5§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§>3§[param1] != null;
      }
      
      private function §-!5§(param1:String) : Boolean
      {
         var _loc3_:§#U§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ +§.length)
         {
            _loc3_ = this.§ +§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§9k§ = _loc3_;
               this.§;C§ = param1;
               this.§ +§.splice(_loc2_,1);
               this.§ +§.unshift(this.§9k§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §;! §(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§[%§())
         {
            if(!this.§0U§())
            {
               this.§&!B§ = param1;
               return;
            }
         }
         if(this.§?!5§(param1))
         {
            this.§-!5§(param1);
            if(param1 == this.§;C§ || !this.§-! §)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§[s§(param1,false);
            }
         }
         else
         {
            this.§5!"§(param1);
         }
      }
      
      private function §5!"§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§3y§ != null && this.§3y§.length > 0)
         {
            _loc2_ = "?version=" + this.§3y§;
         }
         this.§1!Y§ = param1;
         this.§]!c§ = new URLLoader();
         this.§]!c§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§]!c§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§]!c§.addEventListener(IOErrorEvent.IO_ERROR,this.§+Q§);
         this.§]!c§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+Q§);
         this.§]!c§.load(new URLRequest(this.§`I§ + "packages/" + param1 + "." + this.§8!4§ + _loc2_));
      }
      
      private function §[%§() : Boolean
      {
         return this.§]!c§ || this.§&!a§;
      }
      
      private function §0U§() : Boolean
      {
         if(this.§]!c§)
         {
            this.§]!c§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§]!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+Q§);
            this.§]!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+Q§);
            this.§]!c§.close();
            this.§]!c§ = null;
         }
         if(this.§&!a§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§]!c§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§]!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+Q§);
         this.§]!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+Q§);
         this.§>3§[this.§1!Y§] = this.§]!c§.data;
         this.§]!c§ = null;
         this.§[s§(this.§1!Y§,true);
      }
      
      private function §[s§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§#U§ = null;
         this.§&!a§ = true;
         this.§1!Y§ = param1;
         while(this.§ +§.length >= this.§4!i§)
         {
            _loc3_ = this.§ +§.pop();
            _loc3_.dispose();
         }
         if(this.§<!§)
         {
            this.§<!§.dispose();
         }
         this.§9k§ = new §#U§(param1);
         this.§ +§.unshift(this.§9k§);
         this.§<!§ = new § get§();
         this.§<!§.addEventListener(Event.COMPLETE,this.§+p§);
         this.§<!§.§#!0§(this.§>3§[this.§1!Y§],param2);
      }
      
      private function §+Q§(param1:Event) : void
      {
         this.§]!c§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§]!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+Q§);
         this.§]!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+Q§);
         this.§]!c§.close();
         this.§]!c§ = null;
         this.§1!Y§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §+p§(param1:Event) : void
      {
         this.§&!a§ = false;
         this.§<!§.removeEventListener(Event.COMPLETE,this.§+p§);
         if(this.§&!B§)
         {
            this.§;! §(this.§&!B§);
            this.§&!B§ = null;
            return;
         }
         var _loc2_:int = this.§<!§.§1!M§.§=N§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9k§.§7!2§(this.§<!§.§1!M§.§,!5§(_loc3_));
            _loc3_++;
         }
         this.§;!K§();
      }
      
      public function §;!K§() : void
      {
         if(this.§[%§() || this.§<!§ == null)
         {
            return;
         }
         if(this.§9k§.§;!K§())
         {
            this.§<!§.dispose();
            this.§<!§ = null;
            this.§;C§ = this.§1!Y§;
            this.§1!Y§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
