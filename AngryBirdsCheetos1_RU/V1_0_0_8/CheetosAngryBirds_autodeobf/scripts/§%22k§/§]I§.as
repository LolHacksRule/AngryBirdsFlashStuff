package §"k§
{
   import §+!O§.§^o§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §]I§ extends EventDispatcher
   {
       
      
      private var §@!P§:String = "";
      
      private var §=9§:String;
      
      private var §9%§:URLLoader;
      
      private var §8!6§:Dictionary;
      
      private var §8A§:String = null;
      
      private var §>!S§:String = null;
      
      private var §3i§:String = null;
      
      private var §"!&§:Boolean;
      
      private var § C§:§^o§;
      
      private var §^L§:§02§;
      
      private var §1!@§:Vector.<§02§>;
      
      private var §#!S§:String = "pak";
      
      private var §%!<§:Boolean = true;
      
      private var §'7§:int = 1;
      
      public function §]I§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§8!6§ = new Dictionary();
         this.§1!@§ = new Vector.<§02§>();
         super();
         this.§@!P§ = param2;
         this.§=9§ = param1;
         this.§%!<§ = param3;
         this.§'7§ = Math.max(1,param4);
      }
      
      public function get §>?§() : §02§
      {
         return this.§^L§;
      }
      
      public function §&i§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§8!6§[param1] != null;
      }
      
      private function §?!?§(param1:String) : Boolean
      {
         var _loc3_:§02§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!@§.length)
         {
            _loc3_ = this.§1!@§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§^L§ = _loc3_;
               this.§8A§ = param1;
               this.§1!@§.splice(_loc2_,1);
               this.§1!@§.unshift(this.§^L§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §5!3§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§#!1§())
         {
            if(!this.§0!?§())
            {
               this.§3i§ = param1;
               return;
            }
         }
         if(this.§&i§(param1))
         {
            this.§?!?§(param1);
            if(param1 == this.§8A§ || !this.§%!<§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§>!J§(param1,false);
            }
         }
         else
         {
            this.§`+§(param1);
         }
      }
      
      private function §`+§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§@!P§ != null && this.§@!P§.length > 0)
         {
            _loc2_ = "?version=" + this.§@!P§;
         }
         this.§>!S§ = param1;
         this.§9%§ = new URLLoader();
         this.§9%§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§9%§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§9%§.addEventListener(IOErrorEvent.IO_ERROR,this.§4!+§);
         this.§9%§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!+§);
         this.§9%§.load(new URLRequest(this.§=9§ + "packages/" + param1 + "." + this.§#!S§ + _loc2_));
      }
      
      private function §#!1§() : Boolean
      {
         return this.§9%§ || this.§"!&§;
      }
      
      private function §0!?§() : Boolean
      {
         if(this.§9%§)
         {
            this.§9%§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§9%§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4!+§);
            this.§9%§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!+§);
            this.§9%§.close();
            this.§9%§ = null;
         }
         if(this.§"!&§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§9%§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§9%§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4!+§);
         this.§9%§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!+§);
         this.§8!6§[this.§>!S§] = this.§9%§.data;
         this.§9%§ = null;
         this.§>!J§(this.§>!S§,true);
      }
      
      private function §>!J§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§02§ = null;
         this.§"!&§ = true;
         this.§>!S§ = param1;
         while(this.§1!@§.length >= this.§'7§)
         {
            _loc3_ = this.§1!@§.pop();
            _loc3_.dispose();
         }
         if(this.§ C§)
         {
            this.§ C§.dispose();
         }
         this.§^L§ = new §02§(param1);
         this.§1!@§.unshift(this.§^L§);
         this.§ C§ = new §^o§();
         this.§ C§.addEventListener(Event.COMPLETE,this.§6Q§);
         this.§ C§.§#P§(this.§8!6§[this.§>!S§],param2);
      }
      
      private function §4!+§(param1:Event) : void
      {
         this.§9%§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§9%§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4!+§);
         this.§9%§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!+§);
         this.§9%§.close();
         this.§9%§ = null;
         this.§>!S§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §6Q§(param1:Event) : void
      {
         this.§"!&§ = false;
         this.§ C§.removeEventListener(Event.COMPLETE,this.§6Q§);
         if(this.§3i§)
         {
            this.§5!3§(this.§3i§);
            this.§3i§ = null;
            return;
         }
         var _loc2_:int = this.§ C§.§3!4§.§0<§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^L§.§3$§(this.§ C§.§3!4§.§[>§(_loc3_));
            _loc3_++;
         }
         this.§!2§();
      }
      
      public function §!2§() : void
      {
         if(this.§#!1§() || this.§ C§ == null)
         {
            return;
         }
         if(this.§^L§.§!2§())
         {
            this.§ C§.dispose();
            this.§ C§ = null;
            this.§8A§ = this.§>!S§;
            this.§>!S§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
