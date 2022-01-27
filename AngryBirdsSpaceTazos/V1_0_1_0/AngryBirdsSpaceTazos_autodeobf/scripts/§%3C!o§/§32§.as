package §<!o§
{
   import §"!&§.§="D§;
   import §+!a§.§2!a§;
   import §+!a§.§6p§;
   import §+!a§.§>8§;
   import §4&§.§,C§;
   import §7!8§.Sprite;
   
   public class §32§ extends §3!$§
   {
       
      
      protected var §!4§:String;
      
      protected var §36§:String;
      
      protected var §7"0§:String;
      
      protected var §'[§:String;
      
      protected var §>!%§:Number = 1.0;
      
      protected var §3%§:§="D§;
      
      public function §32§(param1:§6p§, param2:Number, param3:§,C§, param4:§="D§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param5,param6);
         this.§3%§ = param4;
         this.§!4§ = param1.§?"5§;
         this.§36§ = param1.§4L§;
         this.§7"0§ = param1.§,n§;
         this.§'[§ = param1.§%!R§;
         this.§>!%§ = param1.textureScale;
      }
      
      public function get §?"5§() : String
      {
         return this.§!4§;
      }
      
      public function get §4L§() : String
      {
         return this.§36§;
      }
      
      public function get §,n§() : String
      {
         return this.§7"0§;
      }
      
      public function get §%!R§() : String
      {
         return this.§'[§;
      }
      
      public function get textureScale() : Number
      {
         return this.§>!%§;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.§3%§)
         {
            this.§3%§.playSound(§break§,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.§3%§)
         {
            this.§3%§.§,!z§(§break§);
         }
      }
      
      override protected function createLayer(param1:§2!a§, param2:Sprite, param3:§,C§, param4:Number) : §!!q§
      {
         var _loc5_:§>8§ = null;
         if(param1 is §>8§)
         {
            _loc5_ = param1 as §>8§;
            return new §[4§(_loc5_,param2,param3,param4);
         }
         return super.createLayer(param1,param2,param3,param4);
      }
   }
}
