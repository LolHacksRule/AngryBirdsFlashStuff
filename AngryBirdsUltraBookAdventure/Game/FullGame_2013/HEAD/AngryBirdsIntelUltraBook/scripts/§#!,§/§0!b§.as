package §#!,§
{
   import §'7§.VertexData;
   import §6!J§.§&!A§;
   import §6!J§.Texture;
   import §7!>§.RenderSupport;
   import §7!>§.Starling;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0!b§ extends §6!Y§
   {
       
      
      private var §>!S§:Texture;
      
      private var §'!&§:String;
      
      private var §2!0§:Boolean;
      
      private var §0X§:Boolean;
      
      private var §[! §:VertexData;
      
      private var §7y§:Boolean;
      
      public function §0!b§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle = param1.frame;
         var _loc5_:Number = Boolean(_loc4_) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = Boolean(_loc4_) ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§>!S§ = param1;
         if(!param3)
         {
            this.§'!&§ = !!Starling.isSoftware ? §&!A§.NONE : §&!A§.§^Z§;
         }
         else
         {
            this.§'!&§ = !!Starling.isSoftware ? §&!A§.§^Z§ : §&!A§.§?k§;
            this.§7y§ = true;
         }
         this.§2!0§ = param2;
         this.§0X§ = this.§2!0§;
         this.§[! § = new VertexData(4,_loc7_);
         this.§^1§(true);
      }
      
      public static function §'o§(param1:Context3D, param2:Bitmap) : §0!b§
      {
         return new §0!b§(Texture.§'o§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§7y§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §7!$§.setTexCoords(0,0,0);
         §7!$§.setTexCoords(1,1,0);
         §7!$§.setTexCoords(2,0,1);
         §7!$§.setTexCoords(3,1,1);
      }
      
      private function §^1§(param1:Boolean = false) : void
      {
         §7!$§.copyTo(this.§[! §,0,1,this.§2!0§ || param1,null);
         this.§>!S§.adjustVertexData(this.§[! §,0,4);
      }
      
      public function §3_§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = Boolean(_loc1_) ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = Boolean(_loc1_) ? Number(_loc1_.height) : Number(this.texture.height);
         §7!$§.setPosition(0,0,0);
         §7!$§.setPosition(1,_loc2_,0);
         §7!$§.setPosition(2,0,_loc3_);
         §7!$§.setPosition(3,_loc2_,_loc3_);
         this.§^1§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §7!$§.setTexCoords(param1,param2.x,param2.y);
         this.§^1§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §7!$§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§[! §.copyTo(param1,param2,param3,this.§2!0§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§>!S§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§>!S§)
         {
            this.§>!S§ = param1;
            §7!$§.setPremultipliedAlpha(this.§>!S§.premultipliedAlpha);
            this.§^1§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§'!&§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§&!A§.§-!Z§(param1))
         {
            this.§'!&§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§^1§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§^1§();
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§>!S§,this.§'!&§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§2!0§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§2!0§ = this.§0X§;
         }
         else
         {
            this.§2!0§ = true;
         }
         super.color = param1;
         this.§^1§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§>!S§.clippedBitmapData;
      }
   }
}
