package §!6§
{
   import §""'§.Texture;
   import §#"l§.§ #b§;
   import §]"P§.§4!9§;
   import §]"P§.Starling;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Image extends §4";§
   {
      
      public static const §;!,§:int = 0;
      
      public static const §'#w§:int = 1;
      
      public static const §65§:int = 2;
       
      
      private var §;Z§:Texture;
      
      private var §5"8§:int;
      
      private var §-#+§:Boolean;
      
      private var §2!L§:§ #b§;
      
      protected var §#"O§:Boolean = true;
      
      private var §%#H§:Boolean;
      
      public function Image(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = !!param1 ? param1.frame : null) ? Number(_loc4_.width) : (!!param1 ? Number(param1.width) : Number(0));
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : (!!param1 ? Number(param1.height) : Number(0));
         var _loc7_:Boolean = !!param1 ? Boolean(param1.premultipliedAlpha) : true;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§-#+§ = param2;
         this.§;Z§ = param1;
         if(!param3)
         {
            this.§5"8§ = !!Starling.§^$?§ ? int(§;!,§) : int(§'#w§);
         }
         else
         {
            this.§5"8§ = !!Starling.§^$?§ ? int(§'#w§) : int(§65§);
            this.§%#H§ = true;
         }
         this.§2!L§ = new § #b§(§#!c§,_loc7_);
      }
      
      public static function §[!d§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Number = 1) : Image
      {
         return new Image(Texture.§[!d§(param1,param2,param3,false,param4));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§%#H§;
      }
      
      override protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         super.initializeVertexData(param1,param2);
         §[#7§.setTexCoords(0,0,0);
         §[#7§.setTexCoords(1,1,0);
         §[#7§.setTexCoords(2,0,1);
         §[#7§.setTexCoords(3,1,1);
      }
      
      public function §2#q§() : void
      {
         if(!this.§#"O§)
         {
            return;
         }
         var _loc1_:Rectangle = !!this.texture ? this.texture.frame : null;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : (!!this.texture ? Number(this.texture.width) : Number(0));
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : (!!this.texture ? Number(this.texture.height) : Number(0));
         this.initializeVertexData(_loc2_,_loc3_);
         §8!!§ = true;
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §[#7§.setTexCoords(param1,param2.x,param2.y);
         this.§#"O§ = true;
      }
      
      public function getTexCoords(param1:int, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         §[#7§.getTexCoords(param1,param2);
         return param2;
      }
      
      override public function copyVertexDataTo(param1:§ #b§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         var _loc5_:int = §[#7§.numVertices;
         if(§8!!§ || this.§#"O§ || §,!y§)
         {
            §[#7§.copyTo(this.§2!L§,0,0,-1,§8!!§,param3,this.§#"O§);
            if(this.§#"O§)
            {
               if(this.§;Z§)
               {
                  this.§;Z§.adjustVertexData(this.§2!L§,0,_loc5_);
               }
            }
            this.§#"O§ = false;
            §,!y§ = false;
            §8!!§ = false;
         }
         this.§2!L§.copyTo(param1,param2,0,_loc5_,true,param3,true,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§;Z§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 != this.§;Z§)
         {
            if(this.§;Z§ && param1)
            {
               if(this.§;Z§.premultipliedAlpha != param1.premultipliedAlpha)
               {
                  §,!y§ = true;
               }
            }
            this.§;Z§ = param1;
            §[#7§.setPremultipliedAlpha(!!this.§;Z§ ? Boolean(this.§;Z§.premultipliedAlpha) : true);
            this.§#"O§ = true;
            this.§2#q§();
         }
      }
      
      public function get smoothing() : int
      {
         return this.§5"8§;
      }
      
      public function set smoothing(param1:int) : void
      {
         if(param1 >= §;!,§ && param1 <= §65§)
         {
            this.§5"8§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + param1);
      }
      
      override public function render(param1:§4!9§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§;Z§,this.§5"8§);
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
         if(this.§;Z§)
         {
            return this.§;Z§.clippedBitmapData;
         }
         return null;
      }
      
      override public function get visible() : Boolean
      {
         return super.visible && this.§;Z§ != null;
      }
      
      override public function get tinted() : Boolean
      {
         return this.§-#+§ || super.tinted;
      }
   }
}
