package §8#K§
{
   import flash.events.Event;
   
   public class § case§
   {
       
      
      private var §+#Y§:String = "";
      
      private var §'" §:String = "";
      
      private var §@$B§:String = "";
      
      private var §%"n§:Boolean = false;
      
      private var § #§:Vector.<§&#%§>;
      
      private var §=<§:§>$@§;
      
      private var §47§:Number = 0;
      
      private var §`#h§:String;
      
      public function § case§()
      {
         super();
         this.§=<§ = new §>$@§();
         this.§ #§ = new Vector.<§&#%§>();
         §3Z§.addEventListener(§0!,§.§5!%§,this.§7#C§);
         §3Z§.addEventListener(§1^§.§6!I§,this.§+z§);
         §3Z§.addEventListener(§1^§.§-#N§,this.§+z§);
      }
      
      private function §=i§() : §-!o§
      {
         var _loc1_:§@!m§ = §3Z§.§["C§(this.§'" §);
         return _loc1_.§!p§(this.§+#Y§);
      }
      
      private function §=!&§() : void
      {
         this.§=<§.removeEventListener(Event.COMPLETE,this.§`$B§);
         this.§=<§.removeEventListener(Event.COMPLETE,this.§^d§);
         this.§=<§.§^I§(this.§+#Y§);
      }
      
      private function §'!d§(param1:String) : §&#%§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ #§.length)
         {
            if(param1 == this.§ #§[_loc2_].songId)
            {
               return this.§ #§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §&^§() : Boolean
      {
         if(§3Z§.§["C§(this.§'" §) != null)
         {
            §3Z§.§&$?§(this.§'" §);
            return true;
         }
         return false;
      }
      
      public function §1$@§(param1:§&#%§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§ #§.length)
            {
               if(param1.songId == this.§ #§[_loc3_].songId)
               {
                  this.§ #§.splice(_loc3_,1);
               }
               _loc3_++;
            }
         }
         this.§ #§.push(param1);
      }
      
      public function §-o§() : void
      {
         this.§=!&§();
         this.§&^§();
         this.§+#Y§ = "";
         this.§'" § = "";
      }
      
      public function §?s§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§-!o§ = null;
         if(this.§+#Y§ == param1 && !param2)
         {
            return;
         }
         this.§%"n§ = param2;
         this.§@$B§ = param1;
         if(§3Z§.§["C§(this.§'" §) != null && §3Z§.§["C§(this.§'" §).isPlaying())
         {
            _loc3_ = this.§=i§();
            this.§=!&§();
            this.§=<§.addEventListener(Event.COMPLETE,this.§`$B§);
            this.§=<§.§^#v§(this.§+#Y§,_loc3_,0.5);
         }
         else
         {
            this.§`$B§();
         }
      }
      
      public function §,o§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§+#Y§ == param1 && !param3)
         {
            return;
         }
         this.§%"n§ = false;
         this.§-o§();
         var _loc4_:§&#%§;
         if((_loc4_ = this.§'!d§(param1)) == null)
         {
            return;
         }
         this.§+#Y§ = _loc4_.songId;
         this.§'" § = _loc4_.§%Y§;
         this.§@$B§ = "";
         var _loc5_:§@!m§;
         if(!(_loc5_ = §3Z§.§["C§(this.§'" §)))
         {
            §3Z§.§'#E§(this.§'" §,1,_loc4_.volume);
         }
         var _loc6_:Number = 0;
         if(this.§`#h§ == this.§+#Y§)
         {
            _loc6_ = this.§47§;
            param2 = true;
         }
         this.§`#h§ = "";
         this.§47§ = 0;
         var _loc7_:§-!o§;
         if((_loc7_ = this.§0"h§(_loc4_,_loc6_)) == null)
         {
            return;
         }
         _loc7_.addEventListener(§-!o§.§8#<§,this.§ #S§);
         if(param2)
         {
            _loc7_.volume = 0;
            this.§=<§.addEventListener(Event.COMPLETE,this.§^d§);
            this.§=<§.§]!T§(this.§+#Y§,_loc7_,_loc4_.volume,0.5);
         }
         else
         {
            _loc7_.volume = _loc4_.volume;
         }
      }
      
      private function § #S§(param1:Event) : void
      {
         this.§,o§(this.§+#Y§,false,true);
      }
      
      private function §0"h§(param1:§&#%§, param2:Number = 0) : §-!o§
      {
         var _loc3_:§-!o§ = null;
         if(param1.§4!-§ != "")
         {
            _loc3_ = §3Z§.§0#3§(param1.§4!-§,param1.songId,param1.§2"I§,param1.§%Y§,param1.repeatCount,param1.volume,param2);
         }
         else
         {
            _loc3_ = §3Z§.playSound(param1.songId,param1.§%Y§,param1.repeatCount,param1.volume,param2);
         }
         return _loc3_;
      }
      
      private function §`$B§(param1:Event = null) : void
      {
         this.§,o§(this.§@$B§,true,this.§%"n§);
      }
      
      private function §^d§(param1:Event = null) : void
      {
         this.§=<§.removeEventListener(Event.COMPLETE,this.§^d§);
      }
      
      private function §7#C§(param1:§0!,§) : void
      {
         if(param1.§^"4§ == this.§+#Y§)
         {
            this.§-o§();
         }
      }
      
      private function §+z§(param1:§1^§) : void
      {
         if(param1.type == §1^§.§-#N§)
         {
            if(param1.§%Y§ == this.§'" §)
            {
               this.§=!&§();
               this.§+#Y§ = "";
               this.§'" § = "";
            }
         }
         else
         {
            this.§=!&§();
            this.§+#Y§ = "";
            this.§'" § = "";
         }
      }
      
      public function §@6§(param1:Number, param2:String) : void
      {
         this.§47§ = param1;
         this.§`#h§ = param2;
      }
   }
}
