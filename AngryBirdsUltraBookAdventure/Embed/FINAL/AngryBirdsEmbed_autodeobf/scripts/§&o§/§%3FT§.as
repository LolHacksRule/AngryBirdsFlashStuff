package §&o§
{
   import §'j§.§3!!§;
   import §0! §.§ case§;
   import §0! §.Texture;
   import §=!0§.§2N§;
   import §=!0§.§>I§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?T§ extends §<3§
   {
       
      
      private var §;p§:Texture;
      
      private var §2!#§:String;
      
      private var §4!B§:Boolean;
      
      private var §4?§:Boolean;
      
      private var §;!G§:§3!!§;
      
      private var §2X§:Boolean;
      
      public function §?T§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§8T§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§;p§ = param1;
         if(!param3)
         {
            this.§2!#§ = !!§>I§.§0P§ ? § case§.NONE : § case§.§@§;
         }
         else
         {
            this.§2!#§ = !!§>I§.§0P§ ? § case§.§@§ : § case§.§ 6§;
            this.§2X§ = true;
         }
         this.§4!B§ = param2;
         this.§4?§ = this.§4!B§;
         this.§;!G§ = new §3!!§(4,_loc7_);
         this.§@p§(true);
      }
      
      public static function §>! §(param1:Context3D, param2:Bitmap) : §?T§
      {
         return new §?T§(Texture.§>! §(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§2X§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §,Y§.setTexCoords(0,0,0);
         §,Y§.setTexCoords(1,1,0);
         §,Y§.setTexCoords(2,0,1);
         §,Y§.setTexCoords(3,1,1);
      }
      
      private function §@p§(param1:Boolean = false) : void
      {
         §,Y§.copyTo(this.§;!G§,0,1,this.§4!B§ || param1,null);
         this.§;p§.adjustVertexData(this.§;!G§,0,4);
      }
      
      public function §&!1§() : void
      {
         var _loc1_:Rectangle = this.texture.§8T§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §,Y§.setPosition(0,0,0);
         §,Y§.setPosition(1,_loc2_,0);
         §,Y§.setPosition(2,0,_loc3_);
         §,Y§.setPosition(3,_loc2_,_loc3_);
         this.§@p§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §,Y§.setTexCoords(param1,param2.x,param2.y);
         this.§@p§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §,Y§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§3!!§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§;!G§.copyTo(param1,param2,param3,this.§4!B§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§;p§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§;p§)
         {
            this.§;p§ = param1;
            _loc2_ = this.texture.§8T§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§;p§.premultipliedAlpha);
            this.§@p§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§2!#§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§ case§.isValid(param1))
         {
            this.§2!#§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§@p§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§@p§();
      }
      
      override public function render(param1:§2N§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§;p§,this.§2!#§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§4!B§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§4!B§ = this.§4?§;
         }
         else
         {
            this.§4!B§ = true;
         }
         super.color = param1;
         this.§@p§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§4!B§ = this.§4?§;
         }
         else
         {
            this.§4!B§ = true;
         }
         this.§@p§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§;p§.clippedBitmapData;
      }
   }
}
