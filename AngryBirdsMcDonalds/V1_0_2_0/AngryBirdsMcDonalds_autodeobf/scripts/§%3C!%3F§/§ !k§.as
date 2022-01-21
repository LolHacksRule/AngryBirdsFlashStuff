package §<!?§
{
   import §",§.Texture;
   import §2!`§.§8!;§;
   import §5!l§.§ !D§;
   import §5!l§.§!,§;
   import §5x§.§2!K§;
   
   public class § !k§ extends §8!;§
   {
      
      public static const §[x§:int = 5;
       
      
      private var § 3§:Number;
      
      private var §&!_§:Number;
      
      public function § !k§(param1:§!,§, param2:§ !D§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§ 3§ = param6 + Math.random() * param18;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§`2§ == §[x§)
         {
            this.§ 3§ = param6;
            this.§&!_§ = param7;
         }
         §=+§ = 1900;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §=+§ -= param1;
         if(§=+§ < 0)
         {
            return false;
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         if(§`2§ == §[x§)
         {
            §&!b§.scaleX = §&!b§.scaleY = Math.sin(§&J§ / 300);
            § +§ = this.§ 3§;
            §'Z§ = this.§&!_§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §2!K§
      {
         return new §2!K§(param1,true);
      }
   }
}
