package §6![§
{
   import §%q§.§+,§;
   import §%q§.Texture;
   import §+o§.§3C§;
   import §`!a§.§0L§;
   import §`!a§.§1"&§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!J§ extends § !f§
   {
       
      
      private var §'!t§:Texture;
      
      private var §;!q§:String;
      
      private var §`s§:Boolean;
      
      private var §;!7§:Boolean;
      
      private var §]"!§:§3C§;
      
      private var §?Y§:Boolean;
      
      public function §1!J§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.§>!A§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§'!t§ = param1;
         if(!param3)
         {
            this.§;!q§ = !!§1"&§.§'!g§ ? §+,§.NONE : §+,§.§7q§;
         }
         else
         {
            this.§;!q§ = !!§1"&§.§'!g§ ? §+,§.§7q§ : §+,§.§]!h§;
            this.§?Y§ = true;
         }
         this.§`s§ = param2;
         this.§;!7§ = this.§`s§;
         this.§]"!§ = new §3C§(4,_loc7_);
         this.§0!m§(true);
      }
      
      public static function §1o§(param1:Context3D, param2:Bitmap) : §1!J§
      {
         return new §1!J§(Texture.§1o§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§?Y§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §1!&§.setTexCoords(0,0,0);
         §1!&§.setTexCoords(1,1,0);
         §1!&§.setTexCoords(2,0,1);
         §1!&§.setTexCoords(3,1,1);
      }
      
      private function §0!m§(param1:Boolean = false) : void
      {
         §1!&§.copyTo(this.§]"!§,0,1,this.§`s§ || param1,null);
         this.§'!t§.adjustVertexData(this.§]"!§,0,4);
      }
      
      public function §>![§(param1:Vector.<Point>) : void
      {
         §1!&§.setPosition(0,param1[0].x,param1[0].y);
         §1!&§.setPosition(1,param1[1].x,param1[1].y);
         §1!&§.setPosition(2,param1[2].x,param1[2].y);
         §1!&§.setPosition(3,param1[3].x,param1[3].y);
         this.§0!m§();
      }
      
      public function §9!n§() : void
      {
         var _loc1_:Rectangle = this.texture.§>!A§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §1!&§.setPosition(0,0,0);
         §1!&§.setPosition(1,_loc2_,0);
         §1!&§.setPosition(2,0,_loc3_);
         §1!&§.setPosition(3,_loc2_,_loc3_);
         this.§0!m§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §1!&§.setTexCoords(param1,param2.x,param2.y);
         this.§0!m§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §1!&§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§3C§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§]"!§.copyTo(param1,param2,param3,this.§`s§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§'!t§;
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
         if(param1 != this.§'!t§)
         {
            this.§'!t§ = param1;
            _loc2_ = this.texture.§>!A§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§'!t§.premultipliedAlpha);
            this.§0!m§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§;!q§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§+,§.§%"$§(param1))
         {
            this.§;!q§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§0!m§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§0!m§();
      }
      
      override public function render(param1:§0L§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§'!t§,this.§;!q§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§`s§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§`s§ = this.§;!7§;
         }
         else
         {
            this.§`s§ = true;
         }
         super.color = param1;
         this.§0!m§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§`s§ = this.§;!7§;
         }
         else
         {
            this.§`s§ = true;
         }
         this.§0!m§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§'!t§.clippedBitmapData;
      }
   }
}
