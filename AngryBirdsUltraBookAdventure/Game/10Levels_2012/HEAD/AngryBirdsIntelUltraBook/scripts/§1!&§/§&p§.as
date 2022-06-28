package §1!&§
{
   import §"$§.RenderSupport;
   import §"$§.Starling;
   import §'_§.§'h§;
   import §'_§.Texture;
   import §@2§.VertexData;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&p§ extends §!!9§
   {
       
      
      private var §!!!§:Texture;
      
      private var §%U§:String;
      
      private var §!y§:Boolean;
      
      private var §,!+§:Boolean;
      
      private var §%k§:VertexData;
      
      private var §7j§:Boolean;
      
      public function §&p§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle = param1.frame;
         var _loc5_:Number = Boolean(_loc4_) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = Boolean(_loc4_) ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§!!!§ = param1;
         if(!param3)
         {
            this.§%U§ = !!Starling.isSoftware ? §'h§.NONE : §'h§.§?!4§;
         }
         else
         {
            this.§%U§ = !!Starling.isSoftware ? §'h§.§?!4§ : §'h§.§^`§;
            this.§7j§ = true;
         }
         this.§!y§ = param2;
         this.§,!+§ = this.§!y§;
         this.§%k§ = new VertexData(4,_loc7_);
         this.§#6§(true);
      }
      
      public static function §3!R§(param1:Context3D, param2:Bitmap) : §&p§
      {
         return new §&p§(Texture.§3!R§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§7j§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §%?§.setTexCoords(0,0,0);
         §%?§.setTexCoords(1,1,0);
         §%?§.setTexCoords(2,0,1);
         §%?§.setTexCoords(3,1,1);
      }
      
      private function §#6§(param1:Boolean = false) : void
      {
         §%?§.copyTo(this.§%k§,0,1,this.§!y§ || param1,null);
         this.§!!!§.adjustVertexData(this.§%k§,0,4);
      }
      
      public function §9!c§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = Boolean(_loc1_) ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = Boolean(_loc1_) ? Number(_loc1_.height) : Number(this.texture.height);
         §%?§.setPosition(0,0,0);
         §%?§.setPosition(1,_loc2_,0);
         §%?§.setPosition(2,0,_loc3_);
         §%?§.setPosition(3,_loc2_,_loc3_);
         this.§#6§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §%?§.setTexCoords(param1,param2.x,param2.y);
         this.§#6§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §%?§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§%k§.copyTo(param1,param2,param3,this.§!y§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§!!!§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§!!!§)
         {
            this.§!!!§ = param1;
            §%?§.setPremultipliedAlpha(this.§!!!§.premultipliedAlpha);
            this.§#6§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§%U§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§'h§.§ '§(param1))
         {
            this.§%U§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§#6§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§#6§();
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§!!!§,this.§%U§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§!y§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§!y§ = this.§,!+§;
         }
         else
         {
            this.§!y§ = true;
         }
         super.color = param1;
         this.§#6§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§!!!§.clippedBitmapData;
      }
   }
}
