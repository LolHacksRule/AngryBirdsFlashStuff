package §%O§
{
   import §`r§.§>Z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §&t§ extends EventDispatcher
   {
       
      
      private var § 3§:String = "";
      
      private var §]t§:String;
      
      private var §<!R§:URLLoader;
      
      private var §,![§:Dictionary;
      
      private var §!A§:String = null;
      
      private var §&!3§:String = null;
      
      private var §=<§:String = null;
      
      private var §8!%§:Boolean;
      
      private var §+!B§:§>Z§;
      
      private var §^4§:§ !§;
      
      private var §[!1§:Vector.<§ !§>;
      
      private var §<]§:String = "pak";
      
      private var §3n§:Boolean = true;
      
      private var §6V§:int = 1;
      
      public function §&t§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§,![§ = new Dictionary();
         this.§[!1§ = new Vector.<§ !§>();
         super();
         this.§ 3§ = param2;
         this.§]t§ = param1;
         this.§3n§ = param3;
         this.§6V§ = Math.max(1,param4);
      }
      
      public function get textureManager() : § !§
      {
         return this.§^4§;
      }
      
      public function §`E§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§,![§[param1] != null;
      }
      
      private function §`!3§(param1:String) : Boolean
      {
         var _loc3_:§ !§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!1§.length)
         {
            _loc3_ = this.§[!1§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§^4§ = _loc3_;
               this.§!A§ = param1;
               this.§[!1§.splice(_loc2_,1);
               this.§[!1§.unshift(this.§^4§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §=!]§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§4D§())
         {
            if(!this.§]!R§())
            {
               this.§=<§ = param1;
               return;
            }
         }
         if(this.§`E§(param1))
         {
            this.§`!3§(param1);
            if(param1 == this.§!A§ || !this.§3n§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§6!P§(param1,false);
            }
         }
         else
         {
            this.§%!F§(param1);
         }
      }
      
      private function §%!F§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§ 3§ != null && this.§ 3§.length > 0)
         {
            _loc2_ = "?version=" + this.§ 3§;
         }
         this.§&!3§ = param1;
         this.§<!R§ = new URLLoader();
         this.§<!R§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§<!R§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§<!R§.addEventListener(IOErrorEvent.IO_ERROR,this.§=!&§);
         this.§<!R§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!&§);
         this.§<!R§.load(new URLRequest(this.§]t§ + "packages/" + param1 + "." + this.§<]§ + _loc2_));
      }
      
      private function §4D§() : Boolean
      {
         return this.§<!R§ || this.§8!%§;
      }
      
      private function §]!R§() : Boolean
      {
         if(this.§<!R§)
         {
            this.§<!R§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§<!R§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!&§);
            this.§<!R§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!&§);
            this.§<!R§.close();
            this.§<!R§ = null;
         }
         if(this.§8!%§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§<!R§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§<!R§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!&§);
         this.§<!R§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!&§);
         this.§,![§[this.§&!3§] = this.§<!R§.data;
         this.§<!R§ = null;
         this.§6!P§(this.§&!3§,true);
      }
      
      private function §6!P§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§ !§ = null;
         this.§8!%§ = true;
         this.§&!3§ = param1;
         while(this.§[!1§.length >= this.§6V§)
         {
            _loc3_ = this.§[!1§.pop();
            _loc3_.dispose();
         }
         if(this.§+!B§)
         {
            this.§+!B§.dispose();
         }
         this.§^4§ = new § !§(param1);
         this.§[!1§.unshift(this.§^4§);
         this.§+!B§ = new §>Z§();
         this.§+!B§.addEventListener(Event.COMPLETE,this.§!!A§);
         this.§+!B§.§!<§(this.§,![§[this.§&!3§],param2);
      }
      
      private function §=!&§(param1:Event) : void
      {
         this.§<!R§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§<!R§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!&§);
         this.§<!R§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!&§);
         this.§<!R§.close();
         this.§<!R§ = null;
         this.§&!3§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §!!A§(param1:Event) : void
      {
         this.§8!%§ = false;
         this.§+!B§.removeEventListener(Event.COMPLETE,this.§!!A§);
         if(this.§=<§)
         {
            this.§=!]§(this.§=<§);
            this.§=<§ = null;
            return;
         }
         var _loc2_:int = this.§+!B§.§82§.§ !`§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^4§.§"!0§(this.§+!B§.§82§.§4q§(_loc3_));
            _loc3_++;
         }
         this.§%d§();
      }
      
      public function §%d§() : void
      {
         if(this.§4D§() || this.§+!B§ == null)
         {
            return;
         }
         if(this.§^4§.§%d§())
         {
            this.§+!B§.dispose();
            this.§+!B§ = null;
            this.§!A§ = this.§&!3§;
            this.§&!3§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
