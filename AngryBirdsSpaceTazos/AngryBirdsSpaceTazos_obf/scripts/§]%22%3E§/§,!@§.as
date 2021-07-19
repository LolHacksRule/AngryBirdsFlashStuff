package §]">§
{
   import §"!&§.§"!#§;
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §@w§.§`a§;
   
   public class §,!@§ extends §[!p§
   {
      
      public static const §!!p§:String = "TAZOS_POWER_PIECE_";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!p§ = "TAZOS_POWER_PIECE_";
         }
      }
      
      private var §+O§:Number;
      
      public function §,!@§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:§`a§, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super(param1,param2,param3,param4,param5.x,param5.y,param5.angle,param6);
            do
            {
               this.§+O§ = (param4 as §"!#§).indestructibleTime;
            }
            while(!_loc8_);
            
         }
      }
      
      override protected function initializeObjectBehaviorLogic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7!w§ = new §9"9§(§2"!§,(§2"!§ as §"!#§).lifeTime);
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(this.§+O§ <= 0)
            {
               §7!w§.playDestroyedSound();
               return super.applyDamage(param1,param2,param3,param4);
            }
         }
         return 0;
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.updateBeforeRemoving(param1);
         }
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.update(param1,param2);
            do
            {
               §§push(this);
               §§push(this.§+O§);
               if(_loc3_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§+O§ = §§pop();
            }
            while(!_loc3_);
            
         }
      }
   }
}
