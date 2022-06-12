package §4q§
{
   import §%y§.Item;
   import §6"p§.§7§;
   import flash.display.Sprite;
   
   public class §#@§ extends Sprite
   {
       
      
      public var §=!l§:Avatar;
      
      public function §#@§()
      {
         super();
      }
      
      public function §'!;§(param1:String) : void
      {
         if(this.§=!l§)
         {
            this.§=!l§.§9!M§(param1);
         }
      }
      
      public function §@#E§(param1:Array) : Avatar
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§>"r§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§>#w§(§7#8§.§`"H§.§5$@§(_loc2_.mId),110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§>"r§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§'!;§(_loc3_.mId);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§=!l§.§^"L§(_loc4_);
         }
         return this.§=!l§;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§=!l§ = null;
      }
      
      public function §4"I§() : void
      {
         this.§>#w§(this.§=!l§,110,174);
      }
      
      public function §>#w§(param1:Avatar, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         param1.show(param2,param3);
         if(!param4)
         {
            §7#8§.§`"H§.§5$D§ = param1;
         }
         this.§=!l§ = param1;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(param1);
      }
   }
}
