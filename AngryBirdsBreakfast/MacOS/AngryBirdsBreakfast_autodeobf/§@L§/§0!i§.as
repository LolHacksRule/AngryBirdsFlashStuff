package §@L§
{
   import §&v§.§9B§;
   import §,z§.§-!m§;
   import §6![§.Sprite;
   import §8!K§.§5!0§;
   
   public class §0!i§ extends §;!3§
   {
       
      
      private var §[!j§:§3!&§;
      
      private var §0;§:§3!&§;
      
      public function §0!i§(param1:§?!'§, param2:§5!0§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeSlingshotObject(param1:§9B§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §3!&§
      {
         return new §-!m§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
   }
}
