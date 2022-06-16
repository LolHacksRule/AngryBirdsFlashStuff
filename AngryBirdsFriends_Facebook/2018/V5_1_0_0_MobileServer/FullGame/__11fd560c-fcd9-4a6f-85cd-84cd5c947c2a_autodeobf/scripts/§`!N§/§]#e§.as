package §`!N§
{
   import §-!T§.Item;
   import §-"V§.§^#y§;
   import flash.display.Sprite;
   
   public class §]#e§ extends Sprite
   {
       
      
      public var §<y§:Avatar;
      
      public function §]#e§()
      {
         super();
      }
      
      public function §0S§(param1:String) : void
      {
         if(this.§<y§)
         {
            this.§<y§.§86§(param1);
         }
      }
      
      public function §+!_§(param1:Array) : Avatar
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§=#s§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§6"w§(§^#y§.§6!§.§2!l§(_loc2_.mId),110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§=#s§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§0S§(_loc3_.mId);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§<y§.§-!M§(_loc4_);
         }
         return this.§<y§;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§<y§ = null;
      }
      
      public function §;!5§() : void
      {
         this.§6"w§(this.§<y§,110,174);
      }
      
      public function §6"w§(param1:Avatar, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         param1.show(param2,param3);
         if(!param4)
         {
            §^#y§.§6!§.§]"C§ = param1;
         }
         this.§<y§ = param1;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(param1);
      }
   }
}
