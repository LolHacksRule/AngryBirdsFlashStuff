package §`"3§
{
   import §%t§.§-!5§;
   import com.rovio.assets.§5!+§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §[,§ extends Sprite
   {
      
      private static const §"!I§:int = 30;
       
      
      private const §0b§:Number = 0.8;
      
      private const §`9§:Number = 0.3;
      
      private var §1C§:Boolean;
      
      private var §2E§:Bitmap;
      
      private var §8H§:DisplayObject;
      
      private var §?!H§:DisplayObject;
      
      private var §`!A§:String;
      
      public function §[,§(param1:String, param2:Boolean)
      {
         super();
         this.§1C§ = param2;
         var _loc3_:BitmapData = §-!5§.§,l§.§2s§(param1);
         this.§2E§ = new Bitmap(_loc3_,"auto",true);
         this.§2E§.smoothing = true;
         this.§2E§.width = Math.min(this.§2E§.width,§"!I§);
         this.§2E§.scaleY = this.§2E§.scaleX;
         var _loc4_:Class = §5!+§.§,]§("checkMark");
         this.§8H§ = new _loc4_();
         var _loc5_:Class = §5!+§.§,]§("crossMark");
         this.§?!H§ = new _loc5_();
         this.§`!A§ = param1;
         addChild(this.§2E§);
         this.§8H§.x = this.§2E§.width / 2;
         this.§8H§.y = this.§2E§.height / 2;
         this.§?!H§.x = this.§2E§.width / 2;
         this.§?!H§.y = this.§2E§.height / 2;
         addChild(this.§8H§);
         addChild(this.§?!H§);
      }
      
      public function get §<"4§() : Boolean
      {
         return this.§1C§;
      }
      
      public function get §+6§() : String
      {
         return this.§`!A§;
      }
      
      public function §&! §(param1:Boolean) : void
      {
         this.§8H§.visible = param1;
         this.§?!H§.visible = !this.§1C§ && !param1;
         this.§2E§.alpha = !!param1 ? Number(this.§`9§) : Number(this.§0b§);
      }
      
      public function get §5D§() : Boolean
      {
         return this.§8H§.visible;
      }
   }
}
