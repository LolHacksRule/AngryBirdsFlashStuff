package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§?#^§;
   import §<"B§.§94§;
   
   public class § "=§ extends §1#E§
   {
       
      
      protected var § $§:§;!i§;
      
      public function § "=§(param1:Sprite, param2:b2World, param3:§"t§, param4:§?#^§, param5:§94§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function set §=?§(param1:§;!i§) : void
      {
         this.§ $§ = param1;
      }
      
      public function get §=?§() : §;!i§
      {
         return this.§ $§;
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         super.collidedWith(param1);
         if(this.§ $§)
         {
            this.§ $§.§7`§(param1,this);
         }
      }
      
      override public function collisionEnded(param1:§7B§) : void
      {
         super.collisionEnded(param1);
         if(this.§ $§)
         {
            this.§ $§.§0">§(param1,this);
         }
      }
   }
}
