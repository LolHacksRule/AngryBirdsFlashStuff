package §3H§
{
   import §#M§.§+L§;
   import §0l§.Texture;
   import §0l§.§[x§;
   import §5J§.§4!3§;
   import §5J§.§>$§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`!@§ extends §!q§
   {
       
      
      private var §+3§:Texture;
      
      private var §3?§:String;
      
      private var §1!3§:Boolean;
      
      private var §2'§:Boolean;
      
      private var §,P§:§+L§;
      
      private var §6!G§:Boolean;
      
      public function §`!@§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§<#§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§+3§ = param1;
         if(!param3)
         {
            this.§3?§ = !!§>$§.§<8§ ? §[x§.NONE : §[x§.§1h§;
         }
         else
         {
            this.§3?§ = !!§>$§.§<8§ ? §[x§.§1h§ : §[x§.§8!%§;
            this.§6!G§ = true;
         }
         this.§1!3§ = param2;
         this.§2'§ = this.§1!3§;
         this.§,P§ = new §+L§(4,_loc7_);
         this.§;4§(true);
      }
      
      public static function §8Q§(param1:Context3D, param2:Bitmap) : §`!@§
      {
         return new §`!@§(Texture.§8Q§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§6!G§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §9M§.setTexCoords(0,0,0);
         §9M§.setTexCoords(1,1,0);
         §9M§.setTexCoords(2,0,1);
         §9M§.setTexCoords(3,1,1);
      }
      
      private function §;4§(param1:Boolean = false) : void
      {
         §9M§.copyTo(this.§,P§,0,1,this.§1!3§ || param1,null);
         this.§+3§.adjustVertexData(this.§,P§,0,4);
      }
      
      public function §>?§() : void
      {
         var _loc1_:Rectangle = this.texture.§<#§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §9M§.setPosition(0,0,0);
         §9M§.setPosition(1,_loc2_,0);
         §9M§.setPosition(2,0,_loc3_);
         §9M§.setPosition(3,_loc2_,_loc3_);
         this.§;4§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §9M§.setTexCoords(param1,param2.x,param2.y);
         this.§;4§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §9M§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§+L§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§,P§.copyTo(param1,param2,param3,this.§1!3§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§+3§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§+3§)
         {
            this.§+3§ = param1;
            §9M§.setPremultipliedAlpha(this.§+3§.premultipliedAlpha);
            this.§;4§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§3?§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§[x§.§6!1§(param1))
         {
            this.§3?§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§;4§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§;4§();
      }
      
      override public function render(param1:§4!3§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§+3§,this.§3?§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§1!3§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§1!3§ = this.§2'§;
         }
         else
         {
            this.§1!3§ = true;
         }
         super.color = param1;
         this.§;4§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§+3§.clippedBitmapData;
      }
   }
}
