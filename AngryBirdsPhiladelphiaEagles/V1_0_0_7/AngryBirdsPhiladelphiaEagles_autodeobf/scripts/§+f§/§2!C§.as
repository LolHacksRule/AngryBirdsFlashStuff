package §+f§
{
   import §&[§.§6M§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §2!C§ extends EventDispatcher
   {
       
      
      private var §>!§:String = "";
      
      private var §'!>§:String;
      
      private var §"+§:URLLoader;
      
      private var §#!1§:Dictionary;
      
      private var §^P§:String = null;
      
      private var §[T§:String = null;
      
      private var §8"§:String = null;
      
      private var §@0§:Boolean;
      
      private var §#T§:§6M§;
      
      private var §;?§:§4!8§;
      
      private var §%!C§:Vector.<§4!8§>;
      
      private var §5L§:String = "pak";
      
      private var §%! §:Boolean = true;
      
      private var §6!<§:int = 1;
      
      public function §2!C§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§#!1§ = new Dictionary();
         this.§%!C§ = new Vector.<§4!8§>();
         super();
         this.§>!§ = param2;
         this.§'!>§ = param1;
         this.§%! § = param3;
         this.§6!<§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §4!8§
      {
         return this.§;?§;
      }
      
      public function §2!%§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§#!1§[param1] != null;
      }
      
      private function §"=§(param1:String) : Boolean
      {
         var _loc3_:§4!8§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!C§.length)
         {
            _loc3_ = this.§%!C§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§;?§ = _loc3_;
               this.§^P§ = param1;
               this.§%!C§.splice(_loc2_,1);
               this.§%!C§.unshift(this.§;?§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §6e§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§5c§())
         {
            if(!this.§[m§())
            {
               this.§8"§ = param1;
               return;
            }
         }
         if(this.§2!%§(param1))
         {
            this.§"=§(param1);
            if(param1 == this.§^P§ || !this.§%! §)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§;-§(param1,false);
            }
         }
         else
         {
            this.§<j§(param1);
         }
      }
      
      private function §<j§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§>!§ != null && this.§>!§.length > 0)
         {
            _loc2_ = "?version=" + this.§>!§;
         }
         this.§[T§ = param1;
         this.§"+§ = new URLLoader();
         this.§"+§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§"+§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§"+§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"+§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§"+§.load(new URLRequest(this.§'!>§ + "packages/" + param1 + "." + this.§5L§ + _loc2_));
      }
      
      private function §5c§() : Boolean
      {
         return this.§"+§ || this.§@0§;
      }
      
      private function §[m§() : Boolean
      {
         if(this.§"+§)
         {
            this.§"+§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§"+§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§"+§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§"+§.close();
            this.§"+§ = null;
         }
         if(this.§@0§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§"+§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§"+§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"+§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§#!1§[this.§[T§] = this.§"+§.data;
         this.§"+§ = null;
         this.§;-§(this.§[T§,true);
      }
      
      private function §;-§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§4!8§ = null;
         this.§@0§ = true;
         this.§[T§ = param1;
         while(this.§%!C§.length >= this.§6!<§)
         {
            _loc3_ = this.§%!C§.pop();
            _loc3_.dispose();
         }
         if(this.§#T§)
         {
            this.§#T§.dispose();
         }
         this.§;?§ = new §4!8§(param1);
         this.§%!C§.unshift(this.§;?§);
         this.§#T§ = new §6M§();
         this.§#T§.addEventListener(Event.COMPLETE,this.§0n§);
         this.§#T§.§5m§(this.§#!1§[this.§[T§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§"+§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§"+§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"+§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§"+§.close();
         this.§"+§ = null;
         this.§[T§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §0n§(param1:Event) : void
      {
         this.§@0§ = false;
         this.§#T§.removeEventListener(Event.COMPLETE,this.§0n§);
         if(this.§8"§)
         {
            this.§6e§(this.§8"§);
            this.§8"§ = null;
            return;
         }
         var _loc2_:int = this.§#T§.§68§.§23§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§;?§.§?w§(this.§#T§.§68§.§>0§(_loc3_));
            _loc3_++;
         }
         this.§]M§();
      }
      
      public function §]M§() : void
      {
         if(this.§5c§() || this.§#T§ == null)
         {
            return;
         }
         if(this.§;?§.§]M§())
         {
            this.§#T§.dispose();
            this.§#T§ = null;
            this.§^P§ = this.§[T§;
            this.§[T§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
