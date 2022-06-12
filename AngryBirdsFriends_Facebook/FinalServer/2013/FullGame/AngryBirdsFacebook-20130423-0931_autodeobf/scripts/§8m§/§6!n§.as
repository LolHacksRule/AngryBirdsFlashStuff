package §8m§
{
   import flash.events.Event;
   
   public class §6!n§
   {
       
      
      private var §=!w§:String = "";
      
      private var §!"V§:String = "";
      
      private var §6!q§:String = "";
      
      private var §&u§:Boolean = false;
      
      private var §>"-§:Vector.<§3!b§>;
      
      private var §'">§:§6§;
      
      public function §6!n§()
      {
         super();
         this.§'">§ = new §6§();
         this.§>"-§ = new Vector.<§3!b§>();
         §@"M§.addEventListener(§!2§.§,3§,this.§^&§);
         §@"M§.addEventListener(§&!e§.§2!w§,this.§9"U§);
         §@"M§.addEventListener(§&!e§.§=A§,this.§9"U§);
      }
      
      private function §#R§() : §7!>§
      {
         var _loc1_:§;!`§ = §@"M§.§^!5§(this.§!"V§);
         return _loc1_.§ "?§(this.§=!w§);
      }
      
      private function §+U§() : void
      {
         this.§'">§.removeEventListener(Event.COMPLETE,this.§<+§);
         this.§'">§.removeEventListener(Event.COMPLETE,this.§@!E§);
         this.§'">§.§7I§(this.§=!w§);
      }
      
      private function §#J§(param1:String) : §3!b§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>"-§.length)
         {
            if(param1 == this.§>"-§[_loc2_].songId)
            {
               return this.§>"-§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §'!r§() : Boolean
      {
         if(§@"M§.§^!5§(this.§!"V§) != null)
         {
            §@"M§.§]!n§(this.§!"V§);
            return true;
         }
         return false;
      }
      
      public function §>S§(param1:§3!b§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§>"-§.length)
            {
               if(param1.songId == this.§>"-§[_loc3_].songId)
               {
                  this.§>"-§.splice(_loc3_,1);
               }
               _loc3_++;
            }
         }
         this.§>"-§.push(param1);
      }
      
      public function § !Z§() : void
      {
         this.§+U§();
         this.§'!r§();
         this.§=!w§ = "";
         this.§!"V§ = "";
      }
      
      public function §3%§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§7!>§ = null;
         if(this.§=!w§ == param1 && !param2)
         {
            return;
         }
         this.§&u§ = param2;
         this.§6!q§ = param1;
         if(§@"M§.§^!5§(this.§!"V§) != null && §@"M§.§^!5§(this.§!"V§).§6",§())
         {
            _loc3_ = this.§#R§();
            this.§+U§();
            this.§'">§.addEventListener(Event.COMPLETE,this.§<+§);
            this.§'">§.§4§(this.§=!w§,_loc3_,0.5);
         }
         else
         {
            this.§<+§();
         }
      }
      
      public function §8!9§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§=!w§ == param1 && !param3)
         {
            return;
         }
         this.§&u§ = false;
         this.§ !Z§();
         var _loc4_:§3!b§;
         if((_loc4_ = this.§#J§(param1)) == null)
         {
            return;
         }
         this.§=!w§ = _loc4_.songId;
         this.§!"V§ = _loc4_.§0!e§;
         this.§6!q§ = "";
         var _loc5_:§;!`§;
         if(!(_loc5_ = §@"M§.§^!5§(this.§!"V§)))
         {
            §@"M§.§set §(this.§!"V§,1,1);
         }
         var _loc6_:§7!>§;
         if((_loc6_ = this.§8X§(_loc4_)) == null)
         {
            return;
         }
         if(param2)
         {
            this.§'">§.addEventListener(Event.COMPLETE,this.§@!E§);
            this.§'">§.§@!p§(this.§=!w§,_loc6_,0.5);
         }
         else
         {
            _loc6_.volume = 1;
         }
      }
      
      private function §8X§(param1:§3!b§) : §7!>§
      {
         var _loc2_:§7!>§ = null;
         if(param1.§3O§ != "")
         {
            _loc2_ = §@"M§.§!8§(param1.§3O§,param1.songId,param1.§>;§,param1.§0!e§,param1.§6![§,param1.volume);
         }
         else
         {
            _loc2_ = §@"M§.§3"C§(param1.songId,param1.§0!e§,param1.§6![§,param1.volume);
         }
         return _loc2_;
      }
      
      private function §<+§(param1:Event = null) : void
      {
         this.§8!9§(this.§6!q§,true,this.§&u§);
      }
      
      private function §@!E§(param1:Event = null) : void
      {
         this.§'">§.removeEventListener(Event.COMPLETE,this.§@!E§);
      }
      
      private function §^&§(param1:§!2§) : void
      {
         if(param1.§+h§ == this.§=!w§)
         {
            this.§ !Z§();
         }
      }
      
      private function §9"U§(param1:§&!e§) : void
      {
         if(param1.type == §&!e§.§=A§)
         {
            if(param1.§0!e§ == this.§!"V§)
            {
               this.§+U§();
               this.§=!w§ = "";
               this.§!"V§ = "";
            }
         }
         else
         {
            this.§+U§();
            this.§=!w§ = "";
            this.§!"V§ = "";
         }
      }
   }
}
