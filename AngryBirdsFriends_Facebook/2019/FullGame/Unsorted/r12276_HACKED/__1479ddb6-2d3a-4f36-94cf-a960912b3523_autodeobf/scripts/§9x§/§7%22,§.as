package §9x§
{
   import flash.events.Event;
   import flash.system.Security;
   
   public class §7",§ extends §%&§
   {
      
      protected static var §,!l§:Array = [];
      
      protected static var §0#c§:Array = [];
      
      protected static var §6!y§:Boolean = true;
      
      public static const §>z§:String = "small";
      
      public static const §1"0§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §4$6§:String = "large";
      
      {
         §""[§("scontent.xx.fbcdn.net",true);
         §""[§("graph.facebook.com",true);
      }
      
      public function §7",§(param1:String, param2:Boolean = false, param3:String = "square", param4:String = "")
      {
         super();
         this.init(param1,param2,param3,param4);
      }
      
      protected static function §""[§(param1:String, param2:Boolean = false) : void
      {
         if(§,!l§.indexOf(param1) != -1)
         {
            return;
         }
         §,!l§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function § #?§(param1:Boolean) : void
      {
         var _loc2_:§7",§ = null;
         if(§6!y§ == param1)
         {
            return;
         }
         §6!y§ = param1;
         for each(_loc2_ in §0#c§)
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
            § P§ = param4;
         }
         else
         {
            switch(param3)
            {
               case §>z§:
               case §1"0§:
                  _loc5_ = "width=50&height=50";
                  break;
               case NORMAL:
                  _loc5_ = "width=100&height=100";
                  break;
               case §4$6§:
                  _loc5_ = "width=200&height=200";
                  break;
               default:
                  _loc5_ = "width=50&height=50";
            }
            § P§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + §^"a§.§4!9§ + "/" + param1 + "/picture?" + _loc5_;
         }
         load();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(§0#c§.indexOf(this) == -1)
         {
            §0#c§.push(this);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         if(§0#c§.indexOf(this) != -1)
         {
            §0#c§.splice(§0#c§.indexOf(this),1);
         }
      }
      
      override protected function get isVisible() : Boolean
      {
         return §6!y§;
      }
   }
}
