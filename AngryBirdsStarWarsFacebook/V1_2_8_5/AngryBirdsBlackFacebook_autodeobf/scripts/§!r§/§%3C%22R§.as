package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§["%§;
   import §#g§.§^i§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §<"R§ extends §0N§
   {
      
      public static const §+i§:Number = 1000;
      
      public static const §'!2§:Number = 500;
      
      public static const § Q§:String = "yell";
      
      public static const §@#0§:String = "blink";
       
      
      protected var §0!A§:Number = -1.0;
      
      protected var §,"E§:Number = -1.0;
      
      public function §<"R§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function get §53§() : Boolean
      {
         return this.§,"E§ >= 0;
      }
      
      public function get §++§() : Boolean
      {
         return this.§0!A§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§53§ && !this.§++§;
      }
      
      public function scream() : void
      {
         this.§0!A§ = §+i§;
         this.§,"E§ = -1;
         §]!g§.setAnimation(§ Q§,false);
      }
      
      public function blink() : void
      {
         this.§,"E§ = §'!2§;
         this.§0!A§ = -1;
         §]!g§.setAnimation(§@#0§,false);
      }
      
      protected function normalize() : void
      {
         §]!g§.setAnimation(§'"T§,false);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§++§)
         {
            this.§0!A§ -= param1;
         }
         if(this.§53§)
         {
            this.§,"E§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §!5§(§^i§.§""y§);
      }
   }
}
