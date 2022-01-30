package §"P§
{
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §=!c§.b2FilterData;
   import §=!c§.b2World;
   
   public class §@+§ extends §[z§
   {
       
      
      public function §@+§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§^!s§ = §<J§;
         _loc1_.§!G§ = 65535 & ~§""3§;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§0w§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§=!Y§(§7"$§.§-%§,§7J§().GetPosition().x,§7J§().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§,Y§) : void
      {
         health = 0;
      }
   }
}
