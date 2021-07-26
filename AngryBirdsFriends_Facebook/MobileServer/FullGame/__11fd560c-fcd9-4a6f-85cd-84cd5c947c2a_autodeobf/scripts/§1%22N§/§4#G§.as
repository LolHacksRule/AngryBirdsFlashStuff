package §1"N§
{
   import §@V§.§!"j§;
   import §@V§.§1"V§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import §]!6§.§6Y§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §4#G§ extends EventDispatcher
   {
      
      public static const §<"9§:String = "SeenItems";
      
      public static const §^$&§:String = "CurrentSlingshot";
      
      public static const §[!^§:String = "SoundSetting";
      
      public static const §+!n§:String = "TabSelection";
      
      public static const §?6§:String = "PersonalizedOffer";
      
      public static const § 0§:String = "FBPixelReport";
      
      private static const §!!n§:String = "clnDupSnItms";
       
      
      private var §>v§:§1"V§;
      
      private var §"6§:Boolean = false;
      
      private var §;" §:Object;
      
      public function §4#G§()
      {
         super();
         this.§;" § = new Object();
      }
      
      public function get §8R§() : Boolean
      {
         return this.§"6§;
      }
      
      public function §^!M§() : void
      {
         if(this.§"6§)
         {
            return;
         }
         this.§"6§ = true;
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/retrieve?st=" + §!"j§.§-J§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§>v§ = new §1"V§();
         this.§>v§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.§3e§);
         this.§>v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3e§);
         this.§>v§.addEventListener(§;m§.§!$5§,this.§3e§);
         this.§>v§.load(_loc1_);
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§"6§ = false;
         if(param1.target.data is String)
         {
            this.§;" § = JSON.parse(param1.target.data);
            this.§'#n§();
         }
         this.§>v§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §'#n§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Boolean = this.§;" §[§!!n§];
         var _loc2_:Array = this.§;" §[§<"9§];
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
         this.§;" §[§!!n§] = true;
      }
      
      private function §3e§(param1:ErrorEvent) : void
      {
         this.§"6§ = false;
         §6Y§.log("[Error!] Can\'t get the client storage data: " + param1.type);
         this.§>v§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3e§);
         this.§>v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3e§);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §&"E§(param1:String, param2:Object, param3:Boolean = false) : void
      {
         var _loc6_:* = null;
         var _loc7_:URLRequest = null;
         if(this.§"6§)
         {
            return;
         }
         if(param3 || !this.§;" §[param1])
         {
            if(param2 is Array)
            {
               this.§;" §[param1] = new Array();
            }
            else
            {
               this.§;" §[param1] = new Object();
            }
         }
         var _loc4_:Boolean = param3;
         var _loc5_:* = this.§;" §[param1] is Array;
         for(_loc6_ in param2)
         {
            if(_loc5_)
            {
               this.§;" §[param1].push(param2[_loc6_]);
            }
            else
            {
               this.§;" §[param1][_loc6_] = param2[_loc6_];
            }
            _loc4_ = true;
         }
         if(_loc4_)
         {
            (_loc7_ = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/save?st=" + §!"j§.§-J§)).contentType = "application/json";
            _loc7_.data = JSON.stringify(this.§;" §);
            _loc7_.method = URLRequestMethod.POST;
            this.§>v§ = new §1"V§();
            this.§>v§.addEventListener(Event.COMPLETE,this.§!t§);
            this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.§["§);
            this.§>v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§["§);
            this.§>v§.load(_loc7_);
         }
      }
      
      private function §!t§(param1:Event) : void
      {
         this.§"6§ = false;
         this.§>v§.removeEventListener(Event.COMPLETE,this.§!t§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      private function §["§(param1:ErrorEvent) : void
      {
         this.§"6§ = false;
         §6Y§.log("[Error!] Can\'t save the client storage data: " + param1.type);
         this.§>v§.removeEventListener(IOErrorEvent.IO_ERROR,this.§["§);
         this.§>v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§["§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      public function § ""§(param1:String) : Object
      {
         if(!this.§;" §[param1])
         {
            return null;
         }
         return this.§;" §[param1];
      }
      
      public function §<#x§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Object = this.§ ""§(§4#G§.§<"9§);
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
