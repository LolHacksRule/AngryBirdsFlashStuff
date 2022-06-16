package §1"o§
{
   import §1"1§.§3!m§;
   import §6#s§.Item;
   import flash.display.Sprite;
   
   public class §<s§ extends Sprite
   {
       
      
      public var §'!n§:Avatar;
      
      public function §<s§()
      {
         super();
      }
      
      public function §""_§(param1:String) : void
      {
         if(this.§'!n§)
         {
            this.§'!n§.§-"u§(param1);
         }
      }
      
      public function §`z§(param1:Array) : Avatar
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§3$1§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§,!l§(§3!m§.§3!]§.§?!,§(_loc2_.mId),110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§3$1§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§""_§(_loc3_.mId);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§'!n§.§0!G§(_loc4_);
         }
         return this.§'!n§;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§'!n§ = null;
      }
      
      public function §#$8§() : void
      {
         this.§,!l§(this.§'!n§,110,174);
      }
      
      public function §,!l§(param1:Avatar, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         param1.show(param2,param3);
         if(!param4)
         {
            §3!m§.§3!]§.avatar = param1;
         }
         this.§'!n§ = param1;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(param1);
      }
   }
}
