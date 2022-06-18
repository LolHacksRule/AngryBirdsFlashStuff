package §>"9§
{
   import flash.events.Event;
   
   public class §2"0§
   {
       
      
      private var §#!v§:String = "";
      
      private var §=!j§:String = "";
      
      private var §0$§:String = "";
      
      private var §!#3§:Boolean = false;
      
      private var §?#V§:Vector.<§0#h§>;
      
      private var §8b§:§0"N§;
      
      private var §?"n§:Number = 0;
      
      private var §@§:String;
      
      public function §2"0§()
      {
         super();
         this.§8b§ = new §0"N§();
         this.§?#V§ = new Vector.<§0#h§>();
         §[#%§.addEventListener(§5!n§.§>"x§,this.§0M§);
         §[#%§.addEventListener(§4#8§.§5!d§,this.§>v§);
         §[#%§.addEventListener(§4#8§.§]^§,this.§>v§);
      }
      
      private function §[!M§() : §1"T§
      {
         var _loc1_:§'#X§ = §[#%§.§<"!§(this.§=!j§);
         return _loc1_.§<#z§(this.§#!v§);
      }
      
      private function §&!a§() : void
      {
         this.§8b§.removeEventListener(Event.COMPLETE,this.§2&§);
         this.§8b§.removeEventListener(Event.COMPLETE,this.§^_§);
         this.§8b§.§'!1§(this.§#!v§);
      }
      
      private function §4#E§(param1:String) : §0#h§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?#V§.length)
         {
            if(param1 == this.§?#V§[_loc2_].songId)
            {
               return this.§?#V§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function § r§() : Boolean
      {
         if(§[#%§.§<"!§(this.§=!j§) != null)
         {
            §[#%§.§3$A§(this.§=!j§);
            return true;
         }
         return false;
      }
      
      public function §-"5§(param1:§0#h§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§?#V§.length)
            {
               if(param1.songId == this.§?#V§[_loc3_].songId)
               {
                  this.§?#V§.splice(_loc3_,1);
               }
               _loc3_++;
            }
         }
         this.§?#V§.push(param1);
      }
      
      public function §#,§() : void
      {
         this.§&!a§();
         this.§ r§();
         this.§#!v§ = "";
         this.§=!j§ = "";
      }
      
      public function §23§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§1"T§ = null;
         if(this.§#!v§ == param1 && !param2)
         {
            return;
         }
         this.§!#3§ = param2;
         this.§0$§ = param1;
         if(§[#%§.§<"!§(this.§=!j§) != null && §[#%§.§<"!§(this.§=!j§).isPlaying())
         {
            _loc3_ = this.§[!M§();
            this.§&!a§();
            this.§8b§.addEventListener(Event.COMPLETE,this.§2&§);
            this.§8b§.§>"R§(this.§#!v§,_loc3_,0.5);
         }
         else
         {
            this.§2&§();
         }
      }
      
      public function §##5§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§#!v§ == param1 && !param3)
         {
            return;
         }
         this.§!#3§ = false;
         this.§#,§();
         var _loc4_:§0#h§;
         if((_loc4_ = this.§4#E§(param1)) == null)
         {
            return;
         }
         this.§#!v§ = _loc4_.songId;
         this.§=!j§ = _loc4_.§'A§;
         this.§0$§ = "";
         if(!§[#%§.§<"!§(this.§=!j§))
         {
            §[#%§.§8!3§(this.§=!j§,1,_loc4_.volume);
         }
         var _loc6_:Number = 0;
         if(this.§@§ == this.§#!v§)
         {
            _loc6_ = this.§?"n§;
         }
         this.§@§ = "";
         this.§?"n§ = 0;
         var _loc7_:§1"T§;
         if((_loc7_ = this.§;Q§(_loc4_,_loc6_)) == null)
         {
            return;
         }
         _loc7_.addEventListener(§1"T§.§&!j§,this.§^,§);
         _loc7_.volume = 0;
         this.§8b§.addEventListener(Event.COMPLETE,this.§^_§);
         this.§8b§.§>!9§(this.§#!v§,_loc7_,_loc4_.volume,0.5);
      }
      
      private function §^,§(param1:Event) : void
      {
         this.§##5§(this.§#!v§,false,true);
      }
      
      private function §;Q§(param1:§0#h§, param2:Number = 0) : §1"T§
      {
         var _loc3_:§1"T§ = null;
         if(param1.§1"&§ != "")
         {
            _loc3_ = §[#%§.§'#-§(param1.§1"&§,param1.songId,param1.§`#]§,param1.§'A§,param1.repeatCount,param1.volume,param2);
         }
         else
         {
            _loc3_ = §[#%§.playSound(param1.songId,param1.§'A§,param1.repeatCount,param1.volume,param2);
         }
         return _loc3_;
      }
      
      private function §2&§(param1:Event = null) : void
      {
         this.§##5§(this.§0$§,true,this.§!#3§);
      }
      
      private function §^_§(param1:Event = null) : void
      {
         this.§8b§.removeEventListener(Event.COMPLETE,this.§^_§);
      }
      
      private function §0M§(param1:§5!n§) : void
      {
         if(param1.§##§ == this.§#!v§)
         {
            this.§#,§();
         }
      }
      
      private function §>v§(param1:§4#8§) : void
      {
         if(param1.type == §4#8§.§]^§)
         {
            if(param1.§'A§ == this.§=!j§)
            {
               this.§&!a§();
               this.§#!v§ = "";
               this.§=!j§ = "";
            }
         }
         else
         {
            this.§&!a§();
            this.§#!v§ = "";
            this.§=!j§ = "";
         }
      }
      
      public function §9!I§(param1:Number, param2:String) : void
      {
         this.§?"n§ = param1;
         this.§@§ = param2;
      }
   }
}
