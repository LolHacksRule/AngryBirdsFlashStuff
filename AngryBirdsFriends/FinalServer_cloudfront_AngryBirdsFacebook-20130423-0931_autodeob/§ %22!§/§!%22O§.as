package § "!§
{
   import flash.events.Event;
   import flash.system.Security;
   
   public class §!"O§ extends §8!x§
   {
      
      protected static var §%!4§:Array = [];
      
      protected static var §-!d§:Array = [];
      
      protected static var §5G§:Boolean = true;
      
      public static const §+D§:String = "small";
      
      public static const §'"O§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §<G§:String = "large";
      
      {
         §^",§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      public function §!"O§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §^",§(param1:String, param2:Boolean = false) : void
      {
         if(§%!4§.indexOf(param1) != -1)
         {
            return;
         }
         §%!4§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §'Z§(param1:Boolean) : void
      {
         var _loc2_:§!"O§ = null;
         if(§5G§ == param1)
         {
            return;
         }
         §5G§ = param1;
         for each(_loc2_ in §-!d§)
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
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         §"!a§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         load();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(§-!d§.indexOf(this) == -1)
         {
            §-!d§.push(this);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         if(§-!d§.indexOf(this) != -1)
         {
            §-!d§.splice(§-!d§.indexOf(this),1);
         }
      }
      
      override protected function get isVisible() : Boolean
      {
         return §5G§;
      }
   }
}
