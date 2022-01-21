package §&[§
{
   import §#C§.§ B§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §2K§ extends EventDispatcher
   {
       
      
      private var §%!@§:String = "";
      
      private var §<!h§:String;
      
      private var §;!O§:URLLoader;
      
      private var §!@§:Dictionary;
      
      private var §^<§:String = null;
      
      private var §?O§:String = null;
      
      private var §2?§:String = null;
      
      private var §5!X§:Boolean;
      
      private var §=[§:§ B§;
      
      private var §`k§:§&!m§;
      
      private var get:Vector.<§&!m§>;
      
      private var §'&§:String = "pak";
      
      private var §&$§:Boolean = true;
      
      private var §!!0§:int = 1;
      
      public function §2K§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§!@§ = new Dictionary();
         this.get = new Vector.<§&!m§>();
         super();
         this.§%!@§ = param2;
         this.§<!h§ = param1;
         this.§&$§ = param3;
         this.§!!0§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §&!m§
      {
         return this.§`k§;
      }
      
      public function §>!j§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§!@§[param1] != null;
      }
      
      private function §+@§(param1:String) : Boolean
      {
         var _loc3_:§&!m§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.get.length)
         {
            _loc3_ = this.get[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§`k§ = _loc3_;
               this.§^<§ = param1;
               this.get.splice(_loc2_,1);
               this.get.unshift(this.§`k§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §]!L§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§]y§())
         {
            if(!this.§8!A§())
            {
               this.§2?§ = param1;
               return;
            }
         }
         if(this.§>!j§(param1))
         {
            this.§+@§(param1);
            if(param1 == this.§^<§ || !this.§&$§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§'3§(param1,false);
            }
         }
         else
         {
            this.§=!^§(param1);
         }
      }
      
      private function §=!^§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§%!@§ != null && this.§%!@§.length > 0)
         {
            _loc2_ = "?version=" + this.§%!@§;
         }
         this.§?O§ = param1;
         this.§;!O§ = new URLLoader();
         this.§;!O§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§;!O§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§;!O§.addEventListener(IOErrorEvent.IO_ERROR,this.§+4§);
         this.§;!O§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+4§);
         this.§;!O§.load(new URLRequest(this.§<!h§ + "packages/" + param1 + "." + this.§'&§ + _loc2_));
      }
      
      private function §]y§() : Boolean
      {
         return this.§;!O§ || this.§5!X§;
      }
      
      private function §8!A§() : Boolean
      {
         if(this.§;!O§)
         {
            this.§;!O§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§;!O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+4§);
            this.§;!O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+4§);
            this.§;!O§.close();
            this.§;!O§ = null;
         }
         if(this.§5!X§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§;!O§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§;!O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+4§);
         this.§;!O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+4§);
         this.§!@§[this.§?O§] = this.§;!O§.data;
         this.§;!O§ = null;
         this.§'3§(this.§?O§,true);
      }
      
      private function §'3§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§&!m§ = null;
         this.§5!X§ = true;
         this.§?O§ = param1;
         while(this.get.length >= this.§!!0§)
         {
            _loc3_ = this.get.pop();
            _loc3_.dispose();
         }
         if(this.§=[§)
         {
            this.§=[§.dispose();
         }
         this.§`k§ = new §&!m§(param1);
         this.get.unshift(this.§`k§);
         this.§=[§ = new § B§();
         this.§=[§.addEventListener(Event.COMPLETE,this.§@m§);
         this.§=[§.§#r§(this.§!@§[this.§?O§],param2);
      }
      
      private function §+4§(param1:Event) : void
      {
         this.§;!O§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§;!O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+4§);
         this.§;!O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+4§);
         this.§;!O§.close();
         this.§;!O§ = null;
         this.§?O§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §@m§(param1:Event) : void
      {
         this.§5!X§ = false;
         this.§=[§.removeEventListener(Event.COMPLETE,this.§@m§);
         if(this.§2?§)
         {
            this.§]!L§(this.§2?§);
            this.§2?§ = null;
            return;
         }
         var _loc2_:int = this.§=[§.§-P§.§@!`§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§`k§.§<w§(this.§=[§.§-P§.§@&§(_loc3_));
            _loc3_++;
         }
         this.§`!1§();
      }
      
      public function §`!1§() : void
      {
         if(this.§]y§() || this.§=[§ == null)
         {
            return;
         }
         if(this.§`k§.§`!1§())
         {
            this.§=[§.dispose();
            this.§=[§ = null;
            this.§^<§ = this.§?O§;
            this.§?O§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
