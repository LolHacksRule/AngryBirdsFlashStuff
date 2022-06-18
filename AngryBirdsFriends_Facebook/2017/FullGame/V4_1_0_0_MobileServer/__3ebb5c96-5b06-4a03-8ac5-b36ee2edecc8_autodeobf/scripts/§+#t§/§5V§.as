package §+#t§
{
   import flash.events.Event;
   import flash.system.Security;
   
   public class §5V§ extends §>"!§
   {
      
      protected static var §5!Q§:Array = [];
      
      protected static var §5!w§:Array = [];
      
      protected static var §^D§:Boolean = true;
      
      public static const §?!S§:String = "small";
      
      public static const §1$$§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §3"C§:String = "large";
      
      {
         §0"!§("scontent.xx.fbcdn.net",true);
         §0"!§("profile.ak.fbcdn.net",true);
         §0"!§("fbcdn-profile-a.akamaihd.net",true);
         §0"!§("fbcdn-profile-b.akamaihd.net",true);
         §0"!§("fbcdn-profile-c.akamaihd.net",true);
         §0"!§("fbcdn-profile-d.akamaihd.net",true);
         §0"!§("fbcdn-profile-e.akamaihd.net",true);
         §0"!§("fbcdn-profile-f.akamaihd.net",true);
         §0"!§("fbcdn-profile-g.akamaihd.net",true);
         §0"!§("fbcdn-profile-h.akamaihd.net",true);
         §0"!§("fbcdn-profile-i.akamaihd.net",true);
         §0"!§("fbcdn-profile-j.akamaihd.net",true);
         §0"!§("fbcdn-profile-k.akamaihd.net",true);
         §0"!§("fbcdn-profile-l.akamaihd.net",true);
         §0"!§("fbcdn-profile-m.akamaihd.net",true);
         §0"!§("fbcdn-profile-n.akamaihd.net",true);
         §0"!§("fbcdn-profile-o.akamaihd.net",true);
         §0"!§("fbcdn-profile-p.akamaihd.net",true);
         §0"!§("fbcdn-profile-q.akamaihd.net",true);
         §0"!§("fbcdn-profile-r.akamaihd.net",true);
         §0"!§("fbcdn-profile-s.akamaihd.net",true);
         §0"!§("fbcdn-profile-t.akamaihd.net",true);
         §0"!§("fbcdn-profile-u.akamaihd.net",true);
         §0"!§("fbcdn-profile-v.akamaihd.net",true);
         §0"!§("fbcdn-profile-w.akamaihd.net",true);
         §0"!§("fbcdn-profile-x.akamaihd.net",true);
         §0"!§("fbcdn-profile-y.akamaihd.net",true);
         §0"!§("fbcdn-profile-z.akamaihd.net",true);
      }
      
      public function §5V§(param1:String, param2:Boolean = false, param3:String = "square", param4:String = "")
      {
         super();
         this.init(param1,param2,param3,param4);
      }
      
      protected static function §0"!§(param1:String, param2:Boolean = false) : void
      {
         if(§5!Q§.indexOf(param1) != -1)
         {
            return;
         }
         §5!Q§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §5#G§(param1:Boolean) : void
      {
         var _loc2_:§5V§ = null;
         if(§^D§ == param1)
         {
            return;
         }
         §^D§ = param1;
         for each(_loc2_ in §5!w§)
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
            §>!`§ = param4;
         }
         else
         {
            §>!`§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + §-#+§.§;L§ + "/" + param1 + "/picture?type=" + param3;
         }
         load();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(§5!w§.indexOf(this) == -1)
         {
            §5!w§.push(this);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         if(§5!w§.indexOf(this) != -1)
         {
            §5!w§.splice(§5!w§.indexOf(this),1);
         }
      }
      
      override protected function get isVisible() : Boolean
      {
         return §^D§;
      }
   }
}
