package §'c§
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
   
   public class §#0§ extends Sprite
   {
      
      public static const §!I§:Number = 0.75;
       
      
      private var §`!m§:Bitmap;
      
      private var §;!$§:BitmapData;
      
      private var §`!V§:String;
      
      public function §#0§(param1:String)
      {
         super();
         this.§`!V§ = param1;
         addEventListener(MouseEvent.CLICK,this.§-!w§);
         buttonMode = true;
         scaleX = scaleY = §!I§;
         x = 47;
      }
      
      public function get link() : String
      {
         return this.§`!V§;
      }
      
      public function §"8§(param1:String) : Loader
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.load(_loc2_,_loc3_);
         return _loc4_;
      }
      
      private function §-!w§(param1:MouseEvent) : void
      {
         § W§.§%!y§.§'H§();
         var _loc2_:URLRequest = new URLRequest(this.§`!V§);
         navigateToURL(_loc2_,"_blank");
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Bitmap = (param1.currentTarget as LoaderInfo).content as Bitmap;
         this.§;!$§ = _loc2_.bitmapData.clone();
         this.§-T§(this.§;!$§);
      }
      
      public function §<!v§() : BitmapData
      {
         if(this.§;!$§)
         {
            this.§-T§(this.§;!$§);
         }
         return this.§;!$§;
      }
      
      public function §-T§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = §`v§.§#!v§;
         _loc2_.height = §`v§.§#!X§;
         addChild(_loc2_);
      }
   }
}
