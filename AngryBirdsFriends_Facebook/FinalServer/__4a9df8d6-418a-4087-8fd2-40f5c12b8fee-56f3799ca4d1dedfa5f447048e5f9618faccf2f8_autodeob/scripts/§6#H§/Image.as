package §6#H§
{
   import §"#z§.Texture;
   import §'!j§.Starling;
   import §'!j§.§^$$§;
   import §,#=§.§0C§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Image extends §,"$§
   {
      
      public static const §]X§:int = 0;
      
      public static const §6!4§:int = 1;
      
      public static const §>#z§:int = 2;
       
      
      private var §;!D§:Texture;
      
      private var §`C§:int;
      
      private var §9$@§:Boolean;
      
      private var § 7§:§0C§;
      
      protected var §"!<§:Boolean = true;
      
      private var §6#s§:Boolean;
      
      public function Image(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!param1 ? Number(param1.width) : Number(0);
         var _loc6_:Number = !!param1 ? Number(param1.height) : Number(0);
         var _loc7_:Boolean = !!param1 ? Boolean(param1.premultipliedAlpha) : true;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§9$@§ = param2;
         this.§;!D§ = param1;
         if(!param3)
         {
            this.§`C§ = !!Starling.§&"f§ ? int(§]X§) : int(§6!4§);
         }
         else
         {
            this.§`C§ = !!Starling.§&"f§ ? int(§6!4§) : int(§>#z§);
            this.§6#s§ = true;
         }
         this.§ 7§ = new §0C§(§-V§,_loc7_);
      }
      
      public static function §3E§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Number = 1) : Image
      {
         return new Image(Texture.§3E§(param1,param2,param3,false,param4));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§6#s§;
      }
      
      override protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         super.initializeVertexData(param1,param2);
         §0$9§.setTexCoords(0,0,0);
         §0$9§.setTexCoords(1,1,0);
         §0$9§.setTexCoords(2,0,1);
         §0$9§.setTexCoords(3,1,1);
      }
      
      public function §;"o§() : void
      {
         if(!this.§"!<§)
         {
            return;
         }
         var _loc1_:Rectangle = !!this.texture ? this.texture.frame : null;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : (!!this.texture ? Number(this.texture.width) : Number(0));
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : (!!this.texture ? Number(this.texture.height) : Number(0));
         this.initializeVertexData(_loc2_,_loc3_);
         §8#c§ = true;
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §0$9§.setTexCoords(param1,param2.x,param2.y);
         this.§"!<§ = true;
      }
      
      public function getTexCoords(param1:int, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         §0$9§.getTexCoords(param1,param2);
         return param2;
      }
      
      override public function copyVertexDataTo(param1:§0C§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         var _loc5_:int = §0$9§.numVertices;
         if(§8#c§ || this.§"!<§ || §@!&§)
         {
            §0$9§.copyTo(this.§ 7§,0,0,-1,§8#c§,param3,this.§"!<§);
            if(this.§"!<§)
            {
               if(this.§;!D§)
               {
                  this.§;!D§.adjustVertexData(this.§ 7§,0,_loc5_);
               }
            }
            this.§"!<§ = false;
            §@!&§ = false;
            §8#c§ = false;
         }
         this.§ 7§.copyTo(param1,param2,0,_loc5_,true,param3,true,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§;!D§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 != this.§;!D§)
         {
            if(this.§;!D§ && param1)
            {
               if(this.§;!D§.premultipliedAlpha != param1.premultipliedAlpha)
               {
                  §@!&§ = true;
               }
            }
            this.§;!D§ = param1;
            §0$9§.setPremultipliedAlpha(!!this.§;!D§ ? Boolean(this.§;!D§.premultipliedAlpha) : true);
            this.§"!<§ = true;
            this.§;"o§();
         }
      }
      
      public function get smoothing() : int
      {
         return this.§`C§;
      }
      
      public function set smoothing(param1:int) : void
      {
         if(param1 >= §]X§ && param1 <= §>#z§)
         {
            this.§`C§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + param1);
      }
      
      override public function render(param1:§^$$§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§;!D§,this.§`C§);
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
         if(this.§;!D§)
         {
            return this.§;!D§.clippedBitmapData;
         }
         return null;
      }
      
      override public function get visible() : Boolean
      {
         return super.visible && this.§;!D§ != null;
      }
      
      override public function get tinted() : Boolean
      {
         return this.§9$@§ || super.tinted;
      }
   }
}
