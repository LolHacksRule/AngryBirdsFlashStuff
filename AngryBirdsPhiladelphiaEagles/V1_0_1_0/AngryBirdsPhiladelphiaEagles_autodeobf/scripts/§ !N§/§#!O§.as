package § !N§
{
   import §4!D§.§2H§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §#!O§ extends EventDispatcher
   {
       
      
      private var §^!J§:String = "";
      
      private var §6i§:String;
      
      private var §9>§:URLLoader;
      
      private var §1!7§:Dictionary;
      
      private var §63§:String = null;
      
      private var § set§:String = null;
      
      private var §8!N§:String = null;
      
      private var §^u§:Boolean;
      
      private var §[B§:§2H§;
      
      private var §<!-§:§`v§;
      
      private var §9!=§:Vector.<§`v§>;
      
      private var §0J§:String = "pak";
      
      private var §,!7§:Boolean = true;
      
      private var §9^§:int = 1;
      
      public function §#!O§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§1!7§ = new Dictionary();
         this.§9!=§ = new Vector.<§`v§>();
         super();
         this.§^!J§ = param2;
         this.§6i§ = param1;
         this.§,!7§ = param3;
         this.§9^§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §`v§
      {
         return this.§<!-§;
      }
      
      public function §<n§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§1!7§[param1] != null;
      }
      
      private function §#4§(param1:String) : Boolean
      {
         var _loc3_:§`v§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!=§.length)
         {
            _loc3_ = this.§9!=§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§<!-§ = _loc3_;
               this.§63§ = param1;
               this.§9!=§.splice(_loc2_,1);
               this.§9!=§.unshift(this.§<!-§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §;<§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§]m§())
         {
            if(!this.§!^§())
            {
               this.§8!N§ = param1;
               return;
            }
         }
         if(this.§<n§(param1))
         {
            this.§#4§(param1);
            if(param1 == this.§63§ || !this.§,!7§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§=$§(param1,false);
            }
         }
         else
         {
            this.§+d§(param1);
         }
      }
      
      private function §+d§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§^!J§ != null && this.§^!J§.length > 0)
         {
            _loc2_ = "?version=" + this.§^!J§;
         }
         this.§ set§ = param1;
         this.§9>§ = new URLLoader();
         this.§9>§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§9>§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§9>§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§9>§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§9>§.load(new URLRequest(this.§6i§ + "packages/" + param1 + "." + this.§0J§ + _loc2_));
      }
      
      private function §]m§() : Boolean
      {
         return this.§9>§ || this.§^u§;
      }
      
      private function §!^§() : Boolean
      {
         if(this.§9>§)
         {
            this.§9>§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§9>§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§9>§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§9>§.close();
            this.§9>§ = null;
         }
         if(this.§^u§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§9>§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§9>§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§9>§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§1!7§[this.§ set§] = this.§9>§.data;
         this.§9>§ = null;
         this.§=$§(this.§ set§,true);
      }
      
      private function §=$§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§`v§ = null;
         this.§^u§ = true;
         this.§ set§ = param1;
         while(this.§9!=§.length >= this.§9^§)
         {
            _loc3_ = this.§9!=§.pop();
            _loc3_.dispose();
         }
         if(this.§[B§)
         {
            this.§[B§.dispose();
         }
         this.§<!-§ = new §`v§(param1);
         this.§9!=§.unshift(this.§<!-§);
         this.§[B§ = new §2H§();
         this.§[B§.addEventListener(Event.COMPLETE,this.§`k§);
         this.§[B§.§"!N§(this.§1!7§[this.§ set§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§9>§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§9>§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§9>§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§9>§.close();
         this.§9>§ = null;
         this.§ set§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §`k§(param1:Event) : void
      {
         this.§^u§ = false;
         this.§[B§.removeEventListener(Event.COMPLETE,this.§`k§);
         if(this.§8!N§)
         {
            this.§;<§(this.§8!N§);
            this.§8!N§ = null;
            return;
         }
         var _loc2_:int = this.§[B§.§0n§.§=!,§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§<!-§.§#p§(this.§[B§.§0n§.§#K§(_loc3_));
            _loc3_++;
         }
         this.§=U§();
      }
      
      public function §=U§() : void
      {
         if(this.§]m§() || this.§[B§ == null)
         {
            return;
         }
         if(this.§<!-§.§=U§())
         {
            this.§[B§.dispose();
            this.§[B§ = null;
            this.§63§ = this.§ set§;
            this.§ set§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
