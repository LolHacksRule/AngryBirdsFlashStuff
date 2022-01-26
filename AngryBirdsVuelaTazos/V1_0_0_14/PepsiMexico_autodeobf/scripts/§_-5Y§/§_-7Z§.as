package §_-5Y§
{
   import §_-DQ§.Texture;
   import §_-M0§.§_-u4§;
   import §_-PC§.§_-lx§;
   import §_-b5§.DisplayObject;
   import §_-b5§.Sprite;
   import §_-b5§.§_-Xj§;
   import flash.display.BitmapData;
   
   public class §_-7Z§ extends Sprite
   {
       
      
      protected var §_-Fh§:Sprite;
      
      protected var §_-o3§:DisplayObject;
      
      protected var §_-HE§:Sprite;
      
      public function §_-7Z§()
      {
         super();
         addChild(this.§_-HE§ = new Sprite());
         this.§_-HE§.addChild(this.§_-Fh§ = new Sprite());
         var _loc1_:Texture = §_-lx§.§_-aP§.§_-a§(new BitmapData(2,2,false,0));
         this.§_-o3§ = new §_-Xj§(_loc1_,true);
         this.§_-o3§.width = §_-u4§.§_-4r§;
         this.§_-o3§.height = §_-u4§.§_-ho§;
         addChild(this.§_-o3§);
         this.§_-o3§.alpha = 0.5;
      }
      
      public function get §_-9J§() : Sprite
      {
         return this.§_-Fh§;
      }
      
      public function get §_-FX§() : DisplayObject
      {
         return this.§_-o3§;
      }
      
      public function get §_-pr§() : Sprite
      {
         return this.§_-HE§;
      }
      
      public function §_-o1§(param1:Number, param2:Number) : void
      {
         this.§_-o3§.width = param1;
         this.§_-o3§.height = param2;
      }
   }
}
