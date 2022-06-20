package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2FilterData;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §&"k§ extends §,!h§
   {
       
      
      public function §&"k§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = null;
         _loc1_ = super.createFilterData();
         _loc1_.§`!+§ = §&"e§;
         _loc1_.§#"5§ = 65535;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§ #'§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.addExplosion(§]" §.§+#o§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§1#B§) : void
      {
         if(!(param1 is §5"W§))
         {
            health = 0;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 is §5"W§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
   }
}
