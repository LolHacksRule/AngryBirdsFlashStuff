package §,!q§
{
   import §-!Y§.§%!%§;
   import §-!Y§.§,!f§;
   import §-$§.§6"5§;
   import §?V§.§@A§;
   import §?V§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+Q§ extends §#!H§
   {
       
      
      private var §3",§:Texture;
      
      private var §-"%§:String;
      
      private var §2!k§:Boolean;
      
      private var §7Y§:Boolean;
      
      private var §+x§:§6"5§;
      
      private var §0x§:Boolean;
      
      public function §+Q§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§ "0§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§3",§ = param1;
         if(!param3)
         {
            this.§-"%§ = !!§%!%§.§4K§ ? §@A§.NONE : §@A§.§,9§;
         }
         else
         {
            this.§-"%§ = !!§%!%§.§4K§ ? §@A§.§,9§ : §@A§.§[!b§;
            this.§0x§ = true;
         }
         this.§2!k§ = param2;
         this.§7Y§ = this.§2!k§;
         this.§+x§ = new §6"5§(4,_loc7_);
         this.§ each§(true);
      }
      
      public static function §#`§(param1:Context3D, param2:Bitmap) : §+Q§
      {
         return new §+Q§(Texture.§#`§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§0x§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §;<§.setTexCoords(0,0,0);
         §;<§.setTexCoords(1,1,0);
         §;<§.setTexCoords(2,0,1);
         §;<§.setTexCoords(3,1,1);
      }
      
      private function § each§(param1:Boolean = false) : void
      {
         §;<§.copyTo(this.§+x§,0,1,this.§2!k§ || param1,null);
         this.§3",§.adjustVertexData(this.§+x§,0,4);
      }
      
      public function § ?§() : void
      {
         var _loc1_:Rectangle = this.texture.§ "0§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §;<§.setPosition(0,0,0);
         §;<§.setPosition(1,_loc2_,0);
         §;<§.setPosition(2,0,_loc3_);
         §;<§.setPosition(3,_loc2_,_loc3_);
         this.§ each§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §;<§.setTexCoords(param1,param2.x,param2.y);
         this.§ each§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §;<§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§6"5§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§+x§.copyTo(param1,param2,param3,this.§2!k§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§3",§;
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
         if(param1 != this.§3",§)
         {
            this.§3",§ = param1;
            _loc2_ = this.texture.§ "0§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§3",§.premultipliedAlpha);
            this.§ each§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§-"%§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§@A§.§^!T§(param1))
         {
            this.§-"%§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§ each§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§ each§();
      }
      
      override public function render(param1:§,!f§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§3",§,this.§-"%§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§2!k§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§2!k§ = this.§7Y§;
         }
         else
         {
            this.§2!k§ = true;
         }
         super.color = param1;
         this.§ each§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§2!k§ = this.§7Y§;
         }
         else
         {
            this.§2!k§ = true;
         }
         this.§ each§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§3",§.clippedBitmapData;
      }
   }
}
