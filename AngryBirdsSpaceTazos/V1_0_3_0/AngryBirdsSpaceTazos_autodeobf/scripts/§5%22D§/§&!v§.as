package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §6!M§.§=!P§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §&!v§ extends §6!!§
   {
      
      public static const §0?§:Number = 1000;
      
      public static const §6r§:Number = 500;
      
      public static const §^2§:String = "yell";
      
      public static const §1!u§:String = "blink";
       
      
      protected var §^b§:Number = -1.0;
      
      protected var §4W§:Number = -1.0;
      
      public function §&!v§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function get §8!x§() : Boolean
      {
         return this.§4W§ >= 0;
      }
      
      public function get §-C§() : Boolean
      {
         return this.§^b§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§8!x§ && !this.§-C§;
      }
      
      public function scream() : void
      {
         this.§^b§ = §0?§;
         this.§4W§ = -1;
         §;!5§.setAnimation(§^2§);
      }
      
      public function blink() : void
      {
         this.§4W§ = §6r§;
         this.§^b§ = -1;
         §;!5§.setAnimation(§1!u§);
      }
      
      protected function normalize() : void
      {
         §;!5§.setAnimation(§[!;§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§-C§)
         {
            this.§^b§ -= param1;
         }
         if(this.§8!x§)
         {
            this.§4W§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §2!;§(§=!P§.§%">§);
      }
   }
}
