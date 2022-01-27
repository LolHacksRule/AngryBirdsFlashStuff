package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2FilterData;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §0_§ extends §<!^§
   {
       
      
      public function §0_§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§3!$§ = §9!t§;
         _loc1_.§ "b§ = 65535 & ~§9V§;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§'=§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§6!C§(§3c§.§4f§,§3"s§().GetPosition().x,§3"s§().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§?!x§) : void
      {
         health = 0;
      }
   }
}
