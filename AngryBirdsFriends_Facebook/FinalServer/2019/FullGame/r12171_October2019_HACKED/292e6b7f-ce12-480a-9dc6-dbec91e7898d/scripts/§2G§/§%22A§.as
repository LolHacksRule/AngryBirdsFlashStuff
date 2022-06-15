package §2G§
{
   import flash.display.Bitmap;
   import flash.events.Event;
   
   public class §"A§ extends §""K§
   {
      
      public static const BIRD_BOT_1:String = "-1";
      
      public static const BIRD_BOT_2:String = "-2";
       
      
      private var §%!!§:Class;
      
      private var §'"5§:Class;
      
      public function §"A§(param1:String, param2:String)
      {
         this.§%!!§ = §=s§;
         this.§'"5§ = §0"C§;
         super();
         if(param2 && param2.length > 0)
         {
            addEventListener(Event.COMPLETE,this.§9"g§);
            § j§ = param2;
            load();
         }
         else
         {
            this.§2!#§(param1);
         }
      }
      
      public static function §<$!§(param1:String) : Boolean
      {
         return param1 == BIRD_BOT_1 || param1 == BIRD_BOT_2;
      }
      
      private function §2!#§(param1:String) : void
      {
         var _loc2_:Bitmap = null;
         var _loc3_:Bitmap = null;
         switch(param1)
         {
            case BIRD_BOT_1:
               _loc2_ = new this.§%!!§();
               this.§ z§(_loc2_);
               break;
            case BIRD_BOT_2:
               _loc3_ = new this.§'"5§();
               this.§ z§(_loc3_);
         }
      }
      
      private function § z§(param1:Bitmap) : void
      {
         param1.smoothing = true;
         param1.width = 50;
         param1.height = 50;
         addChild(param1);
      }
      
      private function §9"g§(param1:Event) : void
      {
         removeEventListener(Event.COMPLETE,this.§9"g§);
         var _loc2_:Bitmap = Bitmap(loader.content);
         this.§ z§(_loc2_);
      }
   }
}
