package §1n§
{
   import §!%§.§=0§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §try § extends EventDispatcher
   {
       
      
      private var §!!1§:String = "";
      
      private var §5!C§:String;
      
      private var §3!!§:URLLoader;
      
      private var §22§:Dictionary;
      
      private var §4V§:String = null;
      
      private var §6O§:String = null;
      
      private var §-8§:String = null;
      
      private var §&!-§:Boolean;
      
      private var §0!9§:§=0§;
      
      private var §1y§:§5#§;
      
      private var §#! §:Vector.<§5#§>;
      
      private var §@!B§:String = "pak";
      
      private var §@B§:Boolean = true;
      
      private var §5!#§:int = 1;
      
      public function §try §(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§22§ = new Dictionary();
         this.§#! § = new Vector.<§5#§>();
         super();
         this.§!!1§ = param2;
         this.§5!C§ = param1;
         this.§@B§ = param3;
         this.§5!#§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §5#§
      {
         return this.§1y§;
      }
      
      public function §@L§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§22§[param1] != null;
      }
      
      private function §7Z§(param1:String) : Boolean
      {
         var _loc3_:§5#§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#! §.length)
         {
            _loc3_ = this.§#! §[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§1y§ = _loc3_;
               this.§4V§ = param1;
               this.§#! §.splice(_loc2_,1);
               this.§#! §.unshift(this.§1y§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §'[§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§%L§())
         {
            if(!this.§!I§())
            {
               this.§-8§ = param1;
               return;
            }
         }
         if(this.§@L§(param1))
         {
            this.§7Z§(param1);
            if(param1 == this.§4V§ || !this.§@B§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§@+§(param1,false);
            }
         }
         else
         {
            this.§8!;§(param1);
         }
      }
      
      private function §8!;§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§!!1§ != null && this.§!!1§.length > 0)
         {
            _loc2_ = "?version=" + this.§!!1§;
         }
         this.§6O§ = param1;
         this.§3!!§ = new URLLoader();
         this.§3!!§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§3!!§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§3!!§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§3!!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§3!!§.load(new URLRequest(this.§5!C§ + "packages/" + param1 + "." + this.§@!B§ + _loc2_));
      }
      
      private function §%L§() : Boolean
      {
         return this.§3!!§ || this.§&!-§;
      }
      
      private function §!I§() : Boolean
      {
         if(this.§3!!§)
         {
            this.§3!!§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§3!!§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§3!!§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§3!!§.close();
            this.§3!!§ = null;
         }
         if(this.§&!-§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§3!!§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§3!!§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§3!!§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§22§[this.§6O§] = this.§3!!§.data;
         this.§3!!§ = null;
         this.§@+§(this.§6O§,true);
      }
      
      private function §@+§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§5#§ = null;
         this.§&!-§ = true;
         this.§6O§ = param1;
         while(this.§#! §.length >= this.§5!#§)
         {
            _loc3_ = this.§#! §.pop();
            _loc3_.dispose();
         }
         if(this.§0!9§)
         {
            this.§0!9§.dispose();
         }
         this.§1y§ = new §5#§(param1);
         this.§#! §.unshift(this.§1y§);
         this.§0!9§ = new §=0§();
         this.§0!9§.addEventListener(Event.COMPLETE,this.§#!3§);
         this.§0!9§.§6=§(this.§22§[this.§6O§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§3!!§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§3!!§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§3!!§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§3!!§.close();
         this.§3!!§ = null;
         this.§6O§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §#!3§(param1:Event) : void
      {
         this.§&!-§ = false;
         this.§0!9§.removeEventListener(Event.COMPLETE,this.§#!3§);
         if(this.§-8§)
         {
            this.§'[§(this.§-8§);
            this.§-8§ = null;
            return;
         }
         var _loc2_:int = this.§0!9§.§->§.§0!>§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§1y§.§5§(this.§0!9§.§->§.§5&§(_loc3_));
            _loc3_++;
         }
         this.§&!%§();
      }
      
      public function §&!%§() : void
      {
         if(this.§%L§() || this.§0!9§ == null)
         {
            return;
         }
         if(this.§1y§.§&!%§())
         {
            this.§0!9§.dispose();
            this.§0!9§ = null;
            this.§4V§ = this.§6O§;
            this.§6O§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
