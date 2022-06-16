package §^"S§
{
   import §5!D§.§`e§;
   import §9$;§.Texture;
   import §?"e§.Starling;
   import §?"e§.§[!Z§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Image extends §'#E§
   {
      
      public static const §^"9§:int = 0;
      
      public static const §'#y§:int = 1;
      
      public static const §%!%§:int = 2;
       
      
      private var §6!4§:Texture;
      
      private var §7V§:int;
      
      private var §[#v§:Boolean;
      
      private var §5!=§:§`e§;
      
      protected var §`!F§:Boolean = true;
      
      private var §@i§:Boolean;
      
      public function Image(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!param1 ? Number(param1.width) : Number(0);
         var _loc6_:Number = !!param1 ? Number(param1.height) : Number(0);
         var _loc7_:Boolean = !!param1 ? Boolean(param1.premultipliedAlpha) : true;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§[#v§ = param2;
         this.§6!4§ = param1;
         if(!param3)
         {
            this.§7V§ = !!Starling.§`"J§ ? int(§^"9§) : int(§'#y§);
         }
         else
         {
            this.§7V§ = !!Starling.§`"J§ ? int(§'#y§) : int(§%!%§);
            this.§@i§ = true;
         }
         this.§5!=§ = new §`e§(§7#%§,_loc7_);
      }
      
      public static function §%U§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Number = 1) : Image
      {
         return new Image(Texture.§%U§(param1,param2,param3,false,param4));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§@i§;
      }
      
      override protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         super.initializeVertexData(param1,param2);
         §3!n§.setTexCoords(0,0,0);
         §3!n§.setTexCoords(1,1,0);
         §3!n§.setTexCoords(2,0,1);
         §3!n§.setTexCoords(3,1,1);
      }
      
      public function §>"C§() : void
      {
         if(!this.§`!F§)
         {
            return;
         }
         var _loc1_:Rectangle = !!this.texture ? this.texture.frame : null;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : (!!this.texture ? Number(this.texture.width) : Number(0));
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : (!!this.texture ? Number(this.texture.height) : Number(0));
         this.initializeVertexData(_loc2_,_loc3_);
         §,[§ = true;
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §3!n§.setTexCoords(param1,param2.x,param2.y);
         this.§`!F§ = true;
      }
      
      public function getTexCoords(param1:int, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         §3!n§.getTexCoords(param1,param2);
         return param2;
      }
      
      override public function copyVertexDataTo(param1:§`e§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         var _loc5_:int = §3!n§.numVertices;
         if(§,[§ || this.§`!F§ || §&#?§)
         {
            §3!n§.copyTo(this.§5!=§,0,0,-1,§,[§,param3,this.§`!F§);
            if(this.§`!F§)
            {
               if(this.§6!4§)
               {
                  this.§6!4§.adjustVertexData(this.§5!=§,0,_loc5_);
               }
            }
            this.§`!F§ = false;
            §&#?§ = false;
            §,[§ = false;
         }
         this.§5!=§.copyTo(param1,param2,0,_loc5_,true,param3,true,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§6!4§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 != this.§6!4§)
         {
            if(this.§6!4§ && param1)
            {
               if(this.§6!4§.premultipliedAlpha != param1.premultipliedAlpha)
               {
                  §&#?§ = true;
               }
            }
            this.§6!4§ = param1;
            §3!n§.setPremultipliedAlpha(!!this.§6!4§ ? Boolean(this.§6!4§.premultipliedAlpha) : true);
            this.§`!F§ = true;
            this.§>"C§();
         }
      }
      
      public function get smoothing() : int
      {
         return this.§7V§;
      }
      
      public function set smoothing(param1:int) : void
      {
         if(param1 >= §^"9§ && param1 <= §%!%§)
         {
            this.§7V§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + param1);
      }
      
      override public function render(param1:§[!Z§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§6!4§,this.§7V§);
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
         if(this.§6!4§)
         {
            return this.§6!4§.clippedBitmapData;
         }
         return null;
      }
      
      override public function get visible() : Boolean
      {
         return super.visible && this.§6!4§ != null;
      }
      
      override public function get tinted() : Boolean
      {
         return this.§[#v§ || super.tinted;
      }
   }
}
