package §9!'§
{
   import §6!;§.§;o§;
   import §6!;§.DisplayObject;
   import §6!;§.Sprite;
   import §8O§.§&#§;
   
   public class §@9§ extends Sprite
   {
       
      
      protected var §4r§:Sprite;
      
      protected var §@G§:DisplayObject;
      
      protected var §else §:Sprite;
      
      public function §@9§()
      {
         super();
         addChild(this.§else § = new Sprite());
         this.§else §.addChild(this.§4r§ = new Sprite());
         this.§@G§ = new §;o§(2,2,0);
         this.§@G§.width = §&#§.§4!3§;
         this.§@G§.height = §&#§.§1l§;
         addChild(this.§@G§);
         this.§@G§.alpha = 0.5;
      }
      
      public function get §,!^§() : Sprite
      {
         return this.§4r§;
      }
      
      public function get §8!f§() : DisplayObject
      {
         return this.§@G§;
      }
      
      public function get §=! §() : Sprite
      {
         return this.§else §;
      }
      
      public function §'-§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§@G§.width / this.§@G§.height;
         this.§@G§.width = param1 + 600 / _loc3_;
         this.§@G§.height = param2 + 600 / _loc3_;
      }
   }
}
