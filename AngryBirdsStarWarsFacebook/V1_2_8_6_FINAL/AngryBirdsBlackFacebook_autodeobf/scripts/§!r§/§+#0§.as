package §!r§
{
   import §#g§.§'<§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §+#0§ extends §03§
   {
       
      
      protected var §,"p§:§##5§;
      
      public function §+#0§(param1:Sprite, param2:b2World, param3:§["%§, param4:§'<§, param5:§9v§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function set §-!X§(param1:§##5§) : void
      {
         this.§,"p§ = param1;
      }
      
      public function get §-!X§() : §##5§
      {
         return this.§,"p§;
      }
      
      override public function collidedWith(param1:§?!x§) : void
      {
         super.collidedWith(param1);
         if(this.§,"p§)
         {
            this.§,"p§.§]§(param1,this);
         }
      }
      
      override public function collisionEnded(param1:§?!x§) : void
      {
         super.collisionEnded(param1);
         if(this.§,"p§)
         {
            this.§,"p§.§3"1§(param1,this);
         }
      }
   }
}
