package §>s§
{
   import flash.events.Event;
   
   public class §;"&§
   {
       
      
      private var §!3§:String = "";
      
      private var §=!2§:String = "";
      
      private var §7!m§:String = "";
      
      private var §^o§:Boolean = false;
      
      private var §2!`§:Vector.<§+!N§>;
      
      private var §<"H§:§ r§;
      
      public function §;"&§()
      {
         super();
         this.§<"H§ = new § r§();
         this.§2!`§ = new Vector.<§+!N§>();
         §+m§.addEventListener(§1I§.§0"4§,this.§>m§);
         §+m§.addEventListener(§34§.§>!a§,this.§%!f§);
         §+m§.addEventListener(§34§.§@u§,this.§%!f§);
      }
      
      private function §&"K§() : §9!u§
      {
         var _loc1_:§`,§ = §+m§.§ do§(this.§=!2§);
         return _loc1_.§]m§(this.§!3§);
      }
      
      private function §1V§() : void
      {
         this.§<"H§.removeEventListener(Event.COMPLETE,this.§7!d§);
         this.§<"H§.removeEventListener(Event.COMPLETE,this.§"!Z§);
         this.§<"H§.§``§(this.§!3§);
      }
      
      private function §4§(param1:String) : §+!N§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!`§.length)
         {
            if(param1 == this.§2!`§[_loc2_].songId)
            {
               return this.§2!`§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §;!n§() : Boolean
      {
         if(§+m§.§ do§(this.§=!2§) != null)
         {
            §+m§.§5!P§(this.§=!2§);
            return true;
         }
         return false;
      }
      
      public function §2`§(param1:§+!N§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§2!`§.length)
            {
               if(param1.songId == this.§2!`§[_loc3_].songId)
               {
                  this.§2!`§.splice(_loc3_,1);
               }
               _loc3_++;
            }
         }
         this.§2!`§.push(param1);
      }
      
      public function §-u§() : void
      {
         this.§1V§();
         this.§;!n§();
         this.§!3§ = "";
         this.§=!2§ = "";
      }
      
      public function § 7§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§9!u§ = null;
         if(this.§!3§ == param1 && !param2)
         {
            return;
         }
         this.§^o§ = param2;
         this.§7!m§ = param1;
         if(§+m§.§ do§(this.§=!2§) != null && §+m§.§ do§(this.§=!2§).§%![§())
         {
            _loc3_ = this.§&"K§();
            this.§1V§();
            this.§<"H§.addEventListener(Event.COMPLETE,this.§7!d§);
            this.§<"H§.§0p§(this.§!3§,_loc3_,0.5);
         }
         else
         {
            this.§7!d§();
         }
      }
      
      public function §%_§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§!3§ == param1 && !param3)
         {
            return;
         }
         this.§^o§ = false;
         this.§-u§();
         var _loc4_:§+!N§;
         if((_loc4_ = this.§4§(param1)) == null)
         {
            return;
         }
         this.§!3§ = _loc4_.songId;
         this.§=!2§ = _loc4_.§4"@§;
         this.§7!m§ = "";
         var _loc5_:§`,§;
         if(!(_loc5_ = §+m§.§ do§(this.§=!2§)))
         {
            §+m§.§9!g§(this.§=!2§,1,1);
         }
         var _loc6_:§9!u§;
         if((_loc6_ = this.§!?§(_loc4_)) == null)
         {
            return;
         }
         if(param2)
         {
            this.§<"H§.addEventListener(Event.COMPLETE,this.§"!Z§);
            this.§<"H§.§^a§(this.§!3§,_loc6_,0.5);
         }
         else
         {
            _loc6_.volume = 1;
         }
      }
      
      private function §!?§(param1:§+!N§) : §9!u§
      {
         var _loc2_:§9!u§ = null;
         if(param1.§7!v§ != "")
         {
            _loc2_ = §+m§.§;p§(param1.§7!v§,param1.songId,param1.§;!%§,param1.§4"@§,param1.§9!4§,param1.volume);
         }
         else
         {
            _loc2_ = §+m§.§]!N§(param1.songId,param1.§4"@§,param1.§9!4§,param1.volume);
         }
         return _loc2_;
      }
      
      private function §7!d§(param1:Event = null) : void
      {
         this.§%_§(this.§7!m§,true,this.§^o§);
      }
      
      private function §"!Z§(param1:Event = null) : void
      {
         this.§<"H§.removeEventListener(Event.COMPLETE,this.§"!Z§);
      }
      
      private function §>m§(param1:§1I§) : void
      {
         if(param1.§-S§ == this.§!3§)
         {
            this.§-u§();
         }
      }
      
      private function §%!f§(param1:§34§) : void
      {
         if(param1.type == §34§.§@u§)
         {
            if(param1.§4"@§ == this.§=!2§)
            {
               this.§1V§();
               this.§!3§ = "";
               this.§=!2§ = "";
            }
         }
         else
         {
            this.§1V§();
            this.§!3§ = "";
            this.§=!2§ = "";
         }
      }
   }
}
