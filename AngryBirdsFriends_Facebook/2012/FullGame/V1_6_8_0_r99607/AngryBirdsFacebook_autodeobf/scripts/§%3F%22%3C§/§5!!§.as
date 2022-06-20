package §?"<§
{
   import §2!,§.§3!V§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §5!!§ extends EventDispatcher
   {
       
      
      private var §6j§:String = "";
      
      private var §=7§:String;
      
      private var §"3§:URLLoader;
      
      private var §!!V§:Dictionary;
      
      private var §"F§:String = null;
      
      private var §4I§:String = null;
      
      private var §"]§:String = null;
      
      private var §9!3§:Boolean;
      
      private var §^a§:§3!V§;
      
      private var §9s§:§<"!§;
      
      private var §<h§:Vector.<§<"!§>;
      
      private var §+q§:String = "pak";
      
      private var §@!d§:Boolean = true;
      
      private var §#"-§:int = 1;
      
      public function §5!!§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§!!V§ = new Dictionary();
         this.§<h§ = new Vector.<§<"!§>();
         super();
         this.§6j§ = param2;
         this.§=7§ = param1;
         this.§@!d§ = param3;
         this.§#"-§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §<"!§
      {
         return this.§9s§;
      }
      
      public function §?!=§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§!!V§[param1] != null;
      }
      
      private function §0"9§(param1:String) : Boolean
      {
         var _loc3_:§<"!§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<h§.length)
         {
            _loc3_ = this.§<h§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§9s§ = _loc3_;
               this.§"F§ = param1;
               this.§<h§.splice(_loc2_,1);
               this.§<h§.unshift(this.§9s§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §@"0§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§%!H§())
         {
            if(!this.§<!;§())
            {
               this.§"]§ = param1;
               return;
            }
         }
         if(this.§?!=§(param1))
         {
            this.§0"9§(param1);
            if(param1 == this.§"F§ || !this.§@!d§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§ !-§(param1,false);
            }
         }
         else
         {
            this.§8w§(param1);
         }
      }
      
      private function §8w§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§6j§ != null && this.§6j§.length > 0)
         {
            _loc2_ = "?version=" + this.§6j§;
         }
         this.§4I§ = param1;
         this.§"3§ = new URLLoader();
         this.§"3§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§"3§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§"3§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"3§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§"3§.load(new URLRequest(this.§=7§ + "packages/" + param1 + "." + this.§+q§ + _loc2_));
      }
      
      private function §%!H§() : Boolean
      {
         return this.§"3§ || this.§9!3§;
      }
      
      private function §<!;§() : Boolean
      {
         if(this.§"3§)
         {
            this.§"3§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§"3§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§"3§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§"3§.close();
            this.§"3§ = null;
         }
         if(this.§9!3§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§"3§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§"3§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"3§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§!!V§[this.§4I§] = this.§"3§.data;
         this.§"3§ = null;
         this.§ !-§(this.§4I§,true);
      }
      
      private function § !-§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§<"!§ = null;
         this.§9!3§ = true;
         this.§4I§ = param1;
         while(this.§<h§.length >= this.§#"-§)
         {
            _loc3_ = this.§<h§.pop();
            _loc3_.dispose();
         }
         if(this.§^a§)
         {
            this.§^a§.dispose();
         }
         this.§9s§ = new §<"!§(param1);
         this.§<h§.unshift(this.§9s§);
         this.§^a§ = new §3!V§();
         this.§^a§.addEventListener(Event.COMPLETE,this.§0"1§);
         this.§^a§.§&!]§(this.§!!V§[this.§4I§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§"3§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§"3§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"3§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§"3§.close();
         this.§"3§ = null;
         this.§4I§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §0"1§(param1:Event) : void
      {
         this.§9!3§ = false;
         this.§^a§.removeEventListener(Event.COMPLETE,this.§0"1§);
         if(this.§"]§)
         {
            this.§@"0§(this.§"]§);
            this.§"]§ = null;
            return;
         }
         var _loc2_:int = this.§^a§.§'Y§.§7!l§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9s§.§%!E§(this.§^a§.§'Y§.§-"A§(_loc3_));
            _loc3_++;
         }
         this.§5,§();
      }
      
      public function §5,§() : void
      {
         if(this.§%!H§() || this.§^a§ == null)
         {
            return;
         }
         if(this.§9s§.§5,§())
         {
            this.§^a§.dispose();
            this.§^a§ = null;
            this.§"F§ = this.§4I§;
            this.§4I§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
