package §&!5§
{
   import §"4§.§+s§;
   import §"4§.§<h§;
   import §%W§.§ true§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §switch§.Texture;
   import §switch§.§[&§;
   
   public class §'!$§ extends §2G§
   {
       
      
      private var §#!X§:Texture;
      
      private var §5!1§:String;
      
      private var §[k§:Boolean;
      
      private var §1!"§:Boolean;
      
      private var §8!4§:§ true§;
      
      private var §;!]§:Boolean;
      
      public function §'!$§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§;I§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§#!X§ = param1;
         if(!param3)
         {
            this.§5!1§ = !!§<h§.§+"§ ? §[&§.NONE : §[&§.§47§;
         }
         else
         {
            this.§5!1§ = !!§<h§.§+"§ ? §[&§.§47§ : §[&§.native;
            this.§;!]§ = true;
         }
         this.§[k§ = param2;
         this.§1!"§ = this.§[k§;
         this.§8!4§ = new § true§(4,_loc7_);
         this.§]!R§(true);
      }
      
      public static function §9!8§(param1:Context3D, param2:Bitmap) : §'!$§
      {
         return new §'!$§(Texture.§9!8§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§;!]§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         § !,§.setTexCoords(0,0,0);
         § !,§.setTexCoords(1,1,0);
         § !,§.setTexCoords(2,0,1);
         § !,§.setTexCoords(3,1,1);
      }
      
      private function §]!R§(param1:Boolean = false) : void
      {
         § !,§.copyTo(this.§8!4§,0,1,this.§[k§ || param1,null);
         this.§#!X§.adjustVertexData(this.§8!4§,0,4);
      }
      
      public function §%!=§() : void
      {
         var _loc1_:Rectangle = this.texture.§;I§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         § !,§.setPosition(0,0,0);
         § !,§.setPosition(1,_loc2_,0);
         § !,§.setPosition(2,0,_loc3_);
         § !,§.setPosition(3,_loc2_,_loc3_);
         this.§]!R§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         § !,§.setTexCoords(param1,param2.x,param2.y);
         this.§]!R§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         § !,§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§ true§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§8!4§.copyTo(param1,param2,param3,this.§[k§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§#!X§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§#!X§)
         {
            this.§#!X§ = param1;
            § !,§.setPremultipliedAlpha(this.§#!X§.premultipliedAlpha);
            this.§]!R§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§5!1§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§[&§.§ 3§(param1))
         {
            this.§5!1§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§]!R§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§]!R§();
      }
      
      override public function render(param1:§+s§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§#!X§,this.§5!1§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§[k§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§[k§ = this.§1!"§;
         }
         else
         {
            this.§[k§ = true;
         }
         super.color = param1;
         this.§]!R§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§#!X§.clippedBitmapData;
      }
   }
}
