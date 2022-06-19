package § `§
{
   import §3!T§.§6t§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §const§ extends EventDispatcher
   {
       
      
      private var §",§:String = "";
      
      private var §9U§:String;
      
      private var §&j§:URLLoader;
      
      private var §'`§:Dictionary;
      
      private var §%9§:String = null;
      
      private var §6f§:String = null;
      
      private var §^U§:String = null;
      
      private var §7E§:Boolean;
      
      private var §6L§:§6t§;
      
      private var §8!M§:§2w§;
      
      private var §5!@§:Vector.<§2w§>;
      
      private var §`Z§:String = "pak";
      
      private var §'g§:Boolean = true;
      
      private var §!!=§:int = 1;
      
      public function §const§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§'`§ = new Dictionary();
         this.§5!@§ = new Vector.<§2w§>();
         super();
         this.§",§ = param2;
         this.§9U§ = param1;
         this.§'g§ = param3;
         this.§!!=§ = Math.max(1,param4);
      }
      
      public function get §=]§() : §2w§
      {
         return this.§8!M§;
      }
      
      public function §return§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§'`§[param1] != null;
      }
      
      private function §',§(param1:String) : Boolean
      {
         var _loc3_:§2w§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!@§.length)
         {
            _loc3_ = this.§5!@§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§8!M§ = _loc3_;
               this.§%9§ = param1;
               this.§5!@§.splice(_loc2_,1);
               this.§5!@§.unshift(this.§8!M§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §>=§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§"!"§())
         {
            if(!this.§"A§())
            {
               this.§^U§ = param1;
               return;
            }
         }
         if(this.§return§(param1))
         {
            this.§',§(param1);
            if(param1 == this.§%9§ || !this.§'g§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§'!=§(param1,false);
            }
         }
         else
         {
            this.§7[§(param1);
         }
      }
      
      private function §7[§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§",§ != null && this.§",§.length > 0)
         {
            _loc2_ = "?version=" + this.§",§;
         }
         this.§6f§ = param1;
         this.§&j§ = new URLLoader();
         this.§&j§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§&j§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§&j§.addEventListener(IOErrorEvent.IO_ERROR,this.§6x§);
         this.§&j§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6x§);
         this.§&j§.load(new URLRequest(this.§9U§ + "packages/" + param1 + "." + this.§`Z§ + _loc2_));
      }
      
      private function §"!"§() : Boolean
      {
         return this.§&j§ || this.§7E§;
      }
      
      private function §"A§() : Boolean
      {
         if(this.§&j§)
         {
            this.§&j§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§&j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6x§);
            this.§&j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6x§);
            this.§&j§.close();
            this.§&j§ = null;
         }
         if(this.§7E§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§&j§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§&j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6x§);
         this.§&j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6x§);
         this.§'`§[this.§6f§] = this.§&j§.data;
         this.§&j§ = null;
         this.§'!=§(this.§6f§,true);
      }
      
      private function §'!=§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§2w§ = null;
         this.§7E§ = true;
         this.§6f§ = param1;
         while(this.§5!@§.length >= this.§!!=§)
         {
            _loc3_ = this.§5!@§.pop();
            _loc3_.dispose();
         }
         if(this.§6L§)
         {
            this.§6L§.dispose();
         }
         this.§8!M§ = new §2w§(param1);
         this.§5!@§.unshift(this.§8!M§);
         this.§6L§ = new §6t§();
         this.§6L§.addEventListener(Event.COMPLETE,this.§2U§);
         this.§6L§.§;!X§(this.§'`§[this.§6f§],param2);
      }
      
      private function §6x§(param1:Event) : void
      {
         this.§&j§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§&j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6x§);
         this.§&j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6x§);
         this.§&j§.close();
         this.§&j§ = null;
         this.§6f§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §2U§(param1:Event) : void
      {
         this.§7E§ = false;
         this.§6L§.removeEventListener(Event.COMPLETE,this.§2U§);
         if(this.§^U§)
         {
            this.§>=§(this.§^U§);
            this.§^U§ = null;
            return;
         }
         var _loc2_:int = this.§6L§.§%v§.§=_§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§8!M§.§7!<§(this.§6L§.§%v§.§"T§(_loc3_));
            _loc3_++;
         }
         this.§+!^§();
      }
      
      public function §+!^§() : void
      {
         if(this.§"!"§() || this.§6L§ == null)
         {
            return;
         }
         if(this.§8!M§.§+!^§())
         {
            this.§6L§.dispose();
            this.§6L§ = null;
            this.§%9§ = this.§6f§;
            this.§6f§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
