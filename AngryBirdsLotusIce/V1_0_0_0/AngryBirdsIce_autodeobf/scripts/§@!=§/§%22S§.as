package §@!=§
{
   import §%?§.§@s§;
   import §%?§.Texture;
   import §5!3§.§^x§;
   import §@!%§.§+8§;
   import §@!%§.§]A§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"S§ extends §4G§
   {
       
      
      private var §+F§:Texture;
      
      private var §+w§:String;
      
      private var §>;§:Boolean;
      
      private var §<9§:Boolean;
      
      private var §?!;§:§^x§;
      
      private var §`I§:Boolean;
      
      public function §"S§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§&,§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§+F§ = param1;
         if(!param3)
         {
            this.§+w§ = !!§+8§.§-]§ ? §@s§.NONE : §@s§.§>i§;
         }
         else
         {
            this.§+w§ = !!§+8§.§-]§ ? §@s§.§>i§ : §@s§.§;!0§;
            this.§`I§ = true;
         }
         this.§>;§ = param2;
         this.§<9§ = this.§>;§;
         this.§?!;§ = new §^x§(4,_loc7_);
         this.§!!#§(true);
      }
      
      public static function §7U§(param1:Context3D, param2:Bitmap) : §"S§
      {
         return new §"S§(Texture.§7U§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§`I§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §@T§.setTexCoords(0,0,0);
         §@T§.setTexCoords(1,1,0);
         §@T§.setTexCoords(2,0,1);
         §@T§.setTexCoords(3,1,1);
      }
      
      private function §!!#§(param1:Boolean = false) : void
      {
         §@T§.copyTo(this.§?!;§,0,1,this.§>;§ || param1,null);
         this.§+F§.adjustVertexData(this.§?!;§,0,4);
      }
      
      public function §+9§() : void
      {
         var _loc1_:Rectangle = this.texture.§&,§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §@T§.setPosition(0,0,0);
         §@T§.setPosition(1,_loc2_,0);
         §@T§.setPosition(2,0,_loc3_);
         §@T§.setPosition(3,_loc2_,_loc3_);
         this.§!!#§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §@T§.setTexCoords(param1,param2.x,param2.y);
         this.§!!#§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §@T§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§^x§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§?!;§.copyTo(param1,param2,param3,this.§>;§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§+F§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§+F§)
         {
            this.§+F§ = param1;
            §@T§.setPremultipliedAlpha(this.§+F§.premultipliedAlpha);
            this.§!!#§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§+w§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§@s§.isValid(param1))
         {
            this.§+w§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§!!#§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§!!#§();
      }
      
      override public function render(param1:§]A§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§+F§,this.§+w§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§>;§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§>;§ = this.§<9§;
         }
         else
         {
            this.§>;§ = true;
         }
         super.color = param1;
         this.§!!#§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§+F§.clippedBitmapData;
      }
   }
}
