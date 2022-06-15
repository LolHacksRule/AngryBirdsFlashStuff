package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §`#C§.§-"L§;
   import §`#C§.§8K§;
   
   public class §2!t§ extends §%#T§
   {
       
      
      protected var §6#@§:§>"M§;
      
      public function §2!t§(param1:Sprite, param2:b2World, param3:§8K§, param4:§-"L§, param5:§!#%§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function set §&!m§(param1:§>"M§) : void
      {
         this.§6#@§ = param1;
      }
      
      public function get §&!m§() : §>"M§
      {
         return this.§6#@§;
      }
      
      override public function collidedWith(param1:§<"H§) : void
      {
         super.collidedWith(param1);
         if(this.§6#@§)
         {
            this.§6#@§.§5!A§(param1,this);
         }
      }
      
      override public function collisionEnded(param1:§<"H§) : void
      {
         super.collisionEnded(param1);
         if(this.§6#@§)
         {
            this.§6#@§.§[#9§(param1,this);
         }
      }
   }
}
