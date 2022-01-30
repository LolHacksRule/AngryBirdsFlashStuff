package §@!i§
{
   import §!p§.§'%§;
   import §3",§.§'5§;
   import §3",§.§0"<§;
   import §^Q§.§3!N§;
   import §^Q§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%Q§ extends §'!a§
   {
       
      
      private var §@"+§:Texture;
      
      private var §@!>§:String;
      
      private var §'"3§:Boolean;
      
      private var §7!X§:Boolean;
      
      private var § G§:§'%§;
      
      private var §2"$§:Boolean;
      
      public function §%Q§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§@"+§ = param1;
         if(!param3)
         {
            this.§@!>§ = !!§0"<§.§4§ ? §3!N§.NONE : §3!N§.§`s§;
         }
         else
         {
            this.§@!>§ = !!§0"<§.§4§ ? §3!N§.§`s§ : §3!N§.§;<§;
            this.§2"$§ = true;
         }
         this.§'"3§ = param2;
         this.§7!X§ = this.§'"3§;
         this.§ G§ = new §'%§(4,_loc7_);
         this.§]!r§(true);
      }
      
      public static function §;!`§(param1:Context3D, param2:Bitmap) : §%Q§
      {
         return new §%Q§(Texture.§;!`§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§2"$§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §"!,§.setTexCoords(0,0,0);
         §"!,§.setTexCoords(1,1,0);
         §"!,§.setTexCoords(2,0,1);
         §"!,§.setTexCoords(3,1,1);
      }
      
      private function §]!r§(param1:Boolean = false) : void
      {
         §"!,§.copyTo(this.§ G§,0,1,this.§'"3§ || param1,null);
         this.§@"+§.adjustVertexData(this.§ G§,0,4);
      }
      
      public function §-!k§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §"!,§.setPosition(0,0,0);
         §"!,§.setPosition(1,_loc2_,0);
         §"!,§.setPosition(2,0,_loc3_);
         §"!,§.setPosition(3,_loc2_,_loc3_);
         this.§]!r§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §"!,§.setTexCoords(param1,param2.x,param2.y);
         this.§]!r§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §"!,§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§'%§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§ G§.copyTo(param1,param2,param3,this.§'"3§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§@"+§;
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
         if(param1 != this.§@"+§)
         {
            this.§@"+§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§@"+§.premultipliedAlpha);
            this.§]!r§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§@!>§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§3!N§.§%!g§(param1))
         {
            this.§@!>§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§]!r§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§]!r§();
      }
      
      override public function render(param1:§'5§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§@"+§,this.§@!>§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§'"3§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§'"3§ = this.§7!X§;
         }
         else
         {
            this.§'"3§ = true;
         }
         super.color = param1;
         this.§]!r§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§@"+§.clippedBitmapData;
      }
   }
}
