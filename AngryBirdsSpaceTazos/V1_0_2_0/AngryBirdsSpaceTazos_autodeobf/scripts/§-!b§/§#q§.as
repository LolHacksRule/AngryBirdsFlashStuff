package §-!b§
{
   import §'!&§.Sprite;
   import §,§.§!P§;
   import §,§.§'A§;
   import §,§.§3"F§;
   import §8o§.§5"%§;
   import §;"=§.§-_§;
   
   public class §#q§ extends §9U§
   {
       
      
      protected var §^6§:String;
      
      protected var §!"&§:String;
      
      protected var §#!r§:String;
      
      protected var §-J§:String;
      
      protected var §1"D§:Number = 1.0;
      
      protected var §]_§:§-_§;
      
      public function §#q§(param1:§3"F§, param2:Number, param3:§5"%§, param4:§-_§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param5,param6);
         this.§]_§ = param4;
         this.§^6§ = param1.§%!I§;
         this.§!"&§ = param1.§""E§;
         this.§#!r§ = param1.§"X§;
         this.§-J§ = param1.§>";§;
         this.§1"D§ = param1.textureScale;
      }
      
      public function get §%!I§() : String
      {
         return this.§^6§;
      }
      
      public function get §""E§() : String
      {
         return this.§!"&§;
      }
      
      public function get §"X§() : String
      {
         return this.§#!r§;
      }
      
      public function get §>";§() : String
      {
         return this.§-J§;
      }
      
      public function get textureScale() : Number
      {
         return this.§1"D§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§]_§)
         {
            this.§]_§.playSound(§2">§,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§]_§)
         {
            this.§]_§.§]R§(§2">§);
         }
      }
      
      override protected function createLayer(param1:§!P§, param2:Sprite, param3:§5"%§, param4:Number) : §0P§
      {
         var _loc5_:§'A§ = null;
         if(param1 is §'A§)
         {
            _loc5_ = param1 as §'A§;
            return new §?d§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
