package §90§
{
   import §,!,§.§&v§;
   import §,!,§.§2t§;
   import §21§.§&!?§;
   import §21§.Texture;
   import §5^§.§6B§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8S§ extends §0!'§
   {
       
      
      private var §!r§:Texture;
      
      private var §<_§:String;
      
      private var §<%§:Boolean;
      
      private var §&%§:Boolean;
      
      private var § !5§:§6B§;
      
      private var §!&§:Boolean;
      
      public function §8S§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.§-T§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§!r§ = param1;
         if(!param3)
         {
            this.§<_§ = !!§2t§.§89§ ? §&!?§.NONE : §&!?§.§&!C§;
         }
         else
         {
            this.§<_§ = !!§2t§.§89§ ? §&!?§.§&!C§ : §&!?§.§8!F§;
            this.§!&§ = true;
         }
         this.§<%§ = param2;
         this.§&%§ = this.§<%§;
         this.§ !5§ = new §6B§(4,_loc7_);
         this.§"E§(true);
      }
      
      public static function § !M§(param1:Context3D, param2:Bitmap) : §8S§
      {
         return new §8S§(Texture.§ !M§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§!&§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §;!3§.setTexCoords(0,0,0);
         §;!3§.setTexCoords(1,1,0);
         §;!3§.setTexCoords(2,0,1);
         §;!3§.setTexCoords(3,1,1);
      }
      
      private function §"E§(param1:Boolean = false) : void
      {
         §;!3§.copyTo(this.§ !5§,0,1,this.§<%§ || param1,null);
         this.§!r§.adjustVertexData(this.§ !5§,0,4);
      }
      
      public function §1^§() : void
      {
         var _loc1_:Rectangle = this.texture.§-T§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §;!3§.setPosition(0,0,0);
         §;!3§.setPosition(1,_loc2_,0);
         §;!3§.setPosition(2,0,_loc3_);
         §;!3§.setPosition(3,_loc2_,_loc3_);
         this.§"E§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §;!3§.setTexCoords(param1,param2.x,param2.y);
         this.§"E§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §;!3§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§6B§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§ !5§.copyTo(param1,param2,param3,this.§<%§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§!r§;
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
         if(param1 != this.§!r§)
         {
            this.§!r§ = param1;
            _loc2_ = this.texture.§-T§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§!r§.premultipliedAlpha);
            this.§"E§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§<_§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§&!?§.isValid(param1))
         {
            this.§<_§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§"E§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§"E§();
      }
      
      override public function render(param1:§&v§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§!r§,this.§<_§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§<%§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§<%§ = this.§&%§;
         }
         else
         {
            this.§<%§ = true;
         }
         super.color = param1;
         this.§"E§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§<%§ = this.§&%§;
         }
         else
         {
            this.§<%§ = true;
         }
         this.§"E§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§!r§.clippedBitmapData;
      }
   }
}
