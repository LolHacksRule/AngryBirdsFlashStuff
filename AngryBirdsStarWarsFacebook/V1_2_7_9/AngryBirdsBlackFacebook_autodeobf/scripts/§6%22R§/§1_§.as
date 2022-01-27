package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §4"F§.§^d§;
   import §>P§.§=!,§;
   import §>P§.§?"Q§;
   
   public class §1_§ extends §-t§
   {
       
      
      protected var §9"8§:§`!V§;
      
      public function §1_§(param1:Sprite, param2:b2World, param3:§=!,§, param4:§?"Q§, param5:§^d§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function set §6?§(param1:§`!V§) : void
      {
         this.§9"8§ = param1;
      }
      
      public function get §6?§() : §`!V§
      {
         return this.§9"8§;
      }
      
      override public function collidedWith(param1:§!z§) : void
      {
         super.collidedWith(param1);
         if(this.§9"8§)
         {
            this.§9"8§.§-p§(param1,this);
         }
      }
      
      override public function collisionEnded(param1:§!z§) : void
      {
         super.collisionEnded(param1);
         if(this.§9"8§)
         {
            this.§9"8§.§4H§(param1,this);
         }
      }
   }
}
