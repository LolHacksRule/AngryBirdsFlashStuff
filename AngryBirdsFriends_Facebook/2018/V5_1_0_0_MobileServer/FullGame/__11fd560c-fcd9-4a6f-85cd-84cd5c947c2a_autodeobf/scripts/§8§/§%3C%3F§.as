package §8§#8
{
   import §-!S§.§##>§;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §<?§ extends §4!y§
   {
       
      
      public function §<?§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updateBeforeRemoving(param1:§&#V§, param2:Boolean) : void
      {
         if(param1)
         {
            (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§8$,§("1000-" + itemName.split("_")[3]);
            super.updateBeforeRemoving(param1,param2);
         }
      }
   }
}
