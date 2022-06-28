package §,!7§
{
   import §^F§.PackageManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class DynamicContentManager extends EventDispatcher
   {
       
      
      private var §#!B§:String = "";
      
      private var §,!'§:String;
      
      private var §%@§:URLLoader;
      
      private var §+7§:Dictionary;
      
      private var §>F§:String = null;
      
      private var §[!a§:String = null;
      
      private var §?!Q§:String = null;
      
      private var §?+§:Boolean;
      
      private var §^!d§:PackageManager;
      
      private var §7!`§:TextureManager;
      
      private var §+!P§:Vector.<TextureManager>;
      
      private var §?!%§:String = "pak";
      
      private var §4`§:Boolean = true;
      
      private var §%o§:int = 1;
      
      public function DynamicContentManager(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§+7§ = new Dictionary();
         this.§+!P§ = new Vector.<TextureManager>();
         super();
         this.§#!B§ = param2;
         this.§,!'§ = param1;
         this.§4`§ = param3;
         this.§%o§ = Math.max(1,param4);
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§7!`§;
      }
      
      public function §"!Y§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§+7§[param1] != null;
      }
      
      private function §<!O§(param1:String) : Boolean
      {
         var _loc3_:TextureManager = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!P§.length)
         {
            _loc3_ = this.§+!P§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§7!`§ = _loc3_;
               this.§>F§ = param1;
               this.§+!P§.splice(_loc2_,1);
               this.§+!P§.unshift(this.§7!`§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §&!&§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§#]§())
         {
            if(!this.§[M§())
            {
               this.§?!Q§ = param1;
               return;
            }
         }
         if(this.§"!Y§(param1))
         {
            this.§<!O§(param1);
            if(param1 == this.§>F§ || !this.§4`§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§^8§(param1,false);
            }
         }
         else
         {
            this.§-h§(param1);
         }
      }
      
      private function §-h§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§#!B§ != null && this.§#!B§.length > 0)
         {
            _loc2_ = "?version=" + this.§#!B§;
         }
         this.§[!a§ = param1;
         this.§%@§ = new URLLoader();
         this.§%@§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§%@§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§%@§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§%@§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§%@§.load(new URLRequest(this.§,!'§ + "packages/" + param1 + "." + this.§?!%§ + _loc2_));
      }
      
      private function §#]§() : Boolean
      {
         return this.§%@§ || this.§?+§;
      }
      
      private function §[M§() : Boolean
      {
         if(this.§%@§)
         {
            this.§%@§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§%@§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§%@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§%@§.close();
            this.§%@§ = null;
         }
         if(this.§?+§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§%@§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§%@§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§%@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+7§[this.§[!a§] = this.§%@§.data;
         this.§%@§ = null;
         this.§^8§(this.§[!a§,true);
      }
      
      private function §^8§(param1:String, param2:Boolean) : void
      {
         var _loc3_:TextureManager = null;
         this.§?+§ = true;
         this.§[!a§ = param1;
         while(this.§+!P§.length >= this.§%o§)
         {
            _loc3_ = this.§+!P§.pop();
            _loc3_.dispose();
         }
         if(this.§^!d§)
         {
            this.§^!d§.dispose();
         }
         this.§7!`§ = new TextureManager(param1);
         this.§+!P§.unshift(this.§7!`§);
         this.§^!d§ = new PackageManager();
         this.§^!d§.addEventListener(Event.COMPLETE,this.§53§);
         this.§^!d§.§"Z§(this.§+7§[this.§[!a§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§%@§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§%@§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§%@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§%@§.close();
         this.§%@§ = null;
         this.§[!a§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §53§(param1:Event) : void
      {
         this.§?+§ = false;
         this.§^!d§.removeEventListener(Event.COMPLETE,this.§53§);
         if(this.§?!Q§)
         {
            this.§&!&§(this.§?!Q§);
            this.§?!Q§ = null;
            return;
         }
         var _loc2_:int = this.§^!d§.§@l§.§9q§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7!`§.§-M§(this.§^!d§.§@l§.§+t§(_loc3_));
            _loc3_++;
         }
         this.§!4§();
      }
      
      public function §!4§() : void
      {
         if(this.§#]§() || this.§^!d§ == null)
         {
            return;
         }
         if(this.§7!`§.§!4§())
         {
            this.§^!d§.dispose();
            this.§^!d§ = null;
            this.§>F§ = this.§[!a§;
            this.§[!a§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
