package §1!A§
{
   import §5L§.§^!C§;
   import §^n§.Texture;
   import §^n§.§in§;
   import §`M§.§'C§;
   import §`M§.§[7§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;a§ extends §@!O§
   {
       
      
      private var §&q§:Texture;
      
      private var §1!6§:String;
      
      private var §;!L§:Boolean;
      
      private var §>!=§:Boolean;
      
      private var §`q§:§^!C§;
      
      private var §5`§:Boolean;
      
      public function §;a§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§`§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§&q§ = param1;
         if(!param3)
         {
            this.§1!6§ = !!§'C§.§+w§ ? §in§.NONE : §in§.§8M§;
         }
         else
         {
            this.§1!6§ = !!§'C§.§+w§ ? §in§.§8M§ : §in§.§!!1§;
            this.§5`§ = true;
         }
         this.§;!L§ = param2;
         this.§>!=§ = this.§;!L§;
         this.§`q§ = new §^!C§(4,_loc7_);
         this.§#'§(true);
      }
      
      public static function §5!]§(param1:Context3D, param2:Bitmap) : §;a§
      {
         return new §;a§(Texture.§5!]§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§5`§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §^c§.setTexCoords(0,0,0);
         §^c§.setTexCoords(1,1,0);
         §^c§.setTexCoords(2,0,1);
         §^c§.setTexCoords(3,1,1);
      }
      
      private function §#'§(param1:Boolean = false) : void
      {
         §^c§.copyTo(this.§`q§,0,1,this.§;!L§ || param1,null);
         this.§&q§.adjustVertexData(this.§`q§,0,4);
      }
      
      public function §1!G§() : void
      {
         var _loc1_:Rectangle = this.texture.§`§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §^c§.setPosition(0,0,0);
         §^c§.setPosition(1,_loc2_,0);
         §^c§.setPosition(2,0,_loc3_);
         §^c§.setPosition(3,_loc2_,_loc3_);
         this.§#'§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §^c§.setTexCoords(param1,param2.x,param2.y);
         this.§#'§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §^c§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§^!C§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§`q§.copyTo(param1,param2,param3,this.§;!L§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§&q§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§&q§)
         {
            this.§&q§ = param1;
            §^c§.setPremultipliedAlpha(this.§&q§.premultipliedAlpha);
            this.§#'§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§1!6§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§in§.§!D§(param1))
         {
            this.§1!6§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§#'§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§#'§();
      }
      
      override public function render(param1:§[7§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§&q§,this.§1!6§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§;!L§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§;!L§ = this.§>!=§;
         }
         else
         {
            this.§;!L§ = true;
         }
         super.color = param1;
         this.§#'§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§&q§.clippedBitmapData;
      }
   }
}
