package §+$?§
{
   import flash.display.Bitmap;
   import flash.events.Event;
   
   public class §%!k§ extends §>c§
   {
      
      public static const BIRD_BOT_1:String = "-1";
      
      public static const BIRD_BOT_2:String = "-2";
       
      
      private var §@"?§:Class;
      
      private var §!,§:Class;
      
      public function §%!k§(param1:String, param2:String)
      {
         this.§@"?§ = §&p§;
         this.§!,§ = §;H§;
         super();
         if(param2 && param2.length > 0)
         {
            addEventListener(Event.COMPLETE,this.§'"L§);
            §>!l§ = param2;
            load();
         }
         else
         {
            this.§ "l§(param1);
         }
      }
      
      public static function §@#A§(param1:String) : Boolean
      {
         return param1 == BIRD_BOT_1 || param1 == BIRD_BOT_2;
      }
      
      private function § "l§(param1:String) : void
      {
         var _loc2_:Bitmap = null;
         var _loc3_:Bitmap = null;
         switch(param1)
         {
            case BIRD_BOT_1:
               _loc2_ = new this.§@"?§();
               this.§0!'§(_loc2_);
               break;
            case BIRD_BOT_2:
               _loc3_ = new this.§!,§();
               this.§0!'§(_loc3_);
         }
      }
      
      private function §0!'§(param1:Bitmap) : void
      {
         param1.smoothing = true;
         param1.width = 50;
         param1.height = 50;
         addChild(param1);
      }
      
      private function §'"L§(param1:Event) : void
      {
         removeEventListener(Event.COMPLETE,this.§'"L§);
         var _loc2_:Bitmap = Bitmap(loader.content);
         this.§0!'§(_loc2_);
      }
   }
}
