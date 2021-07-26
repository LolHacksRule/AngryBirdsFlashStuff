package §6! §
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §9!t§ extends Sprite
   {
      
      public static var §4I§:§<h§;
       
      
      protected var §1""§:DisplayObjectContainer;
      
      public var §9",§:String;
      
      protected var §[G§:Boolean;
      
      private var §<!B§:int;
      
      public function §9!t§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§[G§ = param3;
         switch(param2)
         {
            case §@!k§.NORMAL:
               this.§<!B§ = 100;
               break;
            case §@!k§.§8v§:
               this.§<!B§ = 50;
               break;
            default:
               this.§<!B§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§9",§ = param1;
            this.§;J§(param1);
         }
      }
      
      public function §[!s§() : int
      {
         return this.§<!B§;
      }
      
      private function §;J§(param1:String) : void
      {
         this.§9",§ = param1;
         if(this.§1""§ == null)
         {
            this.§1""§ = new Sprite();
         }
         while(this.§1""§.numChildren > 0)
         {
            this.§1""§.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      protected function sendAvatarToRenderer() : void
      {
         if(§4I§)
         {
            §4I§.render(this.§9",§,this.renderAvatar,this.§[!s§(),this.§[G§);
         }
      }
      
      public function renderAvatar(param1:BitmapData) : void
      {
         if(this.§1""§ == null)
         {
            this.§1""§ = new Sprite();
         }
         while(this.§1""§.numChildren > 0)
         {
            this.§1""§.removeChildAt(0);
         }
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§1""§.addChild(_loc2_);
         _loc2_.x = -10;
         _loc2_.y = -10;
         addChild(this.§1""§);
      }
   }
}
