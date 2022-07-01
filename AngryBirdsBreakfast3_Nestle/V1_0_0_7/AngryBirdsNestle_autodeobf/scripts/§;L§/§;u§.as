package §;L§
{
   import §!P§.§5!1§;
   import §3@§.§4!m§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §;u§ extends EventDispatcher
   {
       
      
      private var §!!H§:String = "";
      
      protected var §&!n§:String;
      
      private var §4!G§:Dictionary;
      
      private var §@I§:Vector.<String>;
      
      private var §5?§:String = null;
      
      private var §,!6§:String = null;
      
      private var §<t§:Array;
      
      private var §>_§:String = null;
      
      private var §;"4§:Array;
      
      private var §;!G§:Array;
      
      private var §0!N§:Boolean;
      
      private var §@!v§:String = null;
      
      private var §[!b§:Array;
      
      private var § Q§:URLLoader;
      
      protected var §8!G§:§4!m§;
      
      protected var §'!2§:§"!X§;
      
      protected var §97§:§5!1§;
      
      protected var §6!o§:Vector.<§"!X§>;
      
      protected var §3d§:String = "pak";
      
      private var §7![§:Boolean = true;
      
      private var §#!k§:int = 1;
      
      public function §;u§(param1:String, param2:String, param3:§5!1§, param4:Boolean = true, param5:int = 1)
      {
         this.§4!G§ = new Dictionary();
         this.§@I§ = new Vector.<String>();
         this.§<t§ = [];
         this.§;"4§ = [];
         this.§;!G§ = [];
         this.§[!b§ = [];
         this.§6!o§ = new Vector.<§"!X§>();
         super();
         this.§!!H§ = param2;
         this.§&!n§ = param1;
         this.§97§ = param3;
         this.§7![§ = param4;
         this.§#!k§ = Math.max(1,param5);
      }
      
      public function get §7!m§() : §"!X§
      {
         return this.§'!2§;
      }
      
      private function §@§(param1:String) : Boolean
      {
         var _loc3_:§"!X§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6!o§.length)
         {
            _loc3_ = this.§6!o§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§'!2§ = _loc3_;
               this.§5?§ = param1;
               this.§6!o§.splice(_loc2_,1);
               this.§6!o§.unshift(this.§'!2§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §?!>§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§4!G§[param1] != null;
      }
      
      public function §>k§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§?!>§(_loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function loadContent(param1:String, param2:Array = null) : void
      {
         if(!param2)
         {
            param2 = [param1];
         }
         else
         {
            param2 = param2.concat();
         }
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            param2[_loc3_] = param2[_loc3_].toLowerCase();
            _loc3_--;
         }
         param1 = param1.toLowerCase();
         if(this.§9"3§())
         {
            if(!this.§3!,§())
            {
               this.§@!v§ = param1;
               this.§[!b§ = param2.concat();
               return;
            }
         }
         this.§,!6§ = param1;
         if(this.§>k§(param2))
         {
            this.§@§(param1);
            if(param1 == this.§5?§ || !this.§7![§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§%0§(param2);
            }
         }
         else
         {
            this.§`!B§(param2);
         }
      }
      
      private function §?2§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§;!G§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§?!>§(_loc2_))
            {
               this.§;!G§.push(_loc2_);
            }
         }
      }
      
      private function §`!B§(param1:Array) : void
      {
         this.§<t§ = param1.concat();
         this.§?2§(param1);
         this.§?!A§();
      }
      
      private function §?!A§() : Boolean
      {
         if(this.§;!G§.length == 0)
         {
            this.§>_§ = null;
            return false;
         }
         this.§>_§ = this.§;!G§.pop();
         var _loc1_:String = "";
         if(this.§!!H§ != null && this.§!!H§.length > 0)
         {
            _loc1_ = "?version=" + this.§!!H§;
         }
         this.§ Q§ = new URLLoader();
         this.§ Q§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§ Q§.addEventListener(Event.COMPLETE,this.§00§);
         this.§ Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§^!y§);
         this.§ Q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^!y§);
         var _loc2_:String = this.§&!0§(this.§>_§);
         this.§ Q§.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function §&!0§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§3d§;
      }
      
      private function §9"3§() : Boolean
      {
         return this.§ Q§ || this.§0!N§;
      }
      
      private function §3!,§() : Boolean
      {
         if(this.§ Q§)
         {
            this.§ Q§.removeEventListener(Event.COMPLETE,this.§00§);
            this.§ Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^!y§);
            this.§ Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^!y§);
            try
            {
               this.§ Q§.close();
            }
            catch(e:Error)
            {
            }
            this.§ Q§ = null;
         }
         if(this.§0!N§)
         {
            return false;
         }
         return true;
      }
      
      private function §00§(param1:Event) : void
      {
         this.§ Q§.removeEventListener(Event.COMPLETE,this.§00§);
         this.§ Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^!y§);
         this.§ Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^!y§);
         this.§4!G§[this.§>_§] = this.§ Q§.data;
         this.§ Q§ = null;
         if(!this.§?!A§())
         {
            this.§%0§(this.§<t§);
         }
      }
      
      private function §^!y§(param1:Event) : void
      {
         this.§ Q§.removeEventListener(Event.COMPLETE,this.§00§);
         this.§ Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^!y§);
         this.§ Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^!y§);
         this.§ Q§.close();
         this.§ Q§ = null;
         this.§,!6§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function §8!?§() : §4!m§
      {
         return new §4!m§(this.§97§);
      }
      
      private function §%0§(param1:Array) : void
      {
         var _loc2_:§"!X§ = null;
         this.§0!N§ = true;
         while(this.§6!o§.length >= this.§#!k§)
         {
            _loc2_ = this.§6!o§.pop();
            _loc2_.dispose();
         }
         if(this.§8!G§)
         {
            this.§8!G§.dispose();
         }
         this.§'!2§ = new §"!X§(this.§,!6§);
         this.§6!o§.unshift(this.§'!2§);
         this.§8!G§ = this.§8!?§();
         this.§;"4§ = param1.concat();
         this.§1!6§();
      }
      
      private function §1!6§() : Boolean
      {
         if(this.§;"4§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§;"4§.pop();
         this.§8!G§.addEventListener(Event.COMPLETE,this.§[!&§);
         var _loc2_:* = this.§@I§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§@I§.push(_loc1_);
         }
         this.§8!G§.§-!=§(this.§4!G§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §[!&§(param1:Event) : void
      {
         this.§0!N§ = false;
         this.§8!G§.removeEventListener(Event.COMPLETE,this.§[!&§);
         if(this.§@!v§)
         {
            this.loadContent(this.§@!v§,this.§[!b§);
            this.§@!v§ = null;
            this.§[!b§ = null;
            return;
         }
         if(this.§1!6§())
         {
            return;
         }
         var _loc2_:int = this.§8!G§.§5h§.§8"&§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§'!2§.§^P§(this.§8!G§.§5h§.§>!Q§(_loc3_),0);
            _loc3_++;
         }
         this.§+v§();
      }
      
      public function §+v§() : void
      {
         if(this.§9"3§() || this.§8!G§ == null)
         {
            return;
         }
         this.§'!2§.removeEventListener(Event.INIT,this.§4!E§);
         if(this.§'!2§.§+v§())
         {
            this.§0!,§();
         }
         else
         {
            this.§'!2§.addEventListener(Event.INIT,this.§4!E§);
         }
      }
      
      private function §0!,§() : void
      {
         this.§8!G§.dispose();
         this.§8!G§ = null;
         this.§5?§ = this.§,!6§;
         this.§,!6§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §4!E§(param1:Event) : void
      {
         this.§0!,§();
      }
   }
}
