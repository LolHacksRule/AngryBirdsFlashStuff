package §^!Y§
{
   import §+K§.§7$§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §]e§ extends EventDispatcher
   {
       
      
      private var §1q§:String = "";
      
      private var §<!0§:String;
      
      private var §[K§:URLLoader;
      
      private var §[k§:Dictionary;
      
      private var §=!;§:String = null;
      
      private var § !e§:String = null;
      
      private var §+y§:String = null;
      
      private var §=q§:Boolean;
      
      private var §#I§:§7$§;
      
      private var §+]§:§'R§;
      
      private var §&5§:Vector.<§'R§>;
      
      private var §4g§:String = "pak";
      
      private var set:Boolean = true;
      
      private var §#J§:int = 1;
      
      public function §]e§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§[k§ = new Dictionary();
         this.§&5§ = new Vector.<§'R§>();
         super();
         this.§1q§ = param2;
         this.§<!0§ = param1;
         this.set = param3;
         this.§#J§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §'R§
      {
         return this.§+]§;
      }
      
      public function §7!6§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§[k§[param1] != null;
      }
      
      private function §,! §(param1:String) : Boolean
      {
         var _loc3_:§'R§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&5§.length)
         {
            _loc3_ = this.§&5§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§+]§ = _loc3_;
               this.§=!;§ = param1;
               this.§&5§.splice(_loc2_,1);
               this.§&5§.unshift(this.§+]§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §]6§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§@B§())
         {
            if(!this.§4!P§())
            {
               this.§+y§ = param1;
               return;
            }
         }
         if(this.§7!6§(param1))
         {
            this.§,! §(param1);
            if(param1 == this.§=!;§ || !this.set)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§]A§(param1,false);
            }
         }
         else
         {
            this.§=!E§(param1);
         }
      }
      
      private function §=!E§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§1q§ != null && this.§1q§.length > 0)
         {
            _loc2_ = "?version=" + this.§1q§;
         }
         this.§ !e§ = param1;
         this.§[K§ = new URLLoader();
         this.§[K§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§[K§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§[K§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[K§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[K§.load(new URLRequest(this.§<!0§ + "packages/" + param1 + "." + this.§4g§ + _loc2_));
      }
      
      private function §@B§() : Boolean
      {
         return this.§[K§ || this.§=q§;
      }
      
      private function §4!P§() : Boolean
      {
         if(this.§[K§)
         {
            this.§[K§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§[K§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§[K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§[K§.close();
            this.§[K§ = null;
         }
         if(this.§=q§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§[K§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§[K§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[k§[this.§ !e§] = this.§[K§.data;
         this.§[K§ = null;
         this.§]A§(this.§ !e§,true);
      }
      
      private function §]A§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§'R§ = null;
         this.§=q§ = true;
         this.§ !e§ = param1;
         while(this.§&5§.length >= this.§#J§)
         {
            _loc3_ = this.§&5§.pop();
            _loc3_.dispose();
         }
         if(this.§#I§)
         {
            this.§#I§.dispose();
         }
         this.§+]§ = new §'R§(param1);
         this.§&5§.unshift(this.§+]§);
         this.§#I§ = new §7$§();
         this.§#I§.addEventListener(Event.COMPLETE,this.§>!v§);
         this.§#I§.§3O§(this.§[k§[this.§ !e§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§[K§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§[K§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[K§.close();
         this.§[K§ = null;
         this.§ !e§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §>!v§(param1:Event) : void
      {
         this.§=q§ = false;
         this.§#I§.removeEventListener(Event.COMPLETE,this.§>!v§);
         if(this.§+y§)
         {
            this.§]6§(this.§+y§);
            this.§+y§ = null;
            return;
         }
         var _loc2_:int = this.§#I§.§,!U§.§]t§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§+]§.§8!k§(this.§#I§.§,!U§.§0!>§(_loc3_));
            _loc3_++;
         }
         this.§!>§();
      }
      
      public function §!>§() : void
      {
         if(this.§@B§() || this.§#I§ == null)
         {
            return;
         }
         if(this.§+]§.§!>§())
         {
            this.§#I§.dispose();
            this.§#I§ = null;
            this.§=!;§ = this.§ !e§;
            this.§ !e§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
