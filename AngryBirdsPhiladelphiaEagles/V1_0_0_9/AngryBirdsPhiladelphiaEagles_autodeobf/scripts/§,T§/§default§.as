package §,T§
{
   import §-!'§.§ s§;
   import §-!'§.DisplayObject;
   import §-!'§.Sprite;
   import §=z§.§0!E§;
   
   public class §default§ extends Sprite
   {
       
      
      protected var § N§:Sprite;
      
      protected var §1!J§:DisplayObject;
      
      protected var §++§:Sprite;
      
      public function §default§()
      {
         super();
         addChild(this.§++§ = new Sprite());
         this.§++§.addChild(this.§ N§ = new Sprite());
         this.§1!J§ = new § s§(2,2,0);
         this.§1!J§.width = §0!E§.§6!I§;
         this.§1!J§.height = §0!E§.§4U§;
         addChild(this.§1!J§);
         this.§1!J§.alpha = 0.5;
      }
      
      public function get §]X§() : Sprite
      {
         return this.§ N§;
      }
      
      public function get §+j§() : DisplayObject
      {
         return this.§1!J§;
      }
      
      public function get §5'§() : Sprite
      {
         return this.§++§;
      }
      
      public function §#!G§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§1!J§.width / this.§1!J§.height;
         this.§1!J§.width = param1 + 600 / _loc3_;
         this.§1!J§.height = param2 + 600 / _loc3_;
      }
   }
}
