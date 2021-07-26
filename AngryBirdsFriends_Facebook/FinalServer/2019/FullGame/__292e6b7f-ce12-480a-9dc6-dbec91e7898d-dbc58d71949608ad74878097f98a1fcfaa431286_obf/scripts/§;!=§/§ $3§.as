package §;!=§
{
   import § !N§.§5"?§;
   import §!L§.§`#u§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class § $3§ extends §>"G§
   {
       
      
      public function § $3§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updateBeforeRemoving(param1:§]!m§, param2:Boolean) : void
      {
         if(param1)
         {
            (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§0a§("1000-" + itemName.split("_")[3]);
            super.updateBeforeRemoving(param1,param2);
         }
      }
   }
}
