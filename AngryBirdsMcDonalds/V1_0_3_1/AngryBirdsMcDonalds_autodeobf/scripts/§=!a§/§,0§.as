package §=!a§
{
   import § !%§.§!!&§;
   import § !%§.§7!>§;
   import §&Y§.Texture;
   import §&c§.§%!a§;
   import §?!P§.§65§;
   
   public class §,0§ extends §65§
   {
      
      public static const §?!'§:int = 5;
       
      
      private var §5!Z§:Number;
      
      private var §;9§:Number;
      
      public function §,0§(param1:§!!&§, param2:§7!>§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§5!Z§ = param6 + Math.random() * param18;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§+b§ == §?!'§)
         {
            this.§5!Z§ = param6;
            this.§;9§ = param7;
         }
         §&z§ = 1900;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §&z§ -= param1;
         if(§&z§ < 0)
         {
            return false;
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         if(§+b§ == §?!'§)
         {
            §!8§.scaleX = §!8§.scaleY = Math.sin(§-M§ / 300);
            § !^§ = this.§5!Z§;
            §0p§ = this.§;9§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §%!a§
      {
         return new §%!a§(param1,true);
      }
   }
}
