package §?"@§
{
   import §&!]§.Sprite;
   import §3>§.§%5§;
   import §9!v§.§6a§;
   import §;"0§.§0!2§;
   import §;"0§.§="4§;
   import §;"0§.§>!7§;
   
   public class §0!T§ extends §]1§
   {
       
      
      protected var §'P§:String;
      
      protected var §&"?§:String;
      
      protected var §2z§:String;
      
      protected var §9!4§:String;
      
      protected var §!p§:Number = 1.0;
      
      protected var §0P§:§%5§;
      
      public function §0!T§(param1:§>!7§, param2:Number, param3:§6a§, param4:§%5§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param5,param6);
         this.§0P§ = param4;
         this.§'P§ = param1.§ A§;
         this.§&"?§ = param1.§6^§;
         this.§2z§ = param1.§==§;
         this.§9!4§ = param1.§2!A§;
         this.§!p§ = param1.textureScale;
      }
      
      public function get § A§() : String
      {
         return this.§'P§;
      }
      
      public function get §6^§() : String
      {
         return this.§&"?§;
      }
      
      public function get §==§() : String
      {
         return this.§2z§;
      }
      
      public function get §2!A§() : String
      {
         return this.§9!4§;
      }
      
      public function get textureScale() : Number
      {
         return this.§!p§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§0P§)
         {
            this.§0P§.playSound(§8"&§,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§0P§)
         {
            this.§0P§.§["'§(§8"&§);
         }
      }
      
      override protected function createLayer(param1:§="4§, param2:Sprite, param3:§6a§, param4:Number) : §+;§
      {
         var _loc5_:§0!2§ = null;
         if(param1 is §0!2§)
         {
            _loc5_ = param1 as §0!2§;
            return new §=!K§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
