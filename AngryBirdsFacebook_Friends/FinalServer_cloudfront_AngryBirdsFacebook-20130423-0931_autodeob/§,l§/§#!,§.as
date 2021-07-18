package §,l§
{
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §9!n§.LevelManager;
   import §9@§.§1!j§;
   import §9@§.§4Z§;
   import §9@§.§@q§;
   import §^"F§.§0"&§;
   import §^"F§.§4!2§;
   import §^"F§.§^"K§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §#!,§ extends EventDispatcher
   {
      
      protected static var §+!Y§:§#!,§;
      
      private static const §!o§:Array = ["2000-83","Test-PlayLevel"];
       
      
      protected var §,u§:Boolean = false;
      
      protected var §@!f§:§3d§;
      
      protected var §+?§:§4Z§;
      
      protected var §-"P§:§4Z§;
      
      protected var §`!?§:§4Z§;
      
      protected var §1;§:§0"&§;
      
      public function §#!,§()
      {
         var _loc1_:§^"K§ = null;
         this.§+?§ = new §4Z§();
         this.§-"P§ = new §4Z§();
         this.§`!?§ = new §4Z§();
         super();
         if(§+!Y§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         for each(_loc1_ in §4!2§.§1!V§)
         {
            this.§+?§[_loc1_.§1!#§] = 0;
         }
         §+!Y§ = this;
      }
      
      public static function get §&"5§() : §#!,§
      {
         if(!§+!Y§)
         {
            §+!Y§ = new §#!,§();
         }
         return §+!Y§;
      }
      
      public static function §[!f§(param1:String = "") : Boolean
      {
         if(param1 == "")
         {
            param1 = LevelManager.§ T§;
         }
         if(§!o§.indexOf(param1) >= 0)
         {
            return true;
         }
         return false;
      }
      
      public function §@J§() : void
      {
         if(this.§@!f§)
         {
            this.§@!f§.removeEventListener(Event.COMPLETE,this.§-!G§);
            this.§@!f§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0!>§);
            this.§@!f§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!>§);
            this.§@!f§.removeEventListener(§9G§.§33§,this.§0!>§);
            this.§@!f§ = null;
         }
         this.§@!f§ = new §3d§();
         this.§@!f§.addEventListener(Event.COMPLETE,this.§-!G§);
         this.§@!f§.addEventListener(IOErrorEvent.IO_ERROR,this.§0!>§);
         this.§@!f§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!>§);
         this.§@!f§.addEventListener(§9G§.§33§,this.§0!>§);
         this.§@!f§.load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/getitems"));
      }
      
      public function get §9!9§() : §0"&§
      {
         return this.§1;§;
      }
      
      public function §?v§(param1:Object) : void
      {
         this.§+?§ = new §4Z§();
         this.§-"P§ = new §4Z§();
         this.§[!V§(param1);
         this.§@!f§ = null;
      }
      
      private function §[!V§(param1:Object, param2:Boolean = false) : Array
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§^"K§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc3_:Array = [];
         this.§1;§ = new §0"&§(param1.ownedBundles,param1.claimableBundles);
         for each(_loc4_ in param1.items)
         {
            if(_loc4_ is Array)
            {
               throw new Error("Responseobject should not be Array!! Inject object.items instead");
            }
            if(param1.itemsPrev)
            {
               _loc5_ = this.§@!`§(_loc4_.i,param1.itemsPrev);
            }
            if(_loc4_.i == §["K§.§0#§)
            {
               if(_loc5_)
               {
                  §%"S§.§!C§.§9"%§.§,T§.§'"T§(_loc5_.q,true);
               }
               if((_loc7_ = §%"S§.§!C§.§9"%§.§,T§.§'"T§(_loc4_.q,param2)) != 0)
               {
                  _loc3_.push(new §!!s§(_loc7_,§["K§.§0#§));
               }
               §@q§.§+!7§(_loc4_.q);
            }
            else if(_loc6_ = §4!2§.§return§(_loc4_.i))
            {
               this.§+?§[_loc6_.§1!#§] = 0;
               this.§-"P§[_loc6_.§1!#§] = Number(_loc4_.s);
               this.§`!?§[_loc4_.i] = true;
            }
            else
            {
               if(_loc5_)
               {
                  _loc8_ = _loc5_.q;
               }
               else
               {
                  _loc8_ = this.§+?§[_loc4_.i];
               }
               _loc9_ = _loc4_.q - _loc8_;
               this.§+?§[_loc4_.i] = _loc4_.q;
               if(_loc9_ != 0)
               {
                  _loc3_.push(new §!!s§(_loc9_,_loc4_.i));
               }
               §@q§.§@P§(_loc4_.i,_loc4_.q);
            }
         }
         dispatchEvent(new Event(Event.CHANGE));
         return _loc3_;
      }
      
      private function §@!`§(param1:String, param2:Object) : Object
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_.i == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §6"M§(param1:Object, param2:Boolean = false) : Array
      {
         if(param1 == null)
         {
            return [];
         }
         return this.§[!V§(param1,param2);
      }
      
      protected function §-!G§(param1:Event) : void
      {
         var responseObjects:Object = null;
         var e:Event = param1;
         try
         {
            responseObjects = JSON.parse(this.§@!f§.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §@!f§.data,§1!j§.§%e§);
         }
         this.§?v§(responseObjects);
      }
      
      protected function §0!>§(param1:Event) : void
      {
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         else
         {
            §9"6§.§#!o§();
         }
         this.§@!f§ = null;
      }
      
      public function §1!r§(param1:String) : Number
      {
         return this.§-"P§[param1];
      }
      
      public function §]![§(param1:String) : int
      {
         if(this.§1!r§(param1) > 0)
         {
            return 1;
         }
         return this.§+?§[param1];
      }
      
      public function §6"F§(param1:String, param2:int) : void
      {
         this.§+?§[param1] = param2;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function usePowerup(param1:String) : void
      {
         if(this.§]![§(param1) <= 0)
         {
            throw new Error("Can\'t user powerup " + param1 + ", user doesn\'t have any left.");
         }
         --this.§+?§[param1];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §<"H§(param1:String) : Boolean
      {
         return this.§`!?§[param1];
      }
      
      public function get §each §() : Boolean
      {
         return this.§@!f§ != null;
      }
   }
}
