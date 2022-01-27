package §`"1§
{
   import flash.events.Event;
   
   public class §02§
   {
       
      
      private var §=$§:String = null;
      
      private var §^k§:String = null;
      
      private var §@!P§:String = null;
      
      private var §!"?§:Vector.<String>;
      
      private var §=!w§:Vector.<§8%§>;
      
      private var §4!Y§:§`f§;
      
      public function §02§()
      {
         this.§!"?§ = new Vector.<String>();
         super();
         this.§4!Y§ = new §`f§();
         this.§=!w§ = new Vector.<§8%§>();
      }
      
      private function §0"5§() : §0"M§
      {
         if(!this.§^k§)
         {
            return null;
         }
         var _loc1_:§7!&§ = §=Q§.§+1§(this.§^k§);
         if(_loc1_)
         {
            return _loc1_.§0"6§(this.§=$§);
         }
         return null;
      }
      
      private function §2!_§() : void
      {
         this.§4!Y§.removeEventListener(Event.COMPLETE,this.§3"P§);
         this.§4!Y§.removeEventListener(Event.COMPLETE,this.§]"6§);
         this.§4!Y§.§>!a§(this.§=$§);
      }
      
      private function §`"8§(param1:String) : §8%§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!w§.length)
         {
            if(param1 == this.§=!w§[_loc2_].songId)
            {
               return this.§=!w§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §+L§() : Boolean
      {
         if(this.§^k§ && §=Q§.§+1§(this.§^k§) != null)
         {
            §=Q§.§&"=§(this.§^k§);
            return true;
         }
         return false;
      }
      
      public function §7"8§(param1:§8%§) : void
      {
         this.§=!w§.push(param1);
      }
      
      public function §5"]§() : void
      {
         this.§2!_§();
         this.§'M§();
         this.§+L§();
         this.§=$§ = null;
         this.§^k§ = null;
         this.§@!P§ = null;
      }
      
      public function §]"-§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§7!&§ = null;
         if(this.§^k§)
         {
            _loc3_ = §=Q§.§+1§(this.§^k§);
         }
         if(_loc3_ && _loc3_.§["z§())
         {
            this.§!"?§.push(param1);
         }
         else
         {
            this.§^!X§(param1,param2,false);
         }
      }
      
      public function §0!7§() : void
      {
         this.§!"?§ = new Vector.<String>();
      }
      
      public function §=!^§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§0"M§ = null;
         if(this.§=$§ == param1 && !param2)
         {
            return;
         }
         if(§=Q§.§+1§(this.§^k§) != null && §=Q§.§+1§(this.§^k§).§["z§())
         {
            _loc3_ = this.§0"5§();
            this.§2!_§();
            this.§@!P§ = param1;
            this.§4!Y§.addEventListener(Event.COMPLETE,this.§3"P§);
            this.§4!Y§.§<"q§(this.§=$§,_loc3_,0.5);
         }
         else
         {
            this.§^!X§(param1,true,param2);
         }
      }
      
      public function §^!X§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§=$§ == param1 && !param3)
         {
            return;
         }
         this.§5"]§();
         var _loc4_:§8%§;
         if((_loc4_ = this.§`"8§(param1)) == null)
         {
            return;
         }
         this.§=$§ = _loc4_.songId;
         this.§^k§ = _loc4_.§9!k§;
         var _loc5_:§7!&§;
         if(!(_loc5_ = §=Q§.§+1§(this.§^k§)))
         {
            §=Q§.§`"u§(this.§^k§,1,1);
         }
         var _loc6_:§0"M§;
         if((_loc6_ = this.§4L§(_loc4_)) == null)
         {
            return;
         }
         _loc6_.addEventListener(Event.SOUND_COMPLETE,this.§0"u§);
         if(param2)
         {
            this.§4!Y§.addEventListener(Event.COMPLETE,this.§]"6§);
            this.§4!Y§.§5@§(this.§=$§,_loc6_,0.5);
         }
         else
         {
            _loc6_.volume = 1;
         }
      }
      
      private function §4L§(param1:§8%§) : §0"M§
      {
         var _loc2_:§0"M§ = null;
         if(param1.§`<§ != "")
         {
            _loc2_ = §=Q§.§+!x§(param1.§`<§,param1.songId,param1.§-"r§,param1.§9!k§,param1.§?!H§,param1.volume);
         }
         else
         {
            _loc2_ = §=Q§.§`!A§(param1.songId,param1.§9!k§,param1.§?!H§,param1.volume);
         }
         return _loc2_;
      }
      
      private function §3"P§(param1:Event = null) : void
      {
         this.§2!_§();
         this.§'M§();
         this.§^!X§(this.§@!P§,true,false);
         this.§@!P§ = null;
      }
      
      private function §]"6§(param1:Event = null) : void
      {
         this.§2!_§();
      }
      
      private function §0"u§(param1:Event = null) : void
      {
         var _loc2_:String = null;
         this.§2!_§();
         this.§'M§();
         if(this.§!"?§.length > 0)
         {
            _loc2_ = this.§!"?§[0];
            this.§!"?§.splice(0,1);
            this.§^!X§(_loc2_,true,false);
         }
      }
      
      private function §'M§() : void
      {
         this.§=$§ = null;
         var _loc1_:§0"M§ = this.§0"5§();
         if(_loc1_)
         {
            _loc1_.removeEventListener(Event.SOUND_COMPLETE,this.§0"u§);
         }
      }
   }
}
