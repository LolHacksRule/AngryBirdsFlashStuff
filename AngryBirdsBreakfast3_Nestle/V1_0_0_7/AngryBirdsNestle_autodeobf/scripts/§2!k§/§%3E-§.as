package §2!k§
{
   import § !=§.Sprite;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §[^§.§>"§;
   import §[^§.§`!M§;
   
   public class §>-§ extends §;;§
   {
      
      public static const §9!^§:Number = 1000;
      
      public static const §=!X§:Number = 500;
      
      public static const §1!n§:String = "yell";
      
      public static const §9!c§:String = "blink";
       
      
      protected var §@!]§:Number = -1.0;
      
      protected var §?"§:Number = -1.0;
      
      public function §>-§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function get §86§() : Boolean
      {
         return this.§?"§ >= 0;
      }
      
      public function get §[u§() : Boolean
      {
         return this.§@!]§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§86§ && !this.§[u§;
      }
      
      public function scream() : void
      {
         this.§@!]§ = §9!^§;
         this.§?"§ = -1;
         § !@§.setAnimation(§1!n§,false);
      }
      
      public function blink() : void
      {
         this.§?"§ = §=!X§;
         this.§@!]§ = -1;
         § !@§.setAnimation(§9!c§,false);
      }
      
      protected function normalize() : void
      {
         this.§?"§ = -1;
         this.§@!]§ = -1;
         § !@§.setAnimation(§-$§,false);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§[u§)
         {
            this.§@!]§ -= param1;
         }
         if(this.§86§)
         {
            this.§?"§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §,y§(§>"§.§8!F§);
      }
   }
}
