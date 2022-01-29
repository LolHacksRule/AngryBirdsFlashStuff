package §+$?§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §="@§ extends Sprite
   {
      
      public static var §[#Y§:§2!p§;
       
      
      protected var § g§:DisplayObjectContainer;
      
      public var §["S§:String;
      
      protected var §#+§:Boolean;
      
      private var §;!L§:int;
      
      public function §="@§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§#+§ = param3;
         switch(param2)
         {
            case §4!+§.§,"7§:
               this.§;!L§ = 100;
               break;
            case §4!+§.NORMAL:
               this.§;!L§ = 100;
               break;
            case §4!+§.§+"N§:
            case §4!+§.§<!j§:
               this.§;!L§ = 50;
               break;
            default:
               this.§;!L§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§["S§ = param1;
            this.§>!0§(param1);
         }
      }
      
      public function §"u§() : int
      {
         return this.§;!L§;
      }
      
      private function §>!0§(param1:String) : void
      {
         this.§["S§ = param1;
         if(this.§ g§ == null)
         {
            this.§ g§ = new Sprite();
         }
         while(this.§ g§.numChildren > 0)
         {
            this.§ g§.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      public function dispose() : void
      {
      }
      
      protected function sendAvatarToRenderer() : void
      {
         §[#Y§.render(this.§["S§,this.renderAvatar,this.§"u§(),this.§#+§);
      }
      
      public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(this.§ g§ == null)
         {
            this.§ g§ = new Sprite();
         }
         while(this.§ g§.numChildren > 0)
         {
            this.§ g§.removeChildAt(0);
         }
         var _loc3_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§ g§.addChild(_loc3_);
         _loc3_.x = -10;
         _loc3_.y = -10;
         addChild(this.§ g§);
      }
   }
}
