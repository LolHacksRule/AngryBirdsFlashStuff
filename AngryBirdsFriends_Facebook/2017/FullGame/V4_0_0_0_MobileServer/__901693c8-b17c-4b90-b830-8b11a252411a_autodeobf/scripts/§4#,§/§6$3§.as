package §4#,§
{
   import §%#!§.Item;
   import §<"@§.§8y§;
   import flash.display.Sprite;
   
   public class §6$3§ extends Sprite
   {
       
      
      public var §?!b§:Avatar;
      
      public function §6$3§()
      {
         super();
      }
      
      public function §[#J§(param1:String) : void
      {
         if(this.§?!b§)
         {
            this.§?!b§.§,#q§(param1);
         }
      }
      
      public function §'!7§(param1:Array) : Avatar
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§8!G§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§8#w§(§8y§.§ "D§.§22§(_loc2_.mId),110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§8!G§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§[#J§(_loc3_.mId);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§?!b§.§%#§(_loc4_);
         }
         return this.§?!b§;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§?!b§ = null;
      }
      
      public function §-9§() : void
      {
         this.§8#w§(this.§?!b§,110,174);
      }
      
      public function §8#w§(param1:Avatar, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         param1.show(param2,param3);
         if(!param4)
         {
            §8y§.§ "D§.avatar = param1;
         }
         this.§?!b§ = param1;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(param1);
      }
   }
}
