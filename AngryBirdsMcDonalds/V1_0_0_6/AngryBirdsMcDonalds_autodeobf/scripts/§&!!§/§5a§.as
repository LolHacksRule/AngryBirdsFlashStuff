package §&!!§
{
   import §9!A§.§8r§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §5a§ extends EventDispatcher
   {
       
      
      private var §`!2§:String = "";
      
      private var §%!g§:String;
      
      private var §>8§:URLLoader;
      
      private var §8a§:Dictionary;
      
      private var §5S§:String = null;
      
      private var §@O§:String = null;
      
      private var §@!j§:String = null;
      
      private var §?c§:Boolean;
      
      private var §64§:§8r§;
      
      private var §"!,§:§<!'§;
      
      private var §5!§:Vector.<§<!'§>;
      
      private var §8!`§:String = "pak";
      
      private var §`5§:Boolean = true;
      
      private var §3!%§:int = 1;
      
      public function §5a§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§8a§ = new Dictionary();
         this.§5!§ = new Vector.<§<!'§>();
         super();
         this.§`!2§ = param2;
         this.§%!g§ = param1;
         this.§`5§ = param3;
         this.§3!%§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §<!'§
      {
         return this.§"!,§;
      }
      
      public function §^[§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§8a§[param1] != null;
      }
      
      private function §<!=§(param1:String) : Boolean
      {
         var _loc3_:§<!'§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!§.length)
         {
            _loc3_ = this.§5!§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§"!,§ = _loc3_;
               this.§5S§ = param1;
               this.§5!§.splice(_loc2_,1);
               this.§5!§.unshift(this.§"!,§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §[b§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§90§())
         {
            if(!this.§5! §())
            {
               this.§@!j§ = param1;
               return;
            }
         }
         if(this.§^[§(param1))
         {
            this.§<!=§(param1);
            if(param1 == this.§5S§ || !this.§`5§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§@H§(param1,false);
            }
         }
         else
         {
            this.§0I§(param1);
         }
      }
      
      private function §0I§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§`!2§ != null && this.§`!2§.length > 0)
         {
            _loc2_ = "?version=" + this.§`!2§;
         }
         this.§@O§ = param1;
         this.§>8§ = new URLLoader();
         this.§>8§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§>8§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§>8§.addEventListener(IOErrorEvent.IO_ERROR,this.§@Q§);
         this.§>8§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@Q§);
         this.§>8§.load(new URLRequest(this.§%!g§ + "packages/" + param1 + "." + this.§8!`§ + _loc2_));
      }
      
      private function §90§() : Boolean
      {
         return this.§>8§ || this.§?c§;
      }
      
      private function §5! §() : Boolean
      {
         if(this.§>8§)
         {
            this.§>8§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§>8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§@Q§);
            this.§>8§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@Q§);
            this.§>8§.close();
            this.§>8§ = null;
         }
         if(this.§?c§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§>8§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§@Q§);
         this.§>8§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@Q§);
         this.§8a§[this.§@O§] = this.§>8§.data;
         this.§>8§ = null;
         this.§@H§(this.§@O§,true);
      }
      
      private function §@H§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§<!'§ = null;
         this.§?c§ = true;
         this.§@O§ = param1;
         while(this.§5!§.length >= this.§3!%§)
         {
            _loc3_ = this.§5!§.pop();
            _loc3_.dispose();
         }
         if(this.§64§)
         {
            this.§64§.dispose();
         }
         this.§"!,§ = new §<!'§(param1);
         this.§5!§.unshift(this.§"!,§);
         this.§64§ = new §8r§();
         this.§64§.addEventListener(Event.COMPLETE,this.§@1§);
         this.§64§.§6>§(this.§8a§[this.§@O§],param2);
      }
      
      private function §@Q§(param1:Event) : void
      {
         this.§>8§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§@Q§);
         this.§>8§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@Q§);
         this.§>8§.close();
         this.§>8§ = null;
         this.§@O§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §@1§(param1:Event) : void
      {
         this.§?c§ = false;
         this.§64§.removeEventListener(Event.COMPLETE,this.§@1§);
         if(this.§@!j§)
         {
            this.§[b§(this.§@!j§);
            this.§@!j§ = null;
            return;
         }
         var _loc2_:int = this.§64§.§-!c§.§,!H§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§"!,§.§;t§(this.§64§.§-!c§.§-g§(_loc3_));
            _loc3_++;
         }
         this.§-!#§();
      }
      
      public function §-!#§() : void
      {
         if(this.§90§() || this.§64§ == null)
         {
            return;
         }
         if(this.§"!,§.§-!#§())
         {
            this.§64§.dispose();
            this.§64§ = null;
            this.§5S§ = this.§@O§;
            this.§@O§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
