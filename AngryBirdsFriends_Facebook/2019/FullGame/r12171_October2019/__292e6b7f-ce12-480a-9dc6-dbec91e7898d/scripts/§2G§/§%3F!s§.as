package §2G§
{
   import flash.events.Event;
   import flash.system.Security;
   
   public class §?!s§ extends §""K§
   {
      
      protected static var §+$&§:Array = [];
      
      protected static var §&"U§:Array = [];
      
      protected static var §4"l§:Boolean = true;
      
      public static const §<"-§:String = "small";
      
      public static const §'!n§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §[$0§:String = "large";
      
      {
         §7!t§("scontent.xx.fbcdn.net",true);
         §7!t§("graph.facebook.com",true);
      }
      
      public function §?!s§(param1:String, param2:Boolean = false, param3:String = "square", param4:String = "")
      {
         super();
         this.init(param1,param2,param3,param4);
      }
      
      protected static function §7!t§(param1:String, param2:Boolean = false) : void
      {
         if(§+$&§.indexOf(param1) != -1)
         {
            return;
         }
         §+$&§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §+!f§(param1:Boolean) : void
      {
         var _loc2_:§?!s§ = null;
         if(§4"l§ == param1)
         {
            return;
         }
         §4"l§ = param1;
         for each(_loc2_ in §&"U§)
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
            § j§ = param4;
         }
         else
         {
            switch(param3)
            {
               case §<"-§:
               case §'!n§:
                  _loc5_ = "width=50&height=50";
                  break;
               case NORMAL:
                  _loc5_ = "width=100&height=100";
                  break;
               case §[$0§:
                  _loc5_ = "width=200&height=200";
                  break;
               default:
                  _loc5_ = "width=50&height=50";
            }
            § j§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + §@z§.§]!k§ + "/" + param1 + "/picture?" + _loc5_;
         }
         load();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(§&"U§.indexOf(this) == -1)
         {
            §&"U§.push(this);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         if(§&"U§.indexOf(this) != -1)
         {
            §&"U§.splice(§&"U§.indexOf(this),1);
         }
      }
      
      override protected function get isVisible() : Boolean
      {
         return §4"l§;
      }
   }
}
