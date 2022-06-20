package §6!3§
{
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?$<§.§4"F§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §@O§ extends §@#v§
   {
       
      
      protected var §^!k§:§2M§;
      
      public function §@O§(param1:Sprite, param2:b2World, param3:§?$>§, param4:§4"F§, param5:§,!B§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function set §`!8§(param1:§2M§) : void
      {
         this.§^!k§ = param1;
      }
      
      public function get §`!8§() : §2M§
      {
         return this.§^!k§;
      }
      
      override public function collidedWith(param1:§!y§) : void
      {
         super.collidedWith(param1);
         if(this.§^!k§)
         {
            this.§^!k§.§;!T§(param1,this);
         }
      }
      
      override public function collisionEnded(param1:§!y§) : void
      {
         super.collisionEnded(param1);
         if(this.§^!k§)
         {
            this.§^!k§.§,S§(param1,this);
         }
      }
   }
}
