package §8§#7
{
   import flash.events.Event;
   
   public class §,#`§
   {
       
      
      private var §"!@§:String = "";
      
      private var §+$9§:String = "";
      
      private var § s§:String = "";
      
      private var §;"[§:Boolean = false;
      
      private var §7#6§:Vector.<§!#x§>;
      
      private var §[#v§:§6"Q§;
      
      private var §7"`§:Number = 0;
      
      private var §"#e§:String;
      
      public function §,#`§()
      {
         super();
         this.§[#v§ = new §6"Q§();
         this.§7#6§ = new Vector.<§!#x§>();
         §#$+§.addEventListener(§,S§.§7!$§,this.§+"0§);
         §#$+§.addEventListener(§[!9§.§,s§,this.§%m§);
         §#$+§.addEventListener(§[!9§.§?#<§,this.§%m§);
      }
      
      private function §5"w§() : §@!"§
      {
         var _loc1_:§7#!§ = §#$+§.§#!C§(this.§+$9§);
         return _loc1_.§="<§(this.§"!@§);
      }
      
      private function §1"t§() : void
      {
         this.§[#v§.removeEventListener(Event.COMPLETE,this.§@-§);
         this.§[#v§.removeEventListener(Event.COMPLETE,this.§@!p§);
         this.§[#v§.§+!2§(this.§"!@§);
      }
      
      private function §7#c§(param1:String) : §!#x§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7#6§.length)
         {
            if(param1 == this.§7#6§[_loc2_].songId)
            {
               return this.§7#6§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §10§() : Boolean
      {
         if(§#$+§.§#!C§(this.§+$9§) != null)
         {
            §#$+§.§%!!§(this.§+$9§);
            return true;
         }
         return false;
      }
      
      public function §1H§(param1:§!#x§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§7#6§.length)
            {
               if(param1.songId == this.§7#6§[_loc3_].songId)
               {
                  this.§7#6§.splice(_loc3_,1);
               }
               _loc3_++;
            }
         }
         this.§7#6§.push(param1);
      }
      
      public function §>#3§() : void
      {
         this.§1"t§();
         this.§10§();
         this.§"!@§ = "";
         this.§+$9§ = "";
      }
      
      public function §6x§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§@!"§ = null;
         if(this.§"!@§ == param1 && !param2)
         {
            return;
         }
         this.§;"[§ = param2;
         this.§ s§ = param1;
         if(§#$+§.§#!C§(this.§+$9§) != null && §#$+§.§#!C§(this.§+$9§).isPlaying())
         {
            _loc3_ = this.§5"w§();
            this.§1"t§();
            this.§[#v§.addEventListener(Event.COMPLETE,this.§@-§);
            this.§[#v§.§>4§(this.§"!@§,_loc3_,0.5);
         }
         else
         {
            this.§@-§();
         }
      }
      
      public function §<#Z§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§"!@§ == param1 && !param3)
         {
            return;
         }
         this.§;"[§ = false;
         this.§>#3§();
         var _loc4_:§!#x§;
         if((_loc4_ = this.§7#c§(param1)) == null)
         {
            return;
         }
         this.§"!@§ = _loc4_.songId;
         this.§+$9§ = _loc4_.§?"7§;
         this.§ s§ = "";
         if(!§#$+§.§#!C§(this.§+$9§))
         {
            §#$+§.§9"]§(this.§+$9§,1,_loc4_.volume);
         }
         var _loc6_:Number = 0;
         if(this.§"#e§ == this.§"!@§)
         {
            _loc6_ = this.§7"`§;
         }
         this.§"#e§ = "";
         this.§7"`§ = 0;
         var _loc7_:§@!"§;
         if((_loc7_ = this.§&!N§(_loc4_,_loc6_)) == null)
         {
            return;
         }
         _loc7_.addEventListener(§@!"§.§2$&§,this.§-!U§);
         _loc7_.volume = 0;
         this.§[#v§.addEventListener(Event.COMPLETE,this.§@!p§);
         this.§[#v§.§>#U§(this.§"!@§,_loc7_,0.5);
      }
      
      private function §-!U§(param1:Event) : void
      {
         this.§<#Z§(this.§"!@§,false,true);
      }
      
      private function §&!N§(param1:§!#x§, param2:Number = 0) : §@!"§
      {
         var _loc3_:§@!"§ = null;
         if(param1.§,"E§ != "")
         {
            _loc3_ = §#$+§.§61§(param1.§,"E§,param1.songId,param1.§3"!§,param1.§?"7§,param1.§4"7§,param1.volume,param2);
         }
         else
         {
            _loc3_ = §#$+§.playSound(param1.songId,param1.§?"7§,param1.§4"7§,param1.volume,param2);
         }
         return _loc3_;
      }
      
      private function §@-§(param1:Event = null) : void
      {
         this.§<#Z§(this.§ s§,true,this.§;"[§);
      }
      
      private function §@!p§(param1:Event = null) : void
      {
         this.§[#v§.removeEventListener(Event.COMPLETE,this.§@!p§);
      }
      
      private function §+"0§(param1:§,S§) : void
      {
         if(param1.§@!L§ == this.§"!@§)
         {
            this.§>#3§();
         }
      }
      
      private function §%m§(param1:§[!9§) : void
      {
         if(param1.type == §[!9§.§?#<§)
         {
            if(param1.§?"7§ == this.§+$9§)
            {
               this.§1"t§();
               this.§"!@§ = "";
               this.§+$9§ = "";
            }
         }
         else
         {
            this.§1"t§();
            this.§"!@§ = "";
            this.§+$9§ = "";
         }
      }
      
      public function §4#<§(param1:Number, param2:String) : void
      {
         this.§7"`§ = param1;
         this.§"#e§ = param2;
      }
   }
}
