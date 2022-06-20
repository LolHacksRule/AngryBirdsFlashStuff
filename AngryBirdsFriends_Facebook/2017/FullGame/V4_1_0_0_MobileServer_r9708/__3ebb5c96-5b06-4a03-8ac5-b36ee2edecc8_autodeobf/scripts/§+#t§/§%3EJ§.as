package §+#t§
{
   import flash.display.Bitmap;
   import flash.events.Event;
   
   public class §>J§ extends §>"!§
   {
      
      public static const BIRD_BOT_1:String = "-1";
      
      public static const BIRD_BOT_2:String = "-2";
       
      
      private var §=I§:Class;
      
      private var §8$7§:Class;
      
      public function §>J§(param1:String, param2:String)
      {
         this.§=I§ = §8J§;
         this.§8$7§ = §+! §;
         super();
         if(param2 && param2.length > 0)
         {
            addEventListener(Event.COMPLETE,this.§9!k§);
            §>!`§ = param2;
            load();
         }
         else
         {
            this.§7#>§(param1);
         }
      }
      
      public static function §7!;§(param1:String) : Boolean
      {
         return param1 == BIRD_BOT_1 || param1 == BIRD_BOT_2;
      }
      
      private function §7#>§(param1:String) : void
      {
         var _loc2_:Bitmap = null;
         var _loc3_:Bitmap = null;
         switch(param1)
         {
            case BIRD_BOT_1:
               _loc2_ = new this.§=I§();
               this.§<!m§(_loc2_);
               break;
            case BIRD_BOT_2:
               _loc3_ = new this.§8$7§();
               this.§<!m§(_loc3_);
         }
      }
      
      private function §<!m§(param1:Bitmap) : void
      {
         param1.smoothing = true;
         param1.width = 50;
         param1.height = 50;
         addChild(param1);
      }
      
      private function §9!k§(param1:Event) : void
      {
         removeEventListener(Event.COMPLETE,this.§9!k§);
         var _loc2_:Bitmap = Bitmap(loader.content);
         this.§<!m§(_loc2_);
      }
   }
}
