package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class § !o§ extends §"_§
   {
      
      public static const §11§:Number = 1000;
      
      public static const §<!i§:Number = 500;
      
      public static const §," §:String = "yell";
      
      public static const § E§:String = "blink";
       
      
      protected var §5c§:Number = -1.0;
      
      protected var §?9§:Number = -1.0;
      
      public function § !o§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function get §#y§() : Boolean
      {
         return this.§?9§ >= 0;
      }
      
      public function get §%`§() : Boolean
      {
         return this.§5c§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§#y§ && !this.§%`§;
      }
      
      public function scream() : void
      {
         this.§5c§ = §11§;
         this.§?9§ = -1;
         §`!f§.setAnimation(§," §,false);
      }
      
      public function blink() : void
      {
         this.§?9§ = §<!i§;
         this.§5c§ = -1;
         §`!f§.setAnimation(§ E§,false);
      }
      
      protected function normalize() : void
      {
         §`!f§.setAnimation(§=!4§,false);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§%`§)
         {
            this.§5c§ -= param1;
         }
         if(this.§#y§)
         {
            this.§?9§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §]Y§(§,4§.§9#§);
      }
   }
}
