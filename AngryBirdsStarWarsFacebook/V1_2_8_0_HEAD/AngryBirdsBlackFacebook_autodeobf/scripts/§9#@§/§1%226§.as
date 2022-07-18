package §9#@§
{
   import §!!U§.Sprite;
   import §2"Y§.§%"3§;
   import §69§.§""H§;
   import §69§.§'U§;
   import §69§.§>!b§;
   import §7!F§.§7§;
   
   public class §1"6§ extends § "V§
   {
       
      
      protected var §>#-§:String;
      
      protected var §6#U§:String;
      
      protected var §%" §:String;
      
      protected var §6c§:String;
      
      protected var §<"R§:Number = 1.0;
      
      protected var §,"<§:§%"3§;
      
      public function §1"6§(param1:§""H§, param2:Number, param3:§7#5§, param4:§%"3§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param5,param6);
         this.§,"<§ = param4;
         this.§>#-§ = param1.§?c§;
         this.§6#U§ = param1.§ "&§;
         this.§%" § = param1.§6"2§;
         this.§6c§ = param1.§?!^§;
         this.§<"R§ = param1.textureScale;
      }
      
      public function get §?c§() : String
      {
         return this.§>#-§;
      }
      
      public function get § "&§() : String
      {
         return this.§6#U§;
      }
      
      public function get §6"2§() : String
      {
         return this.§%" §;
      }
      
      public function get §?!^§() : String
      {
         return this.§6c§;
      }
      
      public function get textureScale() : Number
      {
         return this.§<"R§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§,"<§)
         {
            this.§,"<§.§"#_§(§0;§,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§,"<§)
         {
            this.§,"<§.§9"4§(§0;§);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         §@#+§.x = 0;
         §@#+§.y = §8&§ - §8"R§ + 100;
      }
      
      override protected function createLayer(param1:§>!b§, param2:Sprite, param3:§7#5§, param4:Number) : §2"A§
      {
         var _loc5_:§'U§ = null;
         if(param1 is §'U§)
         {
            _loc5_ = param1 as §'U§;
            return new §3N§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
