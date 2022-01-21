package §?Z§
{
   import § !^§.Texture;
   import §&!!§.§2^§;
   import §&!!§.§<!'§;
   import §2![§.§[!U§;
   import §8!§.§9!-§;
   
   public class §]!Z§ extends §9!-§
   {
      
      public static const §60§:int = 5;
       
      
      private var § '§:Number;
      
      private var §;!&§:Number;
      
      public function §]!Z§(param1:§2^§, param2:§<!'§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§ '§ = param6 + Math.random() * param18;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§%!^§ == §60§)
         {
            this.§ '§ = param6;
            this.§;!&§ = param7;
         }
         §,!,§ = 1900;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §,!,§ -= param1;
         if(§,!,§ < 0)
         {
            return false;
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         if(§%!^§ == §60§)
         {
            §5L§.scaleX = §5L§.scaleY = Math.sin(§!!P§ / 300);
            §+p§ = this.§ '§;
            §,,§ = this.§;!&§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §[!U§
      {
         return new §[!U§(param1,true);
      }
   }
}
