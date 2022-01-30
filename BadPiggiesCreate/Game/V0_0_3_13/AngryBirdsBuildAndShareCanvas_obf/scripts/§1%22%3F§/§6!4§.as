package §1"?§
{
   import §`"2§.§6!,§;
   import com.rovio.assets.§=#§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §6!4§ extends Sprite
   {
      
      private static const §`!3§:int = 30;
       
      
      private const §4!A§:Number = 0.8;
      
      private const §@!`§:Number = 0.3;
      
      private var §"!Y§:Boolean;
      
      private var §1"'§:Bitmap;
      
      private var §;!+§:DisplayObject;
      
      private var §5O§:DisplayObject;
      
      private var §!"3§:String;
      
      public function §6!4§(param1:String, param2:Boolean)
      {
         super();
         this.§"!Y§ = param2;
         var _loc3_:BitmapData = §6!,§.§7!?§.§!!k§(param1);
         this.§1"'§ = new Bitmap(_loc3_,"auto",true);
         this.§1"'§.smoothing = true;
         this.§1"'§.width = Math.min(this.§1"'§.width,§`!3§);
         this.§1"'§.scaleY = this.§1"'§.scaleX;
         var _loc4_:Class = §=#§.§1v§("checkMark");
         this.§;!+§ = new _loc4_();
         var _loc5_:Class = §=#§.§1v§("crossMark");
         this.§5O§ = new _loc5_();
         this.§!"3§ = param1;
         addChild(this.§1"'§);
         this.§;!+§.x = this.§1"'§.width / 2;
         this.§;!+§.y = this.§1"'§.height / 2;
         this.§5O§.x = this.§1"'§.width / 2;
         this.§5O§.y = this.§1"'§.height / 2;
         addChild(this.§;!+§);
         addChild(this.§5O§);
      }
      
      public function get §%=§() : Boolean
      {
         return this.§"!Y§;
      }
      
      public function get §,5§() : String
      {
         return this.§!"3§;
      }
      
      public function §8"-§(param1:Boolean) : void
      {
         this.§;!+§.visible = param1;
         this.§5O§.visible = !this.§"!Y§ && !param1;
         this.§1"'§.alpha = !!param1 ? Number(this.§@!`§) : Number(this.§4!A§);
      }
      
      public function get §7!'§() : Boolean
      {
         return this.§;!+§.visible;
      }
   }
}
