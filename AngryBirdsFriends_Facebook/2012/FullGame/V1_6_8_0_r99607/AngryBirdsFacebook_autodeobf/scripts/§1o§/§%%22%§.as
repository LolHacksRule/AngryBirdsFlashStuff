package §1o§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §%"%§ extends Sprite
   {
      
      public static var §#!D§:§3v§;
       
      
      protected var §'!@§:DisplayObjectContainer;
      
      public var §>!R§:String;
      
      protected var §@E§:Boolean;
      
      private var §30§:int;
      
      public function §%"%§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§@E§ = param3;
         switch(param2)
         {
            case §'8§.NORMAL:
               this.§30§ = 100;
               break;
            case §'8§.§"!Y§:
               this.§30§ = 50;
               break;
            default:
               this.§30§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§>!R§ = param1;
            this.§8G§(param1);
         }
      }
      
      public function §#"=§() : int
      {
         return this.§30§;
      }
      
      private function §8G§(param1:String) : void
      {
         this.§>!R§ = param1;
         if(this.§'!@§ == null)
         {
            this.§'!@§ = new Sprite();
         }
         while(this.§'!@§.numChildren > 0)
         {
            this.§'!@§.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      protected function sendAvatarToRenderer() : void
      {
         §#!D§.render(this.§>!R§,this.renderAvatar,this.§#"=§(),this.§@E§);
      }
      
      public function renderAvatar(param1:BitmapData) : void
      {
         if(this.§'!@§ == null)
         {
            this.§'!@§ = new Sprite();
         }
         while(this.§'!@§.numChildren > 0)
         {
            this.§'!@§.removeChildAt(0);
         }
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§'!@§.addChild(_loc2_);
         _loc2_.x = -10;
         _loc2_.y = -10;
         addChild(this.§'!@§);
      }
   }
}
