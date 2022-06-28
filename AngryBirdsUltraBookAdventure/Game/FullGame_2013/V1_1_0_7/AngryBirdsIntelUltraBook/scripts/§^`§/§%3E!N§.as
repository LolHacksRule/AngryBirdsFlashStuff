package §^`§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §>!N§ extends Sprite
   {
      
      public static var §!!e§:§;!D§;
       
      
      private var § !N§:DisplayObjectContainer;
      
      public var §9!l§:String;
      
      private var §8u§:Boolean;
      
      private var §#!@§:int;
      
      public function §>!N§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§8u§ = param3;
         switch(param2)
         {
            case §14§.NORMAL:
               this.§#!@§ = 100;
               break;
            case §14§.§93§:
               this.§#!@§ = 50;
               break;
            default:
               this.§#!@§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§9!l§ = param1;
            this.§`y§(param1);
         }
      }
      
      public function §1!I§() : int
      {
         return this.§#!@§;
      }
      
      private function §`y§(param1:String) : void
      {
         if(this.§ !N§ == null)
         {
            this.§ !N§ = new Sprite();
         }
         while(this.§ !N§.numChildren > 0)
         {
            this.§ !N§.removeChildAt(0);
         }
         §!!e§.render(param1,this.§>!t§,this.§1!I§(),this.§8u§);
      }
      
      public function §>!t§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§ !N§.addChild(_loc2_);
         _loc2_.x = -10;
         _loc2_.y = -10;
         addChild(this.§ !N§);
      }
   }
}
