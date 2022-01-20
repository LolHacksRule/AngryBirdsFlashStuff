package §@!8§
{
   import §&7§.Texture;
   import §9`§.§#U§;
   import §9`§.§3f§;
   import §[!B§.§,]§;
   import §`!n§.§+i§;
   
   public class §^!§ extends §,]§
   {
      
      public static const §=[§:int = 5;
       
      
      private var §`!>§:Number;
      
      private var §2!<§:Number;
      
      public function §^!§(param1:§3f§, param2:§#U§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§`!>§ = param6 + Math.random() * param18;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§`D§ == §=[§)
         {
            this.§`!>§ = param6;
            this.§2!<§ = param7;
         }
         §[!3§ = 1900;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §[!3§ -= param1;
         if(§[!3§ < 0)
         {
            return false;
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         if(§`D§ == §=[§)
         {
            §&r§.scaleX = §&r§.scaleY = Math.sin(§^j§ / 300);
            §=y§ = this.§`!>§;
            §#J§ = this.§2!<§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §+i§
      {
         return new §+i§(param1,true);
      }
   }
}
