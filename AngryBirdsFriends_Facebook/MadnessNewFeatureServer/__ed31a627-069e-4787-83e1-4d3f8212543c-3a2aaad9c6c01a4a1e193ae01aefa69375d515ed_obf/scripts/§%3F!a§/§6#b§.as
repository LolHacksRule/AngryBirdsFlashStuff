package §?!a§
{
   import flash.events.Event;
   import flash.system.Security;
   
   public class §6#b§ extends §>!]§
   {
      
      protected static var §["$§:Array = [];
      
      protected static var §="3§:Array = [];
      
      protected static var §&$0§:Boolean = true;
      
      public static const §""b§:String = "small";
      
      public static const §?^§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §[#+§:String = "large";
      
      {
         §@"§("scontent.xx.fbcdn.net",true);
         §@"§("graph.facebook.com",true);
      }
      
      public function §6#b§(param1:String, param2:Boolean = false, param3:String = "square", param4:String = "")
      {
         super();
         this.init(param1,param2,param3,param4);
      }
      
      protected static function §@"§(param1:String, param2:Boolean = false) : void
      {
         if(§["$§.indexOf(param1) != -1)
         {
            return;
         }
         §["$§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §2"B§(param1:Boolean) : void
      {
         var _loc2_:§6#b§ = null;
         if(§&$0§ == param1)
         {
            return;
         }
         §&$0§ = param1;
         for each(_loc2_ in §="3§)
         {
            if(param1)
            {
               if(!_loc2_.loader.parent)
               {
                  _loc2_.addChild(_loc2_.loader);
               }
            }
            else if(_loc2_.loader && _loc2_.loader.parent == _loc2_)
            {
               _loc2_.removeChild(_loc2_.loader);
            }
         }
      }
      
      protected function init(param1:String, param2:Boolean, param3:String, param4:String) : void
      {
         var _loc5_:String = null;
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         if(param4 && param4 != "")
         {
            §;!;§ = param4;
         }
         else
         {
            switch(param3)
            {
               case §""b§:
               case §?^§:
                  _loc5_ = "width=50&height=50";
                  break;
               case NORMAL:
                  _loc5_ = "width=100&height=100";
                  break;
               case §[#+§:
                  _loc5_ = "width=200&height=200";
                  break;
               default:
                  _loc5_ = "width=50&height=50";
            }
            §;!;§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + § #v§.§!"Q§ + "/" + param1 + "/picture?" + _loc5_;
         }
         load();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(§="3§.indexOf(this) == -1)
         {
            §="3§.push(this);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         if(§="3§.indexOf(this) != -1)
         {
            §="3§.splice(§="3§.indexOf(this),1);
         }
      }
      
      override protected function get isVisible() : Boolean
      {
         return §&$0§;
      }
   }
}
