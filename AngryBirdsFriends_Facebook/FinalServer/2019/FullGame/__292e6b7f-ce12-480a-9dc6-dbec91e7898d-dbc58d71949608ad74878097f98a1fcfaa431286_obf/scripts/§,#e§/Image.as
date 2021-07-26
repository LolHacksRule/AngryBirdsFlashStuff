package §,#e§
{
   import §"#k§.§79§;
   import §"#k§.Starling;
   import §-#]§.Texture;
   import §8#p§.§>!B§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Image extends §;!`§
   {
      
      public static const §0#s§:int = 0;
      
      public static const §[!X§:int = 1;
      
      public static const §9$2§:int = 2;
       
      
      private var §[!-§:Texture;
      
      private var §1#y§:int;
      
      private var §!!h§:Boolean;
      
      private var §[##§:§>!B§;
      
      protected var §""f§:Boolean = true;
      
      private var §1!%§:Boolean;
      
      public function Image(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!param1 ? Number(param1.width) : Number(0);
         var _loc6_:Number = !!param1 ? Number(param1.height) : Number(0);
         var _loc7_:Boolean = !!param1 ? Boolean(param1.premultipliedAlpha) : true;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§!!h§ = param2;
         this.§[!-§ = param1;
         if(!param3)
         {
            this.§1#y§ = !!Starling.§1""§ ? int(§0#s§) : int(§[!X§);
         }
         else
         {
            this.§1#y§ = !!Starling.§1""§ ? int(§[!X§) : int(§9$2§);
            this.§1!%§ = true;
         }
         this.§[##§ = new §>!B§(§?"I§,_loc7_);
      }
      
      public static function §6#^§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Number = 1) : Image
      {
         return new Image(Texture.§6#^§(param1,param2,param3,false,param4));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§1!%§;
      }
      
      override protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         super.initializeVertexData(param1,param2);
         §?#9§.setTexCoords(0,0,0);
         §?#9§.setTexCoords(1,1,0);
         §?#9§.setTexCoords(2,0,1);
         §?#9§.setTexCoords(3,1,1);
      }
      
      public function §?!#§() : void
      {
         if(!this.§""f§)
         {
            return;
         }
         var _loc1_:Rectangle = !!this.texture ? this.texture.frame : null;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : (!!this.texture ? Number(this.texture.width) : Number(0));
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : (!!this.texture ? Number(this.texture.height) : Number(0));
         this.initializeVertexData(_loc2_,_loc3_);
         §'#0§ = true;
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §?#9§.setTexCoords(param1,param2.x,param2.y);
         this.§""f§ = true;
      }
      
      public function getTexCoords(param1:int, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         §?#9§.getTexCoords(param1,param2);
         return param2;
      }
      
      override public function copyVertexDataTo(param1:§>!B§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         var _loc5_:int = §?#9§.numVertices;
         if(§'#0§ || this.§""f§ || §9"2§)
         {
            §?#9§.copyTo(this.§[##§,0,0,-1,§'#0§,param3,this.§""f§);
            if(this.§""f§)
            {
               if(this.§[!-§)
               {
                  this.§[!-§.adjustVertexData(this.§[##§,0,_loc5_);
               }
            }
            this.§""f§ = false;
            §9"2§ = false;
            §'#0§ = false;
         }
         this.§[##§.copyTo(param1,param2,0,_loc5_,true,param3,true,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§[!-§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 != this.§[!-§)
         {
            if(this.§[!-§ && param1)
            {
               if(this.§[!-§.premultipliedAlpha != param1.premultipliedAlpha)
               {
                  §9"2§ = true;
               }
            }
            this.§[!-§ = param1;
            §?#9§.setPremultipliedAlpha(!!this.§[!-§ ? Boolean(this.§[!-§.premultipliedAlpha) : true);
            this.§""f§ = true;
            this.§?!#§();
         }
      }
      
      public function get smoothing() : int
      {
         return this.§1#y§;
      }
      
      public function set smoothing(param1:int) : void
      {
         if(param1 >= §0#s§ && param1 <= §9$2§)
         {
            this.§1#y§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + param1);
      }
      
      override public function render(param1:§79§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§[!-§,this.§1#y§);
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
         if(this.§[!-§)
         {
            return this.§[!-§.clippedBitmapData;
         }
         return null;
      }
      
      override public function get visible() : Boolean
      {
         return super.visible && this.§[!-§ != null;
      }
      
      override public function get tinted() : Boolean
      {
         return this.§!!h§ || super.tinted;
      }
   }
}
