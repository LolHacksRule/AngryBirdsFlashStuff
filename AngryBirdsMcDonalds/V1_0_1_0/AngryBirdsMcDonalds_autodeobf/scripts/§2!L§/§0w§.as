package §2!L§
{
   import §&!K§.§^!3§;
   import §&[§.§&!m§;
   import §&[§.§0!I§;
   import §2!g§.§<7§;
   import §@j§.Texture;
   
   public class §0w§ extends §^!3§
   {
      
      public static const §!!!§:int = 5;
       
      
      private var §87§:Number;
      
      private var §4!$§:Number;
      
      public function §0w§(param1:§0!I§, param2:§&!m§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§87§ = param6 + Math.random() * param18;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§^!B§ == §!!!§)
         {
            this.§87§ = param6;
            this.§4!$§ = param7;
         }
         § !l§ = 1900;
      }
      
      override public function update(param1:Number) : Boolean
      {
         § !l§ -= param1;
         if(§ !l§ < 0)
         {
            return false;
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         if(§^!B§ == §!!!§)
         {
            §7%§.scaleX = §7%§.scaleY = Math.sin(§+!"§ / 300);
            §;b§ = this.§87§;
            §[!5§ = this.§4!$§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §<7§
      {
         return new §<7§(param1,true);
      }
   }
}
