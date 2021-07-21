package §<!<§
{
   import §-!0§.§2! §;
   import §-!`§.Sprite;
   import §8!Q§.§,8§;
   
   public class §5!Y§ extends §;§
   {
       
      
      public function §5!Y§(param1:§7E§, param2:§2! §, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §3!t§(param1:Number) : void
      {
         var _loc2_:§]K§ = null;
         for each(_loc2_ in mBirds)
         {
            _loc2_.§2!@§ = param1;
         }
      }
      
      override public function startDragging() : void
      {
         super.startDragging();
         §,8§.§5!^§();
      }
   }
}
