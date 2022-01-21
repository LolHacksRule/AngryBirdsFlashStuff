package §5e§
{
   import §&!9§.Texture;
   import §0@§.§1]§;
   import §7! §.§4n§;
   import §7! §.§6X§;
   import §9!C§.§3!f§;
   
   public class §4!'§ extends §3!f§
   {
      
      public static const §^,§:int = 5;
       
      
      private var §5f§:Number;
      
      private var §'H§:Number;
      
      public function §4!'§(param1:§6X§, param2:§4n§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§5f§ = param6 + Math.random() * param18;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§1,§ == §^,§)
         {
            this.§5f§ = param6;
            this.§'H§ = param7;
         }
         §+!&§ = 1900;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §+!&§ -= param1;
         if(§+!&§ < 0)
         {
            return false;
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         if(§1,§ == §^,§)
         {
            §<K§.scaleX = §<K§.scaleY = Math.sin(§0+§ / 300);
            §=!=§ = this.§5f§;
            §[!;§ = this.§'H§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §1]§
      {
         return new §1]§(param1,true);
      }
   }
}
