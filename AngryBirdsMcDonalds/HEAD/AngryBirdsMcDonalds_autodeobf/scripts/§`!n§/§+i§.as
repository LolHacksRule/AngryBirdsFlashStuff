package §`!n§
{
   import §%%§.§,!<§;
   import §%%§.§3P§;
   import §&7§.§?A§;
   import §&7§.Texture;
   import §>!a§.§;!V§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+i§ extends § !i§
   {
       
      
      private var §!W§:Texture;
      
      private var §-s§:String;
      
      private var §@!p§:Boolean;
      
      private var §6!;§:Boolean;
      
      private var each:§;!V§;
      
      private var §7h§:Boolean;
      
      public function §+i§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§89§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§!W§ = param1;
         if(!param3)
         {
            this.§-s§ = !!§3P§.§+!J§ ? §?A§.NONE : §?A§.§!!R§;
         }
         else
         {
            this.§-s§ = !!§3P§.§+!J§ ? §?A§.§!!R§ : §?A§.§throw§;
            this.§7h§ = true;
         }
         this.§@!p§ = param2;
         this.§6!;§ = this.§@!p§;
         this.each = new §;!V§(4,_loc7_);
         this.§-!'§(true);
      }
      
      public static function §4_§(param1:Context3D, param2:Bitmap) : §+i§
      {
         return new §+i§(Texture.§4_§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§7h§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §@Y§.setTexCoords(0,0,0);
         §@Y§.setTexCoords(1,1,0);
         §@Y§.setTexCoords(2,0,1);
         §@Y§.setTexCoords(3,1,1);
      }
      
      private function §-!'§(param1:Boolean = false) : void
      {
         §@Y§.copyTo(this.each,0,1,this.§@!p§ || param1,null);
         this.§!W§.adjustVertexData(this.each,0,4);
      }
      
      public function §!!'§() : void
      {
         var _loc1_:Rectangle = this.texture.§89§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §@Y§.setPosition(0,0,0);
         §@Y§.setPosition(1,_loc2_,0);
         §@Y§.setPosition(2,0,_loc3_);
         §@Y§.setPosition(3,_loc2_,_loc3_);
         this.§-!'§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §@Y§.setTexCoords(param1,param2.x,param2.y);
         this.§-!'§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §@Y§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§;!V§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.each.copyTo(param1,param2,param3,this.§@!p§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§!W§;
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
         if(param1 != this.§!W§)
         {
            this.§!W§ = param1;
            _loc2_ = this.texture.§89§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§!W§.premultipliedAlpha);
            this.§-!'§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§-s§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§?A§.§`9§(param1))
         {
            this.§-s§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§-!'§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§-!'§();
      }
      
      override public function render(param1:§,!<§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§!W§,this.§-s§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§@!p§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§@!p§ = this.§6!;§;
         }
         else
         {
            this.§@!p§ = true;
         }
         super.color = param1;
         this.§-!'§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§@!p§ = this.§6!;§;
         }
         else
         {
            this.§@!p§ = true;
         }
         this.§-!'§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§!W§.clippedBitmapData;
      }
   }
}
