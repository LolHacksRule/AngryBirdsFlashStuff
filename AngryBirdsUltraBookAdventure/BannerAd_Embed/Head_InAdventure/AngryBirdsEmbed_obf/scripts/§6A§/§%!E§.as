package §6A§
{
   import §&o§.§<3§;
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §5!L§.§=w§;
   
   public class §%!E§ extends Sprite
   {
       
      
      protected var §!#§:Sprite;
      
      protected var §24§:DisplayObject;
      
      protected var § !J§:Sprite;
      
      public function §%!E§()
      {
         super();
         addChild(this.§ !J§ = new Sprite());
         this.§ !J§.addChild(this.§!#§ = new Sprite());
         this.§24§ = new §<3§(2,2,0);
         this.§24§.width = §=w§.§9!#§;
         this.§24§.height = §=w§.§0i§;
         addChild(this.§24§);
         this.§24§.alpha = 0.5;
      }
      
      public function get §1-§() : Sprite
      {
         return this.§!#§;
      }
      
      public function get §`5§() : DisplayObject
      {
         return this.§24§;
      }
      
      public function get §2@§() : Sprite
      {
         return this.§ !J§;
      }
      
      public function §#U§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§24§.width / this.§24§.height;
         this.§24§.width = param1 + 600 / _loc3_;
         this.§24§.height = param2 + 600 / _loc3_;
      }
   }
}
