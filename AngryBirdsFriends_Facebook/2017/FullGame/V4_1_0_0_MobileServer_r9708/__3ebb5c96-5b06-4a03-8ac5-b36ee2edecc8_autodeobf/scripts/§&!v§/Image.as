package §&!v§
{
   import §-"+§.Texture;
   import §9+§.Starling;
   import §9+§.§]"+§;
   import §>l§.§%"O§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Image extends §0"s§
   {
      
      public static const §&#=§:int = 0;
      
      public static const §@!v§:int = 1;
      
      public static const §%"Y§:int = 2;
       
      
      private var §9$0§:Texture;
      
      private var §7#F§:int;
      
      private var §5#D§:Boolean;
      
      private var §-`§:§%"O§;
      
      protected var §>X§:Boolean = true;
      
      private var §=#h§:Boolean;
      
      public function Image(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!param1 ? Number(param1.width) : Number(0);
         var _loc6_:Number = !!param1 ? Number(param1.height) : Number(0);
         var _loc7_:Boolean = !!param1 ? Boolean(param1.premultipliedAlpha) : true;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§5#D§ = param2;
         this.§9$0§ = param1;
         if(!param3)
         {
            this.§7#F§ = !!Starling.§-m§ ? int(§&#=§) : int(§@!v§);
         }
         else
         {
            this.§7#F§ = !!Starling.§-m§ ? int(§@!v§) : int(§%"Y§);
            this.§=#h§ = true;
         }
         this.§-`§ = new §%"O§(§!!f§,_loc7_);
      }
      
      public static function §2O§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Number = 1) : Image
      {
         return new Image(Texture.§2O§(param1,param2,param3,false,param4));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§=#h§;
      }
      
      override protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         super.initializeVertexData(param1,param2);
         §4Z§.setTexCoords(0,0,0);
         §4Z§.setTexCoords(1,1,0);
         §4Z§.setTexCoords(2,0,1);
         §4Z§.setTexCoords(3,1,1);
      }
      
      public function §%!=§() : void
      {
         if(!this.§>X§)
         {
            return;
         }
         var _loc1_:Rectangle = !!this.texture ? this.texture.frame : null;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : (!!this.texture ? Number(this.texture.width) : Number(0));
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : (!!this.texture ? Number(this.texture.height) : Number(0));
         this.initializeVertexData(_loc2_,_loc3_);
         §2#x§ = true;
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §4Z§.setTexCoords(param1,param2.x,param2.y);
         this.§>X§ = true;
      }
      
      public function getTexCoords(param1:int, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         §4Z§.getTexCoords(param1,param2);
         return param2;
      }
      
      override public function copyVertexDataTo(param1:§%"O§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         var _loc5_:int = §4Z§.numVertices;
         if(§2#x§ || this.§>X§ || §%!#§)
         {
            §4Z§.copyTo(this.§-`§,0,0,-1,§2#x§,param3,this.§>X§);
            if(this.§>X§)
            {
               if(this.§9$0§)
               {
                  this.§9$0§.adjustVertexData(this.§-`§,0,_loc5_);
               }
            }
            this.§>X§ = false;
            §%!#§ = false;
            §2#x§ = false;
         }
         this.§-`§.copyTo(param1,param2,0,_loc5_,true,param3,true,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§9$0§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 != this.§9$0§)
         {
            if(this.§9$0§ && param1)
            {
               if(this.§9$0§.premultipliedAlpha != param1.premultipliedAlpha)
               {
                  §%!#§ = true;
               }
            }
            this.§9$0§ = param1;
            §4Z§.setPremultipliedAlpha(!!this.§9$0§ ? Boolean(this.§9$0§.premultipliedAlpha) : true);
            this.§>X§ = true;
            this.§%!=§();
         }
      }
      
      public function get smoothing() : int
      {
         return this.§7#F§;
      }
      
      public function set smoothing(param1:int) : void
      {
         if(param1 >= §&#=§ && param1 <= §%"Y§)
         {
            this.§7#F§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + param1);
      }
      
      override public function render(param1:§]"+§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§9$0§,this.§7#F§);
      }
      
      override public function set color(param1:uint) : void
      {
         super.color = param1;
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         if(this.§9$0§)
         {
            return this.§9$0§.clippedBitmapData;
         }
         return null;
      }
      
      override public function get visible() : Boolean
      {
         return super.visible && this.§9$0§ != null;
      }
      
      override public function get tinted() : Boolean
      {
         return this.§5#D§ || super.tinted;
      }
   }
}
