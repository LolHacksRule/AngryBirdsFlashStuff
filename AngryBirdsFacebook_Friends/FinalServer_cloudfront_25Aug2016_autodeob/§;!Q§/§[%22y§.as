package §;!Q§
{
   import §%$!§.§+3§;
   import §?"R§.§[W§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import §^!,§.§<d§;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §["y§
   {
       
      
      private var §`"M§:Array;
      
      private var §95§:Number;
      
      private var § #U§:String;
      
      private var §8"V§:int;
      
      private var §7"5§:Number;
      
      private var §@!$§:String;
      
      private var § each§:§5$!§;
      
      public function §["y§(param1:Object)
      {
         super();
         if(param1.start)
         {
            this.§^"d§(param1);
         }
      }
      
      public function §^"d§(param1:Object) : void
      {
         this.§`"M§ = param1.drawCounts;
         this.§95§ = param1.end;
         this.§ #U§ = param1.email;
         this.§8"V§ = param1.entriesPerSlot;
         this.§7"5§ = param1.start;
         this.§@!$§ = param1.token;
      }
      
      public function §@N§() : int
      {
         return this.§`"M§.length * this.§8"V§;
      }
      
      public function §;#$§() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§`"M§)
         {
            _loc1_ += _loc2_;
         }
         return _loc1_;
      }
      
      public function get email() : String
      {
         return this.§ #U§;
      }
      
      public function get token() : String
      {
         return this.§@!$§;
      }
      
      public function get entriesPerSlot() : int
      {
         return this.§8"V§;
      }
      
      public function §5c§() : Boolean
      {
         return this.§8!E§ >= this.entriesPerSlot;
      }
      
      public function get §8!E§() : int
      {
         if(this.§`"M§)
         {
            return this.§`"M§[this.§-"4§];
         }
         return 0;
      }
      
      public function get §-"E§() : int
      {
         return this.§`"M§.length;
      }
      
      public function §^A§() : Number
      {
         var _loc1_:int = this.§`"M§.length;
         var _loc2_:Number = this.§95§ - this.§7"5§;
         var _loc3_:Number = _loc2_ / _loc1_;
         Number(this.§-"4§ * _loc3_);
         var _loc5_:int = this.§-"4§ + 1;
         var _loc6_:Number = this.§7"5§ + _loc5_ * _loc3_;
         var _loc7_:Number = this.dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         return Math.round(_loc6_ - _loc7_);
      }
      
      public function get §-"4§() : int
      {
         var _loc1_:Number = this.dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = this.§`"M§.length;
         var _loc3_:Number = _loc1_ - this.§7"5§;
         var _loc4_:Number = this.§95§ - this.§7"5§;
         var _loc5_:Number = _loc3_ / _loc4_;
         return int(Math.floor(_loc5_ * _loc2_));
      }
      
      public function §6#n§() : Boolean
      {
         return this.dataModel.serverSynchronizedTime.synchronizedTimeStamp > this.§7"5§ && this.dataModel.serverSynchronizedTime.synchronizedTimeStamp < this.§95§;
      }
      
      private function get dataModel() : §+3§
      {
         return §+3§(§8G§.§%#S§.dataModel);
      }
      
      public function §+"J§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/getdrawconfig/" + §7B§.§2!k§);
         _loc1_.method = URLRequestMethod.POST;
         this.§ each§ = new §5$!§();
         this.§ each§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§ each§.load(_loc1_);
      }
      
      protected function onComplete(param1:Event) : void
      {
         var data:Object = null;
         var e:Event = param1;
         try
         {
            data = e.currentTarget.data;
            if(data.draw && data.draw == §7B§.§2!k§)
            {
               §+3§(§8G§.§%#S§.dataModel).§&!?§ = new §7B§(data);
            }
            if(§+3§(§8G§.§%#S§.dataModel).§&!?§.§["6§ > 0)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new §]"6§(§[W§.NORMAL,§<d§.DEFAULT));
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}
