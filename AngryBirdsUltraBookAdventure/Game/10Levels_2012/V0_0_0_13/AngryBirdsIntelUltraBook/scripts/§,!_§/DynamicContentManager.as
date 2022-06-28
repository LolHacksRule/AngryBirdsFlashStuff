package §,!_§
{
   import §=]§.PackageManager;
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
       
      
      private var §-!C§:String = "";
      
      private var §+U§:String;
      
      private var §#!c§:URLLoader;
      
      private var §0M§:Dictionary;
      
      private var §6!C§:String = null;
      
      private var §>!i§:String = null;
      
      private var §@j§:String = null;
      
      private var §^!f§:Boolean;
      
      private var §8!V§:PackageManager;
      
      private var §6! §:TextureManager;
      
      private var §&C§:Vector.<TextureManager>;
      
      private var §00§:String = "pak";
      
      private var §[!N§:Boolean = true;
      
      private var §4C§:int = 1;
      
      public function DynamicContentManager(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§0M§ = new Dictionary();
         this.§&C§ = new Vector.<TextureManager>();
         super();
         this.§-!C§ = param2;
         this.§+U§ = param1;
         this.§[!N§ = param3;
         this.§4C§ = Math.max(1,param4);
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§6! §;
      }
      
      public function §^!^§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§0M§[param1] != null;
      }
      
      private function §0!I§(param1:String) : Boolean
      {
         var _loc3_:TextureManager = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&C§.length)
         {
            _loc3_ = this.§&C§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§6! § = _loc3_;
               this.§6!C§ = param1;
               this.§&C§.splice(_loc2_,1);
               this.§&C§.unshift(this.§6! §);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §'m§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§5!W§())
         {
            if(!this.§]k§())
            {
               this.§@j§ = param1;
               return;
            }
         }
         if(this.§^!^§(param1))
         {
            this.§0!I§(param1);
            if(param1 == this.§6!C§ || !this.§[!N§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§&d§(param1,false);
            }
         }
         else
         {
            this.§,!?§(param1);
         }
      }
      
      private function §,!?§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§-!C§ != null && this.§-!C§.length > 0)
         {
            _loc2_ = "?version=" + this.§-!C§;
         }
         this.§>!i§ = param1;
         this.§#!c§ = new URLLoader();
         this.§#!c§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§#!c§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§#!c§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§#!c§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§#!c§.load(new URLRequest(this.§+U§ + "packages/" + param1 + "." + this.§00§ + _loc2_));
      }
      
      private function §5!W§() : Boolean
      {
         return this.§#!c§ || this.§^!f§;
      }
      
      private function §]k§() : Boolean
      {
         if(this.§#!c§)
         {
            this.§#!c§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§#!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§#!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§#!c§.close();
            this.§#!c§ = null;
         }
         if(this.§^!f§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§#!c§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§#!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§#!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§0M§[this.§>!i§] = this.§#!c§.data;
         this.§#!c§ = null;
         this.§&d§(this.§>!i§,true);
      }
      
      private function §&d§(param1:String, param2:Boolean) : void
      {
         var _loc3_:TextureManager = null;
         this.§^!f§ = true;
         this.§>!i§ = param1;
         while(this.§&C§.length >= this.§4C§)
         {
            _loc3_ = this.§&C§.pop();
            _loc3_.dispose();
         }
         if(this.§8!V§)
         {
            this.§8!V§.dispose();
         }
         this.§6! § = new TextureManager(param1);
         this.§&C§.unshift(this.§6! §);
         this.§8!V§ = new PackageManager();
         this.§8!V§.addEventListener(Event.COMPLETE,this.§3!=§);
         this.§8!V§.§'#§(this.§0M§[this.§>!i§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§#!c§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§#!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§#!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§#!c§.close();
         this.§#!c§ = null;
         this.§>!i§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §3!=§(param1:Event) : void
      {
         this.§^!f§ = false;
         this.§8!V§.removeEventListener(Event.COMPLETE,this.§3!=§);
         if(this.§@j§)
         {
            this.§'m§(this.§@j§);
            this.§@j§ = null;
            return;
         }
         var _loc2_:int = this.§8!V§.§`!_§.§1t§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§6! §.§,!j§(this.§8!V§.§`!_§.§6!#§(_loc3_));
            _loc3_++;
         }
         this.§0k§();
      }
      
      public function §0k§() : void
      {
         if(this.§5!W§() || this.§8!V§ == null)
         {
            return;
         }
         if(this.§6! §.§0k§())
         {
            this.§8!V§.dispose();
            this.§8!V§ = null;
            this.§6!C§ = this.§>!i§;
            this.§>!i§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
