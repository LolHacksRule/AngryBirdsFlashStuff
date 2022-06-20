package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§+#c§;
   import §?§.§,Y§;
   
   public class §&"^§ extends §0!N§
   {
       
      
      protected var §,"z§:§""p§;
      
      public function §&"^§(param1:Sprite, param2:b2World, param3:§,Y§, param4:§+#c§, param5:§9"4§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function set §@-§(param1:§""p§) : void
      {
         this.§,"z§ = param1;
      }
      
      public function get §@-§() : §""p§
      {
         return this.§,"z§;
      }
      
      override public function collidedWith(param1:§1#B§) : void
      {
         super.collidedWith(param1);
         if(this.§,"z§)
         {
            this.§,"z§.§5!c§(param1,this);
         }
      }
      
      override public function collisionEnded(param1:§1#B§) : void
      {
         super.collisionEnded(param1);
         if(this.§,"z§)
         {
            this.§,"z§.§[#m§(param1,this);
         }
      }
   }
}
