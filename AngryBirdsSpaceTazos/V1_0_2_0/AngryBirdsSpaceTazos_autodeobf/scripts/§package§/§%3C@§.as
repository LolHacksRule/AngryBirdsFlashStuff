package §package§
{
   import §""%§.§#`§;
   import §4!x§.§`[§;
   import §4!x§.§`q§;
   import §6"6§.§40§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §<@§ extends EventDispatcher implements §`[§
   {
      
      protected static var §&!<§:§<@§;
       
      
      private var §1!`§:int;
      
      private var §5#§:§"!N§;
      
      public function §<@§()
      {
         super();
         if(§&!<§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         this.§5!_§();
         §&!<§ = this;
         this.§5#§ = new §"!N§(this);
      }
      
      public static function get §<"B§() : §<@§
      {
         if(!§&!<§)
         {
            §&!<§ = new §<@§();
         }
         return §&!<§;
      }
      
      public function §5!_§() : void
      {
         this.§1!`§ = 0;
         if(this.§5#§)
         {
            this.§5#§.removeEventListener(§"3§.§-$§,this.§,!q§);
            this.§5#§.removeEventListener(§"3§.§!]§,this.§8F§);
            this.§5#§.removeEventListener(§"3§.§=!S§,this.§,!J§);
         }
      }
      
      public function §9g§() : void
      {
         var _loc2_:Object = {"id":§40§.§1"$§.id};
         var _loc3_:§#`§ = new §#`§(_loc2_,§^"=§.§^"3§ + "getItems",this,§#`§.§-n§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc2_:Object = §`q§.§<f§((param1.currentTarget as URLLoader).data);
         if(_loc2_.error)
         {
            dispatchEvent(new §"3§(§"3§.§'!2§));
            return;
         }
         var _loc3_:Array = _loc2_.items;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.type == "VuelaTazos")
            {
               this.§1!`§ = _loc4_.count;
            }
         }
         (_loc5_ = {}).type = "VuelaTazos";
         _loc5_.count = this.§1!`§;
         (_loc6_ = []).push(_loc5_);
         if((_loc7_ = §#`§.§<!w§(§40§.§1"$§.id,_loc6_)) != _loc2_.itemsSecurity)
         {
            this.§1!`§ = 0;
            dispatchEvent(new §"3§(§"3§.§'!2§));
            return;
         }
         dispatchEvent(new §"3§(§"3§.§=!S§));
      }
      
      public function §"!7§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5"9§(param1:IOErrorEvent) : void
      {
      }
      
      public function §=<§() : int
      {
         return this.§1!`§;
      }
      
      public function § !M§(param1:int) : void
      {
         this.§1!`§ = param1;
      }
      
      public function §<s§() : void
      {
         this.§5#§.addEventListener(§"3§.§-$§,this.§,!q§);
         this.§5#§.addEventListener(§"3§.§!]§,this.§8F§);
         this.§5#§.addEventListener(§"3§.§=!S§,this.§,!J§);
         this.§5#§.§<s§();
      }
      
      private function §,!q§(param1:Event) : void
      {
         dispatchEvent(new §"3§(§"3§.§-$§));
         this.§5#§.removeEventListener(§"3§.§-$§,this.§,!q§);
         this.§5#§.removeEventListener(§"3§.§!]§,this.§8F§);
      }
      
      private function §8F§(param1:Event) : void
      {
         dispatchEvent(new §"3§(§"3§.§!]§));
         this.§5#§.removeEventListener(§"3§.§-$§,this.§,!q§);
         this.§5#§.removeEventListener(§"3§.§!]§,this.§8F§);
      }
      
      private function §,!J§(param1:Event) : void
      {
         dispatchEvent(new §"3§(§"3§.§=!S§));
         this.§5#§.removeEventListener(§"3§.§=!S§,this.§,!J§);
      }
   }
}
