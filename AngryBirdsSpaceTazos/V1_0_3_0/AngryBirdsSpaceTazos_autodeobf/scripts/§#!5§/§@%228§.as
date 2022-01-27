package §#!5§
{
   import §4"@§.Sprite;
   import §6!M§.§=!T§;
   import §<!<§.§1=§;
   import §<!<§.§67§;
   import §<!<§.§[<§;
   import §^e§.§0"1§;
   
   public class §@"8§ extends §1e§
   {
       
      
      protected var §`"9§:String;
      
      protected var §="5§:String;
      
      protected var §9! §:String;
      
      protected var §]!5§:String;
      
      protected var §+!C§:Number = 1.0;
      
      protected var §#p§:§=!T§;
      
      public function §@"8§(param1:§[<§, param2:Number, param3:§0"1§, param4:§=!T§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param5,param6);
         this.§#p§ = param4;
         this.§`"9§ = param1.§?N§;
         this.§="5§ = param1.§;9§;
         this.§9! § = param1.§%c§;
         this.§]!5§ = param1.§7w§;
         this.§+!C§ = param1.textureScale;
      }
      
      public function get §?N§() : String
      {
         return this.§`"9§;
      }
      
      public function get §;9§() : String
      {
         return this.§="5§;
      }
      
      public function get §%c§() : String
      {
         return this.§9! §;
      }
      
      public function get §7w§() : String
      {
         return this.§]!5§;
      }
      
      public function get textureScale() : Number
      {
         return this.§+!C§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§#p§)
         {
            this.§#p§.playSound(§?!z§,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§#p§)
         {
            this.§#p§.§"!y§(§?!z§);
         }
      }
      
      override protected function createLayer(param1:§67§, param2:Sprite, param3:§0"1§, param4:Number) : §,!^§
      {
         var _loc5_:§1=§ = null;
         if(param1 is §1=§)
         {
            _loc5_ = param1 as §1=§;
            return new §5!m§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
