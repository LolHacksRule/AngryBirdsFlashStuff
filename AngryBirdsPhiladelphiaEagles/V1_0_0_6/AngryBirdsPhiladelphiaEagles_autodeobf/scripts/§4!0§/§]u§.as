package §4!0§
{
   import §16§.§!y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §]u§ extends EventDispatcher
   {
       
      
      private var §6D§:String = "";
      
      private var §62§:String;
      
      private var §5s§:URLLoader;
      
      private var §7!@§:Dictionary;
      
      private var §4>§:String = null;
      
      private var §?Z§:String = null;
      
      private var §'M§:String = null;
      
      private var §#!<§:Boolean;
      
      private var §5#§:§!y§;
      
      private var §"P§:§3§;
      
      private var § 5§:Vector.<§3§>;
      
      private var §5!9§:String = "pak";
      
      private var §<1§:Boolean = true;
      
      private var §1p§:int = 1;
      
      public function §]u§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§7!@§ = new Dictionary();
         this.§ 5§ = new Vector.<§3§>();
         super();
         this.§6D§ = param2;
         this.§62§ = param1;
         this.§<1§ = param3;
         this.§1p§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §3§
      {
         return this.§"P§;
      }
      
      public function §>!7§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§7!@§[param1] != null;
      }
      
      private function §^h§(param1:String) : Boolean
      {
         var _loc3_:§3§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ 5§.length)
         {
            _loc3_ = this.§ 5§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§"P§ = _loc3_;
               this.§4>§ = param1;
               this.§ 5§.splice(_loc2_,1);
               this.§ 5§.unshift(this.§"P§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §;a§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§ u§())
         {
            if(!this.§>!,§())
            {
               this.§'M§ = param1;
               return;
            }
         }
         if(this.§>!7§(param1))
         {
            this.§^h§(param1);
            if(param1 == this.§4>§ || !this.§<1§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§0A§(param1,false);
            }
         }
         else
         {
            this.§2!F§(param1);
         }
      }
      
      private function §2!F§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§6D§ != null && this.§6D§.length > 0)
         {
            _loc2_ = "?version=" + this.§6D§;
         }
         this.§?Z§ = param1;
         this.§5s§ = new URLLoader();
         this.§5s§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§5s§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§5s§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5s§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5s§.load(new URLRequest(this.§62§ + "packages/" + param1 + "." + this.§5!9§ + _loc2_));
      }
      
      private function § u§() : Boolean
      {
         return this.§5s§ || this.§#!<§;
      }
      
      private function §>!,§() : Boolean
      {
         if(this.§5s§)
         {
            this.§5s§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§5s§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§5s§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§5s§.close();
            this.§5s§ = null;
         }
         if(this.§#!<§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§5s§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§5s§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5s§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§7!@§[this.§?Z§] = this.§5s§.data;
         this.§5s§ = null;
         this.§0A§(this.§?Z§,true);
      }
      
      private function §0A§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§3§ = null;
         this.§#!<§ = true;
         this.§?Z§ = param1;
         while(this.§ 5§.length >= this.§1p§)
         {
            _loc3_ = this.§ 5§.pop();
            _loc3_.dispose();
         }
         if(this.§5#§)
         {
            this.§5#§.dispose();
         }
         this.§"P§ = new §3§(param1);
         this.§ 5§.unshift(this.§"P§);
         this.§5#§ = new §!y§();
         this.§5#§.addEventListener(Event.COMPLETE,this.§&M§);
         this.§5#§.§try§(this.§7!@§[this.§?Z§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§5s§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§5s§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5s§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5s§.close();
         this.§5s§ = null;
         this.§?Z§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §&M§(param1:Event) : void
      {
         this.§#!<§ = false;
         this.§5#§.removeEventListener(Event.COMPLETE,this.§&M§);
         if(this.§'M§)
         {
            this.§;a§(this.§'M§);
            this.§'M§ = null;
            return;
         }
         var _loc2_:int = this.§5#§.§=g§.§@B§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§"P§.§-'§(this.§5#§.§=g§.§=!4§(_loc3_));
            _loc3_++;
         }
         this.§]+§();
      }
      
      public function §]+§() : void
      {
         if(this.§ u§() || this.§5#§ == null)
         {
            return;
         }
         if(this.§"P§.§]+§())
         {
            this.§5#§.dispose();
            this.§5#§ = null;
            this.§4>§ = this.§?Z§;
            this.§?Z§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
