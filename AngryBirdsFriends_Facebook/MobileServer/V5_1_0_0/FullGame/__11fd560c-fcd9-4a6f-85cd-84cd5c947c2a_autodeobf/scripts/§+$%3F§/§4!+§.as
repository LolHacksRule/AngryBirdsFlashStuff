package §+$?§
{
   import flash.events.Event;
   import flash.system.Security;
   
   public class §4!+§ extends §>c§
   {
      
      protected static var §#$&§:Array = [];
      
      protected static var §const§:Array = [];
      
      protected static var §2!=§:Boolean = true;
      
      public static const §<!j§:String = "small";
      
      public static const §+"N§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §,"7§:String = "large";
      
      {
         §`"m§("scontent.xx.fbcdn.net",true);
         §`"m§("graph.facebook.com",true);
      }
      
      public function §4!+§(param1:String, param2:Boolean = false, param3:String = "square", param4:String = "")
      {
         super();
         this.init(param1,param2,param3,param4);
      }
      
      protected static function §`"m§(param1:String, param2:Boolean = false) : void
      {
         if(§#$&§.indexOf(param1) != -1)
         {
            return;
         }
         §#$&§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §7#L§(param1:Boolean) : void
      {
         var _loc2_:§4!+§ = null;
         if(§2!=§ == param1)
         {
            return;
         }
         §2!=§ = param1;
         for each(_loc2_ in §const§)
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
            §>!l§ = param4;
         }
         else
         {
            switch(param3)
            {
               case §<!j§:
               case §+"N§:
                  _loc5_ = "width=50&height=50";
                  break;
               case NORMAL:
                  _loc5_ = "width=100&height=100";
                  break;
               case §,"7§:
                  _loc5_ = "width=200&height=200";
                  break;
               default:
                  _loc5_ = "width=50&height=50";
            }
            §>!l§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + §,A§.§?G§ + "/" + param1 + "/picture?" + _loc5_;
         }
         load();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(§const§.indexOf(this) == -1)
         {
            §const§.push(this);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         if(§const§.indexOf(this) != -1)
         {
            §const§.splice(§const§.indexOf(this),1);
         }
      }
      
      override protected function get isVisible() : Boolean
      {
         return §2!=§;
      }
   }
}
