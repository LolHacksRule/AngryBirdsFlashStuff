package §@"§
{
   import §1&§.Texture;
   import §9$§.Image;
   import §^a§.Starling;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+!3§
   {
       
      
      private var §3!L§:Texture;
      
      private var §#W§:BitmapData;
      
      private var §%$6§:Rectangle;
      
      private var §&#b§:BitmapData;
      
      private var §7#l§:int;
      
      private var §>D§:int;
      
      private var §]"?§:Number = 1.0;
      
      private var §-?§:Boolean;
      
      private var §;#T§:Texture;
      
      public function §+!3§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§3!L§ = param1;
         this.§#W§ = param2;
         this.§%$6§ = param3.clone();
         this.§7#l§ = param4;
         this.§>D§ = param5;
         this.§]"?§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§]"?§;
      }
      
      public function get texture() : Texture
      {
         if(this.§-?§)
         {
            return this.§;#T§;
         }
         return this.§3!L§;
      }
      
      public function get pivotX() : int
      {
         return this.§7#l§;
      }
      
      public function get pivotY() : int
      {
         return this.§>D§;
      }
      
      public function get width() : Number
      {
         return this.§3!L§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§3!L§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§&#b§)
         {
            this.§&#b§ = new BitmapData(this.§%$6§.width,this.§%$6§.height);
            this.§&#b§.copyPixels(this.§#W§,this.§%$6§,new Point(0,0));
         }
         return this.§&#b§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§7#l§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§>D§ = param1;
      }
      
      public function §]$1§(param1:Boolean = false, param2:Boolean = true) : Image
      {
         var _loc3_:Image = new Image(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§3!L§)
         {
            this.§3!L§.dispose();
            this.§3!L§ = null;
         }
         if(this.§;#T§)
         {
            this.§;#T§.dispose();
            this.§;#T§ = null;
         }
         if(this.§&#b§)
         {
            this.§&#b§.dispose();
            this.§&#b§ = null;
         }
         this.§#W§ = null;
      }
      
      public function flipAnimation(param1:Boolean) : void
      {
         var _loc2_:BitmapData = null;
         var _loc3_:Matrix = null;
         if(param1)
         {
            if(!this.§;#T§)
            {
               _loc2_ = new BitmapData(this.§3!L§.width,this.§3!L§.height,true,0);
               _loc3_ = new Matrix(-1,0,0,1,this.§3!L§.width,0);
               _loc2_.draw(this.bitmapData,_loc3_,null,null,null,true);
               this.§;#T§ = Starling.§&# §(_loc2_);
            }
         }
         this.§-?§ = param1;
      }
   }
}
