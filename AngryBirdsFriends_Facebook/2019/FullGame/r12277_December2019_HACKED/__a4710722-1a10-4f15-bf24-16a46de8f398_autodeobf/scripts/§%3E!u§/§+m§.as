package §>!u§
{
   import §'!S§.§<"5§;
   import §^"K§.Item;
   import flash.display.Sprite;
   
   public class §+m§ extends Sprite
   {
       
      
      public var §^"F§:Avatar;
      
      public function §+m§()
      {
         super();
      }
      
      public function §2!$§(param1:String) : void
      {
         if(this.§^"F§)
         {
            this.§^"F§.§3#F§(param1);
         }
      }
      
      public function §4^§(param1:Array) : Avatar
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§7#n§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§"#?§(§<"5§.§3"1§.§6s§(_loc2_.mId),110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§7#n§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§2!$§(_loc3_.mId);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§^"F§.§""Y§(_loc4_);
         }
         return this.§^"F§;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§^"F§ = null;
      }
      
      public function §'!m§() : void
      {
         this.§"#?§(this.§^"F§,110,174);
      }
      
      public function §"#?§(param1:Avatar, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         param1.show(param2,param3);
         if(!param4)
         {
            §<"5§.§3"1§.§["z§ = param1;
         }
         this.§^"F§ = param1;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(param1);
      }
   }
}
