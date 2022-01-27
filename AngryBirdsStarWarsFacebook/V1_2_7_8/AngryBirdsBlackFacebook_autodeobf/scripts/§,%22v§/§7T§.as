package §,"v§
{
   import flash.events.Event;
   
   public class §7T§
   {
       
      
      private var §`!s§:String = null;
      
      private var §"!E§:String = null;
      
      private var §^"i§:String = null;
      
      private var § !"§:Vector.<String>;
      
      private var §-"&§:Vector.<§4M§>;
      
      private var §8m§:§+!U§;
      
      public function §7T§()
      {
         this.§ !"§ = new Vector.<String>();
         super();
         this.§8m§ = new §+!U§();
         this.§-"&§ = new Vector.<§4M§>();
      }
      
      private function §<!@§() : §^!2§
      {
         if(!this.§"!E§)
         {
            return null;
         }
         var _loc1_:§,w§ = §@§.§]#%§(this.§"!E§);
         if(_loc1_)
         {
            return _loc1_.§9!d§(this.§`!s§);
         }
         return null;
      }
      
      private function §7[§() : void
      {
         this.§8m§.removeEventListener(Event.COMPLETE,this.§`R§);
         this.§8m§.removeEventListener(Event.COMPLETE,this.§2!x§);
         this.§8m§.§'Y§(this.§`!s§);
      }
      
      private function §5##§(param1:String) : §4M§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-"&§.length)
         {
            if(param1 == this.§-"&§[_loc2_].songId)
            {
               return this.§-"&§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §@!2§() : Boolean
      {
         if(this.§"!E§ && §@§.§]#%§(this.§"!E§) != null)
         {
            §@§.§@!D§(this.§"!E§);
            return true;
         }
         return false;
      }
      
      public function §&!4§(param1:§4M§) : void
      {
         this.§-"&§.push(param1);
      }
      
      public function §6T§() : void
      {
         this.§7[§();
         this.§,Y§();
         this.§@!2§();
         this.§`!s§ = null;
         this.§"!E§ = null;
         this.§^"i§ = null;
      }
      
      public function §`"v§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§,w§ = null;
         if(this.§"!E§)
         {
            _loc3_ = §@§.§]#%§(this.§"!E§);
         }
         if(_loc3_ && _loc3_.§^"h§())
         {
            this.§ !"§.push(param1);
         }
         else
         {
            this.§="D§(param1,param2,false);
         }
      }
      
      public function §9!H§() : void
      {
         this.§ !"§ = new Vector.<String>();
      }
      
      public function §"p§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§^!2§ = null;
         if(this.§`!s§ == param1 && !param2)
         {
            return;
         }
         if(§@§.§]#%§(this.§"!E§) != null && §@§.§]#%§(this.§"!E§).§^"h§())
         {
            _loc3_ = this.§<!@§();
            this.§7[§();
            this.§^"i§ = param1;
            this.§8m§.addEventListener(Event.COMPLETE,this.§`R§);
            this.§8m§.§+"R§(this.§`!s§,_loc3_,0.5);
         }
         else
         {
            this.§="D§(param1,true,param2);
         }
      }
      
      public function §="D§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§`!s§ == param1 && !param3)
         {
            return;
         }
         this.§6T§();
         var _loc4_:§4M§;
         if((_loc4_ = this.§5##§(param1)) == null)
         {
            return;
         }
         this.§`!s§ = _loc4_.songId;
         this.§"!E§ = _loc4_.§=z§;
         var _loc5_:§,w§;
         if(!(_loc5_ = §@§.§]#%§(this.§"!E§)))
         {
            §@§.§"#'§(this.§"!E§,1,1);
         }
         var _loc6_:§^!2§;
         if((_loc6_ = this.§3"j§(_loc4_)) == null)
         {
            return;
         }
         _loc6_.addEventListener(Event.SOUND_COMPLETE,this.§?n§);
         if(param2)
         {
            this.§8m§.addEventListener(Event.COMPLETE,this.§2!x§);
            this.§8m§.§=Z§(this.§`!s§,_loc6_,0.5);
         }
         else
         {
            _loc6_.volume = 1;
         }
      }
      
      private function §3"j§(param1:§4M§) : §^!2§
      {
         var _loc2_:§^!2§ = null;
         if(param1.§2b§ != "")
         {
            _loc2_ = §@§.§=!E§(param1.§2b§,param1.songId,param1.§"%§,param1.§=z§,param1.§7"J§,param1.volume);
         }
         else
         {
            _loc2_ = §@§.§=Y§(param1.songId,param1.§=z§,param1.§7"J§,param1.volume);
         }
         return _loc2_;
      }
      
      private function §`R§(param1:Event = null) : void
      {
         this.§7[§();
         this.§,Y§();
         this.§="D§(this.§^"i§,true,false);
         this.§^"i§ = null;
      }
      
      private function §2!x§(param1:Event = null) : void
      {
         this.§7[§();
      }
      
      private function §?n§(param1:Event = null) : void
      {
         var _loc2_:String = null;
         this.§7[§();
         this.§,Y§();
         if(this.§ !"§.length > 0)
         {
            _loc2_ = this.§ !"§[0];
            this.§ !"§.splice(0,1);
            this.§="D§(_loc2_,true,false);
         }
      }
      
      private function §,Y§() : void
      {
         this.§`!s§ = null;
         var _loc1_:§^!2§ = this.§<!@§();
         if(_loc1_)
         {
            _loc1_.removeEventListener(Event.SOUND_COMPLETE,this.§?n§);
         }
      }
   }
}
