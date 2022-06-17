package §=#§
{
   import flash.events.Event;
   import flash.system.Security;
   
   public class §1!"§ extends §"#R§
   {
      
      protected static var §>c§:Array = [];
      
      protected static var §6K§:Array = [];
      
      protected static var §#"z§:Boolean = true;
      
      public static const §'"O§:String = "small";
      
      public static const §+$=§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §,!z§:String = "large";
      
      {
         §`"o§("scontent.xx.fbcdn.net",true);
         §`"o§("graph.facebook.com",true);
      }
      
      public function §1!"§(param1:String, param2:Boolean = false, param3:String = "square", param4:String = "")
      {
         super();
         this.init(param1,param2,param3,param4);
      }
      
      protected static function §`"o§(param1:String, param2:Boolean = false) : void
      {
         if(§>c§.indexOf(param1) != -1)
         {
            return;
         }
         §>c§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §8!O§(param1:Boolean) : void
      {
         var _loc2_:§1!"§ = null;
         if(§#"z§ == param1)
         {
            return;
         }
         §#"z§ = param1;
         for each(_loc2_ in §6K§)
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
            §`$B§ = param4;
         }
         else
         {
            switch(param3)
            {
               case §'"O§:
               case §+$=§:
                  _loc5_ = "width=50&height=50";
                  break;
               case NORMAL:
                  _loc5_ = "width=100&height=100";
                  break;
               case §,!z§:
                  _loc5_ = "width=200&height=200";
                  break;
               default:
                  _loc5_ = "width=50&height=50";
            }
            §`$B§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + §'"a§.§'$4§ + "/" + param1 + "/picture?" + _loc5_;
         }
         load();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(§6K§.indexOf(this) == -1)
         {
            §6K§.push(this);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         if(§6K§.indexOf(this) != -1)
         {
            §6K§.splice(§6K§.indexOf(this),1);
         }
      }
      
      override protected function get isVisible() : Boolean
      {
         return §#"z§;
      }
   }
}
