package §""c§
{
   import §!!k§.§0!B§;
   import §#g§.§?B§;
   import §`!v§.§7Z§;
   import §`!v§.§;!d§;
   import §`!v§.§`[§;
   import §use§.Sprite;
   
   public class §=!Y§ extends §>"w§
   {
       
      
      protected var §""C§:String;
      
      protected var §&"q§:String;
      
      protected var §^`§:String;
      
      protected var §"!b§:String;
      
      protected var §"!"§:Number = 1.0;
      
      protected var §-C§:§?B§;
      
      public function §=!Y§(param1:§`[§, param2:Number, param3:§0!B§, param4:§?B§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param5,param6);
         this.§-C§ = param4;
         this.§""C§ = param1.§?#"§;
         this.§&"q§ = param1.§1#%§;
         this.§^`§ = param1.§;!x§;
         this.§"!b§ = param1.§>o§;
         this.§"!"§ = param1.textureScale;
      }
      
      public function get §?#"§() : String
      {
         return this.§""C§;
      }
      
      public function get §1#%§() : String
      {
         return this.§&"q§;
      }
      
      public function get §;!x§() : String
      {
         return this.§^`§;
      }
      
      public function get §>o§() : String
      {
         return this.§"!b§;
      }
      
      public function get textureScale() : Number
      {
         return this.§"!"§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§-C§)
         {
            this.§-C§.§`!A§(§7"W§,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§-C§)
         {
            this.§-C§.§&"=§(§7"W§);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         §["A§.x = 0;
         §["A§.y = §8"u§ - §8"]§ + 100;
      }
      
      override protected function createLayer(param1:§;!d§, param2:Sprite, param3:§0!B§, param4:Number) : §2",§
      {
         var _loc5_:§7Z§ = null;
         if(param1 is §7Z§)
         {
            _loc5_ = param1 as §7Z§;
            return new §""v§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
