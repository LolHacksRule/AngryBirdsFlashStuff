package §_-Mc§
{
   import §_-1N§.§_-Kz§;
   import §_-4§.Item;
   import §_-y7§.§_-xe§;
   import flash.display.Sprite;
   
   public class §in§ extends Sprite
   {
       
      
      public var §_-C5§:§_-059§;
      
      public function §in§()
      {
         super();
      }
      
      public function §_-07f§(param1:String) : void
      {
         if(this.§_-C5§)
         {
            this.§_-C5§.§_-QQ§(param1);
         }
      }
      
      public function §_-rJ§(param1:Array) : §_-059§
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§_-4k§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§_-071§(_loc2_.§_-1h§,_loc2_.sId,_loc2_.§_-4k§,§_-Kz§.§_-017§,110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§_-4k§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§_-07f§(_loc3_.§_-1h§);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§_-C5§.§_-QZ§(_loc4_);
         }
         return this.§_-C5§;
      }
      
      public function §_-071§(param1:String, param2:String, param3:String, param4:Array, param5:int = 110, param6:int = 174, param7:Boolean = false) : §_-059§
      {
         var _loc8_:§_-059§ = null;
         for each(_loc8_ in param4)
         {
            if(_loc8_.§_-SZ§().§_-1h§ == param1)
            {
               _loc8_.§_-SZ§().sId = param2;
               _loc8_.§_-SZ§().§_-4k§ = param3;
               _loc8_.show(param5,param6);
               if(!param7)
               {
                  §_-xe§.§_-0Ec§ = _loc8_;
               }
               this.§_-C5§ = _loc8_;
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
         return this.§_-C5§;
      }
   }
}
