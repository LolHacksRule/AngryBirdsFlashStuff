package §#!f§
{
   import § 0§.Texture;
   import § 0§.§^Q§;
   import §"=§.§7!F§;
   import §1y§.§&!B§;
   import §1y§.§2n§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9!,§ extends §,!0§
   {
       
      
      private var §<;§:Texture;
      
      private var §?v§:String;
      
      private var §while§:Boolean;
      
      private var §!&§:Boolean;
      
      private var §+9§:§7!F§;
      
      private var §]!^§:Boolean;
      
      public function §9!,§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§12§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§<;§ = param1;
         if(!param3)
         {
            this.§?v§ = !!§&!B§.§&!F§ ? §^Q§.NONE : §^Q§.§!!%§;
         }
         else
         {
            this.§?v§ = !!§&!B§.§&!F§ ? §^Q§.§!!%§ : §^Q§.§@m§;
            this.§]!^§ = true;
         }
         this.§while§ = param2;
         this.§!&§ = this.§while§;
         this.§+9§ = new §7!F§(4,_loc7_);
         this.§>w§(true);
      }
      
      public static function §&!W§(param1:Context3D, param2:Bitmap) : §9!,§
      {
         return new §9!,§(Texture.§&!W§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§]!^§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §9!`§.setTexCoords(0,0,0);
         §9!`§.setTexCoords(1,1,0);
         §9!`§.setTexCoords(2,0,1);
         §9!`§.setTexCoords(3,1,1);
      }
      
      private function §>w§(param1:Boolean = false) : void
      {
         §9!`§.copyTo(this.§+9§,0,1,this.§while§ || param1,null);
         this.§<;§.adjustVertexData(this.§+9§,0,4);
      }
      
      public function §?!5§() : void
      {
         var _loc1_:Rectangle = this.texture.§12§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §9!`§.setPosition(0,0,0);
         §9!`§.setPosition(1,_loc2_,0);
         §9!`§.setPosition(2,0,_loc3_);
         §9!`§.setPosition(3,_loc2_,_loc3_);
         this.§>w§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §9!`§.setTexCoords(param1,param2.x,param2.y);
         this.§>w§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §9!`§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§7!F§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§+9§.copyTo(param1,param2,param3,this.§while§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§<;§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§<;§)
         {
            this.§<;§ = param1;
            §9!`§.setPremultipliedAlpha(this.§<;§.premultipliedAlpha);
            this.§>w§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§?v§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§^Q§.§-!=§(param1))
         {
            this.§?v§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§>w§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§>w§();
      }
      
      override public function render(param1:§2n§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§<;§,this.§?v§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§while§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§while§ = this.§!&§;
         }
         else
         {
            this.§while§ = true;
         }
         super.color = param1;
         this.§>w§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§<;§.clippedBitmapData;
      }
   }
}
