package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§%!a§;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §@"v§.§@$<§;
   
   public class §?"i§ extends §5;§
   {
       
      
      protected var §#"b§:§ R§;
      
      public function §?"i§(param1:Sprite, param2:b2World, param3:§-"8§, param4:§%!a§, param5:§@$<§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function set §2"Z§(param1:§ R§) : void
      {
         this.§#"b§ = param1;
      }
      
      public function get §2"Z§() : § R§
      {
         return this.§#"b§;
      }
      
      override public function collidedWith(param1:§4!t§) : void
      {
         super.collidedWith(param1);
         if(this.§#"b§)
         {
            this.§#"b§.§5_§(param1,this);
         }
      }
      
      override public function collisionEnded(param1:§4!t§) : void
      {
         super.collisionEnded(param1);
         if(this.§#"b§)
         {
            this.§#"b§.§3!X§(param1,this);
         }
      }
   }
}
