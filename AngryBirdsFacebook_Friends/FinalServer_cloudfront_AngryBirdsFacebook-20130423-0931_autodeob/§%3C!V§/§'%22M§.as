package §<!V§
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
   
   public class §'"M§ extends Sprite
   {
      
      public static const §^"8§:Number = 0.75;
       
      
      private var §9!Q§:Bitmap;
      
      private var §5"3§:BitmapData;
      
      private var §9"I§:String;
      
      public function §'"M§(param1:String)
      {
         super();
         this.§9"I§ = param1;
         addEventListener(MouseEvent.CLICK,this.§[!o§);
         buttonMode = true;
         scaleX = scaleY = §^"8§;
         x = 47;
      }
      
      public function get link() : String
      {
         return this.§9"I§;
      }
      
      public function § in§(param1:String) : Loader
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.load(_loc2_,_loc3_);
         return _loc4_;
      }
      
      private function §[!o§(param1:MouseEvent) : void
      {
         §%"S§.§!C§.§^X§();
         var _loc2_:URLRequest = new URLRequest(this.§9"I§);
         navigateToURL(_loc2_,"_blank");
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Bitmap = (param1.currentTarget as LoaderInfo).content as Bitmap;
         this.§5"3§ = _loc2_.bitmapData.clone();
         this.§1!H§(this.§5"3§);
      }
      
      public function §%!h§() : BitmapData
      {
         if(this.§5"3§)
         {
            this.§1!H§(this.§5"3§);
         }
         return this.§5"3§;
      }
      
      public function §1!H§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = §"!j§.§,<§;
         _loc2_.height = §"!j§.§;!+§;
         addChild(_loc2_);
      }
   }
}
