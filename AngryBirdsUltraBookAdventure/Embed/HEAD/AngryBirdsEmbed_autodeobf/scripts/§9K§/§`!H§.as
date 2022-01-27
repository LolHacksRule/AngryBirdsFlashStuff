package §9K§
{
   import §7W§.§'!-§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §`!H§ extends EventDispatcher
   {
       
      
      private var §1p§:String = "";
      
      private var §6!-§:String;
      
      private var §64§:URLLoader;
      
      private var §`_§:Dictionary;
      
      private var §0l§:String = null;
      
      private var §<!&§:String = null;
      
      private var §8@§:String = null;
      
      private var §0A§:Boolean;
      
      private var §9!4§:§'!-§;
      
      private var §-M§:§5!H§;
      
      private var §]!6§:Vector.<§5!H§>;
      
      private var §<"§:String = "pak";
      
      private var §87§:Boolean = true;
      
      private var §#!F§:int = 1;
      
      public function §`!H§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§`_§ = new Dictionary();
         this.§]!6§ = new Vector.<§5!H§>();
         super();
         this.§1p§ = param2;
         this.§6!-§ = param1;
         this.§87§ = param3;
         this.§#!F§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §5!H§
      {
         return this.§-M§;
      }
      
      public function §[<§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§`_§[param1] != null;
      }
      
      private function §[!9§(param1:String) : Boolean
      {
         var _loc3_:§5!H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!6§.length)
         {
            _loc3_ = this.§]!6§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§-M§ = _loc3_;
               this.§0l§ = param1;
               this.§]!6§.splice(_loc2_,1);
               this.§]!6§.unshift(this.§-M§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §9I§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§!!E§())
         {
            if(!this.§,§())
            {
               this.§8@§ = param1;
               return;
            }
         }
         if(this.§[<§(param1))
         {
            this.§[!9§(param1);
            if(param1 == this.§0l§ || !this.§87§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§[!8§(param1,false);
            }
         }
         else
         {
            this.§,&§(param1);
         }
      }
      
      protected function §,&§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§1p§ != null && this.§1p§.length > 0)
         {
            _loc2_ = "?version=" + this.§1p§;
         }
         this.§<!&§ = param1;
         this.§64§ = new URLLoader();
         this.§64§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§64§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§64§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§64§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         var _loc3_:String = this.§1L§(param1);
         this.§64§.load(new URLRequest(_loc3_ + _loc2_));
      }
      
      protected function §1L§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§<"§;
      }
      
      private function §!!E§() : Boolean
      {
         return this.§64§ || this.§0A§;
      }
      
      private function §,§() : Boolean
      {
         if(this.§64§)
         {
            this.§64§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§64§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§64§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§64§.close();
            this.§64§ = null;
         }
         if(this.§0A§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§64§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§64§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§64§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§`_§[this.§<!&§] = this.§64§.data;
         this.§64§ = null;
         this.§[!8§(this.§<!&§,true);
      }
      
      private function §[!8§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§5!H§ = null;
         this.§0A§ = true;
         this.§<!&§ = param1;
         while(this.§]!6§.length >= this.§#!F§)
         {
            _loc3_ = this.§]!6§.pop();
            _loc3_.dispose();
         }
         if(this.§9!4§)
         {
            this.§9!4§.dispose();
         }
         this.§-M§ = new §5!H§(param1);
         this.§]!6§.unshift(this.§-M§);
         this.§9!4§ = new §'!-§();
         this.§9!4§.addEventListener(Event.COMPLETE,this.§2!N§);
         this.§9!4§.§^X§(this.§<!&§);
         this.§9!4§.§+X§(this.§`_§[this.§<!&§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§64§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§64§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§64§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§64§.close();
         this.§64§ = null;
         this.§<!&§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §2!N§(param1:Event) : void
      {
         this.§0A§ = false;
         this.§9!4§.removeEventListener(Event.COMPLETE,this.§2!N§);
         if(this.§8@§)
         {
            this.§9I§(this.§8@§);
            this.§8@§ = null;
            return;
         }
         var _loc2_:int = this.§9!4§.§='§.§'!2§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§-M§.§%R§(this.§9!4§.§='§.§"&§(_loc3_));
            _loc3_++;
         }
         this.§1#§();
      }
      
      public function §1#§() : void
      {
         if(this.§!!E§() || this.§9!4§ == null)
         {
            return;
         }
         if(this.§-M§.§1#§())
         {
            this.§9!4§.dispose();
            this.§9!4§ = null;
            this.§0l§ = this.§<!&§;
            this.§<!&§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
