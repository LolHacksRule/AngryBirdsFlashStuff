package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2FilterData;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §;#-§ extends §7";§
   {
       
      
      public function §;#-§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§=#0§ = §!z§;
         _loc1_.§8"A§ = 65535 & ~§7!6§;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§1!R§(§>"_§.§%#G§,§3!t§().GetPosition().x,§3!t§().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         health = 0;
      }
   }
}
