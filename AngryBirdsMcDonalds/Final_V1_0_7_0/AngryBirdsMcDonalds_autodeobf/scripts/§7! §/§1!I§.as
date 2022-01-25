package §7! §
{
   import §^8§.§6!g§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §1!I§ extends EventDispatcher
   {
       
      
      private var §,!p§:String = "";
      
      private var §0G§:String;
      
      private var §"I§:URLLoader;
      
      private var §&v§:Dictionary;
      
      private var §^!6§:String = null;
      
      private var §-!-§:String = null;
      
      private var §'z§:String = null;
      
      private var §<!P§:Boolean;
      
      private var §?!0§:§6!g§;
      
      private var §!3§:§4n§;
      
      private var §<!f§:Vector.<§4n§>;
      
      private var §4!O§:String = "pak";
      
      private var §!!M§:Boolean = true;
      
      private var §[!K§:int = 1;
      
      public function §1!I§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§&v§ = new Dictionary();
         this.§<!f§ = new Vector.<§4n§>();
         super();
         this.§,!p§ = param2;
         this.§0G§ = param1;
         this.§!!M§ = param3;
         this.§[!K§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §4n§
      {
         return this.§!3§;
      }
      
      public function §6[§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§&v§[param1] != null;
      }
      
      private function §-u§(param1:String) : Boolean
      {
         var _loc3_:§4n§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!f§.length)
         {
            _loc3_ = this.§<!f§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§!3§ = _loc3_;
               this.§^!6§ = param1;
               this.§<!f§.splice(_loc2_,1);
               this.§<!f§.unshift(this.§!3§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §#,§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§return§())
         {
            if(!this.§'+§())
            {
               this.§'z§ = param1;
               return;
            }
         }
         if(this.§6[§(param1))
         {
            this.§-u§(param1);
            if(param1 == this.§^!6§ || !this.§!!M§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§!_§(param1,false);
            }
         }
         else
         {
            this.§[!I§(param1);
         }
      }
      
      private function §[!I§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§,!p§ != null && this.§,!p§.length > 0)
         {
            _loc2_ = "?version=" + this.§,!p§;
         }
         this.§-!-§ = param1;
         this.§"I§ = new URLLoader();
         this.§"I§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§"I§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§"I§.addEventListener(IOErrorEvent.IO_ERROR,this.§7`§);
         this.§"I§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7`§);
         this.§"I§.load(new URLRequest(this.§0G§ + "packages/" + param1 + "." + this.§4!O§ + _loc2_));
      }
      
      private function §return§() : Boolean
      {
         return this.§"I§ || this.§<!P§;
      }
      
      private function §'+§() : Boolean
      {
         if(this.§"I§)
         {
            this.§"I§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§"I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7`§);
            this.§"I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7`§);
            this.§"I§.close();
            this.§"I§ = null;
         }
         if(this.§<!P§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§"I§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§"I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7`§);
         this.§"I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7`§);
         this.§&v§[this.§-!-§] = this.§"I§.data;
         this.§"I§ = null;
         this.§!_§(this.§-!-§,true);
      }
      
      private function §!_§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§4n§ = null;
         this.§<!P§ = true;
         this.§-!-§ = param1;
         while(this.§<!f§.length >= this.§[!K§)
         {
            _loc3_ = this.§<!f§.pop();
            _loc3_.dispose();
         }
         if(this.§?!0§)
         {
            this.§?!0§.dispose();
         }
         this.§!3§ = new §4n§(param1);
         this.§<!f§.unshift(this.§!3§);
         this.§?!0§ = new §6!g§();
         this.§?!0§.addEventListener(Event.COMPLETE,this.§]Z§);
         this.§?!0§.§>p§(this.§&v§[this.§-!-§],param2);
      }
      
      private function §7`§(param1:Event) : void
      {
         this.§"I§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§"I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7`§);
         this.§"I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7`§);
         this.§"I§.close();
         this.§"I§ = null;
         this.§-!-§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §]Z§(param1:Event) : void
      {
         this.§<!P§ = false;
         this.§?!0§.removeEventListener(Event.COMPLETE,this.§]Z§);
         if(this.§'z§)
         {
            this.§#,§(this.§'z§);
            this.§'z§ = null;
            return;
         }
         var _loc2_:int = this.§?!0§.§>!Y§.§^!R§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§!3§.§@V§(this.§?!0§.§>!Y§.§4!§(_loc3_));
            _loc3_++;
         }
         this.§<!V§();
      }
      
      public function §<!V§() : void
      {
         if(this.§return§() || this.§?!0§ == null)
         {
            return;
         }
         if(this.§!3§.§<!V§())
         {
            this.§?!0§.dispose();
            this.§?!0§ = null;
            this.§^!6§ = this.§-!-§;
            this.§-!-§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
