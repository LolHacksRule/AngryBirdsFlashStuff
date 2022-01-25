package §;t§
{
   import §#!a§.§&S§;
   import §#!a§.Texture;
   import §+R§.§0O§;
   import §+R§.§4!b§;
   import §^!L§.§-2§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=_§ extends §6!K§
   {
       
      
      private var §]Z§:Texture;
      
      private var §#!d§:String;
      
      private var §6!C§:Boolean;
      
      private var §<n§:Boolean;
      
      private var §<!E§:§-2§;
      
      private var §1!W§:Boolean;
      
      public function §=_§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§;i§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§]Z§ = param1;
         if(!param3)
         {
            this.§#!d§ = !!§0O§.§3Z§ ? §&S§.NONE : §&S§.§+!$§;
         }
         else
         {
            this.§#!d§ = !!§0O§.§3Z§ ? §&S§.§+!$§ : §&S§.§#`§;
            this.§1!W§ = true;
         }
         this.§6!C§ = param2;
         this.§<n§ = this.§6!C§;
         this.§<!E§ = new §-2§(4,_loc7_);
         this.§5!0§(true);
      }
      
      public static function §@8§(param1:Context3D, param2:Bitmap) : §=_§
      {
         return new §=_§(Texture.§@8§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§1!W§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §0&§.setTexCoords(0,0,0);
         §0&§.setTexCoords(1,1,0);
         §0&§.setTexCoords(2,0,1);
         §0&§.setTexCoords(3,1,1);
      }
      
      private function §5!0§(param1:Boolean = false) : void
      {
         §0&§.copyTo(this.§<!E§,0,1,this.§6!C§ || param1,null);
         this.§]Z§.adjustVertexData(this.§<!E§,0,4);
      }
      
      public function §2!?§() : void
      {
         var _loc1_:Rectangle = this.texture.§;i§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §0&§.setPosition(0,0,0);
         §0&§.setPosition(1,_loc2_,0);
         §0&§.setPosition(2,0,_loc3_);
         §0&§.setPosition(3,_loc2_,_loc3_);
         this.§5!0§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §0&§.setTexCoords(param1,param2.x,param2.y);
         this.§5!0§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §0&§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§-2§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§<!E§.copyTo(param1,param2,param3,this.§6!C§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§]Z§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§]Z§)
         {
            this.§]Z§ = param1;
            §0&§.setPremultipliedAlpha(this.§]Z§.premultipliedAlpha);
            this.§5!0§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§#!d§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§&S§.§=t§(param1))
         {
            this.§#!d§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§5!0§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§5!0§();
      }
      
      override public function render(param1:§4!b§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§]Z§,this.§#!d§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§6!C§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§6!C§ = this.§<n§;
         }
         else
         {
            this.§6!C§ = true;
         }
         super.color = param1;
         this.§5!0§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§]Z§.clippedBitmapData;
      }
   }
}
