package §<"F§
{
   import §,l§.§+I§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §5!Y§.§9"6§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §6!G§
   {
       
      
      private var §4"T§:Array;
      
      private var §0>§:Number;
      
      private var §=^§:String;
      
      private var §?!K§:int;
      
      private var §8i§:Number;
      
      private var §%!N§:String;
      
      private var §2!H§:URLLoader;
      
      public function §6!G§(param1:Object)
      {
         super();
         if(param1.start || param1.start == 0)
         {
            this.§;x§(param1);
         }
      }
      
      public function §;x§(param1:Object) : void
      {
         this.§4"T§ = param1.drawCounts;
         this.§0>§ = param1.end;
         this.§=^§ = param1.email;
         this.§?!K§ = param1.entriesPerSlot;
         this.§8i§ = param1.start;
         this.§%!N§ = param1.token;
      }
      
      public function §34§() : int
      {
         return this.§4"T§.length * this.§?!K§;
      }
      
      public function §+"&§() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4"T§)
         {
            _loc1_ += _loc2_;
         }
         return _loc1_;
      }
      
      public function get email() : String
      {
         return this.§=^§;
      }
      
      public function get token() : String
      {
         return this.§%!N§;
      }
      
      public function get entriesPerSlot() : int
      {
         return this.§?!K§;
      }
      
      public function §+!n§() : Boolean
      {
         return this.§^!!§ >= this.entriesPerSlot;
      }
      
      public function get §^!!§() : int
      {
         if(this.§4"T§)
         {
            return this.§4"T§[this.§0"<§];
         }
         return 0;
      }
      
      public function get §>"R§() : int
      {
         return this.§4"T§.length;
      }
      
      public function §5t§() : Number
      {
         var _loc1_:int = this.§4"T§.length;
         var _loc2_:Number = this.§0>§ - this.§8i§;
         var _loc3_:Number = _loc2_ / _loc1_;
         var _loc4_:Number = this.§0"<§ * _loc3_;
         var _loc5_:int = this.§0"<§ + 1;
         var _loc6_:Number = this.§8i§ + _loc5_ * _loc3_;
         var _loc7_:Number = this.§9"%§.§ Y§.§?!;§;
         return Math.round(_loc6_ - _loc7_);
      }
      
      public function get §0"<§() : int
      {
         var _loc1_:Number = this.§9"%§.§ Y§.§?!;§;
         var _loc2_:int = this.§4"T§.length;
         var _loc3_:Number = _loc1_ - this.§8i§;
         var _loc4_:Number = this.§0>§ - this.§8i§;
         var _loc5_:Number = _loc3_ / _loc4_;
         return int(Math.floor(_loc5_ * _loc2_));
      }
      
      public function §;&§() : Boolean
      {
         if(!this.§9"%§.§ Y§)
         {
            return false;
         }
         return this.§9"%§.§ Y§.§?!;§ > this.§8i§ && this.§9"%§.§ Y§.§?!;§ < this.§0>§;
      }
      
      private function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
      
      public function § "A§() : void
      {
         var _loc1_:URLRequest = §9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/getdrawconfig/" + §["M§.§0<§);
         _loc1_.method = URLRequestMethod.POST;
         this.§2!H§ = new §3d§();
         this.§2!H§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§2!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
         this.§2!H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!q§);
         this.§2!H§.load(_loc1_);
      }
      
      protected function §2!q§(param1:SecurityErrorEvent) : void
      {
         §9"6§.§#!o§();
         this.§2!H§ = null;
      }
      
      private function §]!^§(param1:IOErrorEvent) : void
      {
         §9"6§.§#!o§();
         this.§2!H§ = null;
      }
      
      protected function onComplete(param1:Event) : void
      {
         var data:Object = null;
         var e:Event = param1;
         try
         {
            data = JSON.parse(e.currentTarget.data);
            if(data.draw && data.draw == §["M§.§0<§)
            {
               §%"S§.§!C§.§9"%§.§7"T§ = new §["M§(data);
            }
            if(§%"S§.§!C§.§9"%§.§7"T§.§-"5§ > 0)
            {
               §9"6§.§'0§();
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}
