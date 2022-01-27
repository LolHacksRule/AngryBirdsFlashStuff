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
   
   public class §"!N§ extends EventDispatcher implements §`[§
   {
       
      
      private var §-;§:§<@§;
      
      public function §"!N§(param1:§<@§)
      {
         super();
         this.§-;§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc2_:Object = §`q§.§<f§((param1.currentTarget as URLLoader).data);
         if(_loc2_.error)
         {
            dispatchEvent(new §"3§(§"3§.§!]§));
            §<@§.§<"B§.§9g§();
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
         this.§-;§.§ !M§(_loc3_);
         dispatchEvent(new §"3§(§"3§.§=!S§));
         (_loc6_ = {}).type = "VuelaTazos";
         _loc6_.count = _loc3_;
         (_loc7_ = []).push(_loc6_);
         if((_loc8_ = §#`§.§<!w§(§40§.§1"$§.id,_loc7_)) != _loc2_.itemsSecurity)
         {
            dispatchEvent(new §"3§(§"3§.§!]§));
            return;
         }
         dispatchEvent(new §"3§(§"3§.§-$§));
      }
      
      public function §"!7§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5"9§(param1:IOErrorEvent) : void
      {
      }
      
      public function §<s§() : void
      {
         var _loc2_:Object = {};
         _loc2_.type = "VuelaTazos";
         _loc2_.count = 1;
         var _loc3_:Array = [];
         _loc3_.push(_loc2_);
         var _loc4_:String = §#`§.§<!w§(§40§.§1"$§.id,_loc3_);
         var _loc5_:Object = {
            "id":§40§.§1"$§.id,
            "items":_loc3_,
            "itemsSecurity":_loc4_
         };
         var _loc6_:§#`§ = new §#`§(_loc5_,§^"=§.§^"3§ + "useItem",this,§#`§.§-n§);
      }
   }
}
