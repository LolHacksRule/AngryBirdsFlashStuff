package §+#t§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §5F§ extends Sprite
   {
      
      public static var §4"b§:§@!R§;
       
      
      protected var §8!>§:DisplayObjectContainer;
      
      public var §]<§:String;
      
      protected var §7"v§:Boolean;
      
      private var §8#=§:int;
      
      public function §5F§(param1:String, param2:String, param3:Boolean = false)
      {
         super();
         this.§7"v§ = param3;
         switch(param2)
         {
            case §5V§.§3"C§:
               this.§8#=§ = 100;
               break;
            case §5V§.NORMAL:
               this.§8#=§ = 100;
               break;
            case §5V§.§1$$§:
            case §5V§.§?!S§:
               this.§8#=§ = 50;
               break;
            default:
               this.§8#=§ = int(param2);
         }
         if(param1.length > 0)
         {
            this.§]<§ = param1;
            this.§5#[§(param1);
         }
      }
      
      public function §@$9§() : int
      {
         return this.§8#=§;
      }
      
      private function §5#[§(param1:String) : void
      {
         this.§]<§ = param1;
         if(this.§8!>§ == null)
         {
            this.§8!>§ = new Sprite();
         }
         while(this.§8!>§.numChildren > 0)
         {
            this.§8!>§.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      public function dispose() : void
      {
      }
      
      protected function sendAvatarToRenderer() : void
      {
         §4"b§.render(this.§]<§,this.renderAvatar,this.§@$9§(),this.§7"v§);
      }
      
      public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(this.§8!>§ == null)
         {
            this.§8!>§ = new Sprite();
         }
         while(this.§8!>§.numChildren > 0)
         {
            this.§8!>§.removeChildAt(0);
         }
         var _loc3_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         this.§8!>§.addChild(_loc3_);
         _loc3_.x = -10;
         _loc3_.y = -10;
         addChild(this.§8!>§);
      }
   }
}
