package §5!q§
{
   import §!9§.§%y§;
   import §`!?§.Item;
   import flash.display.Sprite;
   
   public class §@"0§ extends Sprite
   {
       
      
      public var §1"H§:§2"L§;
      
      public function §@"0§()
      {
         super();
      }
      
      public function §[!j§(param1:String) : void
      {
         if(this.§1"H§)
         {
            this.§1"H§.§,d§(param1);
         }
      }
      
      public function §`!i§(param1:Array) : §2"L§
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§;!g§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§2!B§(§%y§.§1[§.§6!9§(_loc2_.§3!9§),110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§;!g§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§[!j§(_loc3_.§3!9§);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§1"H§.§&"&§(_loc4_);
         }
         return this.§1"H§;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§1"H§ = null;
      }
      
      public function §7! §() : void
      {
         this.§2!B§(this.§1"H§,110,174);
      }
      
      public function §2!B§(param1:§2"L§, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         param1.show(param2,param3);
         if(!param4)
         {
            §%y§.§1[§.avatar = param1;
         }
         this.§1"H§ = param1;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(param1);
      }
   }
}
