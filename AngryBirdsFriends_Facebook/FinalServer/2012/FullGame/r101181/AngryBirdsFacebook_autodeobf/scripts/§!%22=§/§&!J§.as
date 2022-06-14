package §!"=§
{
   import §!K§.Item;
   import §#!H§.§=!F§;
   import flash.display.Sprite;
   
   public class §&!J§ extends Sprite
   {
       
      
      public var §<!l§:§8S§;
      
      public function §&!J§()
      {
         super();
      }
      
      public function §37§(param1:String) : void
      {
         if(this.§<!l§)
         {
            this.§<!l§.§6!9§(param1);
         }
      }
      
      public function §>7§(param1:Array) : §8S§
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§[C§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§%!A§(§=!F§.§;"§.§,"9§(_loc2_.§;!Y§),110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§[C§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§37§(_loc3_.§;!Y§);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§<!l§.§0!L§(_loc4_);
         }
         return this.§<!l§;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§<!l§ = null;
      }
      
      public function §1%§() : void
      {
         this.§%!A§(this.§<!l§,110,174);
      }
      
      public function §%!A§(param1:§8S§, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         param1.show(param2,param3);
         if(!param4)
         {
            §=!F§.§;"§.avatar = param1;
         }
         this.§<!l§ = param1;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(param1);
      }
   }
}
