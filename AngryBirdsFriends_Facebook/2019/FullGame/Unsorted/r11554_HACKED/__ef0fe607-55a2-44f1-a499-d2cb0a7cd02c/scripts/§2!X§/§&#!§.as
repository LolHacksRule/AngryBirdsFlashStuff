package §2!X§
{
   import § #s§.Item;
   import §&!P§.§@#m§;
   import flash.display.Sprite;
   
   public class §&#!§ extends Sprite
   {
       
      
      public var §2t§:Avatar;
      
      public function §&#!§()
      {
         super();
      }
      
      public function §,"h§(param1:String) : void
      {
         if(this.§2t§)
         {
            this.§2t§.§1s§(param1);
         }
      }
      
      public function §9+§(param1:Array) : Avatar
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§1! §.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§]!m§(§@#m§.§?q§.§`#r§(_loc2_.mId),110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§1! §.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§,"h§(_loc3_.mId);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§2t§.§>"#§(_loc4_);
         }
         return this.§2t§;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§2t§ = null;
      }
      
      public function §4p§() : void
      {
         this.§]!m§(this.§2t§,110,174);
      }
      
      public function §]!m§(param1:Avatar, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         param1.show(param2,param3);
         if(!param4)
         {
            §@#m§.§?q§.§#U§ = param1;
         }
         this.§2t§ = param1;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(param1);
      }
   }
}
