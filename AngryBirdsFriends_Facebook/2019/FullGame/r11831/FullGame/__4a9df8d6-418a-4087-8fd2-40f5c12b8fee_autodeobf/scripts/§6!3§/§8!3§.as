package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7R§.§ #`§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §8!3§ extends §;!U§
   {
       
      
      public function §8!3§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updateBeforeRemoving(param1:§8$B§, param2:Boolean) : void
      {
         if(param1)
         {
            (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§#y§("1000-" + itemName.split("_")[3]);
            super.updateBeforeRemoving(param1,param2);
         }
      }
   }
}
