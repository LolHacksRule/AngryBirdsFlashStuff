package §6!A§
{
   import §05§.§?s§;
   import §@y§.§>!D§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §4!%§ extends EventDispatcher
   {
      
      public static const §!$§:String = "snapping";
      
      public static const §]!o§:String = "tooltips";
      
      public static const §]?§:String = "zoombar";
      
      private static var §@d§:§4!%§;
       
      
      private var §5!b§:Dictionary;
      
      private var §;!,§:SharedObject;
      
      public function §4!%§()
      {
         this.§5!b§ = new Dictionary();
         super();
         §?s§.registerMethod("setOptions",this.§<m§);
         this.§5!b§[§!$§] = true;
         this.§5!b§[§]!o§] = true;
         this.§5!b§[§]?§] = false;
         this.§"!H§(false);
      }
      
      public static function init() : void
      {
         if(§@d§ == null)
         {
            §@d§ = new §4!%§();
         }
      }
      
      public static function §`-§() : §4!%§
      {
         if(§@d§ == null)
         {
            init();
         }
         return §@d§;
      }
      
      private function §"!H§(param1:Boolean = true) : void
      {
         var key:String = null;
         var save:Boolean = param1;
         try
         {
            if(!this.§;!,§)
            {
               this.§;!,§ = SharedObject.getLocal(§[!^§.§1"#§());
            }
            for(key in this.§5!b§)
            {
               if(this.§;!,§.data[key] == undefined || save)
               {
                  this.§;!,§.data[key] = this.§5!b§[key];
               }
               else
               {
                  this.§5!b§[key] = this.§;!,§.data[key];
               }
            }
            this.§;!,§.flush();
         }
         catch(e:Error)
         {
         }
         §>!D§.§7!U§ = this.§5!b§[§]!o§];
      }
      
      public function §[";§(param1:String) : void
      {
         if(this.§5!b§[param1] == undefined)
         {
            this.§5!b§[param1] = false;
         }
         this.§+!,§(param1,!this.§5!b§[param1]);
      }
      
      public function §+!,§(param1:String, param2:Boolean) : void
      {
         if(this.§5!b§[param1] != param2)
         {
            this.§5!b§[param1] = param2;
            dispatchEvent(new Event(Event.CHANGE));
            this.§"!H§();
            §>!D§.§7!U§ = this.§5!b§[§]!o§];
         }
      }
      
      public function §9y§(param1:String) : Boolean
      {
         if(this.§5!b§[param1] == undefined)
         {
            return false;
         }
         return this.§5!b§[param1];
      }
      
      public function §<m§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(§[!^§.§["!§)
         {
            for(_loc3_ in _loc2_)
            {
               this.§+!,§(_loc3_,_loc2_[_loc3_]);
            }
         }
      }
   }
}
