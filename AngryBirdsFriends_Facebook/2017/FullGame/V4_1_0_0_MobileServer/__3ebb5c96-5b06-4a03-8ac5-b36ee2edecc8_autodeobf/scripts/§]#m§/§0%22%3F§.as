package §]#m§
{
   import §&!v§.Sprite;
   import §4o§.§!"e§;
   import §6!6§.§%§;
   import §6!6§.§-"k§;
   import §6!6§.§<n§;
   import §7!j§.§'0§;
   import §7"&§.§8"G§;
   
   public class §0"?§ extends §0!^§
   {
       
      
      protected var §-!n§:String;
      
      protected var §#3§:String;
      
      protected var §>",§:String;
      
      protected var §=!q§:String;
      
      protected var §7#h§:Number = 1.0;
      
      protected var §+#Q§:§8"G§;
      
      public function §0"?§(param1:§!"e§, param2:§-"k§, param3:Number, param4:§'0§, param5:§8"G§, param6:Number, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param6,param7);
         this.§+#Q§ = param5;
         this.§-!n§ = param2.§&9§;
         this.§#3§ = param2.§#e§;
         this.§>",§ = param2.§-$=§;
         this.§=!q§ = param2.§7#5§;
         this.§7#h§ = param2.§@"o§;
      }
      
      public function get §&9§() : String
      {
         return this.§-!n§;
      }
      
      public function get §#e§() : String
      {
         return this.§#3§;
      }
      
      public function get §-$=§() : String
      {
         return this.§>",§;
      }
      
      public function get §7#5§() : String
      {
         return this.§=!q§;
      }
      
      public function get §@"o§() : Number
      {
         return this.§7#h§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§+#Q§)
         {
            this.§+#Q§.playSound(§="B§,null,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§+#Q§)
         {
            this.§+#Q§.§4#J§(§="B§);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         §;!L§.x = 0;
         §;!L§.y = §9!^§ - §7!L§ + 100;
      }
      
      override protected function createLayer(param1:§%#1§, param2:Sprite, param3:§'0§, param4:Number) : §<#A§
      {
         var _loc5_:§<n§ = null;
         if(param1 is §<n§)
         {
            _loc5_ = param1 as §<n§;
            return new §&"_§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
