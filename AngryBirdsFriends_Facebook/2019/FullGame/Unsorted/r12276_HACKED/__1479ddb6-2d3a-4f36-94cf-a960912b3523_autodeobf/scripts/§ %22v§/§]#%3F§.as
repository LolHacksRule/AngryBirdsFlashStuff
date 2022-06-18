package § "v§
{
   import flash.events.Event;
   
   public class §]#?§
   {
       
      
      private var §8@§:String = "";
      
      private var §?#J§:String = "";
      
      private var §<#g§:String = "";
      
      private var §-#m§:Boolean = false;
      
      private var §-#h§:Vector.<§#"<§>;
      
      private var §&$,§:§ 4§;
      
      private var §=A§:Number = 0;
      
      private var §<-§:String;
      
      public function §]#?§()
      {
         super();
         this.§&$,§ = new § 4§();
         this.§-#h§ = new Vector.<§#"<§>();
         §4$4§.addEventListener(§5#[§.§?!u§,this.§>#z§);
         §4$4§.addEventListener(§9!p§.§8!^§,this.§"#o§);
         §4$4§.addEventListener(§9!p§.§ $B§,this.§"#o§);
      }
      
      private function §<$>§() : §+o§
      {
         var _loc1_:§8M§ = §4$4§.§`!U§(this.§?#J§);
         return _loc1_.§2"S§(this.§8@§);
      }
      
      private function §1$"§() : void
      {
         this.§&$,§.removeEventListener(Event.COMPLETE,this.§2H§);
         this.§&$,§.removeEventListener(Event.COMPLETE,this.§9c§);
         this.§&$,§.§1"j§(this.§8@§);
      }
      
      private function §^S§(param1:String) : §#"<§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-#h§.length)
         {
            if(param1 == this.§-#h§[_loc2_].songId)
            {
               return this.§-#h§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §%"U§() : Boolean
      {
         if(§4$4§.§`!U§(this.§?#J§) != null)
         {
            §4$4§.§'!?§(this.§?#J§);
            return true;
         }
         return false;
      }
      
      public function §;=§(param1:§#"<§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§-#h§.length)
            {
               if(param1.songId == this.§-#h§[_loc3_].songId)
               {
                  this.§-#h§.splice(_loc3_,1);
               }
               _loc3_++;
            }
         }
         this.§-#h§.push(param1);
      }
      
      public function §=n§() : void
      {
         this.§1$"§();
         this.§%"U§();
         this.§8@§ = "";
         this.§?#J§ = "";
      }
      
      public function §4#v§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§+o§ = null;
         if(this.§8@§ == param1 && !param2)
         {
            return;
         }
         this.§-#m§ = param2;
         this.§<#g§ = param1;
         if(§4$4§.§`!U§(this.§?#J§) != null && §4$4§.§`!U§(this.§?#J§).isPlaying())
         {
            _loc3_ = this.§<$>§();
            this.§1$"§();
            this.§&$,§.addEventListener(Event.COMPLETE,this.§2H§);
            this.§&$,§.§3D§(this.§8@§,_loc3_,0.5);
         }
         else
         {
            this.§2H§();
         }
      }
      
      public function § $C§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§8@§ == param1 && !param3)
         {
            return;
         }
         this.§-#m§ = false;
         this.§=n§();
         var _loc4_:§#"<§;
         if((_loc4_ = this.§^S§(param1)) == null)
         {
            return;
         }
         this.§8@§ = _loc4_.songId;
         this.§?#J§ = _loc4_.§ T§;
         this.§<#g§ = "";
         if(!§4$4§.§`!U§(this.§?#J§))
         {
            §4$4§.§<!A§(this.§?#J§,1,_loc4_.volume);
         }
         var _loc6_:Number = 0;
         if(this.§<-§ == this.§8@§)
         {
            _loc6_ = this.§=A§;
         }
         this.§<-§ = "";
         this.§=A§ = 0;
         var _loc7_:§+o§;
         if((_loc7_ = this.§2L§(_loc4_,_loc6_)) == null)
         {
            return;
         }
         _loc7_.addEventListener(§+o§.§>]§,this.§1n§);
         _loc7_.volume = 0;
         this.§&$,§.addEventListener(Event.COMPLETE,this.§9c§);
         this.§&$,§.§4"#§(this.§8@§,_loc7_,_loc4_.volume,0.5);
      }
      
      private function §1n§(param1:Event) : void
      {
         this.§ $C§(this.§8@§,false,true);
      }
      
      private function §2L§(param1:§#"<§, param2:Number = 0) : §+o§
      {
         var _loc3_:§+o§ = null;
         if(param1.§"#_§ != "")
         {
            _loc3_ = §4$4§.§<#<§(param1.§"#_§,param1.songId,param1.§4E§,param1.§ T§,param1.repeatCount,param1.volume,param2);
         }
         else
         {
            _loc3_ = §4$4§.playSound(param1.songId,param1.§ T§,param1.repeatCount,param1.volume,param2);
         }
         return _loc3_;
      }
      
      private function §2H§(param1:Event = null) : void
      {
         this.§ $C§(this.§<#g§,true,this.§-#m§);
      }
      
      private function §9c§(param1:Event = null) : void
      {
         this.§&$,§.removeEventListener(Event.COMPLETE,this.§9c§);
      }
      
      private function §>#z§(param1:§5#[§) : void
      {
         if(param1.§9§ == this.§8@§)
         {
            this.§=n§();
         }
      }
      
      private function §"#o§(param1:§9!p§) : void
      {
         if(param1.type == §9!p§.§ $B§)
         {
            if(param1.§ T§ == this.§?#J§)
            {
               this.§1$"§();
               this.§8@§ = "";
               this.§?#J§ = "";
            }
         }
         else
         {
            this.§1$"§();
            this.§8@§ = "";
            this.§?#J§ = "";
         }
      }
      
      public function §#2§(param1:Number, param2:String) : void
      {
         this.§=A§ = param1;
         this.§<-§ = param2;
      }
   }
}
