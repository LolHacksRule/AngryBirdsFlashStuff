package §&?§
{
   import §3"V§.§ b§;
   import §4S§.§@§;
   import §7"T§.§#"^§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §<$9§ extends EventDispatcher
   {
       
      
      private var §@"_§:String = "";
      
      private var §4"N§:String;
      
      private var § "]§:Dictionary;
      
      private var §>"a§:Vector.<String>;
      
      private var §<#2§:String = null;
      
      private var §,"G§:String = null;
      
      private var §?#+§:Array;
      
      private var §4$?§:String = null;
      
      private var §="P§:Array;
      
      private var §,#m§:Array;
      
      private var §^#W§:Boolean;
      
      private var §>"l§:String = null;
      
      private var §3"3§:Array;
      
      private var §&!$§:URLLoader;
      
      protected var §6!]§:§!M§;
      
      protected var §-i§:§#"^§;
      
      protected var §3!9§:Vector.<§#"^§>;
      
      private var §2"G§:String = "pak";
      
      private var § !z§:Boolean = true;
      
      private var §else§:int = 1;
      
      public function §<$9§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§ "]§ = new Dictionary();
         this.§>"a§ = new Vector.<String>();
         this.§?#+§ = [];
         this.§="P§ = [];
         this.§,#m§ = [];
         this.§3"3§ = [];
         this.§3!9§ = new Vector.<§#"^§>();
         super();
         this.§@"_§ = param2;
         this.§4"N§ = param1;
         this.§ !z§ = param3;
         this.§else§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §#"^§
      {
         return this.§-i§;
      }
      
      private function §#!a§(param1:String) : Boolean
      {
         var _loc3_:§#"^§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!9§.length)
         {
            _loc3_ = this.§3!9§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§-i§ = _loc3_;
               this.§<#2§ = param1;
               this.§3!9§.splice(_loc2_,1);
               this.§3!9§.unshift(this.§-i§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §]k§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§ "]§[param1] != null;
      }
      
      public function §"#S§(param1:Array) : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§8#"§(_loc2_);
            if(!this.§]k§(_loc3_))
            {
               if(§ b§.§[l§(_loc3_,false))
               {
                  return true;
               }
               return false;
            }
         }
         return true;
      }
      
      public function §[#Q§(param1:String, param2:Array = null) : void
      {
         if(!param2)
         {
            param2 = [param1];
         }
         else
         {
            param2 = param2.concat();
         }
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            param2[_loc3_] = param2[_loc3_].toLowerCase();
            _loc3_--;
         }
         param1 = param1.toLowerCase();
         if(this.§9$$§())
         {
            if(!this.§3">§())
            {
               this.§>"l§ = param1;
               this.§3"3§ = param2.concat();
               return;
            }
         }
         this.§,"G§ = param1;
         if(this.§"#S§(param2))
         {
            this.§#!a§(param1);
            if(param1 == this.§<#2§ || !this.§ !z§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§2#s§(param2);
            }
         }
         else
         {
            this.§<#A§(param2);
         }
      }
      
      private function §2#E§(param1:Object) : Boolean
      {
         return param1 is XML;
      }
      
      private function §8#"§(param1:Object) : String
      {
         var _loc2_:String = null;
         if(param1 is XML)
         {
            _loc2_ = (param1 as XML).@url;
         }
         else
         {
            _loc2_ = String(param1);
         }
         return _loc2_;
      }
      
      private function §@#c§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         this.§,#m§ = [];
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§8#"§(_loc2_);
            if(!this.§]k§(_loc3_))
            {
               this.§,#m§.push(_loc2_);
            }
         }
      }
      
      private function §<#A§(param1:Array) : void
      {
         this.§?#+§ = param1.concat();
         this.§@#c§(param1);
         this.§?!h§();
      }
      
      private function §?!h§() : Boolean
      {
         if(this.§,#m§.length == 0)
         {
            this.§4$?§ = null;
            return false;
         }
         var _loc1_:Object = this.§,#m§.pop();
         this.§4$?§ = this.§8#"§(_loc1_);
         var _loc2_:String = "";
         if(this.§@"_§ != null && this.§@"_§.length > 0)
         {
            _loc2_ = "?version=" + this.§@"_§;
         }
         this.§&!$§ = new §@#1§(null,3,50);
         this.§&!$§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§&!$§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§&!$§.addEventListener(IOErrorEvent.IO_ERROR,this.§4"d§);
         this.§&!$§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"d§);
         var _loc3_:String = this.getFullFilename(this.§4$?§);
         this.§&!$§.load(new URLRequest(_loc3_ + _loc2_));
         return true;
      }
      
      protected function getFullFilename(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§2"G§;
      }
      
      private function §9$$§() : Boolean
      {
         return this.§&!$§ || this.§^#W§;
      }
      
      private function §3">§() : Boolean
      {
         if(this.§&!$§)
         {
            this.§&!$§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§&!$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"d§);
            this.§&!$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"d§);
            try
            {
               this.§&!$§.close();
            }
            catch(e:Error)
            {
            }
            this.§&!$§ = null;
         }
         if(this.§^#W§)
         {
            return false;
         }
         return true;
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§&!$§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§&!$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"d§);
         this.§&!$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"d§);
         this.§ "]§[this.§4$?§] = this.§&!$§.data;
         this.§&!$§ = null;
         if(!this.§?!h§())
         {
            this.§2#s§(this.§?#+§);
         }
      }
      
      private function §4"d§(param1:Event) : void
      {
         this.§&!$§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§&!$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"d§);
         this.§&!$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"d§);
         this.§&!$§.close();
         this.§&!$§ = null;
         this.§,"G§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §!M§
      {
         return new §!M§();
      }
      
      protected function §5"[§() : void
      {
         if(this.§6!]§)
         {
            this.§6!]§.dispose();
            this.§6!]§ = null;
         }
      }
      
      private function §2#s§(param1:Array) : void
      {
         var _loc2_:§#"^§ = null;
         this.§^#W§ = true;
         while(this.§3!9§.length >= this.§else§)
         {
            _loc2_ = this.§3!9§.pop();
            _loc2_.dispose();
         }
         this.§5"[§();
         this.§-i§ = new §#"^§(this.§,"G§);
         this.§3!9§.unshift(this.§-i§);
         this.§6!]§ = this.initPackageLoader();
         this.§="P§ = param1.concat();
         this.§6"e§();
      }
      
      private function §6"e§() : Boolean
      {
         if(this.§="P§.length == 0)
         {
            return false;
         }
         var _loc1_:Object = this.§="P§.pop();
         var _loc2_:String = this.§8#"§(_loc1_);
         this.§6!]§.addEventListener(Event.COMPLETE,this.§"y§);
         var _loc3_:* = this.§>"a§.indexOf(_loc2_) < 0;
         if(_loc3_)
         {
            this.§>"a§.push(_loc2_);
         }
         this.§6!]§.§5t§(this.§ "]§[_loc1_],_loc2_,_loc3_,!!this.§2#E§(_loc1_) ? XML(_loc1_) : null);
         return true;
      }
      
      private function §"y§(param1:Event) : void
      {
         this.§^#W§ = false;
         this.§6!]§.removeEventListener(Event.COMPLETE,this.§"y§);
         if(this.§>"l§)
         {
            this.§[#Q§(this.§>"l§,this.§3"3§);
            this.§>"l§ = null;
            this.§3"3§ = null;
            return;
         }
         if(this.§6"e§())
         {
            return;
         }
         var _loc2_:int = this.§6!]§.§-#<§.§&![§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§-i§.§#$8§(this.§6!]§.§-#<§.§`$C§(_loc3_),0);
            _loc3_++;
         }
         if(_loc2_ > 0)
         {
            this.§ v§();
         }
         else
         {
            this.§'!%§();
         }
      }
      
      public function § v§() : void
      {
         if(this.§9$$§() || this.§6!]§ == null)
         {
            return;
         }
         this.§-i§.removeEventListener(Event.INIT,this.§#`§);
         if(this.§-i§.§ v§())
         {
            this.§'!%§();
         }
         else
         {
            this.§-i§.addEventListener(Event.INIT,this.§#`§);
         }
      }
      
      private function §'!%§() : void
      {
         this.§5"[§();
         this.§<#2§ = this.§,"G§;
         this.§,"G§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §#`§(param1:Event) : void
      {
         this.§'!%§();
      }
   }
}
