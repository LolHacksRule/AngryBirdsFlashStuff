package §9$§
{
   import §1&§.Texture;
   import §4"D§.§,#@§;
   import §^a§.§'"1§;
   import §^a§.Starling;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Image extends §],§
   {
      
      public static const §="8§:int = 0;
      
      public static const §>!U§:int = 1;
      
      public static const §-#`§:int = 2;
       
      
      private var §3!L§:Texture;
      
      private var §4$8§:int;
      
      private var §&#<§:Boolean;
      
      private var §-e§:§,#@§;
      
      protected var §^#4§:Boolean = true;
      
      private var §1c§:Boolean;
      
      public function Image(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = !!param1 ? param1.frame : null) ? Number(_loc4_.width) : (!!param1 ? Number(param1.width) : Number(0));
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : (!!param1 ? Number(param1.height) : Number(0));
         var _loc7_:Boolean = !!param1 ? Boolean(param1.premultipliedAlpha) : true;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§&#<§ = param2;
         this.§3!L§ = param1;
         if(!param3)
         {
            this.§4$8§ = !!Starling.§ #4§ ? int(§="8§) : int(§>!U§);
         }
         else
         {
            this.§4$8§ = !!Starling.§ #4§ ? int(§>!U§) : int(§-#`§);
            this.§1c§ = true;
         }
         this.§-e§ = new §,#@§(§%"t§,_loc7_);
      }
      
      public static function §?v§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Number = 1) : Image
      {
         return new Image(Texture.§?v§(param1,param2,param3,false,param4));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§1c§;
      }
      
      override protected function initializeVertexData(param1:Number, param2:Number) : void
      {
         super.initializeVertexData(param1,param2);
         §'#B§.setTexCoords(0,0,0);
         §'#B§.setTexCoords(1,1,0);
         §'#B§.setTexCoords(2,0,1);
         §'#B§.setTexCoords(3,1,1);
      }
      
      public function §1!%§() : void
      {
         if(!this.§^#4§)
         {
            return;
         }
         var _loc1_:Rectangle = !!this.texture ? this.texture.frame : null;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : (!!this.texture ? Number(this.texture.width) : Number(0));
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : (!!this.texture ? Number(this.texture.height) : Number(0));
         this.initializeVertexData(_loc2_,_loc3_);
         §`"!§ = true;
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §'#B§.setTexCoords(param1,param2.x,param2.y);
         this.§^#4§ = true;
      }
      
      public function getTexCoords(param1:int, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         §'#B§.getTexCoords(param1,param2);
         return param2;
      }
      
      override public function copyVertexDataTo(param1:§,#@§, param2:int, param3:Boolean, param4:Matrix = null) : void
      {
         var _loc5_:int = §'#B§.numVertices;
         if(§`"!§ || this.§^#4§ || §,#f§)
         {
            §'#B§.copyTo(this.§-e§,0,0,-1,§`"!§,param3,this.§^#4§);
            if(this.§^#4§)
            {
               if(this.§3!L§)
               {
                  this.§3!L§.adjustVertexData(this.§-e§,0,_loc5_);
               }
            }
            this.§^#4§ = false;
            §,#f§ = false;
            §`"!§ = false;
         }
         this.§-e§.copyTo(param1,param2,0,_loc5_,true,param3,true,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§3!L§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 != this.§3!L§)
         {
            if(this.§3!L§ && param1)
            {
               if(this.§3!L§.premultipliedAlpha != param1.premultipliedAlpha)
               {
                  §,#f§ = true;
               }
            }
            this.§3!L§ = param1;
            §'#B§.setPremultipliedAlpha(!!this.§3!L§ ? Boolean(this.§3!L§.premultipliedAlpha) : true);
            this.§^#4§ = true;
            this.§1!%§();
         }
      }
      
      public function get smoothing() : int
      {
         return this.§4$8§;
      }
      
      public function set smoothing(param1:int) : void
      {
         if(param1 >= §="8§ && param1 <= §-#`§)
         {
            this.§4$8§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + param1);
      }
      
      override public function render(param1:§'"1§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§3!L§,this.§4$8§);
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
         if(this.§3!L§)
         {
            return this.§3!L§.clippedBitmapData;
         }
         return null;
      }
      
      override public function get visible() : Boolean
      {
         return super.visible && this.§3!L§ != null;
      }
      
      override public function get tinted() : Boolean
      {
         return this.§&#<§ || super.tinted;
      }
   }
}
