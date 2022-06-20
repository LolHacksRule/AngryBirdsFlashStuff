package §1!$§
{
   import §'6§.§"]§;
   import §'6§.§'"3§;
   import §0!R§.§=w§;
   import §0!R§.Texture;
   import §1V§.§1!-§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0!N§ extends §!"?§
   {
       
      
      private var §&M§:Texture;
      
      private var §-!2§:String;
      
      private var §[!$§:Boolean;
      
      private var §7!,§:Boolean;
      
      private var §;!L§:§1!-§;
      
      private var §5!1§:Boolean;
      
      public function §0!N§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§&M§ = param1;
         if(!param3)
         {
            this.§-!2§ = !!§"]§.§4"!§ ? §=w§.NONE : §=w§.§8!Q§;
         }
         else
         {
            this.§-!2§ = !!§"]§.§4"!§ ? §=w§.§8!Q§ : §=w§.§>o§;
            this.§5!1§ = true;
         }
         this.§[!$§ = param2;
         this.§7!,§ = this.§[!$§;
         this.§;!L§ = new §1!-§(4,_loc7_);
         this.§"!c§(true);
      }
      
      public static function §1!H§(param1:Context3D, param2:Bitmap) : §0!N§
      {
         return new §0!N§(Texture.§1!H§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§5!1§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §0E§.setTexCoords(0,0,0);
         §0E§.setTexCoords(1,1,0);
         §0E§.setTexCoords(2,0,1);
         §0E§.setTexCoords(3,1,1);
      }
      
      private function §"!c§(param1:Boolean = false) : void
      {
         §0E§.copyTo(this.§;!L§,0,1,this.§[!$§ || param1,null);
         this.§&M§.adjustVertexData(this.§;!L§,0,4);
      }
      
      public function §=!!§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §0E§.setPosition(0,0,0);
         §0E§.setPosition(1,_loc2_,0);
         §0E§.setPosition(2,0,_loc3_);
         §0E§.setPosition(3,_loc2_,_loc3_);
         this.§"!c§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §0E§.setTexCoords(param1,param2.x,param2.y);
         this.§"!c§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §0E§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§1!-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§;!L§.copyTo(param1,param2,param3,this.§[!$§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§&M§;
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
         if(param1 != this.§&M§)
         {
            this.§&M§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§&M§.premultipliedAlpha);
            this.§"!c§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§-!2§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§=w§.§;!C§(param1))
         {
            this.§-!2§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§"!c§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§"!c§();
      }
      
      override public function render(param1:§'"3§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§&M§,this.§-!2§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§[!$§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§[!$§ = this.§7!,§;
         }
         else
         {
            this.§[!$§ = true;
         }
         super.color = param1;
         this.§"!c§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§&M§.clippedBitmapData;
      }
   }
}
