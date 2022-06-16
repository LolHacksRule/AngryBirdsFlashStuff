package §[#a§
{
   import §,#L§.§!#%§;
   import §4q§.§!#Q§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §6"y§ extends §="@§
   {
       
      
      public function §6"y§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updateBeforeRemoving(param1:§7!O§, param2:Boolean) : void
      {
         if(param1)
         {
            (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§ R§("1000-" + itemName.split("_")[3]);
            super.updateBeforeRemoving(param1,param2);
         }
      }
   }
}
