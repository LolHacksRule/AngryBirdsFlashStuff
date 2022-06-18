package §=!K§
{
   import §<L§.§]!"§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §5n§ extends EventDispatcher
   {
       
      
      private var §'!K§:String = "";
      
      private var §,j§:String;
      
      private var §"p§:URLLoader;
      
      private var §,!6§:Dictionary;
      
      private var §5A§:String = null;
      
      private var §6,§:String = null;
      
      private var §4!8§:String = null;
      
      private var §7!B§:Boolean;
      
      private var §break§:§]!"§;
      
      private var §9!=§:§^Q§;
      
      private var §#2§:Vector.<§^Q§>;
      
      private var §`_§:String = "pak";
      
      private var §^6§:Boolean = true;
      
      private var §9!N§:int = 1;
      
      public function §5n§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§,!6§ = new Dictionary();
         this.§#2§ = new Vector.<§^Q§>();
         super();
         this.§'!K§ = param2;
         this.§,j§ = param1;
         this.§^6§ = param3;
         this.§9!N§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §^Q§
      {
         return this.§9!=§;
      }
      
      public function §1!6§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§,!6§[param1] != null;
      }
      
      private function §-S§(param1:String) : Boolean
      {
         var _loc3_:§^Q§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#2§.length)
         {
            _loc3_ = this.§#2§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§9!=§ = _loc3_;
               this.§5A§ = param1;
               this.§#2§.splice(_loc2_,1);
               this.§#2§.unshift(this.§9!=§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §+!G§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§ K§())
         {
            if(!this.§1!1§())
            {
               this.§4!8§ = param1;
               return;
            }
         }
         if(this.§1!6§(param1))
         {
            this.§-S§(param1);
            if(param1 == this.§5A§ || !this.§^6§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§;0§(param1,false);
            }
         }
         else
         {
            this.§>v§(param1);
         }
      }
      
      protected function §>v§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§'!K§ != null && this.§'!K§.length > 0)
         {
            _loc2_ = "?version=" + this.§'!K§;
         }
         this.§6,§ = param1;
         this.§"p§ = new URLLoader();
         this.§"p§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§"p§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§"p§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"p§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         var _loc3_:String = this.§5!5§(param1);
         this.§"p§.load(new URLRequest(_loc3_ + _loc2_));
      }
      
      protected function §5!5§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§`_§;
      }
      
      private function § K§() : Boolean
      {
         return this.§"p§ || this.§7!B§;
      }
      
      private function §1!1§() : Boolean
      {
         if(this.§"p§)
         {
            this.§"p§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§"p§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§"p§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§"p§.close();
            this.§"p§ = null;
         }
         if(this.§7!B§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§"p§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§"p§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"p§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§,!6§[this.§6,§] = this.§"p§.data;
         this.§"p§ = null;
         this.§;0§(this.§6,§,true);
      }
      
      private function §;0§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§^Q§ = null;
         this.§7!B§ = true;
         this.§6,§ = param1;
         while(this.§#2§.length >= this.§9!N§)
         {
            _loc3_ = this.§#2§.pop();
            _loc3_.dispose();
         }
         if(this.§break§)
         {
            this.§break§.dispose();
         }
         this.§9!=§ = new §^Q§(param1);
         this.§#2§.unshift(this.§9!=§);
         this.§break§ = new §]!"§();
         this.§break§.addEventListener(Event.COMPLETE,this.§[!I§);
         this.§break§.§"L§(this.§6,§);
         this.§break§.§%4§(this.§,!6§[this.§6,§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§"p§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§"p§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"p§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§"p§.close();
         this.§"p§ = null;
         this.§6,§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §[!I§(param1:Event) : void
      {
         this.§7!B§ = false;
         this.§break§.removeEventListener(Event.COMPLETE,this.§[!I§);
         if(this.§4!8§)
         {
            this.§+!G§(this.§4!8§);
            this.§4!8§ = null;
            return;
         }
         var _loc2_:int = this.§break§.§^I§.§<p§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9!=§.§%p§(this.§break§.§^I§.§]W§(_loc3_));
            _loc3_++;
         }
         this.§[!D§();
      }
      
      public function §[!D§() : void
      {
         if(this.§ K§() || this.§break§ == null)
         {
            return;
         }
         if(this.§9!=§.§[!D§())
         {
            this.§break§.dispose();
            this.§break§ = null;
            this.§5A§ = this.§6,§;
            this.§6,§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
