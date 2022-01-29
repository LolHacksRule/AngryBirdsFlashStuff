package §!!P§
{
   import §'G§.§3$§;
   import §-<§.§,",§;
   import §-<§.§8"h§;
   import §-<§.§<§;
   import §2!l§.§0"[§;
   import §6#H§.Sprite;
   import §?$<§.§^§;
   
   public class §?D§ extends §,!e§
   {
       
      
      protected var §,#[§:String;
      
      protected var §@#z§:String;
      
      protected var §>#t§:String;
      
      protected var §2F§:String;
      
      protected var §;!m§:Number = 1.0;
      
      protected var §`!3§:§^#1§;
      
      public function §?D§(param1:§0"[§, param2:§<#3§, param3:Number, param4:§3$§, param5:§^#1§, param6:Number, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param6,param7);
         this.§`!3§ = param5;
         this.§,#[§ = param2.§^#,§;
         this.§@#z§ = param2.§!!Z§;
         this.§>#t§ = param2.§]"=§;
         this.§2F§ = param2.§#o§;
         this.§;!m§ = param2.§+!a§;
      }
      
      public function get §^#,§() : String
      {
         return this.§,#[§;
      }
      
      public function get §!!Z§() : String
      {
         return this.§@#z§;
      }
      
      public function get §]"=§() : String
      {
         return this.§>#t§;
      }
      
      public function get §#o§() : String
      {
         return this.§2F§;
      }
      
      public function get §+!a§() : Number
      {
         return this.§;!m§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§`!3§)
         {
            this.§`!3§.playSound(§7!=§,null,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§`!3§)
         {
            this.§`!3§.§&$?§(§7!=§);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         §-$C§.x = 0;
         §-$C§.y = §'$+§ - §4!0§ + 100;
      }
      
      override protected function createLayer(param1:§8"h§, param2:Sprite, param3:§3$§, param4:Number) : §2#%§
      {
         var _loc5_:§,",§ = null;
         if(param1 is §,",§)
         {
            _loc5_ = param1 as §,",§;
            return new §0# §(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
