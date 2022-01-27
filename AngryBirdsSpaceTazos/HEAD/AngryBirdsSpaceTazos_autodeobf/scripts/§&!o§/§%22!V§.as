package §&!o§
{
   import §%!P§.§7""§;
   import §5"@§.§1!N§;
   import §[z§.§4!L§;
   import §[z§.§[!A§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §"!V§ extends EventDispatcher implements §[!A§
   {
       
      
      private var §@Z§:§2"E§;
      
      public function §"!V§(param1:§2"E§)
      {
         super();
         this.§@Z§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc2_:Object = §4!L§.§#";§((param1.currentTarget as URLLoader).data);
         if(_loc2_.error)
         {
            dispatchEvent(new §="E§(§="E§.§=Y§));
            §2"E§.§3R§.§-l§();
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
         this.§@Z§.§#T§(_loc3_);
         dispatchEvent(new §="E§(§="E§.§3B§));
         (_loc6_ = {}).type = "VuelaTazos";
         _loc6_.count = _loc3_;
         (_loc7_ = []).push(_loc6_);
         if((_loc8_ = §7""§.§7"6§(§1!N§.§,!<§.id,_loc7_)) != _loc2_.itemsSecurity)
         {
            dispatchEvent(new §="E§(§="E§.§=Y§));
            return;
         }
         dispatchEvent(new §="E§(§="E§.§;0§));
      }
      
      public function §&U§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[!J§(param1:IOErrorEvent) : void
      {
      }
      
      public function §4!6§() : void
      {
         var _loc2_:Object = {};
         _loc2_.type = "VuelaTazos";
         _loc2_.count = 1;
         var _loc3_:Array = [];
         _loc3_.push(_loc2_);
         var _loc4_:String = §7""§.§7"6§(§1!N§.§,!<§.id,_loc3_);
         var _loc5_:Object = {
            "id":§1!N§.§,!<§.id,
            "items":_loc3_,
            "itemsSecurity":_loc4_
         };
         var _loc6_:§7""§ = new §7""§(_loc5_,§@T§.§&Z§ + "useItem",this,§7""§.§4!8§);
      }
   }
}
