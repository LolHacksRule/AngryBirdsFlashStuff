package §+!]§
{
   import §5V§.§2I§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §7'§ extends EventDispatcher
   {
       
      
      private var §1!;§:String = "";
      
      private var §4a§:String;
      
      private var §8@§:URLLoader;
      
      private var §3<§:Dictionary;
      
      private var §-!X§:String = null;
      
      private var §">§:String = null;
      
      private var §<-§:String = null;
      
      private var §1f§:Boolean;
      
      private var §"a§:§2I§;
      
      private var §[G§:§!,§;
      
      private var §4=§:Vector.<§!,§>;
      
      private var §1@§:String = "pak";
      
      private var §5p§:Boolean = true;
      
      private var §#!D§:int = 1;
      
      public function §7'§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§3<§ = new Dictionary();
         this.§4=§ = new Vector.<§!,§>();
         super();
         this.§1!;§ = param2;
         this.§4a§ = param1;
         this.§5p§ = param3;
         this.§#!D§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §!,§
      {
         return this.§[G§;
      }
      
      public function §63§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§3<§[param1] != null;
      }
      
      private function §]!e§(param1:String) : Boolean
      {
         var _loc3_:§!,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4=§.length)
         {
            _loc3_ = this.§4=§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§[G§ = _loc3_;
               this.§-!X§ = param1;
               this.§4=§.splice(_loc2_,1);
               this.§4=§.unshift(this.§[G§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §]^§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§9!=§())
         {
            if(!this.§5!=§())
            {
               this.§<-§ = param1;
               return;
            }
         }
         if(this.§63§(param1))
         {
            this.§]!e§(param1);
            if(param1 == this.§-!X§ || !this.§5p§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§4!=§(param1,false);
            }
         }
         else
         {
            this.§]!+§(param1);
         }
      }
      
      private function §]!+§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§1!;§ != null && this.§1!;§.length > 0)
         {
            _loc2_ = "?version=" + this.§1!;§;
         }
         this.§">§ = param1;
         this.§8@§ = new URLLoader();
         this.§8@§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§8@§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§8@§.addEventListener(IOErrorEvent.IO_ERROR,this.§5U§);
         this.§8@§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5U§);
         this.§8@§.load(new URLRequest(this.§4a§ + "packages/" + param1 + "." + this.§1@§ + _loc2_));
      }
      
      private function §9!=§() : Boolean
      {
         return this.§8@§ || this.§1f§;
      }
      
      private function §5!=§() : Boolean
      {
         if(this.§8@§)
         {
            this.§8@§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§8@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5U§);
            this.§8@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5U§);
            this.§8@§.close();
            this.§8@§ = null;
         }
         if(this.§1f§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§8@§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§8@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5U§);
         this.§8@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5U§);
         this.§3<§[this.§">§] = this.§8@§.data;
         this.§8@§ = null;
         this.§4!=§(this.§">§,true);
      }
      
      private function §4!=§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§!,§ = null;
         this.§1f§ = true;
         this.§">§ = param1;
         while(this.§4=§.length >= this.§#!D§)
         {
            _loc3_ = this.§4=§.pop();
            _loc3_.dispose();
         }
         if(this.§"a§)
         {
            this.§"a§.dispose();
         }
         this.§[G§ = new §!,§(param1);
         this.§4=§.unshift(this.§[G§);
         this.§"a§ = new §2I§();
         this.§"a§.addEventListener(Event.COMPLETE,this.§3!P§);
         this.§"a§.§0!Q§(this.§3<§[this.§">§],param2);
      }
      
      private function §5U§(param1:Event) : void
      {
         this.§8@§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§8@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5U§);
         this.§8@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5U§);
         this.§8@§.close();
         this.§8@§ = null;
         this.§">§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §3!P§(param1:Event) : void
      {
         this.§1f§ = false;
         this.§"a§.removeEventListener(Event.COMPLETE,this.§3!P§);
         if(this.§<-§)
         {
            this.§]^§(this.§<-§);
            this.§<-§ = null;
            return;
         }
         var _loc2_:int = this.§"a§.§?6§.§5!6§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§[G§.§77§(this.§"a§.§?6§.§9Z§(_loc3_));
            _loc3_++;
         }
         this.§;W§();
      }
      
      public function §;W§() : void
      {
         if(this.§9!=§() || this.§"a§ == null)
         {
            return;
         }
         if(this.§[G§.§;W§())
         {
            this.§"a§.dispose();
            this.§"a§ = null;
            this.§-!X§ = this.§">§;
            this.§">§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
