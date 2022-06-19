package §1k§
{
   import flash.events.Event;
   
   public class §;W§
   {
       
      
      private var §2"4§:String = "";
      
      private var §@">§:String = "";
      
      private var §@j§:String = "";
      
      private var §8"8§:Boolean = false;
      
      private var §+e§:Vector.<§5m§>;
      
      private var §,P§:§ !!§;
      
      public function §;W§()
      {
         super();
         this.§,P§ = new § !!§();
         this.§+e§ = new Vector.<§5m§>();
         §%4§.addEventListener(§]"!§.§+!B§,this.§9!b§);
         §%4§.addEventListener(§7" §.§!"0§,this.§="!§);
         §%4§.addEventListener(§7" §.§[!B§,this.§="!§);
      }
      
      private function §7!0§() : §'"9§
      {
         var _loc1_:§ !M§ = §%4§.§+!y§(this.§@">§);
         return _loc1_.§finally§(this.§2"4§);
      }
      
      private function §=!<§() : void
      {
         this.§,P§.removeEventListener(Event.COMPLETE,this.§8v§);
         this.§,P§.removeEventListener(Event.COMPLETE,this.§1!E§);
         this.§,P§.§!k§(this.§2"4§);
      }
      
      private function §]y§(param1:String) : §5m§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+e§.length)
         {
            if(param1 == this.§+e§[_loc2_].songId)
            {
               return this.§+e§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §&X§() : Boolean
      {
         if(§%4§.§+!y§(this.§@">§) != null)
         {
            §%4§.§&"@§(this.§@">§);
            return true;
         }
         return false;
      }
      
      public function §<!a§(param1:§5m§) : void
      {
         this.§+e§.push(param1);
      }
      
      public function §&" §() : void
      {
         this.§=!<§();
         this.§&X§();
         this.§2"4§ = "";
         this.§@">§ = "";
      }
      
      public function §>4§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§'"9§ = null;
         if(this.§2"4§ == param1 && !param2)
         {
            return;
         }
         this.§8"8§ = param2;
         this.§@j§ = param1;
         if(§%4§.§+!y§(this.§@">§) != null && §%4§.§+!y§(this.§@">§).§^^§())
         {
            _loc3_ = this.§7!0§();
            this.§=!<§();
            this.§,P§.addEventListener(Event.COMPLETE,this.§8v§);
            this.§,P§.§2!F§(this.§2"4§,_loc3_,0.5);
         }
         else
         {
            this.§8v§();
         }
      }
      
      public function §2T§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§2"4§ == param1 && !param3)
         {
            return;
         }
         this.§8"8§ = false;
         this.§&" §();
         var _loc4_:§5m§;
         if((_loc4_ = this.§]y§(param1)) == null)
         {
            return;
         }
         this.§2"4§ = _loc4_.songId;
         this.§@">§ = _loc4_.§8!<§;
         this.§@j§ = "";
         var _loc5_:§ !M§;
         if(!(_loc5_ = §%4§.§+!y§(this.§@">§)))
         {
            §%4§.§>$§(this.§@">§,1,1);
         }
         var _loc6_:§'"9§;
         if((_loc6_ = this.§-H§(_loc4_)) == null)
         {
            return;
         }
         if(param2)
         {
            this.§,P§.addEventListener(Event.COMPLETE,this.§1!E§);
            this.§,P§.§1x§(this.§2"4§,_loc6_,0.5);
         }
         else
         {
            _loc6_.volume = 1;
         }
      }
      
      private function §-H§(param1:§5m§) : §'"9§
      {
         var _loc2_:§'"9§ = null;
         if(param1.§1!b§ != "")
         {
            _loc2_ = §%4§.§2"#§(param1.§1!b§,param1.songId,param1.§5!#§,param1.§8!<§,param1.§36§,param1.volume);
         }
         else
         {
            _loc2_ = §%4§.§>f§(param1.songId,param1.§8!<§,param1.§36§,param1.volume);
         }
         return _loc2_;
      }
      
      private function §8v§(param1:Event = null) : void
      {
         this.§2T§(this.§@j§,true,this.§8"8§);
      }
      
      private function §1!E§(param1:Event = null) : void
      {
         this.§,P§.removeEventListener(Event.COMPLETE,this.§1!E§);
      }
      
      private function §9!b§(param1:§]"!§) : void
      {
         if(param1.§?!i§ == this.§2"4§)
         {
            this.§&" §();
         }
      }
      
      private function §="!§(param1:§7" §) : void
      {
         if(param1.type == §7" §.§[!B§)
         {
            if(param1.§8!<§ == this.§@">§)
            {
               this.§=!<§();
               this.§2"4§ = "";
               this.§@">§ = "";
            }
         }
         else
         {
            this.§=!<§();
            this.§2"4§ = "";
            this.§@">§ = "";
         }
      }
   }
}
