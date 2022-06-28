package §_-hX§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §_-WC§ extends Sprite
   {
      
      public static var §_-ic§:§_-iS§;
       
      
      private var §_-Dy§:DisplayObjectContainer;
      
      public var §_-wl§:String;
      
      private var §_-tb§:Boolean;
      
      private var §_-3m§:int;
      
      public function §_-WC§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§_-tb§ = param3;
         switch(param2)
         {
            case §_-bT§.NORMAL:
               this.§_-3m§ = 100;
               break;
            case §_-bT§.§_-N2§:
               this.§_-3m§ = 50;
               break;
            default:
               this.§_-3m§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§_-wl§ = param1;
            this.§_-0EN§(param1);
         }
      }
      
      public function §_-Bk§() : int
      {
         return this.§_-3m§;
      }
      
      private function §_-0EN§(param1:String) : void
      {
         if(this.§_-Dy§ == null)
         {
            this.§_-Dy§ = new Sprite();
         }
         while(this.§_-Dy§.numChildren > 0)
         {
            this.§_-Dy§.removeChildAt(0);
         }
         §_-ic§.render(param1,this.§_-L5§,this.§_-Bk§(),this.§_-tb§);
      }
      
      public function §_-L5§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§_-Dy§.addChild(_loc2_);
         _loc2_.x = -10;
         _loc2_.y = -10;
         addChild(this.§_-Dy§);
      }
   }
}
