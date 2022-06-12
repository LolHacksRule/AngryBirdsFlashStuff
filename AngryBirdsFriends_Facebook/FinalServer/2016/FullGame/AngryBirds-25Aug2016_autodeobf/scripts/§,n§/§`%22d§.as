package §,n§
{
   import flash.display.Bitmap;
   import flash.events.Event;
   
   public class §`"d§ extends §?"k§
   {
      
      public static const BIRD_BOT_1:String = "-1";
      
      public static const BIRD_BOT_2:String = "-2";
       
      
      private var §6#l§:Class;
      
      private var §?m§:Class;
      
      public function §`"d§(param1:String, param2:String)
      {
         this.§6#l§ = §?A§;
         this.§?m§ = §'!6§;
         super();
         if(param2 && param2.length > 0)
         {
            addEventListener(Event.COMPLETE,this.§!#s§);
            §?!T§ = param2;
            load();
         }
         else
         {
            this.§4!3§(param1);
         }
      }
      
      public static function §0Y§(param1:String) : Boolean
      {
         return param1 == BIRD_BOT_1 || param1 == BIRD_BOT_2;
      }
      
      private function §4!3§(param1:String) : void
      {
         var _loc2_:Bitmap = null;
         var _loc3_:Bitmap = null;
         switch(param1)
         {
            case BIRD_BOT_1:
               _loc2_ = new this.§6#l§();
               this.§4"i§(_loc2_);
               break;
            case BIRD_BOT_2:
               _loc3_ = new this.§?m§();
               this.§4"i§(_loc3_);
         }
      }
      
      private function §4"i§(param1:Bitmap) : void
      {
         param1.smoothing = true;
         param1.width = 50;
         param1.height = 50;
         addChild(param1);
      }
      
      private function §!#s§(param1:Event) : void
      {
         removeEventListener(Event.COMPLETE,this.§!#s§);
         var _loc2_:Bitmap = Bitmap(loader.content);
         this.§4"i§(_loc2_);
      }
   }
}
