package §?^§
{
   import §&p§.§'_§;
   import §&p§.§`G§;
   import §8f§.§+!A§;
   import each.§1"§;
   import each.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8!?§ extends §?C§
   {
       
      
      private var §]s§:Texture;
      
      private var §@L§:String;
      
      private var §4W§:Boolean;
      
      private var §<§:Boolean;
      
      private var §@!B§:§+!A§;
      
      private var §>&§:Boolean;
      
      public function §8!?§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§,!3§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§]s§ = param1;
         if(!param3)
         {
            this.§@L§ = !!§'_§.§;'§ ? §1"§.NONE : §1"§.§3&§;
         }
         else
         {
            this.§@L§ = !!§'_§.§;'§ ? §1"§.§3&§ : §1"§.§2!<§;
            this.§>&§ = true;
         }
         this.§4W§ = param2;
         this.§<§ = this.§4W§;
         this.§@!B§ = new §+!A§(4,_loc7_);
         this.§7k§(true);
      }
      
      public static function § !3§(param1:Context3D, param2:Bitmap) : §8!?§
      {
         return new §8!?§(Texture.§ !3§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§>&§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §5!@§.setTexCoords(0,0,0);
         §5!@§.setTexCoords(1,1,0);
         §5!@§.setTexCoords(2,0,1);
         §5!@§.setTexCoords(3,1,1);
      }
      
      private function §7k§(param1:Boolean = false) : void
      {
         §5!@§.copyTo(this.§@!B§,0,1,this.§4W§ || param1,null);
         this.§]s§.adjustVertexData(this.§@!B§,0,4);
      }
      
      public function §48§() : void
      {
         var _loc1_:Rectangle = this.texture.§,!3§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §5!@§.setPosition(0,0,0);
         §5!@§.setPosition(1,_loc2_,0);
         §5!@§.setPosition(2,0,_loc3_);
         §5!@§.setPosition(3,_loc2_,_loc3_);
         this.§7k§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §5!@§.setTexCoords(param1,param2.x,param2.y);
         this.§7k§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §5!@§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§+!A§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§@!B§.copyTo(param1,param2,param3,this.§4W§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§]s§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§]s§)
         {
            this.§]s§ = param1;
            §5!@§.setPremultipliedAlpha(this.§]s§.premultipliedAlpha);
            this.§7k§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§@L§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§1"§.isValid(param1))
         {
            this.§@L§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§7k§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§7k§();
      }
      
      override public function render(param1:§`G§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§]s§,this.§@L§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§4W§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§4W§ = this.§<§;
         }
         else
         {
            this.§4W§ = true;
         }
         super.color = param1;
         this.§7k§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§]s§.clippedBitmapData;
      }
   }
}
