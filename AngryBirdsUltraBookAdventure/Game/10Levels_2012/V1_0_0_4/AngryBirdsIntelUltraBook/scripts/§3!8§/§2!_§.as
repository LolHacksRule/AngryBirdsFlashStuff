package §3!8§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §2!_§ extends Sprite
   {
      
      public static var §9^§:§#!B§;
       
      
      private var §@!o§:DisplayObjectContainer;
      
      public var §-!Z§:String;
      
      private var §8!o§:Boolean;
      
      private var §2!I§:int;
      
      public function §2!_§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§8!o§ = param3;
         switch(param2)
         {
            case §%!5§.NORMAL:
               this.§2!I§ = 100;
               break;
            case §%!5§.§+a§:
               this.§2!I§ = 50;
               break;
            default:
               this.§2!I§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§-!Z§ = param1;
            this.§%M§(param1);
         }
      }
      
      public function §6_§() : int
      {
         return this.§2!I§;
      }
      
      private function §%M§(param1:String) : void
      {
         if(this.§@!o§ == null)
         {
            this.§@!o§ = new Sprite();
         }
         while(this.§@!o§.numChildren > 0)
         {
            this.§@!o§.removeChildAt(0);
         }
         §9^§.render(param1,this.§'!h§,this.§6_§(),this.§8!o§);
      }
      
      public function §'!h§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§@!o§.addChild(_loc2_);
         _loc2_.x = -10;
         _loc2_.y = -10;
         addChild(this.§@!o§);
      }
   }
}
