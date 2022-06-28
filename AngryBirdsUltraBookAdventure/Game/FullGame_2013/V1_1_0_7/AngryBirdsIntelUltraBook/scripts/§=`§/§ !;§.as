package §=`§
{
   import §]!+§.§5!1§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class § !;§ extends EventDispatcher
   {
       
      
      private var §`!f§:String = "";
      
      protected var § 6§:String;
      
      private var §>n§:URLLoader;
      
      private var §3!M§:Dictionary;
      
      private var §4!f§:String = null;
      
      private var §04§:String = null;
      
      private var §;!!§:String = null;
      
      private var §'! §:Boolean;
      
      private var §=!Q§:§5!1§;
      
      private var §&!k§:§6!I§;
      
      private var §5]§:Vector.<§6!I§>;
      
      protected var §;!L§:String = "pak";
      
      private var §+!I§:Boolean = true;
      
      private var §4c§:int = 1;
      
      public function § !;§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§3!M§ = new Dictionary();
         this.§5]§ = new Vector.<§6!I§>();
         super();
         this.§`!f§ = param2;
         this.§ 6§ = param1;
         this.§+!I§ = param3;
         this.§4c§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §6!I§
      {
         return this.§&!k§;
      }
      
      public function §6j§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§3!M§[param1] != null;
      }
      
      private function §`!!§(param1:String) : Boolean
      {
         var _loc3_:§6!I§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5]§.length)
         {
            _loc3_ = this.§5]§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§&!k§ = _loc3_;
               this.§4!f§ = param1;
               this.§5]§.splice(_loc2_,1);
               this.§5]§.unshift(this.§&!k§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §-!a§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§6;§())
         {
            if(!this.§ !i§())
            {
               this.§;!!§ = param1;
               return;
            }
         }
         if(this.§6j§(param1))
         {
            this.§`!!§(param1);
            if(param1 == this.§4!f§ || !this.§+!I§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§^!3§(param1,false);
            }
         }
         else
         {
            this.§[e§(param1);
         }
      }
      
      protected function §[e§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:String = "";
         if(this.§`!f§ != null && this.§`!f§.length > 0)
         {
            _loc2_ = "?version=" + this.§`!f§;
         }
         this.§04§ = param1;
         this.§>n§ = new URLLoader();
         this.§>n§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§>n§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§>n§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>n§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(param1.indexOf("crossdomain.xml") == -1)
         {
            _loc3_ = this.§5!F§(param1);
         }
         else
         {
            _loc3_ = this.§ 6§ + "/crossdomain.xml";
         }
         this.§>n§.load(new URLRequest(_loc3_ + _loc2_));
      }
      
      protected function §5!F§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§;!L§;
      }
      
      private function §6;§() : Boolean
      {
         return this.§>n§ || this.§'! §;
      }
      
      private function § !i§() : Boolean
      {
         if(this.§>n§)
         {
            this.§>n§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§>n§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§>n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§>n§.close();
            this.§>n§ = null;
         }
         if(this.§'! §)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§>n§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>n§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§3!M§[this.§04§] = this.§>n§.data;
         this.§>n§ = null;
         this.§^!3§(this.§04§,true);
      }
      
      private function §^!3§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§6!I§ = null;
         this.§'! § = true;
         this.§04§ = param1;
         while(this.§5]§.length >= this.§4c§)
         {
            _loc3_ = this.§5]§.pop();
            _loc3_.dispose();
         }
         if(this.§=!Q§)
         {
            this.§=!Q§.dispose();
         }
         this.§&!k§ = new §6!I§(param1);
         this.§5]§.unshift(this.§&!k§);
         this.§=!Q§ = new §5!1§();
         this.§=!Q§.addEventListener(Event.COMPLETE,this.§]w§);
         this.§=!Q§.§#!-§(this.§04§);
         this.§=!Q§.§?O§(this.§3!M§[this.§04§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§>n§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>n§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§>n§.close();
         this.§>n§ = null;
         this.§04§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §]w§(param1:Event) : void
      {
         this.§'! § = false;
         this.§=!Q§.removeEventListener(Event.COMPLETE,this.§]w§);
         if(this.§;!!§)
         {
            this.§-!a§(this.§;!!§);
            this.§;!!§ = null;
            return;
         }
         var _loc2_:int = this.§=!Q§.§8!s§.§8L§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§&!k§.§@!V§(this.§=!Q§.§8!s§.§#%§(_loc3_));
            _loc3_++;
         }
         this.§`R§();
      }
      
      public function §`R§() : void
      {
         if(this.§6;§() || this.§=!Q§ == null)
         {
            return;
         }
         if(this.§&!k§.§`R§())
         {
            this.§=!Q§.dispose();
            this.§=!Q§ = null;
            this.§4!f§ = this.§04§;
            this.§04§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
