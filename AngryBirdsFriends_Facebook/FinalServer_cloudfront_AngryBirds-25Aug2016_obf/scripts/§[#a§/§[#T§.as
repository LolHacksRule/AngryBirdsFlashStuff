package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §[#T§ extends §`#X§
   {
       
      
      private var §2!Y§:Boolean = false;
      
      public function §[#T§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §##S§() : void
      {
         this.§2!Y§ = true;
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         if(!isMoving() && this.§2!Y§)
         {
            health = 0;
         }
      }
   }
}
