package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §@w§.§`a§;
   
   public class §14§ extends §[!p§
   {
      
      public static const §!!p§:String = "BLOCK_ASTEROID_";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!!p§ = "BLOCK_ASTEROID_";
         }
      }
      
      private var §!!l§:Number = 0;
      
      public function §14§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:§`a§, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super(param1,param2,param3,param4,param5.x,param5.y,param5.angle,param6);
         }
      }
      
      override protected function initializeObjectBehaviorLogic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §7!w§ = new §@#§(§2"!§);
         }
      }
   }
}
