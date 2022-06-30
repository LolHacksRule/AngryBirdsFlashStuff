package §^!7§
{
   import §<!-§.§8J§;
   import §<!-§.DisplayObject;
   import §<!-§.Sprite;
   import §?!P§.§@@§;
   
   public class §]g§ extends Sprite
   {
       
      
      protected var §;!@§:Sprite;
      
      protected var §6@§:DisplayObject;
      
      protected var §>'§:Sprite;
      
      public function §]g§()
      {
         super();
         addChild(this.§>'§ = new Sprite());
         this.§>'§.addChild(this.§;!@§ = new Sprite());
         this.§6@§ = new §8J§(2,2,0);
         this.§6@§.width = §@@§.§!!P§;
         this.§6@§.height = §@@§.§9!8§;
         addChild(this.§6@§);
         this.§6@§.alpha = 0.5;
      }
      
      public function get §`!R§() : Sprite
      {
         return this.§;!@§;
      }
      
      public function get §?!K§() : DisplayObject
      {
         return this.§6@§;
      }
      
      public function get §"1§() : Sprite
      {
         return this.§>'§;
      }
      
      public function §0&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§6@§.width / this.§6@§.height;
         this.§6@§.width = param1 + 600 / _loc3_;
         this.§6@§.height = param2 + 600 / _loc3_;
      }
   }
}
