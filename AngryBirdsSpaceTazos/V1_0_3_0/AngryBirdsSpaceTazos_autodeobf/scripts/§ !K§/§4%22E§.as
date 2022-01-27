package § !K§
{
   import §!!r§.§&!D§;
   import §!!r§.§,!u§;
   import §!"4§.§;";§;
   import §5R§.§=F§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §4"E§ extends EventDispatcher implements §&!D§
   {
       
      
      private var §,4§:§+§;
      
      public function §4"E§(param1:§+§)
      {
         super();
         this.§,4§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc2_:Object = §,!u§.§4!E§((param1.currentTarget as URLLoader).data);
         if(_loc2_.error)
         {
            dispatchEvent(new §=!$§(§=!$§.§[!w§));
            §+§.§8!J§.§;"0§();
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:Array = _loc2_.items;
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.type == "VuelaTazos")
            {
               _loc3_ = _loc5_.count;
            }
         }
         this.§,4§.§>"2§(_loc3_);
         dispatchEvent(new §=!$§(§=!$§.§5c§));
         (_loc6_ = {}).type = "VuelaTazos";
         _loc6_.count = _loc3_;
         (_loc7_ = []).push(_loc6_);
         if((_loc8_ = §=F§.§ Z§(§;";§.§3U§.id,_loc7_)) != _loc2_.itemsSecurity)
         {
            dispatchEvent(new §=!$§(§=!$§.§[!w§));
            return;
         }
         dispatchEvent(new §=!$§(§=!$§.§2!§));
      }
      
      public function dynamic(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §1x§(param1:IOErrorEvent) : void
      {
      }
      
      public function §,!$§() : void
      {
         var _loc2_:Object = {};
         _loc2_.type = "VuelaTazos";
         _loc2_.count = 1;
         var _loc3_:Array = [];
         _loc3_.push(_loc2_);
         var _loc4_:String = §=F§.§ Z§(§;";§.§3U§.id,_loc3_);
         var _loc5_:Object = {
            "id":§;";§.§3U§.id,
            "items":_loc3_,
            "itemsSecurity":_loc4_
         };
         var _loc6_:§=F§ = new §=F§(_loc5_,§["!§.§7!h§ + "useItem",this,§=F§.§8"H§);
      }
   }
}
