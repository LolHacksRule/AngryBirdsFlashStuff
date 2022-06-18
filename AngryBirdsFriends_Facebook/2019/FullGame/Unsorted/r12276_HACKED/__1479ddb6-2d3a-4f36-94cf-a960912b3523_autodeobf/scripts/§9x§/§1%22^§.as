package §9x§
{
   import flash.display.Bitmap;
   import flash.events.Event;
   
   public class §1"^§ extends §%&§
   {
      
      public static const BIRD_BOT_1:String = "-1";
      
      public static const BIRD_BOT_2:String = "-2";
       
      
      private var §'>§:Class;
      
      private var §8^§:Class;
      
      public function §1"^§(param1:String, param2:String)
      {
         this.§'>§ = §`!b§;
         this.§8^§ = §2#'§;
         super();
         if(param2 && param2.length > 0)
         {
            addEventListener(Event.COMPLETE,this.§`"C§);
            § P§ = param2;
            load();
         }
         else
         {
            this.§ J§(param1);
         }
      }
      
      public static function §6f§(param1:String) : Boolean
      {
         return param1 == BIRD_BOT_1 || param1 == BIRD_BOT_2;
      }
      
      private function § J§(param1:String) : void
      {
         var _loc2_:Bitmap = null;
         var _loc3_:Bitmap = null;
         switch(param1)
         {
            case BIRD_BOT_1:
               _loc2_ = new this.§'>§();
               this.§;""§(_loc2_);
               break;
            case BIRD_BOT_2:
               _loc3_ = new this.§8^§();
               this.§;""§(_loc3_);
         }
      }
      
      private function §;""§(param1:Bitmap) : void
      {
         param1.smoothing = true;
         param1.width = 50;
         param1.height = 50;
         addChild(param1);
      }
      
      private function §`"C§(param1:Event) : void
      {
         removeEventListener(Event.COMPLETE,this.§`"C§);
         var _loc2_:Bitmap = Bitmap(loader.content);
         this.§;""§(_loc2_);
      }
   }
}
