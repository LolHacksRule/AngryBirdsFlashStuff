package §_-uY§
{
   import §_-0Ea§.§_-AY§;
   import §_-0Ea§.§_-zM§;
   import §_-UD§.§_-9f§;
   import §_-z4§.Texture;
   import §_-z4§.§_-IJ§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-09b§ extends §_-2p§
   {
       
      
      private var §_-7u§:Texture;
      
      private var §_-rA§:String;
      
      private var §_-064§:Boolean;
      
      private var §_-az§:Boolean;
      
      private var §_-dG§:§_-9f§;
      
      private var §_-94§:Boolean;
      
      public function §_-09b§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§_-7u§ = param1;
         if(!param3)
         {
            this.§_-rA§ = !!§_-AY§.§_-H3§ ? §_-IJ§.NONE : §_-IJ§.§_-Th§;
         }
         else
         {
            this.§_-rA§ = !!§_-AY§.§_-H3§ ? §_-IJ§.§_-Th§ : §_-IJ§.§_-nO§;
            this.§_-94§ = true;
         }
         this.§_-064§ = param2;
         this.§_-az§ = this.§_-064§;
         this.§_-dG§ = new §_-9f§(4,_loc7_);
         this.§_-02Z§(true);
      }
      
      public static function §_-Qi§(param1:Context3D, param2:Bitmap) : §_-09b§
      {
         return new §_-09b§(Texture.§_-Qi§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§_-94§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §_-BF§.setTexCoords(0,0,0);
         §_-BF§.setTexCoords(1,1,0);
         §_-BF§.setTexCoords(2,0,1);
         §_-BF§.setTexCoords(3,1,1);
      }
      
      private function §_-02Z§(param1:Boolean = false) : void
      {
         §_-BF§.copyTo(this.§_-dG§,0,1,this.§_-064§ || param1,null);
         this.§_-7u§.adjustVertexData(this.§_-dG§,0,4);
      }
      
      public function §_-jH§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §_-BF§.setPosition(0,0,0);
         §_-BF§.setPosition(1,_loc2_,0);
         §_-BF§.setPosition(2,0,_loc3_);
         §_-BF§.setPosition(3,_loc2_,_loc3_);
         this.§_-02Z§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §_-BF§.setTexCoords(param1,param2.x,param2.y);
         this.§_-02Z§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §_-BF§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§_-9f§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§_-dG§.copyTo(param1,param2,param3,this.§_-064§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§_-7u§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§_-7u§)
         {
            this.§_-7u§ = param1;
            §_-BF§.setPremultipliedAlpha(this.§_-7u§.premultipliedAlpha);
            this.§_-02Z§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§_-rA§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§_-IJ§.§_-Yq§(param1))
         {
            this.§_-rA§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§_-02Z§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§_-02Z§();
      }
      
      override public function render(param1:§_-zM§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§_-7u§,this.§_-rA§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§_-064§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§_-064§ = this.§_-az§;
         }
         else
         {
            this.§_-064§ = true;
         }
         super.color = param1;
         this.§_-02Z§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§_-7u§.clippedBitmapData;
      }
   }
}
