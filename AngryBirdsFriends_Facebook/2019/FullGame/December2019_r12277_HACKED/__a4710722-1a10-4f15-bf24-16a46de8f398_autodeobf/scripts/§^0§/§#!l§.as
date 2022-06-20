package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §#!l§ extends §0"C§
   {
       
      
      private var §=#K§:Boolean = false;
      
      public function §#!l§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §`""§() : void
      {
         this.§=#K§ = true;
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         if(!isMoving() && this.§=#K§)
         {
            health = 0;
         }
      }
   }
}
