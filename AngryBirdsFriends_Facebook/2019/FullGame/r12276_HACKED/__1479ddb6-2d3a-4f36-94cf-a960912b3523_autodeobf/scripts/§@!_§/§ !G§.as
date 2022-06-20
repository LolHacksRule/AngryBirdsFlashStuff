package §@!_§
{
   import §#"3§.§4!h§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §7"1§.§="A§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class § !G§ extends EventDispatcher
   {
      
      public static const §-y§:String = "SeenItems";
      
      public static const §!"J§:String = "CurrentSlingshot";
      
      public static const §0"z§:String = "SoundSetting";
      
      public static const § #w§:String = "TabSelection";
      
      public static const §`#%§:String = "PersonalizedOffer";
      
      public static const §=#^§:String = "FBPixelReport";
      
      private static const §62§:String = "clnDupSnItms";
       
      
      private var §<#G§:§5"f§;
      
      private var §2m§:Boolean = false;
      
      private var §<$?§:Object;
      
      public function § !G§()
      {
         super();
         this.§<$?§ = new Object();
      }
      
      public function get §#!?§() : Boolean
      {
         return this.§2m§;
      }
      
      public function §<F§() : void
      {
         if(this.§2m§)
         {
            return;
         }
         this.§2m§ = true;
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/retrieve?st=" + §="A§.§<!9§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§<#G§ = new §5"f§();
         this.§<#G§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,this.§!#,§);
         this.§<#G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#,§);
         this.§<#G§.addEventListener(§;" §.§`S§,this.§!#,§);
         this.§<#G§.load(_loc1_);
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§2m§ = false;
         if(param1.target.data is String)
         {
            this.§<$?§ = JSON.parse(param1.target.data);
            this.§[#d§();
         }
         this.§<#G§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §[#d§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Boolean = this.§<$?§[§62§];
         var _loc2_:Array = this.§<$?§[§-y§];
         if(_loc2_ != null && !_loc1_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length - 1)
            {
               _loc4_ = _loc3_ + 1;
               while(_loc4_ < _loc2_.length)
               {
                  if(_loc2_[_loc3_] === _loc2_[_loc4_])
                  {
                     _loc2_.splice(_loc4_,1);
                  }
                  _loc4_++;
               }
               _loc3_++;
            }
         }
         this.§<$?§[§62§] = true;
      }
      
      private function §!#,§(param1:ErrorEvent) : void
      {
         this.§2m§ = false;
         §4!h§.log("[Error!] Can\'t get the client storage data: " + param1.type);
         this.§<#G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!#,§);
         this.§<#G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#,§);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §""C§(param1:String, param2:Object, param3:Boolean = false) : void
      {
         var _loc6_:* = null;
         var _loc7_:URLRequest = null;
         if(this.§2m§)
         {
            return;
         }
         if(param3 || !this.§<$?§[param1])
         {
            if(param2 is Array)
            {
               this.§<$?§[param1] = new Array();
            }
            else
            {
               this.§<$?§[param1] = new Object();
            }
         }
         var _loc4_:Boolean = param3;
         var _loc5_:* = this.§<$?§[param1] is Array;
         for(_loc6_ in param2)
         {
            if(_loc5_)
            {
               this.§<$?§[param1].push(param2[_loc6_]);
            }
            else
            {
               this.§<$?§[param1][_loc6_] = param2[_loc6_];
            }
            _loc4_ = true;
         }
         if(_loc4_)
         {
            (_loc7_ = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/save?st=" + §="A§.§<!9§)).contentType = "application/json";
            _loc7_.data = JSON.stringify(this.§<$?§);
            _loc7_.method = URLRequestMethod.POST;
            this.§<#G§ = new §5"f§();
            this.§<#G§.addEventListener(Event.COMPLETE,this.§+$&§);
            this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,this.§=!2§);
            this.§<#G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!2§);
            this.§<#G§.load(_loc7_);
         }
      }
      
      private function §+$&§(param1:Event) : void
      {
         this.§2m§ = false;
         this.§<#G§.removeEventListener(Event.COMPLETE,this.§+$&§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      private function §=!2§(param1:ErrorEvent) : void
      {
         this.§2m§ = false;
         §4!h§.log("[Error!] Can\'t save the client storage data: " + param1.type);
         this.§<#G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!2§);
         this.§<#G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!2§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      public function §6!D§(param1:String) : Object
      {
         if(!this.§<$?§[param1])
         {
            return null;
         }
         return this.§<$?§[param1];
      }
      
      public function §,!F§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Object = this.§6!D§(§ !G§.§-y§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_ == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}
