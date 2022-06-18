package §[n§
{
   import §0M§.§@2§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §%@§ extends EventDispatcher
   {
       
      
      private var §!! §:String = "";
      
      private var §6e§:String;
      
      private var §[!+§:URLLoader;
      
      private var §]!"§:Dictionary;
      
      private var §24§:String = null;
      
      private var §'!;§:String = null;
      
      private var §>g§:String = null;
      
      private var §52§:Boolean;
      
      private var §!E§:§@2§;
      
      private var §^s§:§?+§;
      
      private var §-a§:Vector.<§?+§>;
      
      private var §[!0§:String = "pak";
      
      private var §;a§:Boolean = true;
      
      private var §]e§:int = 1;
      
      public function §%@§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§]!"§ = new Dictionary();
         this.§-a§ = new Vector.<§?+§>();
         super();
         this.§!! § = param2;
         this.§6e§ = param1;
         this.§;a§ = param3;
         this.§]e§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §?+§
      {
         return this.§^s§;
      }
      
      public function §'!!§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§]!"§[param1] != null;
      }
      
      private function §,=§(param1:String) : Boolean
      {
         var _loc3_:§?+§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-a§.length)
         {
            _loc3_ = this.§-a§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§^s§ = _loc3_;
               this.§24§ = param1;
               this.§-a§.splice(_loc2_,1);
               this.§-a§.unshift(this.§^s§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §3_§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§-$§())
         {
            if(!this.§;F§())
            {
               this.§>g§ = param1;
               return;
            }
         }
         if(this.§'!!§(param1))
         {
            this.§,=§(param1);
            if(param1 == this.§24§ || !this.§;a§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§^!6§(param1,false);
            }
         }
         else
         {
            this.§]!@§(param1);
         }
      }
      
      private function §]!@§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§!! § != null && this.§!! §.length > 0)
         {
            _loc2_ = "?version=" + this.§!! §;
         }
         this.§'!;§ = param1;
         this.§[!+§ = new URLLoader();
         this.§[!+§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§[!+§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§[!+§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[!+§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[!+§.load(new URLRequest(this.§6e§ + "packages/" + param1 + "." + this.§[!0§ + _loc2_));
      }
      
      private function §-$§() : Boolean
      {
         return this.§[!+§ || this.§52§;
      }
      
      private function §;F§() : Boolean
      {
         if(this.§[!+§)
         {
            this.§[!+§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§[!+§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§[!+§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§[!+§.close();
            this.§[!+§ = null;
         }
         if(this.§52§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§[!+§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§[!+§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[!+§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]!"§[this.§'!;§] = this.§[!+§.data;
         this.§[!+§ = null;
         this.§^!6§(this.§'!;§,true);
      }
      
      private function §^!6§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§?+§ = null;
         this.§52§ = true;
         this.§'!;§ = param1;
         while(this.§-a§.length >= this.§]e§)
         {
            _loc3_ = this.§-a§.pop();
            _loc3_.dispose();
         }
         if(this.§!E§)
         {
            this.§!E§.dispose();
         }
         this.§^s§ = new §?+§(param1);
         this.§-a§.unshift(this.§^s§);
         this.§!E§ = new §@2§();
         this.§!E§.addEventListener(Event.COMPLETE,this.§4=§);
         this.§!E§.§3<§(this.§]!"§[this.§'!;§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§[!+§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§[!+§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[!+§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[!+§.close();
         this.§[!+§ = null;
         this.§'!;§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §4=§(param1:Event) : void
      {
         this.§52§ = false;
         this.§!E§.removeEventListener(Event.COMPLETE,this.§4=§);
         if(this.§>g§)
         {
            this.§3_§(this.§>g§);
            this.§>g§ = null;
            return;
         }
         var _loc2_:int = this.§!E§.§3!D§.§?!2§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^s§.§,J§(this.§!E§.§3!D§.§46§(_loc3_));
            _loc3_++;
         }
         this.§6M§();
      }
      
      public function §6M§() : void
      {
         if(this.§-$§() || this.§!E§ == null)
         {
            return;
         }
         if(this.§^s§.§6M§())
         {
            this.§!E§.dispose();
            this.§!E§ = null;
            this.§24§ = this.§'!;§;
            this.§'!;§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
