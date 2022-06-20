package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §5"?§.§4"-§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §8#<§ extends §^"9§
   {
       
      
      public function §8#<§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updateBeforeRemoving(param1:§-!S§, param2:Boolean) : void
      {
         if(param1)
         {
            (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§%#k§("1000-" + itemName.split("_")[3]);
            super.updateBeforeRemoving(param1,param2);
         }
      }
   }
}
