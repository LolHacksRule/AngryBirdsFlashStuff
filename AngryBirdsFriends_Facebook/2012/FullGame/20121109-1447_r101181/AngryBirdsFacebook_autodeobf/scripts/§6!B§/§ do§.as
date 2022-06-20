package §6!B§
{
   import flash.events.Event;
   
   public class § do§
   {
       
      
      private var §!v§:String = "";
      
      private var §--§:String = "";
      
      private var §8!'§:String = "";
      
      private var §@!J§:Boolean = false;
      
      private var §]S§:Vector.<§@k§>;
      
      private var §!";§:§7!L§;
      
      public function § do§()
      {
         super();
         this.§!";§ = new §7!L§();
         this.§]S§ = new Vector.<§@k§>();
         §>!E§.addEventListener(§`!p§.§5!Q§,this.§'[§);
         §>!E§.addEventListener(§33§.§=!C§,this.§2!4§);
         §>!E§.addEventListener(§33§.§<!B§,this.§2!4§);
      }
      
      private function §&g§() : §,!p§
      {
         var _loc1_:§7M§ = §>!E§.§"h§(this.§--§);
         return _loc1_.§?"+§(this.§!v§);
      }
      
      private function §3K§() : void
      {
         this.§!";§.removeEventListener(Event.COMPLETE,this.§#!i§);
         this.§!";§.removeEventListener(Event.COMPLETE,this.§!9§);
         this.§!";§.§]!n§(this.§!v§);
      }
      
      private function §5!$§(param1:String) : §@k§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]S§.length)
         {
            if(param1 == this.§]S§[_loc2_].songId)
            {
               return this.§]S§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §-I§() : Boolean
      {
         if(§>!E§.§"h§(this.§--§) != null)
         {
            §>!E§.§1!;§(this.§--§);
            return true;
         }
         return false;
      }
      
      public function §9!U§(param1:§@k§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§]S§.length)
            {
               if(param1.songId == this.§]S§[_loc3_].songId)
               {
                  this.§]S§.splice(_loc3_,1);
               }
               _loc3_++;
            }
         }
         this.§]S§.push(param1);
      }
      
      public function §%"7§() : void
      {
         this.§3K§();
         this.§-I§();
         this.§!v§ = "";
         this.§--§ = "";
      }
      
      public function §"!r§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§,!p§ = null;
         if(this.§!v§ == param1 && !param2)
         {
            return;
         }
         this.§@!J§ = param2;
         this.§8!'§ = param1;
         if(§>!E§.§"h§(this.§--§) != null && §>!E§.§"h§(this.§--§).§5%§())
         {
            _loc3_ = this.§&g§();
            this.§3K§();
            this.§!";§.addEventListener(Event.COMPLETE,this.§#!i§);
            this.§!";§.§8W§(this.§!v§,_loc3_,0.5);
         }
         else
         {
            this.§#!i§();
         }
      }
      
      public function §5b§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§!v§ == param1 && !param3)
         {
            return;
         }
         this.§@!J§ = false;
         this.§%"7§();
         var _loc4_:§@k§;
         if((_loc4_ = this.§5!$§(param1)) == null)
         {
            return;
         }
         this.§!v§ = _loc4_.songId;
         this.§--§ = _loc4_.§%!5§;
         this.§8!'§ = "";
         var _loc5_:§7M§;
         if(!(_loc5_ = §>!E§.§"h§(this.§--§)))
         {
            §>!E§.§0I§(this.§--§,1,1);
         }
         var _loc6_:§,!p§;
         if((_loc6_ = this.§&x§(_loc4_)) == null)
         {
            return;
         }
         if(param2)
         {
            this.§!";§.addEventListener(Event.COMPLETE,this.§!9§);
            this.§!";§.§2!9§(this.§!v§,_loc6_,0.5);
         }
         else
         {
            _loc6_.volume = 1;
         }
      }
      
      private function §&x§(param1:§@k§) : §,!p§
      {
         var _loc2_:§,!p§ = null;
         if(param1.§@!c§ != "")
         {
            _loc2_ = §>!E§.§;!0§(param1.§@!c§,param1.songId,param1.§2d§,param1.§%!5§,param1.§&!a§,param1.volume);
         }
         else
         {
            _loc2_ = §>!E§.§7N§(param1.songId,param1.§%!5§,param1.§&!a§,param1.volume);
         }
         return _loc2_;
      }
      
      private function §#!i§(param1:Event = null) : void
      {
         this.§5b§(this.§8!'§,true,this.§@!J§);
      }
      
      private function §!9§(param1:Event = null) : void
      {
         this.§!";§.removeEventListener(Event.COMPLETE,this.§!9§);
      }
      
      private function §'[§(param1:§`!p§) : void
      {
         if(param1.§"4§ == this.§!v§)
         {
            this.§%"7§();
         }
      }
      
      private function §2!4§(param1:§33§) : void
      {
         if(param1.type == §33§.§<!B§)
         {
            if(param1.§%!5§ == this.§--§)
            {
               this.§3K§();
               this.§!v§ = "";
               this.§--§ = "";
            }
         }
         else
         {
            this.§3K§();
            this.§!v§ = "";
            this.§--§ = "";
         }
      }
   }
}
