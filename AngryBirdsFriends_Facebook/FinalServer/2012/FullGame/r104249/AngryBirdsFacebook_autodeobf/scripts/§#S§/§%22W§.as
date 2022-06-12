package §#S§
{
   import §^!U§.§9S§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §"W§ extends EventDispatcher
   {
       
      
      private var §"0§:String = "";
      
      private var §!A§:String;
      
      private var §#"G§:URLLoader;
      
      private var §=!@§:Dictionary;
      
      private var §9[§:String = null;
      
      private var §5!_§:String = null;
      
      private var §#!F§:String = null;
      
      private var §,!P§:Boolean;
      
      private var §?"#§:§9S§;
      
      private var §=$§:§?!?§;
      
      private var §[Y§:Vector.<§?!?§>;
      
      private var §6#§:String = "pak";
      
      private var §&H§:Boolean = true;
      
      private var §<!!§:int = 1;
      
      public function §"W§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§=!@§ = new Dictionary();
         this.§[Y§ = new Vector.<§?!?§>();
         super();
         this.§"0§ = param2;
         this.§!A§ = param1;
         this.§&H§ = param3;
         this.§<!!§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §?!?§
      {
         return this.§=$§;
      }
      
      public function §<P§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§=!@§[param1] != null;
      }
      
      private function §[!K§(param1:String) : Boolean
      {
         var _loc3_:§?!?§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[Y§.length)
         {
            _loc3_ = this.§[Y§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§=$§ = _loc3_;
               this.§9[§ = param1;
               this.§[Y§.splice(_loc2_,1);
               this.§[Y§.unshift(this.§=$§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §?!a§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§@!o§())
         {
            if(!this.§+!_§())
            {
               this.§#!F§ = param1;
               return;
            }
         }
         if(this.§<P§(param1))
         {
            this.§[!K§(param1);
            if(param1 == this.§9[§ || !this.§&H§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§6S§(param1,false);
            }
         }
         else
         {
            this.§]!l§(param1);
         }
      }
      
      protected function §]!l§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§"0§ != null && this.§"0§.length > 0)
         {
            _loc2_ = "?version=" + this.§"0§;
         }
         this.§5!_§ = param1;
         this.§#"G§ = new URLLoader();
         this.§#"G§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§#"G§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§#"G§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§#"G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         var _loc3_:String = this.§"Q§(param1);
         this.§#"G§.load(new URLRequest(_loc3_ + _loc2_));
      }
      
      protected function §"Q§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§6#§;
      }
      
      private function §@!o§() : Boolean
      {
         return this.§#"G§ || this.§,!P§;
      }
      
      private function §+!_§() : Boolean
      {
         if(this.§#"G§)
         {
            this.§#"G§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§#"G§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§#"G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§#"G§.close();
            this.§#"G§ = null;
         }
         if(this.§,!P§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§#"G§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§#"G§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§#"G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§=!@§[this.§5!_§] = this.§#"G§.data;
         this.§#"G§ = null;
         this.§6S§(this.§5!_§,true);
      }
      
      private function §6S§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§?!?§ = null;
         this.§,!P§ = true;
         this.§5!_§ = param1;
         while(this.§[Y§.length >= this.§<!!§)
         {
            _loc3_ = this.§[Y§.pop();
            _loc3_.dispose();
         }
         if(this.§?"#§)
         {
            this.§?"#§.dispose();
         }
         this.§=$§ = new §?!?§(param1);
         this.§[Y§.unshift(this.§=$§);
         this.§?"#§ = new §9S§();
         this.§?"#§.addEventListener(Event.COMPLETE,this.§-E§);
         this.§?"#§.§"b§(this.§5!_§);
         this.§?"#§.§>x§(this.§=!@§[this.§5!_§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§#"G§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§#"G§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§#"G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§#"G§.close();
         this.§#"G§ = null;
         this.§5!_§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §-E§(param1:Event) : void
      {
         this.§,!P§ = false;
         this.§?"#§.removeEventListener(Event.COMPLETE,this.§-E§);
         if(this.§#!F§)
         {
            this.§?!a§(this.§#!F§);
            this.§#!F§ = null;
            return;
         }
         var _loc2_:int = this.§?"#§.§9!e§.§@"+§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§=$§.§2!x§(this.§?"#§.§9!e§.§8!s§(_loc3_));
            _loc3_++;
         }
         this.§@!5§();
      }
      
      public function §@!5§() : void
      {
         if(this.§@!o§() || this.§?"#§ == null)
         {
            return;
         }
         if(this.§=$§.§@!5§())
         {
            this.§?"#§.dispose();
            this.§?"#§ = null;
            this.§9[§ = this.§5!_§;
            this.§5!_§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
