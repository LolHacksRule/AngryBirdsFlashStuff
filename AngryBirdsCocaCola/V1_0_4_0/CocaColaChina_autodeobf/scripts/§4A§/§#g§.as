package §4A§
{
   import § !K§.§&&§;
   import § !K§.DisplayObject;
   import § !K§.Sprite;
   import §-v§.§,!1§;
   
   public class §#g§ extends Sprite
   {
       
      
      protected var §3!<§:Sprite;
      
      protected var §?C§:DisplayObject;
      
      protected var §>;§:Sprite;
      
      public function §#g§()
      {
         super();
         addChild(this.§>;§ = new Sprite());
         this.§>;§.addChild(this.§3!<§ = new Sprite());
         this.§?C§ = new §&&§(2,2,0);
         this.§?C§.width = §,!1§.§ e§;
         this.§?C§.height = §,!1§.§7e§;
         addChild(this.§?C§);
         this.§?C§.alpha = 0.5;
      }
      
      public function get §&!I§() : Sprite
      {
         return this.§3!<§;
      }
      
      public function get §]!A§() : DisplayObject
      {
         return this.§?C§;
      }
      
      public function get §8V§() : Sprite
      {
         return this.§>;§;
      }
      
      public function §!7§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§?C§.width / this.§?C§.height;
         this.§?C§.width = param1 + 600 / _loc3_;
         this.§?C§.height = param2 + 600 / _loc3_;
      }
   }
}
