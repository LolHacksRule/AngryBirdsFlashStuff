package §2G§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §2@§ extends Sprite
   {
      
      public static var §3"A§:§;"4§;
       
      
      protected var §;!%§:DisplayObjectContainer;
      
      public var §^#I§:String;
      
      protected var §4!Q§:Boolean;
      
      private var §]#`§:int;
      
      public function §2@§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§4!Q§ = param3;
         switch(param2)
         {
            case §?!s§.§[$0§:
               this.§]#`§ = 100;
               break;
            case §?!s§.NORMAL:
               this.§]#`§ = 100;
               break;
            case §?!s§.§'!n§:
            case §?!s§.§<"-§:
               this.§]#`§ = 50;
               break;
            default:
               this.§]#`§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§^#I§ = param1;
            this.§=$9§(param1);
         }
      }
      
      public function §?#Y§() : int
      {
         return this.§]#`§;
      }
      
      private function §=$9§(param1:String) : void
      {
         this.§^#I§ = param1;
         if(this.§;!%§ == null)
         {
            this.§;!%§ = new Sprite();
         }
         while(this.§;!%§.numChildren > 0)
         {
            this.§;!%§.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      public function dispose() : void
      {
      }
      
      protected function sendAvatarToRenderer() : void
      {
         §3"A§.render(this.§^#I§,this.renderAvatar,this.§?#Y§(),this.§4!Q§);
      }
      
      public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(this.§;!%§ == null)
         {
            this.§;!%§ = new Sprite();
         }
         while(this.§;!%§.numChildren > 0)
         {
            this.§;!%§.removeChildAt(0);
         }
         var _loc3_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§;!%§.addChild(_loc3_);
         _loc3_.x = -10;
         _loc3_.y = -10;
         addChild(this.§;!%§);
      }
   }
}
