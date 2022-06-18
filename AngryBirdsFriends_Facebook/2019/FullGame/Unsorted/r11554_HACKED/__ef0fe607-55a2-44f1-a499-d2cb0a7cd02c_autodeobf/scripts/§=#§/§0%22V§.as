package §=#§
{
   import flash.display.Bitmap;
   import flash.events.Event;
   
   public class §0"V§ extends §"#R§
   {
      
      public static const BIRD_BOT_1:String = "-1";
      
      public static const BIRD_BOT_2:String = "-2";
       
      
      private var §`!i§:Class;
      
      private var §["<§:Class;
      
      public function §0"V§(param1:String, param2:String)
      {
         this.§`!i§ = §4X§;
         this.§["<§ = §6[§;
         super();
         if(param2 && param2.length > 0)
         {
            addEventListener(Event.COMPLETE,this.§&!N§);
            §`$B§ = param2;
            load();
         }
         else
         {
            this.§3"Y§(param1);
         }
      }
      
      public static function §5#$§(param1:String) : Boolean
      {
         return param1 == BIRD_BOT_1 || param1 == BIRD_BOT_2;
      }
      
      private function §3"Y§(param1:String) : void
      {
         var _loc2_:Bitmap = null;
         var _loc3_:Bitmap = null;
         switch(param1)
         {
            case BIRD_BOT_1:
               _loc2_ = new this.§`!i§();
               this.§[#P§(_loc2_);
               break;
            case BIRD_BOT_2:
               _loc3_ = new this.§["<§();
               this.§[#P§(_loc3_);
         }
      }
      
      private function §[#P§(param1:Bitmap) : void
      {
         param1.smoothing = true;
         param1.width = 50;
         param1.height = 50;
         addChild(param1);
      }
      
      private function §&!N§(param1:Event) : void
      {
         removeEventListener(Event.COMPLETE,this.§&!N§);
         var _loc2_:Bitmap = Bitmap(loader.content);
         this.§[#P§(_loc2_);
      }
   }
}
