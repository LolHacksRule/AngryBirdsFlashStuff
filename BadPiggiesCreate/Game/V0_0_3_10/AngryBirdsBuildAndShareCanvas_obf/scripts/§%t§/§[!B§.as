package §%t§
{
   import §+!v§.§2!f§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §[!B§ extends EventDispatcher
   {
       
      
      private var §>"§:String = "";
      
      private var §4!,§:String;
      
      private var §^!9§:URLLoader;
      
      private var §4!X§:Dictionary;
      
      private var §<!Q§:String = null;
      
      private var §<'§:String = null;
      
      private var §3"$§:String = null;
      
      private var §5"3§:Boolean;
      
      private var §"+§:§2!f§;
      
      private var §^o§:§-!5§;
      
      private var §#!^§:Vector.<§-!5§>;
      
      private var §5!d§:String = "pak";
      
      private var §1"0§:Boolean = true;
      
      private var §0p§:int = 1;
      
      public function §[!B§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§4!X§ = new Dictionary();
         this.§#!^§ = new Vector.<§-!5§>();
         super();
         this.§>"§ = param2;
         this.§4!,§ = param1;
         this.§1"0§ = param3;
         this.§0p§ = Math.max(1,param4);
      }
      
      public function get §>=§() : §-!5§
      {
         return this.§^o§;
      }
      
      public function §'!;§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§4!X§[param1] != null;
      }
      
      private function §5!i§(param1:String) : Boolean
      {
         var _loc3_:§-!5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!^§.length)
         {
            _loc3_ = this.§#!^§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§^o§ = _loc3_;
               this.§<!Q§ = param1;
               this.§#!^§.splice(_loc2_,1);
               this.§#!^§.unshift(this.§^o§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §=!U§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§9+§())
         {
            if(!this.§1!q§())
            {
               this.§3"$§ = param1;
               return;
            }
         }
         if(this.§'!;§(param1))
         {
            this.§5!i§(param1);
            if(param1 == this.§<!Q§ || !this.§1"0§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§4!+§(param1,false);
            }
         }
         else
         {
            this.§7"9§(param1);
         }
      }
      
      private function §7"9§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§>"§ != null && this.§>"§.length > 0)
         {
            _loc2_ = "?version=" + this.§>"§;
         }
         this.§<'§ = param1;
         this.§^!9§ = new URLLoader();
         this.§^!9§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§^!9§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§^!9§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^!9§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^!9§.load(new URLRequest(this.§4!,§ + "packages/" + param1 + "." + this.§5!d§ + _loc2_));
      }
      
      private function §9+§() : Boolean
      {
         return this.§^!9§ || this.§5"3§;
      }
      
      private function §1!q§() : Boolean
      {
         if(this.§^!9§)
         {
            this.§^!9§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§^!9§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§^!9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§^!9§.close();
            this.§^!9§ = null;
         }
         if(this.§5"3§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§^!9§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§^!9§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^!9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§4!X§[this.§<'§] = this.§^!9§.data;
         this.§^!9§ = null;
         this.§4!+§(this.§<'§,true);
      }
      
      private function §4!+§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§-!5§ = null;
         this.§5"3§ = true;
         this.§<'§ = param1;
         while(this.§#!^§.length >= this.§0p§)
         {
            _loc3_ = this.§#!^§.pop();
            _loc3_.dispose();
         }
         if(this.§"+§)
         {
            this.§"+§.dispose();
         }
         this.§^o§ = new §-!5§(param1);
         this.§#!^§.unshift(this.§^o§);
         this.§"+§ = new §2!f§();
         this.§"+§.addEventListener(Event.COMPLETE,this.§"N§);
         this.§"+§.§'8§(this.§4!X§[this.§<'§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§^!9§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§^!9§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^!9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^!9§.close();
         this.§^!9§ = null;
         this.§<'§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §"N§(param1:Event) : void
      {
         this.§5"3§ = false;
         this.§"+§.removeEventListener(Event.COMPLETE,this.§"N§);
         if(this.§3"$§)
         {
            this.§=!U§(this.§3"$§);
            this.§3"$§ = null;
            return;
         }
         var _loc2_:int = this.§"+§.§[!S§.§,e§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^o§.§!!M§(this.§"+§.§[!S§.§use§(_loc3_));
            _loc3_++;
         }
         this.§4!N§();
      }
      
      public function §4!N§() : void
      {
         if(this.§9+§() || this.§"+§ == null)
         {
            return;
         }
         if(this.§^o§.§4!N§())
         {
            this.§"+§.dispose();
            this.§"+§ = null;
            this.§<!Q§ = this.§<'§;
            this.§<'§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
