package §,n§
{
   import flash.events.Event;
   import flash.system.Security;
   
   public class §+!f§ extends §?"k§
   {
      
      protected static var §]!4§:Array = [];
      
      protected static var §-"%§:Array = [];
      
      protected static var §62§:Boolean = true;
      
      public static const §`#Q§:String = "small";
      
      public static const §%#M§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §2!2§:String = "large";
      
      {
         §^V§("scontent.xx.fbcdn.net",true);
         §^V§("profile.ak.fbcdn.net",true);
         §^V§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      public function §+!f§(param1:String, param2:Boolean = false, param3:String = "square", param4:String = "")
      {
         super();
         this.init(param1,param2,param3,param4);
      }
      
      protected static function §^V§(param1:String, param2:Boolean = false) : void
      {
         if(§]!4§.indexOf(param1) != -1)
         {
            return;
         }
         §]!4§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §+#J§(param1:Boolean) : void
      {
         var _loc2_:§+!f§ = null;
         if(§62§ == param1)
         {
            return;
         }
         §62§ = param1;
         for each(_loc2_ in §-"%§)
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
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         if(param4 && param4 != "")
         {
            §?!T§ = param4;
         }
         else
         {
            §?!T§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + §8G§.§4#§ + "/" + param1 + "/picture?type=" + param3;
         }
         load();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(§-"%§.indexOf(this) == -1)
         {
            §-"%§.push(this);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         if(§-"%§.indexOf(this) != -1)
         {
            §-"%§.splice(§-"%§.indexOf(this),1);
         }
      }
      
      override protected function get isVisible() : Boolean
      {
         return §62§;
      }
   }
}
