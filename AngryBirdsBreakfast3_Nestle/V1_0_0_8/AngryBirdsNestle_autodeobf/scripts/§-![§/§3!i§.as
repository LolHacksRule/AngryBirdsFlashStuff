package §-![§
{
   import §"!t§.§&s§;
   import §&!;§.§3!j§;
   import §&!;§.Texture;
   import §=!6§.§+8§;
   import §=!6§.§]q§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3!i§ extends §5!<§
   {
       
      
      private var §0!0§:Texture;
      
      private var §4O§:String;
      
      private var §>!]§:Boolean;
      
      private var §`"#§:Boolean;
      
      private var §!V§:§&s§;
      
      private var §<!a§:Boolean;
      
      public function §3!i§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§ B§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§0!0§ = param1;
         if(!param3)
         {
            this.§4O§ = !!§+8§.§0"$§ ? §3!j§.NONE : §3!j§.§6j§;
         }
         else
         {
            this.§4O§ = !!§+8§.§0"$§ ? §3!j§.§6j§ : §3!j§.§ `§;
            this.§<!a§ = true;
         }
         this.§>!]§ = param2;
         this.§`"#§ = this.§>!]§;
         this.§!V§ = new §&s§(4,_loc7_);
         this.§@!G§(true);
      }
      
      public static function §]!^§(param1:Context3D, param2:Bitmap) : §3!i§
      {
         return new §3!i§(Texture.§]!^§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§<!a§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §1!T§.setTexCoords(0,0,0);
         §1!T§.setTexCoords(1,1,0);
         §1!T§.setTexCoords(2,0,1);
         §1!T§.setTexCoords(3,1,1);
      }
      
      private function §@!G§(param1:Boolean = false) : void
      {
         §1!T§.copyTo(this.§!V§,0,1,this.§>!]§ || param1,null);
         this.§0!0§.adjustVertexData(this.§!V§,0,4);
      }
      
      public function §=!]§(param1:Vector.<Point>) : void
      {
         §1!T§.setPosition(0,param1[0].x,param1[0].y);
         §1!T§.setPosition(1,param1[1].x,param1[1].y);
         §1!T§.setPosition(2,param1[2].x,param1[2].y);
         §1!T§.setPosition(3,param1[3].x,param1[3].y);
         this.§@!G§();
      }
      
      public function §2!4§() : void
      {
         var _loc1_:Rectangle = this.texture.§ B§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §1!T§.setPosition(0,0,0);
         §1!T§.setPosition(1,_loc2_,0);
         §1!T§.setPosition(2,0,_loc3_);
         §1!T§.setPosition(3,_loc2_,_loc3_);
         this.§@!G§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §1!T§.setTexCoords(param1,param2.x,param2.y);
         this.§@!G§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §1!T§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§&s§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§!V§.copyTo(param1,param2,param3,this.§>!]§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§0!0§;
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
         if(param1 != this.§0!0§)
         {
            this.§0!0§ = param1;
            _loc2_ = this.texture.§ B§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§0!0§.premultipliedAlpha);
            this.§@!G§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§4O§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§3!j§.§;Z§(param1))
         {
            this.§4O§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§@!G§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§@!G§();
      }
      
      override public function render(param1:§]q§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§0!0§,this.§4O§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§>!]§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§>!]§ = this.§`"#§;
         }
         else
         {
            this.§>!]§ = true;
         }
         super.color = param1;
         this.§@!G§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§>!]§ = this.§`"#§;
         }
         else
         {
            this.§>!]§ = true;
         }
         this.§@!G§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§0!0§.clippedBitmapData;
      }
   }
}
