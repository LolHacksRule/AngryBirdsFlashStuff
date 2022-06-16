package §2!6§
{
   import §%!'§.§"!e§;
   import §%!'§.§5!;§;
   import §%!'§.§8o§;
   import §&!"§.§5"§;
   import §&!"§.§`B§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import §`!n§.LevelManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §`"J§ extends EventDispatcher
   {
      
      protected static var §`"$§:§`"J§;
      
      public static const §%!w§:Array = ["2000-83","Test-PlayLevel"];
       
      
      protected var §]"=§:Boolean = false;
      
      protected var §1!_§:§9!S§;
      
      protected var §7B§:§5!;§;
      
      protected var §,U§:§5!;§;
      
      protected var §5!a§:§5!;§;
      
      protected var §"f§:§ d§;
      
      public function §`"J§()
      {
         var _loc1_:§?G§ = null;
         this.§7B§ = new §5!;§();
         this.§,U§ = new §5!;§();
         this.§5!a§ = new §5!;§();
         super();
         if(§`"$§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         for each(_loc1_ in § !h§.§]e§)
         {
            this.§7B§[_loc1_.§5"5§] = 0;
         }
         §`"$§ = this;
      }
      
      public static function get §1[§() : §`"J§
      {
         if(!§`"$§)
         {
            §`"$§ = new §`"J§();
         }
         return §`"$§;
      }
      
      public static function §;i§(param1:String = "") : Boolean
      {
         var _loc2_:String = null;
         if(param1 == "")
         {
            param1 = LevelManager.§`-§;
         }
         for each(_loc2_ in §%!w§)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §'!p§() : void
      {
         if(this.§1!_§)
         {
            this.§1!_§.removeEventListener(Event.COMPLETE,this.§5!I§);
            this.§1!_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!H§);
            this.§1!_§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`!H§);
            this.§1!_§.removeEventListener(§="B§.§2"B§,this.§`!H§);
            this.§1!_§ = null;
         }
         this.§1!_§ = new §9!S§();
         this.§1!_§.addEventListener(Event.COMPLETE,this.§5!I§);
         this.§1!_§.addEventListener(IOErrorEvent.IO_ERROR,this.§`!H§);
         this.§1!_§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`!H§);
         this.§1!_§.addEventListener(§="B§.§2"B§,this.§`!H§);
         this.§1!_§.load(§?x§.§>t§(AngryBirdsFP11.§#"@§ + "/getitems"));
      }
      
      public function get §@0§() : § d§
      {
         return this.§"f§;
      }
      
      public function §]@§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§?G§ = null;
         this.§"f§ = new § d§(param1.ownedBundles,param1.claimableBundles);
         this.§7B§ = new §5!;§();
         this.§,U§ = new §5!;§();
         for each(_loc2_ in param1.items)
         {
            _loc3_ = § !h§.§+h§(_loc2_.i);
            if(_loc3_)
            {
               this.§7B§[_loc3_.§5"5§] = 0;
               this.§,U§[_loc3_.§5"5§] = _loc2_.s;
               this.§5!a§[_loc2_.i] = true;
            }
            else
            {
               this.§7B§[_loc2_.i] = _loc2_.q;
               §"!e§.§[z§(_loc2_.i,_loc2_.q);
            }
         }
         this.§1!_§ = null;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      protected function §5!I§(param1:Event) : void
      {
         var responseObjects:Object = null;
         var e:Event = param1;
         try
         {
            responseObjects = JSON.parse(this.§1!_§.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §1!_§.data,§8o§.§1!d§);
         }
         this.§]@§(responseObjects);
      }
      
      protected function §`!H§(param1:Event) : void
      {
         if(param1.type == §="B§.§2"B§)
         {
            §`B§.§#!i§(§5"§.§;s§);
         }
         else
         {
            §`B§.§-!§();
         }
         this.§1!_§ = null;
      }
      
      public function §]"B§(param1:String) : Number
      {
         var _loc2_:Number = §,"I§.§&q§.§+g§.§?"&§.§?9§;
         return this.§,U§[param1] - _loc2_;
      }
      
      public function §'>§(param1:String) : int
      {
         if(§;i§())
         {
            if(this.§7B§[param1])
            {
               return Math.max(1,this.§7B§[param1]);
            }
            return 1;
         }
         if(this.§]"B§(param1) > 0)
         {
            return 1;
         }
         return this.§7B§[param1];
      }
      
      public function §^!i§(param1:String) : Boolean
      {
         return this.§5!a§[param1];
      }
      
      public function §0?§(param1:String, param2:int) : void
      {
         this.§7B§[param1] = param2;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §2'§(param1:String) : void
      {
         if(§;i§())
         {
            return;
         }
         if(this.§'>§(param1) <= 0)
         {
            throw new Error("Can\'t user powerup " + param1 + ", user doesn\'t have any left.");
         }
         --this.§7B§[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get §@!o§() : Boolean
      {
         return this.§1!_§ != null;
      }
   }
}
