package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §=!A§ extends §'#S§
   {
       
      
      private var §@C§:Boolean = false;
      
      public function §=!A§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §;#5§() : void
      {
         this.§@C§ = true;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         if(!isMoving() && this.§@C§)
         {
            health = 0;
         }
      }
   }
}
