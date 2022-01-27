package §=!E§
{
   import §!v§.§16§;
   import §!v§.§7[§;
   import §#!6§.Texture;
   import §#!6§.§]!H§;
   import §6K§.§#!-§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §try§ extends §,!@§
   {
       
      
      private var §6!&§:Texture;
      
      private var §>i§:String;
      
      private var §4!5§:Boolean;
      
      private var §6M§:Boolean;
      
      private var §[!L§:§#!-§;
      
      private var §#!!§:Boolean;
      
      public function §try§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§%!B§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§6!&§ = param1;
         if(!param3)
         {
            this.§>i§ = !!§7[§.§7c§ ? §]!H§.NONE : §]!H§.§2R§;
         }
         else
         {
            this.§>i§ = !!§7[§.§7c§ ? §]!H§.§2R§ : §]!H§.§7,§;
            this.§#!!§ = true;
         }
         this.§4!5§ = param2;
         this.§6M§ = this.§4!5§;
         this.§[!L§ = new §#!-§(4,_loc7_);
         this.§4K§(true);
      }
      
      public static function §1;§(param1:Context3D, param2:Bitmap) : §try§
      {
         return new §try§(Texture.§1;§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§#!!§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §2! §.setTexCoords(0,0,0);
         §2! §.setTexCoords(1,1,0);
         §2! §.setTexCoords(2,0,1);
         §2! §.setTexCoords(3,1,1);
      }
      
      private function §4K§(param1:Boolean = false) : void
      {
         §2! §.copyTo(this.§[!L§,0,1,this.§4!5§ || param1,null);
         this.§6!&§.adjustVertexData(this.§[!L§,0,4);
      }
      
      public function §13§() : void
      {
         var _loc1_:Rectangle = this.texture.§%!B§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §2! §.setPosition(0,0,0);
         §2! §.setPosition(1,_loc2_,0);
         §2! §.setPosition(2,0,_loc3_);
         §2! §.setPosition(3,_loc2_,_loc3_);
         this.§4K§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §2! §.setTexCoords(param1,param2.x,param2.y);
         this.§4K§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §2! §.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§#!-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§[!L§.copyTo(param1,param2,param3,this.§4!5§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§6!&§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§6!&§)
         {
            this.§6!&§ = param1;
            §2! §.setPremultipliedAlpha(this.§6!&§.premultipliedAlpha);
            this.§4K§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§>i§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§]!H§.§]!8§(param1))
         {
            this.§>i§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§4K§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§4K§();
      }
      
      override public function render(param1:§16§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§6!&§,this.§>i§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§4!5§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§4!5§ = this.§6M§;
         }
         else
         {
            this.§4!5§ = true;
         }
         super.color = param1;
         this.§4K§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§6!&§.clippedBitmapData;
      }
   }
}
