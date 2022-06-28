package §8!?§
{
   import §%L§.PackageManager;
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
       
      
      private var §#S§:String = "";
      
      private var §4!H§:String;
      
      private var §]]§:URLLoader;
      
      private var §;!N§:Dictionary;
      
      private var §0! §:String = null;
      
      private var §7!!§:String = null;
      
      private var §-'§:String = null;
      
      private var §>!5§:Boolean;
      
      private var §!W§:PackageManager;
      
      private var §`_§:TextureManager;
      
      private var §#!b§:Vector.<TextureManager>;
      
      private var §9!Q§:String = "pak";
      
      private var §"!#§:Boolean = true;
      
      private var §3@§:int = 1;
      
      public function DynamicContentManager(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§;!N§ = new Dictionary();
         this.§#!b§ = new Vector.<TextureManager>();
         super();
         this.§#S§ = param2;
         this.§4!H§ = param1;
         this.§"!#§ = param3;
         this.§3@§ = Math.max(1,param4);
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§`_§;
      }
      
      public function §43§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§;!N§[param1] != null;
      }
      
      private function §['§(param1:String) : Boolean
      {
         var _loc3_:TextureManager = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!b§.length)
         {
            _loc3_ = this.§#!b§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§`_§ = _loc3_;
               this.§0! § = param1;
               this.§#!b§.splice(_loc2_,1);
               this.§#!b§.unshift(this.§`_§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §'!9§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§?,§())
         {
            if(!this.§0=§())
            {
               this.§-'§ = param1;
               return;
            }
         }
         if(this.§43§(param1))
         {
            this.§['§(param1);
            if(param1 == this.§0! § || !this.§"!#§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§>!U§(param1,false);
            }
         }
         else
         {
            this.§@W§(param1);
         }
      }
      
      private function §@W§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§#S§ != null && this.§#S§.length > 0)
         {
            _loc2_ = "?version=" + this.§#S§;
         }
         this.§7!!§ = param1;
         this.§]]§ = new URLLoader();
         this.§]]§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§]]§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§]]§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]]§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]]§.load(new URLRequest(this.§4!H§ + "packages/" + param1 + "." + this.§9!Q§ + _loc2_));
      }
      
      private function §?,§() : Boolean
      {
         return this.§]]§ || this.§>!5§;
      }
      
      private function §0=§() : Boolean
      {
         if(this.§]]§)
         {
            this.§]]§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§]]§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§]]§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§]]§.close();
            this.§]]§ = null;
         }
         if(this.§>!5§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§]]§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§]]§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]]§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§;!N§[this.§7!!§] = this.§]]§.data;
         this.§]]§ = null;
         this.§>!U§(this.§7!!§,true);
      }
      
      private function §>!U§(param1:String, param2:Boolean) : void
      {
         var _loc3_:TextureManager = null;
         this.§>!5§ = true;
         this.§7!!§ = param1;
         while(this.§#!b§.length >= this.§3@§)
         {
            _loc3_ = this.§#!b§.pop();
            _loc3_.dispose();
         }
         if(this.§!W§)
         {
            this.§!W§.dispose();
         }
         this.§`_§ = new TextureManager(param1);
         this.§#!b§.unshift(this.§`_§);
         this.§!W§ = new PackageManager();
         this.§!W§.addEventListener(Event.COMPLETE,this.§7! §);
         this.§!W§.§4S§(this.§;!N§[this.§7!!§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§]]§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§]]§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]]§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]]§.close();
         this.§]]§ = null;
         this.§7!!§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §7! §(param1:Event) : void
      {
         this.§>!5§ = false;
         this.§!W§.removeEventListener(Event.COMPLETE,this.§7! §);
         if(this.§-'§)
         {
            this.§'!9§(this.§-'§);
            this.§-'§ = null;
            return;
         }
         var _loc2_:int = this.§!W§.§`F§.§56§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§`_§.§2!M§(this.§!W§.§`F§.§!w§(_loc3_));
            _loc3_++;
         }
         this.§-t§();
      }
      
      public function §-t§() : void
      {
         if(this.§?,§() || this.§!W§ == null)
         {
            return;
         }
         if(this.§`_§.§-t§())
         {
            this.§!W§.dispose();
            this.§!W§ = null;
            this.§0! § = this.§7!!§;
            this.§7!!§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
