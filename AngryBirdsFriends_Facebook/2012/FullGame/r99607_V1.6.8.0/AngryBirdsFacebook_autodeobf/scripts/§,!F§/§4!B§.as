package §,!F§
{
   import §-"-§.§@!t§;
   import §8!-§.Item;
   import flash.display.Sprite;
   
   public class §4!B§ extends Sprite
   {
       
      
      public var §`!v§:§@"B§;
      
      public function §4!B§()
      {
         super();
      }
      
      public function §'X§(param1:String) : void
      {
         if(this.§`!v§)
         {
            this.§`!v§.§&&§(param1);
         }
      }
      
      public function §2J§(param1:Array) : §@"B§
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§;F§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§=!2§(§@!t§.§8c§.§^!h§(_loc2_.§4W§),110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§;F§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§'X§(_loc3_.§4W§);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§`!v§.§,"1§(_loc4_);
         }
         return this.§`!v§;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§`!v§ = null;
      }
      
      public function §`1§() : void
      {
         this.§=!2§(this.§`!v§,110,174);
      }
      
      public function §=!2§(param1:§@"B§, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         param1.show(param2,param3);
         if(!param4)
         {
            §@!t§.§8c§.avatar = param1;
         }
         this.§`!v§ = param1;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(param1);
      }
   }
}
