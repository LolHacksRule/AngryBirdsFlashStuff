package §'!6§
{
   import §!=§.§`b§;
   import §"a§.§!"J§;
   import §"a§.§>w§;
   import §<5§.Texture;
   import §<5§.§^M§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § "E§ extends §5T§
   {
       
      
      private var §,b§:Texture;
      
      private var §#T§:String;
      
      private var §6#§:Boolean;
      
      private var §&!V§:Boolean;
      
      private var §#"G§:§`b§;
      
      private var §8"$§:Boolean;
      
      public function § "E§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§,b§ = param1;
         if(!param3)
         {
            this.§#T§ = !!§!"J§.§!X§ ? §^M§.NONE : §^M§.§#§;
         }
         else
         {
            this.§#T§ = !!§!"J§.§!X§ ? §^M§.§#§ : §^M§.§2"C§;
            this.§8"$§ = true;
         }
         this.§6#§ = param2;
         this.§&!V§ = this.§6#§;
         this.§#"G§ = new §`b§(4,_loc7_);
         this.§<!j§(true);
      }
      
      public static function §[f§(param1:Context3D, param2:Bitmap) : § "E§
      {
         return new § "E§(Texture.§[f§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§8"$§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §^!S§.setTexCoords(0,0,0);
         §^!S§.setTexCoords(1,1,0);
         §^!S§.setTexCoords(2,0,1);
         §^!S§.setTexCoords(3,1,1);
      }
      
      private function §<!j§(param1:Boolean = false) : void
      {
         §^!S§.copyTo(this.§#"G§,0,1,this.§6#§ || param1,null);
         this.§,b§.adjustVertexData(this.§#"G§,0,4);
      }
      
      public function §"",§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §^!S§.setPosition(0,0,0);
         §^!S§.setPosition(1,_loc2_,0);
         §^!S§.setPosition(2,0,_loc3_);
         §^!S§.setPosition(3,_loc2_,_loc3_);
         this.§<!j§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §^!S§.setTexCoords(param1,param2.x,param2.y);
         this.§<!j§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §^!S§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§`b§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§#"G§.copyTo(param1,param2,param3,this.§6#§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§,b§;
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
         if(param1 != this.§,b§)
         {
            this.§,b§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§,b§.premultipliedAlpha);
            this.§<!j§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§#T§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§^M§.§@"1§(param1))
         {
            this.§#T§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§<!j§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§<!j§();
      }
      
      override public function render(param1:§>w§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§,b§,this.§#T§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§6#§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§6#§ = this.§&!V§;
         }
         else
         {
            this.§6#§ = true;
         }
         super.color = param1;
         this.§<!j§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§6#§ = this.§&!V§;
         }
         else
         {
            this.§6#§ = true;
         }
         this.§<!j§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§,b§.clippedBitmapData;
      }
   }
}
