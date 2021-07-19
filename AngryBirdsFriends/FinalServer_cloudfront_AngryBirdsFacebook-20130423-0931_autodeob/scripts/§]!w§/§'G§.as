package §]!w§
{
   import §!"@§.§]"1§;
   import §4y§.Item;
   import flash.display.Sprite;
   
   public class §'G§ extends Sprite
   {
       
      
      public var §6[§:§[!X§;
      
      public function §'G§()
      {
         super();
      }
      
      public function §[!R§(param1:String) : void
      {
         if(this.§6[§)
         {
            this.§6[§.§^!'§(param1);
         }
      }
      
      public function §`!Y§(param1:Array) : §[!X§
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§;"V§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§2!Y§(§]"1§.§&"5§.§!q§(_loc2_.§&N§),110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§;"V§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§[!R§(_loc3_.§&N§);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§6[§.§]"A§(_loc4_);
         }
         return this.§6[§;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§6[§ = null;
      }
      
      public function §1!R§() : void
      {
         this.§2!Y§(this.§6[§,110,174);
      }
      
      public function §2!Y§(param1:§[!X§, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         param1.show(param2,param3);
         if(!param4)
         {
            §]"1§.§&"5§.avatar = param1;
         }
         this.§6[§ = param1;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(param1);
      }
   }
}
