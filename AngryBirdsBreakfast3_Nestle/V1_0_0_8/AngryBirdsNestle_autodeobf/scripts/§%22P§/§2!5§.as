package §"P§
{
   import §!"+§.§!o§;
   import §!"+§.§'!7§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §=!c§.b2World;
   
   public class §2!5§ extends §^!x§
   {
      
      public static const §0>§:Number = 1000;
      
      public static const §4!M§:Number = 500;
      
      public static const §,s§:String = "yell";
      
      public static const §-!5§:String = "blink";
       
      
      protected var §'!§:Number = -1.0;
      
      protected var §6!C§:Number = -1.0;
      
      public function §2!5§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function get § !k§() : Boolean
      {
         return this.§6!C§ >= 0;
      }
      
      public function get §1!A§() : Boolean
      {
         return this.§'!§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§ !k§ && !this.§1!A§;
      }
      
      public function scream() : void
      {
         this.§'!§ = §0>§;
         this.§6!C§ = -1;
         §9!t§.setAnimation(§,s§,false);
      }
      
      public function blink() : void
      {
         this.§6!C§ = §4!M§;
         this.§'!§ = -1;
         §9!t§.setAnimation(§-!5§,false);
      }
      
      protected function normalize() : void
      {
         §9!t§.setAnimation(§!#§,false);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§1!A§)
         {
            this.§'!§ -= param1;
         }
         if(this.§ !k§)
         {
            this.§6!C§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §5E§(§'!7§.§`b§);
      }
   }
}
