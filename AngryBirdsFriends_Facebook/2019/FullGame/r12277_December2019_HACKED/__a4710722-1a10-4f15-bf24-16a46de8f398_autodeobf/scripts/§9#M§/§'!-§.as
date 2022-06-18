package §9#M§
{
   import §""4§.Texture;
   import §#Z§.Image;
   import §&§.Starling;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!-§
   {
       
      
      private var §+!E§:Texture;
      
      private var §+"P§:BitmapData;
      
      private var §+"@§:Rectangle;
      
      private var §6#a§:BitmapData;
      
      private var §1">§:int;
      
      private var §@l§:int;
      
      private var §6#q§:Number = 1.0;
      
      private var § "#§:Boolean;
      
      private var §8#k§:Texture;
      
      public function §'!-§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§+!E§ = param1;
         this.§+"P§ = param2;
         this.§+"@§ = param3.clone();
         this.§1">§ = param4;
         this.§@l§ = param5;
         this.§6#q§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§6#q§;
      }
      
      public function get texture() : Texture
      {
         if(this.§ "#§)
         {
            return this.§8#k§;
         }
         return this.§+!E§;
      }
      
      public function get pivotX() : int
      {
         return this.§1">§;
      }
      
      public function get pivotY() : int
      {
         return this.§@l§;
      }
      
      public function get width() : Number
      {
         return this.§+!E§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§+!E§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§6#a§)
         {
            this.§6#a§ = new BitmapData(this.§+"@§.width,this.§+"@§.height);
            this.§6#a§.copyPixels(this.§+"P§,this.§+"@§,new Point(0,0));
         }
         return this.§6#a§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§1">§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§@l§ = param1;
      }
      
      public function §<!U§(param1:Boolean = false, param2:Boolean = true) : Image
      {
         var _loc3_:Image = new Image(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§+!E§)
         {
            this.§+!E§.dispose();
            this.§+!E§ = null;
         }
         if(this.§8#k§)
         {
            this.§8#k§.dispose();
            this.§8#k§ = null;
         }
         if(this.§6#a§)
         {
            this.§6#a§.dispose();
            this.§6#a§ = null;
         }
         this.§+"P§ = null;
      }
      
      public function flipAnimation(param1:Boolean) : void
      {
         var _loc2_:BitmapData = null;
         var _loc3_:Matrix = null;
         if(param1)
         {
            if(!this.§8#k§)
            {
               _loc2_ = new BitmapData(this.§+!E§.width,this.§+!E§.height,true,0);
               _loc3_ = new Matrix(-1,0,0,1,this.§+!E§.width,0);
               _loc2_.draw(this.bitmapData,_loc3_,null,null,null,true);
               this.§8#k§ = Starling.§^!D§(_loc2_);
            }
         }
         this.§ "#§ = param1;
      }
   }
}
