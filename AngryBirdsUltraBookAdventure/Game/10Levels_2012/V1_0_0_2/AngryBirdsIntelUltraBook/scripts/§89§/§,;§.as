package §89§
{
   import §1e§.§5m§;
   import §7r§.Item;
   import §`!%§.§6!_§;
   import flash.display.Sprite;
   
   public class §,;§ extends Sprite
   {
       
      
      public var §%!y§:§7A§;
      
      public function §,;§()
      {
         super();
      }
      
      public function §=P§(param1:String) : void
      {
         if(this.§%!y§)
         {
            this.§%!y§.§&!x§(param1);
         }
      }
      
      public function §5!7§(param1:Array) : §7A§
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§@§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§^7§(_loc2_.§&!X§,_loc2_.sId,_loc2_.§@§,§5m§.§<!m§,110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§@§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§=P§(_loc3_.§&!X§);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§%!y§.§9!r§(_loc4_);
         }
         return this.§%!y§;
      }
      
      public function §^7§(param1:String, param2:String, param3:String, param4:Array, param5:int = 110, param6:int = 174, param7:Boolean = false) : §7A§
      {
         var _loc8_:§7A§ = null;
         for each(_loc8_ in param4)
         {
            if(_loc8_.§6;§().§&!X§ == param1)
            {
               _loc8_.§6;§().sId = param2;
               _loc8_.§6;§().§@§ = param3;
               _loc8_.show(param5,param6);
               if(!param7)
               {
                  §6!_§.§+!e§ = _loc8_;
               }
               this.§%!y§ = _loc8_;
               while(this.numChildren > 0)
               {
                  removeChildAt(0);
               }
               this.addChild(_loc8_);
            }
            else
            {
               _loc8_.hide();
            }
         }
         return this.§%!y§;
      }
   }
}
