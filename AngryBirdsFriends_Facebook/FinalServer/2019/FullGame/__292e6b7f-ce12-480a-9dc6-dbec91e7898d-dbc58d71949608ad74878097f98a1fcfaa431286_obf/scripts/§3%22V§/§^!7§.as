package §3"V§
{
   import flash.events.Event;
   
   public class §^!7§
   {
       
      
      private var §3#b§:String = "";
      
      private var §&!D§:String = "";
      
      private var §,!Y§:String = "";
      
      private var §'#$§:Boolean = false;
      
      private var §5!§:Vector.<§%o§>;
      
      private var §3$%§:§9#u§;
      
      private var § ";§:Number = 0;
      
      private var §'!m§:String;
      
      public function §^!7§()
      {
         super();
         this.§3$%§ = new §9#u§();
         this.§5!§ = new Vector.<§%o§>();
         § b§.addEventListener(§`"g§.§+#B§,this.§7v§);
         § b§.addEventListener(§%d§.§25§,this.§?$=§);
         § b§.addEventListener(§%d§.§6!_§,this.§?$=§);
      }
      
      private function §"!Q§() : §9$8§
      {
         var _loc1_:§3,§ = § b§.§]!L§(this.§&!D§);
         return _loc1_.§8"K§(this.§3#b§);
      }
      
      private function §;!8§() : void
      {
         this.§3$%§.removeEventListener(Event.COMPLETE,this.§>G§);
         this.§3$%§.removeEventListener(Event.COMPLETE,this.§^!T§);
         this.§3$%§.§[6§(this.§3#b§);
      }
      
      private function §9#[§(param1:String) : §%o§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!§.length)
         {
            if(param1 == this.§5!§[_loc2_].songId)
            {
               return this.§5!§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §-,§() : Boolean
      {
         if(§ b§.§]!L§(this.§&!D§) != null)
         {
            § b§.§8!7§(this.§&!D§);
            return true;
         }
         return false;
      }
      
      public function §4"@§(param1:§%o§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§5!§.length)
            {
               if(param1.songId == this.§5!§[_loc3_].songId)
               {
                  this.§5!§.splice(_loc3_,1);
               }
               _loc3_++;
            }
         }
         this.§5!§.push(param1);
      }
      
      public function §5$"§() : void
      {
         this.§;!8§();
         this.§-,§();
         this.§3#b§ = "";
         this.§&!D§ = "";
      }
      
      public function §%Q§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§9$8§ = null;
         if(this.§3#b§ == param1 && !param2)
         {
            return;
         }
         this.§'#$§ = param2;
         this.§,!Y§ = param1;
         if(§ b§.§]!L§(this.§&!D§) != null && § b§.§]!L§(this.§&!D§).isPlaying())
         {
            _loc3_ = this.§"!Q§();
            this.§;!8§();
            this.§3$%§.addEventListener(Event.COMPLETE,this.§>G§);
            this.§3$%§.§&$1§(this.§3#b§,_loc3_,0.5);
         }
         else
         {
            this.§>G§();
         }
      }
      
      public function §-Y§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§3#b§ == param1 && !param3)
         {
            return;
         }
         this.§'#$§ = false;
         this.§5$"§();
         var _loc4_:§%o§;
         if((_loc4_ = this.§9#[§(param1)) == null)
         {
            return;
         }
         this.§3#b§ = _loc4_.songId;
         this.§&!D§ = _loc4_.§0P§;
         this.§,!Y§ = "";
         var _loc5_:§3,§;
         if(!(_loc5_ = § b§.§]!L§(this.§&!D§)))
         {
            § b§.§%#C§(this.§&!D§,1,_loc4_.volume);
         }
         var _loc6_:Number = 0;
         if(this.§'!m§ == this.§3#b§)
         {
            _loc6_ = this.§ ";§;
            param2 = true;
         }
         this.§'!m§ = "";
         this.§ ";§ = 0;
         var _loc7_:§9$8§;
         if((_loc7_ = this.§0M§(_loc4_,_loc6_)) == null)
         {
            return;
         }
         _loc7_.addEventListener(§9$8§.§8# §,this.§9!!§);
         if(param2)
         {
            _loc7_.volume = 0;
            this.§3$%§.addEventListener(Event.COMPLETE,this.§^!T§);
            this.§3$%§.§ !,§(this.§3#b§,_loc7_,_loc4_.volume,0.5);
         }
         else
         {
            _loc7_.volume = _loc4_.volume;
         }
      }
      
      private function §9!!§(param1:Event) : void
      {
         this.§-Y§(this.§3#b§,false,true);
      }
      
      private function §0M§(param1:§%o§, param2:Number = 0) : §9$8§
      {
         var _loc3_:§9$8§ = null;
         if(param1.§%"B§ != "")
         {
            _loc3_ = § b§.§>#1§(param1.§%"B§,param1.songId,param1.§4!e§,param1.§0P§,param1.repeatCount,param1.volume,param2);
         }
         else
         {
            _loc3_ = § b§.playSound(param1.songId,param1.§0P§,param1.repeatCount,param1.volume,param2);
         }
         return _loc3_;
      }
      
      private function §>G§(param1:Event = null) : void
      {
         this.§-Y§(this.§,!Y§,true,this.§'#$§);
      }
      
      private function §^!T§(param1:Event = null) : void
      {
         this.§3$%§.removeEventListener(Event.COMPLETE,this.§^!T§);
      }
      
      private function §7v§(param1:§`"g§) : void
      {
         if(param1.§9$,§ == this.§3#b§)
         {
            this.§5$"§();
         }
      }
      
      private function §?$=§(param1:§%d§) : void
      {
         if(param1.type == §%d§.§6!_§)
         {
            if(param1.§0P§ == this.§&!D§)
            {
               this.§;!8§();
               this.§3#b§ = "";
               this.§&!D§ = "";
            }
         }
         else
         {
            this.§;!8§();
            this.§3#b§ = "";
            this.§&!D§ = "";
         }
      }
      
      public function §@#k§(param1:Number, param2:String) : void
      {
         this.§ ";§ = param1;
         this.§'!m§ = param2;
      }
   }
}
