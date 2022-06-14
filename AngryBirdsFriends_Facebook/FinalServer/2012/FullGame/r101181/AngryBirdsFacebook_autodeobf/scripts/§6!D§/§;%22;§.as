package §6!D§
{
   import §]!>§.§1"%§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §;";§ extends EventDispatcher
   {
       
      
      private var §;!k§:String = "";
      
      private var §&t§:String;
      
      private var § !4§:URLLoader;
      
      private var §[!C§:Dictionary;
      
      private var §>!j§:String = null;
      
      private var §#!]§:String = null;
      
      private var §;!g§:String = null;
      
      private var §9#§:Boolean;
      
      private var §[O§:§1"%§;
      
      private var § !@§:§0Y§;
      
      private var §5!t§:Vector.<§0Y§>;
      
      private var §%8§:String = "pak";
      
      private var §6N§:Boolean = true;
      
      private var §9!B§:int = 1;
      
      public function §;";§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§[!C§ = new Dictionary();
         this.§5!t§ = new Vector.<§0Y§>();
         super();
         this.§;!k§ = param2;
         this.§&t§ = param1;
         this.§6N§ = param3;
         this.§9!B§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §0Y§
      {
         return this.§ !@§;
      }
      
      public function §9!c§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§[!C§[param1] != null;
      }
      
      private function §'C§(param1:String) : Boolean
      {
         var _loc3_:§0Y§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!t§.length)
         {
            _loc3_ = this.§5!t§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§ !@§ = _loc3_;
               this.§>!j§ = param1;
               this.§5!t§.splice(_loc2_,1);
               this.§5!t§.unshift(this.§ !@§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §!!_§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§6I§())
         {
            if(!this.§^!%§())
            {
               this.§;!g§ = param1;
               return;
            }
         }
         if(this.§9!c§(param1))
         {
            this.§'C§(param1);
            if(param1 == this.§>!j§ || !this.§6N§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§0!p§(param1,false);
            }
         }
         else
         {
            this.§0"<§(param1);
         }
      }
      
      private function §0"<§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§;!k§ != null && this.§;!k§.length > 0)
         {
            _loc2_ = "?version=" + this.§;!k§;
         }
         this.§#!]§ = param1;
         this.§ !4§ = new URLLoader();
         this.§ !4§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§ !4§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§ !4§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ !4§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ !4§.load(new URLRequest(this.§&t§ + "packages/" + param1 + "." + this.§%8§ + _loc2_));
      }
      
      private function §6I§() : Boolean
      {
         return this.§ !4§ || this.§9#§;
      }
      
      private function §^!%§() : Boolean
      {
         if(this.§ !4§)
         {
            this.§ !4§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§ !4§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§ !4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§ !4§.close();
            this.§ !4§ = null;
         }
         if(this.§9#§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§ !4§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§ !4§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ !4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[!C§[this.§#!]§] = this.§ !4§.data;
         this.§ !4§ = null;
         this.§0!p§(this.§#!]§,true);
      }
      
      private function §0!p§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§0Y§ = null;
         this.§9#§ = true;
         this.§#!]§ = param1;
         while(this.§5!t§.length >= this.§9!B§)
         {
            _loc3_ = this.§5!t§.pop();
            _loc3_.dispose();
         }
         if(this.§[O§)
         {
            this.§[O§.dispose();
         }
         this.§ !@§ = new §0Y§(param1);
         this.§5!t§.unshift(this.§ !@§);
         this.§[O§ = new §1"%§();
         this.§[O§.addEventListener(Event.COMPLETE,this.§!M§);
         this.§[O§.§,!T§(this.§[!C§[this.§#!]§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§ !4§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§ !4§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ !4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ !4§.close();
         this.§ !4§ = null;
         this.§#!]§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §!M§(param1:Event) : void
      {
         this.§9#§ = false;
         this.§[O§.removeEventListener(Event.COMPLETE,this.§!M§);
         if(this.§;!g§)
         {
            this.§!!_§(this.§;!g§);
            this.§;!g§ = null;
            return;
         }
         var _loc2_:int = this.§[O§.§1S§.§2!l§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ !@§.§0!g§(this.§[O§.§1S§.§59§(_loc3_));
            _loc3_++;
         }
         this.§9!F§();
      }
      
      public function §9!F§() : void
      {
         if(this.§6I§() || this.§[O§ == null)
         {
            return;
         }
         if(this.§ !@§.§9!F§())
         {
            this.§[O§.dispose();
            this.§[O§ = null;
            this.§>!j§ = this.§#!]§;
            this.§#!]§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
