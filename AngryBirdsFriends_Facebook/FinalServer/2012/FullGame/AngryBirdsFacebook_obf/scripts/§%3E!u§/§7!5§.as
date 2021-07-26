package §>!u§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.LoaderContext;
   
   public class §7!5§ extends Sprite
   {
      
      public static const § 3§:Number = 0.75;
       
      
      private var §@!O§:Bitmap;
      
      private var §7!!§:BitmapData;
      
      private var §"M§:String;
      
      public function §7!5§(param1:String)
      {
         super();
         this.§"M§ = param1;
         addEventListener(MouseEvent.CLICK,this.§`";§);
         buttonMode = true;
         scaleX = scaleY = § 3§;
         x = 47;
      }
      
      public function get link() : String
      {
         return this.§"M§;
      }
      
      public function §6]§(param1:String) : Loader
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.load(_loc2_,_loc3_);
         return _loc4_;
      }
      
      private function §`";§(param1:MouseEvent) : void
      {
         §,"I§.§&q§.§1z§();
         var _loc2_:URLRequest = new URLRequest(this.§"M§);
         navigateToURL(_loc2_,"_blank");
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Bitmap = (param1.currentTarget as LoaderInfo).content as Bitmap;
         this.§7!!§ = _loc2_.bitmapData.clone();
         this.§"K§(this.§7!!§);
      }
      
      public function §5O§() : BitmapData
      {
         if(this.§7!!§)
         {
            this.§"K§(this.§7!!§);
         }
         return this.§7!!§;
      }
      
      public function §"K§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = §%5§.§^I§;
         _loc2_.height = §%5§.§9"0§;
         addChild(_loc2_);
      }
   }
}
