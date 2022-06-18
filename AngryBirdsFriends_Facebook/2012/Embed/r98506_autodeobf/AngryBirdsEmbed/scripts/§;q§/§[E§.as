package §;q§
{
   import §2c§.§&H§;
   import §5@§.§3w§;
   import §5@§.Texture;
   import §;%§.§8S§;
   import §;%§.§8o§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[E§ extends §-!>§
   {
       
      
      private var §+Z§:Texture;
      
      private var §50§:String;
      
      private var §@!%§:Boolean;
      
      private var §#o§:Boolean;
      
      private var §^,§:§&H§;
      
      private var §7!%§:Boolean;
      
      public function §[E§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§`!9§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§+Z§ = param1;
         if(!param3)
         {
            this.§50§ = !!§8o§.§^H§ ? §3w§.NONE : §3w§.§-!,§;
         }
         else
         {
            this.§50§ = !!§8o§.§^H§ ? §3w§.§-!,§ : §3w§.§0!,§;
            this.§7!%§ = true;
         }
         this.§@!%§ = param2;
         this.§#o§ = this.§@!%§;
         this.§^,§ = new §&H§(4,_loc7_);
         this.§=W§(true);
      }
      
      public static function §?=§(param1:Context3D, param2:Bitmap) : §[E§
      {
         return new §[E§(Texture.§?=§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§7!%§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §2!@§.setTexCoords(0,0,0);
         §2!@§.setTexCoords(1,1,0);
         §2!@§.setTexCoords(2,0,1);
         §2!@§.setTexCoords(3,1,1);
      }
      
      private function §=W§(param1:Boolean = false) : void
      {
         §2!@§.copyTo(this.§^,§,0,1,this.§@!%§ || param1,null);
         this.§+Z§.adjustVertexData(this.§^,§,0,4);
      }
      
      public function §;!I§() : void
      {
         var _loc1_:Rectangle = this.texture.§`!9§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §2!@§.setPosition(0,0,0);
         §2!@§.setPosition(1,_loc2_,0);
         §2!@§.setPosition(2,0,_loc3_);
         §2!@§.setPosition(3,_loc2_,_loc3_);
         this.§=W§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §2!@§.setTexCoords(param1,param2.x,param2.y);
         this.§=W§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §2!@§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§&H§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§^,§.copyTo(param1,param2,param3,this.§@!%§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§+Z§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§+Z§)
         {
            this.§+Z§ = param1;
            §2!@§.setPremultipliedAlpha(this.§+Z§.premultipliedAlpha);
            this.§=W§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§50§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§3w§.isValid(param1))
         {
            this.§50§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§=W§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§=W§();
      }
      
      override public function render(param1:§8S§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§+Z§,this.§50§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§@!%§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§@!%§ = this.§#o§;
         }
         else
         {
            this.§@!%§ = true;
         }
         super.color = param1;
         this.§=W§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§+Z§.clippedBitmapData;
      }
   }
}
