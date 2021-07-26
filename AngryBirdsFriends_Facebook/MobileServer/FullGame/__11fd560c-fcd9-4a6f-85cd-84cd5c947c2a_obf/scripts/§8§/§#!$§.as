package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§!!C§;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   
   public class §#!$§ extends §7!0§
   {
       
      
      protected var §-!>§:§+"q§;
      
      public function §#!$§(param1:Sprite, param2:b2World, param3:§4U§, param4:§!!C§, param5:§["z§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function set §<#!§(param1:§+"q§) : void
      {
         this.§-!>§ = param1;
      }
      
      public function get §<#!§() : §+"q§
      {
         return this.§-!>§;
      }
      
      override public function collidedWith(param1:§,#5§) : void
      {
         super.collidedWith(param1);
         if(this.§-!>§)
         {
            this.§-!>§.§9#O§(param1,this);
         }
      }
      
      override public function collisionEnded(param1:§,#5§) : void
      {
         super.collisionEnded(param1);
         if(this.§-!>§)
         {
            this.§-!>§.§?#4§(param1,this);
         }
      }
   }
}
