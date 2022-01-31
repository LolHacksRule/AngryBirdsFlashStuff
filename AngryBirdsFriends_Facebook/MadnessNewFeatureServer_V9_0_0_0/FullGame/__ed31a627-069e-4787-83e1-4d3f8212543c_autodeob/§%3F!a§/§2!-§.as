package §?!a§
{
   import flash.display.Bitmap;
   import flash.events.Event;
   
   public class §2!-§ extends §>!]§
   {
      
      public static const BIRD_BOT_1:String = "-1";
      
      public static const BIRD_BOT_2:String = "-2";
       
      
      private var §9"u§:Class;
      
      private var §,"B§:Class;
      
      public function §2!-§(param1:String, param2:String)
      {
         this.§9"u§ = §[!;§;
         this.§,"B§ = §+!`§;
         super();
         if(param2 && param2.length > 0)
         {
            addEventListener(Event.COMPLETE,this.§0%§);
            §;!;§ = param2;
            load();
         }
         else
         {
            this.§6"6§(param1);
         }
      }
      
      public static function §]"2§(param1:String) : Boolean
      {
         return param1 == BIRD_BOT_1 || param1 == BIRD_BOT_2;
      }
      
      private function §6"6§(param1:String) : void
      {
         var _loc2_:Bitmap = null;
         var _loc3_:Bitmap = null;
         switch(param1)
         {
            case BIRD_BOT_1:
               _loc2_ = new this.§9"u§();
               this.§^!D§(_loc2_);
               break;
            case BIRD_BOT_2:
               _loc3_ = new this.§,"B§();
               this.§^!D§(_loc3_);
         }
      }
      
      private function §^!D§(param1:Bitmap) : void
      {
         param1.smoothing = true;
         param1.width = 50;
         param1.height = 50;
         addChild(param1);
      }
      
      private function §0%§(param1:Event) : void
      {
         removeEventListener(Event.COMPLETE,this.§0%§);
         var _loc2_:Bitmap = Bitmap(loader.content);
         this.§^!D§(_loc2_);
      }
   }
}
