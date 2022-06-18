package §4",§
{
   import §4§.§7j§;
   import §@`§.Item;
   import flash.display.Sprite;
   
   public class §9#H§ extends Sprite
   {
       
      
      public var §>#K§:Avatar;
      
      public function §9#H§()
      {
         super();
      }
      
      public function §##T§(param1:String) : void
      {
         if(this.§>#K§)
         {
            this.§>#K§.§8C§(param1);
         }
      }
      
      public function §^!m§(param1:Array) : Avatar
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§'!P§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§4!r§(§7j§.§+!,§.§@!_§(_loc2_.mId),110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§'!P§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§##T§(_loc3_.mId);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§>#K§.§9t§(_loc4_);
         }
         return this.§>#K§;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§>#K§ = null;
      }
      
      public function §;"b§() : void
      {
         this.§4!r§(this.§>#K§,110,174);
      }
      
      public function §4!r§(param1:Avatar, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         param1.show(param2,param3);
         if(!param4)
         {
            §7j§.§+!,§.§?"9§ = param1;
         }
         this.§>#K§ = param1;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(param1);
      }
   }
}
