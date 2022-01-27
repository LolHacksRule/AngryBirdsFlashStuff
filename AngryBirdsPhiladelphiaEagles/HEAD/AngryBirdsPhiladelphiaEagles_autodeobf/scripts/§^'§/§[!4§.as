package §^'§
{
   import §4!6§.§8Y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §[!4§ extends EventDispatcher
   {
       
      
      private var §8!,§:String = "";
      
      private var §[!>§:String;
      
      private var §`Q§:URLLoader;
      
      private var §,B§:Dictionary;
      
      private var §2U§:String = null;
      
      private var §?n§:String = null;
      
      private var §;H§:String = null;
      
      private var §,!8§:Boolean;
      
      private var §[[§:§8Y§;
      
      private var §1$§:§ !C§;
      
      private var §'!3§:Vector.<§ !C§>;
      
      private var §^U§:String = "pak";
      
      private var §3!&§:Boolean = true;
      
      private var §[D§:int = 1;
      
      public function §[!4§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§,B§ = new Dictionary();
         this.§'!3§ = new Vector.<§ !C§>();
         super();
         this.§8!,§ = param2;
         this.§[!>§ = param1;
         this.§3!&§ = param3;
         this.§[D§ = Math.max(1,param4);
      }
      
      public function get textureManager() : § !C§
      {
         return this.§1$§;
      }
      
      public function §2i§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§,B§[param1] != null;
      }
      
      private function §5T§(param1:String) : Boolean
      {
         var _loc3_:§ !C§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!3§.length)
         {
            _loc3_ = this.§'!3§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§1$§ = _loc3_;
               this.§2U§ = param1;
               this.§'!3§.splice(_loc2_,1);
               this.§'!3§.unshift(this.§1$§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §7'§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§`m§())
         {
            if(!this.§#!P§())
            {
               this.§;H§ = param1;
               return;
            }
         }
         if(this.§2i§(param1))
         {
            this.§5T§(param1);
            if(param1 == this.§2U§ || !this.§3!&§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§!@§(param1,false);
            }
         }
         else
         {
            this.§try §(param1);
         }
      }
      
      private function §try §(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§8!,§ != null && this.§8!,§.length > 0)
         {
            _loc2_ = "?version=" + this.§8!,§;
         }
         this.§?n§ = param1;
         this.§`Q§ = new URLLoader();
         this.§`Q§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§`Q§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§`Q§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§`Q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§`Q§.load(new URLRequest(this.§[!>§ + "packages/" + param1 + "." + this.§^U§ + _loc2_));
      }
      
      private function §`m§() : Boolean
      {
         return this.§`Q§ || this.§,!8§;
      }
      
      private function §#!P§() : Boolean
      {
         if(this.§`Q§)
         {
            this.§`Q§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§`Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§`Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§`Q§.close();
            this.§`Q§ = null;
         }
         if(this.§,!8§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§`Q§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§`Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§`Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§,B§[this.§?n§] = this.§`Q§.data;
         this.§`Q§ = null;
         this.§!@§(this.§?n§,true);
      }
      
      private function §!@§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§ !C§ = null;
         this.§,!8§ = true;
         this.§?n§ = param1;
         while(this.§'!3§.length >= this.§[D§)
         {
            _loc3_ = this.§'!3§.pop();
            _loc3_.dispose();
         }
         if(this.§[[§)
         {
            this.§[[§.dispose();
         }
         this.§1$§ = new § !C§(param1);
         this.§'!3§.unshift(this.§1$§);
         this.§[[§ = new §8Y§();
         this.§[[§.addEventListener(Event.COMPLETE,this.§,"§);
         this.§[[§.§"!6§(this.§,B§[this.§?n§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§`Q§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§`Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§`Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§`Q§.close();
         this.§`Q§ = null;
         this.§?n§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §,"§(param1:Event) : void
      {
         this.§,!8§ = false;
         this.§[[§.removeEventListener(Event.COMPLETE,this.§,"§);
         if(this.§;H§)
         {
            this.§7'§(this.§;H§);
            this.§;H§ = null;
            return;
         }
         var _loc2_:int = this.§[[§.§0D§.§[U§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§1$§.§+d§(this.§[[§.§0D§.§>`§(_loc3_));
            _loc3_++;
         }
         this.§3!A§();
      }
      
      public function §3!A§() : void
      {
         if(this.§`m§() || this.§[[§ == null)
         {
            return;
         }
         if(this.§1$§.§3!A§())
         {
            this.§[[§.dispose();
            this.§[[§ = null;
            this.§2U§ = this.§?n§;
            this.§?n§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
