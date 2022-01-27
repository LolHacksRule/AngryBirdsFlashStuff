package §="2§
{
   import flash.events.Event;
   
   public class §@!a§
   {
       
      
      private var §8!§:String = null;
      
      private var §[C§:String = null;
      
      private var §%#a§:String = null;
      
      private var §#"Z§:Vector.<String>;
      
      private var §%=§:Vector.<§=#P§>;
      
      private var §=!O§:§2H§;
      
      public function §@!a§()
      {
         this.§#"Z§ = new Vector.<String>();
         super();
         this.§=!O§ = new §2H§();
         this.§%=§ = new Vector.<§=#P§>();
      }
      
      private function §;"Q§() : §4!5§
      {
         if(!this.§[C§)
         {
            return null;
         }
         var _loc1_:§="f§ = §?!r§.§2R§(this.§[C§);
         if(_loc1_)
         {
            return _loc1_.§0<§(this.§8!§);
         }
         return null;
      }
      
      private function §-L§() : void
      {
         this.§=!O§.removeEventListener(Event.COMPLETE,this.§'"^§);
         this.§=!O§.removeEventListener(Event.COMPLETE,this.§`"R§);
         this.§=!O§.§@!Z§(this.§8!§);
      }
      
      private function §6_§(param1:String) : §=#P§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%=§.length)
         {
            if(param1 == this.§%=§[_loc2_].songId)
            {
               return this.§%=§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §'!S§() : Boolean
      {
         if(this.§[C§ && §?!r§.§2R§(this.§[C§) != null)
         {
            §?!r§.§9"4§(this.§[C§);
            return true;
         }
         return false;
      }
      
      public function §]V§(param1:§=#P§) : void
      {
         this.§%=§.push(param1);
      }
      
      public function §!!?§() : void
      {
         this.§-L§();
         this.§2"S§();
         this.§'!S§();
         this.§8!§ = null;
         this.§[C§ = null;
         this.§%#a§ = null;
      }
      
      public function § c§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§="f§ = null;
         if(this.§[C§)
         {
            _loc3_ = §?!r§.§2R§(this.§[C§);
         }
         if(_loc3_ && _loc3_.§<"M§())
         {
            this.§#"Z§.push(param1);
         }
         else
         {
            this.§,y§(param1,param2,false);
         }
      }
      
      public function §2!Z§() : void
      {
         this.§#"Z§ = new Vector.<String>();
      }
      
      public function §3##§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§4!5§ = null;
         if(this.§8!§ == param1 && !param2)
         {
            return;
         }
         if(§?!r§.§2R§(this.§[C§) != null && §?!r§.§2R§(this.§[C§).§<"M§())
         {
            _loc3_ = this.§;"Q§();
            this.§-L§();
            this.§%#a§ = param1;
            this.§=!O§.addEventListener(Event.COMPLETE,this.§'"^§);
            this.§=!O§.§@y§(this.§8!§,_loc3_,0.5);
         }
         else
         {
            this.§,y§(param1,true,param2);
         }
      }
      
      public function §,y§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§8!§ == param1 && !param3)
         {
            return;
         }
         this.§!!?§();
         var _loc4_:§=#P§;
         if((_loc4_ = this.§6_§(param1)) == null)
         {
            return;
         }
         this.§8!§ = _loc4_.songId;
         this.§[C§ = _loc4_.§+"#§;
         var _loc5_:§="f§;
         if(!(_loc5_ = §?!r§.§2R§(this.§[C§)))
         {
            §?!r§.§,"d§(this.§[C§,1,1);
         }
         var _loc6_:§4!5§;
         if((_loc6_ = this.§`#%§(_loc4_)) == null)
         {
            return;
         }
         _loc6_.addEventListener(Event.SOUND_COMPLETE,this.§%s§);
         if(param2)
         {
            this.§=!O§.addEventListener(Event.COMPLETE,this.§`"R§);
            this.§=!O§.§8#6§(this.§8!§,_loc6_,0.5);
         }
         else
         {
            _loc6_.volume = 1;
         }
      }
      
      private function §`#%§(param1:§=#P§) : §4!5§
      {
         var _loc2_:§4!5§ = null;
         if(param1.§4#=§ != "")
         {
            _loc2_ = §?!r§.§3!,§(param1.§4#=§,param1.songId,param1.§]X§,param1.§+"#§,param1.§;#1§,param1.volume);
         }
         else
         {
            _loc2_ = §?!r§.§"#_§(param1.songId,param1.§+"#§,param1.§;#1§,param1.volume);
         }
         return _loc2_;
      }
      
      private function §'"^§(param1:Event = null) : void
      {
         this.§-L§();
         this.§2"S§();
         this.§,y§(this.§%#a§,true,false);
         this.§%#a§ = null;
      }
      
      private function §`"R§(param1:Event = null) : void
      {
         this.§-L§();
      }
      
      private function §%s§(param1:Event = null) : void
      {
         var _loc2_:String = null;
         this.§-L§();
         this.§2"S§();
         if(this.§#"Z§.length > 0)
         {
            _loc2_ = this.§#"Z§[0];
            this.§#"Z§.splice(0,1);
            this.§,y§(_loc2_,true,false);
         }
      }
      
      private function §2"S§() : void
      {
         this.§8!§ = null;
         var _loc1_:§4!5§ = this.§;"Q§();
         if(_loc1_)
         {
            _loc1_.removeEventListener(Event.SOUND_COMPLETE,this.§%s§);
         }
      }
   }
}
