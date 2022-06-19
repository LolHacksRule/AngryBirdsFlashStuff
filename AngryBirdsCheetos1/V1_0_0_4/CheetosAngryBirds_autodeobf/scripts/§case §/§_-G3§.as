package §case §
{
   import §_-KM§.§_-0A§;
   import §_-KM§.§_-H9§;
   import §_-i9§.Texture;
   import §_-i9§.§_-s6§;
   import §_-kC§.§_-DS§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-G3§ extends §_-Gm§
   {
       
      
      private var §_-Mg§:Texture;
      
      private var §_-oi§:String;
      
      private var §_-B4§:Boolean;
      
      private var §_-qy§:Boolean;
      
      private var §_-iP§:§_-DS§;
      
      private var §_-Y6§:Boolean;
      
      public function §_-G3§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§_-vc§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§_-Mg§ = param1;
         if(!param3)
         {
            this.§_-oi§ = !!§_-0A§.§_-lj§ ? §_-s6§.NONE : §_-s6§.§_-sH§;
         }
         else
         {
            this.§_-oi§ = !!§_-0A§.§_-lj§ ? §_-s6§.§_-sH§ : §_-s6§.§_-lN§;
            this.§_-Y6§ = true;
         }
         this.§_-B4§ = param2;
         this.§_-qy§ = this.§_-B4§;
         this.§_-iP§ = new §_-DS§(4,_loc7_);
         this.§_-4E§(true);
      }
      
      public static function §_-6I§(param1:Context3D, param2:Bitmap) : §_-G3§
      {
         return new §_-G3§(Texture.§_-6I§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§_-Y6§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §_-eQ§.setTexCoords(0,0,0);
         §_-eQ§.setTexCoords(1,1,0);
         §_-eQ§.setTexCoords(2,0,1);
         §_-eQ§.setTexCoords(3,1,1);
      }
      
      private function §_-4E§(param1:Boolean = false) : void
      {
         §_-eQ§.copyTo(this.§_-iP§,0,1,this.§_-B4§ || param1,null);
         this.§_-Mg§.adjustVertexData(this.§_-iP§,0,4);
      }
      
      public function §_-Cf§() : void
      {
         var _loc1_:Rectangle = this.texture.§_-vc§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §_-eQ§.setPosition(0,0,0);
         §_-eQ§.setPosition(1,_loc2_,0);
         §_-eQ§.setPosition(2,0,_loc3_);
         §_-eQ§.setPosition(3,_loc2_,_loc3_);
         this.§_-4E§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §_-eQ§.setTexCoords(param1,param2.x,param2.y);
         this.§_-4E§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §_-eQ§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§_-DS§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§_-iP§.copyTo(param1,param2,param3,this.§_-B4§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§_-Mg§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§_-Mg§)
         {
            this.§_-Mg§ = param1;
            §_-eQ§.setPremultipliedAlpha(this.§_-Mg§.premultipliedAlpha);
            this.§_-4E§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§_-oi§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§_-s6§.§_-7v§(param1))
         {
            this.§_-oi§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§_-4E§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§_-4E§();
      }
      
      override public function render(param1:§_-H9§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§_-Mg§,this.§_-oi§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§_-B4§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§_-B4§ = this.§_-qy§;
         }
         else
         {
            this.§_-B4§ = true;
         }
         super.color = param1;
         this.§_-4E§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§_-Mg§.clippedBitmapData;
      }
   }
}
