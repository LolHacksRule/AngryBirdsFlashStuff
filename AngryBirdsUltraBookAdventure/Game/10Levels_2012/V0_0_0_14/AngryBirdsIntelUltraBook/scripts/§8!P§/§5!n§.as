package §8!P§
{
   import §&=§.Item;
   import §@_§.§!T§;
   import §^c§.§+-§;
   import flash.display.Sprite;
   
   public class §5!n§ extends Sprite
   {
       
      
      public var §]!S§:§@!=§;
      
      public function §5!n§()
      {
         super();
      }
      
      public function §#!-§(param1:String) : void
      {
         if(this.§]!S§)
         {
            this.§]!S§.§<d§(param1);
         }
      }
      
      public function §0Z§(param1:Array) : §@!=§
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§5H§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§ r§(_loc2_.§49§,_loc2_.sId,_loc2_.§5H§,§!T§.§>'§,110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§5H§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§#!-§(_loc3_.§49§);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§]!S§.§%D§(_loc4_);
         }
         return this.§]!S§;
      }
      
      public function § r§(param1:String, param2:String, param3:String, param4:Array, param5:int = 110, param6:int = 174, param7:Boolean = false) : §@!=§
      {
         var _loc8_:§@!=§ = null;
         for each(_loc8_ in param4)
         {
            if(_loc8_.§>!!§().§49§ == param1)
            {
               _loc8_.§>!!§().sId = param2;
               _loc8_.§>!!§().§5H§ = param3;
               _loc8_.show(param5,param6);
               if(!param7)
               {
                  §+-§.§5!0§ = _loc8_;
               }
               this.§]!S§ = _loc8_;
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
         return this.§]!S§;
      }
   }
}
