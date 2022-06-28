package §%t§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §1§ extends Sprite
   {
      
      public static var §-X§:§>!N§;
       
      
      private var §&!B§:DisplayObjectContainer;
      
      public var §>o§:String;
      
      private var §]!H§:Boolean;
      
      private var §&Q§:int;
      
      public function §1§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§]!H§ = param3;
         switch(param2)
         {
            case §?!a§.NORMAL:
               this.§&Q§ = 100;
               break;
            case §?!a§.§+6§:
               this.§&Q§ = 50;
               break;
            default:
               this.§&Q§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§>o§ = param1;
            this.§?!W§(param1);
         }
      }
      
      public function §<_§() : int
      {
         return this.§&Q§;
      }
      
      private function §?!W§(param1:String) : void
      {
         if(this.§&!B§ == null)
         {
            this.§&!B§ = new Sprite();
         }
         while(this.§&!B§.numChildren > 0)
         {
            this.§&!B§.removeChildAt(0);
         }
         §-X§.render(param1,this.§!F§,this.§<_§(),this.§]!H§);
      }
      
      public function §!F§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§&!B§.addChild(_loc2_);
         _loc2_.x = -10;
         _loc2_.y = -10;
         addChild(this.§&!B§);
      }
   }
}
