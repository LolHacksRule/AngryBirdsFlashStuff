package §#Z§
{
   import §""4§.Texture;
   import §&§.§""F§;
   import §&§.Starling;
   import §0"D§.§,4§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Image extends §6J§
   {
      
      public static const §"m§:int = 0;
      
      public static const §3"6§:int = 1;
      
      public static const §=o§:int = 2;
       
      
      private var §+!E§:Texture;
      
      private var §4"U§:int;
      
      private var §try§:Boolean;
      
      private var §5!P§:§,4§;
      
      protected var §##]§:Boolean = true;
      
      private var §-"Z§:Boolean;
      
      public function Image(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = !!param1 ? param1.frame : null) ? Number(_loc4_.width) : (!!param1 ? Number(param1.width) : Number(0));
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : (!!param1 ? Number(param1.height) : Number(0));
         var _loc7_:Boolean = !!param1 ? Boolean(param1.premultipliedAlpha) : true;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§try§ = param2;
         this.§+!E§ = param1;
         if(!param3)
         {
            this.§4"U§ = !!Starling.§," § ? int(§"m§) : int(§3"6§);
         }
         else
         {
            this.§4"U§ = !!Starling.§," § ? int(§3"6§) : int(§=o§);
            this.§-"Z§ = true;
         }
         this.§5!P§ = new §,4§(§9z§,_loc7_);
      }
      
      public static function §4J§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Number = 1) : Image
      {
         return new Image(Texture.§4J§(param1,param2,param3,false,param4));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§-"Z§;
      }
      
      override protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         super.initializeVertexData(param1,param2);
         §3!-§.setTexCoords(0,0,0);
         §3!-§.setTexCoords(1,1,0);
         §3!-§.setTexCoords(2,0,1);
         §3!-§.setTexCoords(3,1,1);
      }
      
      public function §"$"§() : void
      {
         if(!this.§##]§)
         {
            return;
         }
         var _loc1_:Rectangle = !!this.texture ? this.texture.frame : null;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : (!!this.texture ? Number(this.texture.width) : Number(0));
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : (!!this.texture ? Number(this.texture.height) : Number(0));
         this.initializeVertexData(_loc2_,_loc3_);
         §>#k§ = true;
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §3!-§.setTexCoords(param1,param2.x,param2.y);
         this.§##]§ = true;
      }
      
      public function getTexCoords(param1:int, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         §3!-§.getTexCoords(param1,param2);
         return param2;
      }
      
      override public function copyVertexDataTo(param1:§,4§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         var _loc5_:int = §3!-§.numVertices;
         if(§>#k§ || this.§##]§ || §&"a§)
         {
            §3!-§.copyTo(this.§5!P§,0,0,-1,§>#k§,param3,this.§##]§);
            if(this.§##]§)
            {
               if(this.§+!E§)
               {
                  this.§+!E§.adjustVertexData(this.§5!P§,0,_loc5_);
               }
            }
            this.§##]§ = false;
            §&"a§ = false;
            §>#k§ = false;
         }
         this.§5!P§.copyTo(param1,param2,0,_loc5_,true,param3,true,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§+!E§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 != this.§+!E§)
         {
            if(this.§+!E§ && param1)
            {
               if(this.§+!E§.premultipliedAlpha != param1.premultipliedAlpha)
               {
                  §&"a§ = true;
               }
            }
            this.§+!E§ = param1;
            §3!-§.setPremultipliedAlpha(!!this.§+!E§ ? Boolean(this.§+!E§.premultipliedAlpha) : true);
            this.§##]§ = true;
            this.§"$"§();
         }
      }
      
      public function get smoothing() : int
      {
         return this.§4"U§;
      }
      
      public function set smoothing(param1:int) : void
      {
         if(param1 >= §"m§ && param1 <= §=o§)
         {
            this.§4"U§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + param1);
      }
      
      override public function render(param1:§""F§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§+!E§,this.§4"U§);
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
         if(this.§+!E§)
         {
            return this.§+!E§.clippedBitmapData;
         }
         return null;
      }
      
      override public function get visible() : Boolean
      {
         return super.visible && this.§+!E§ != null;
      }
      
      override public function get tinted() : Boolean
      {
         return this.§try§ || super.tinted;
      }
   }
}
