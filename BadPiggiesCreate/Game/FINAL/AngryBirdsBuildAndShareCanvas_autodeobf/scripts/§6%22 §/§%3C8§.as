package §6" §
{
   import §%_§.§4m§;
   import §'!A§.§9!!§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §<8§ extends EventDispatcher
   {
      
      public static const §,!4§:String = "snapping";
      
      public static const §0!g§:String = "tooltips";
      
      public static const §7"§:String = "zoombar";
      
      private static var §+;§:§<8§;
       
      
      private var §,!&§:Dictionary;
      
      private var §@!$§:SharedObject;
      
      public function §<8§()
      {
         this.§,!&§ = new Dictionary();
         super();
         §4m§.registerMethod("setOptions",this.§0!G§);
         this.§,!&§[§,!4§] = true;
         this.§,!&§[§0!g§] = true;
         this.§,!&§[§7"§] = false;
         this.§,"6§(false);
      }
      
      public static function init() : void
      {
         if(§+;§ == null)
         {
            §+;§ = new §<8§();
         }
      }
      
      public static function §5!i§() : §<8§
      {
         if(§+;§ == null)
         {
            init();
         }
         return §+;§;
      }
      
      private function §,"6§(param1:Boolean = true) : void
      {
         var key:String = null;
         var save:Boolean = param1;
         try
         {
            if(!this.§@!$§)
            {
               this.§@!$§ = SharedObject.getLocal(§>"§.§1"3§());
            }
            for(key in this.§,!&§)
            {
               if(this.§@!$§.data[key] == undefined || save)
               {
                  this.§@!$§.data[key] = this.§,!&§[key];
               }
               else
               {
                  this.§,!&§[key] = this.§@!$§.data[key];
               }
            }
            this.§@!$§.flush();
         }
         catch(e:Error)
         {
         }
         §9!!§.§<>§ = this.§,!&§[§0!g§];
      }
      
      public function §&!W§(param1:String) : void
      {
         if(this.§,!&§[param1] == undefined)
         {
            this.§,!&§[param1] = false;
         }
         this.§6;§(param1,!this.§,!&§[param1]);
      }
      
      public function §6;§(param1:String, param2:Boolean) : void
      {
         if(this.§,!&§[param1] != param2)
         {
            this.§,!&§[param1] = param2;
            dispatchEvent(new Event(Event.CHANGE));
            this.§,"6§();
            §9!!§.§<>§ = this.§,!&§[§0!g§];
         }
      }
      
      public function §&!h§(param1:String) : Boolean
      {
         if(this.§,!&§[param1] == undefined)
         {
            return false;
         }
         return this.§,!&§[param1];
      }
      
      public function §0!G§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(§>"§.§,!v§)
         {
            for(_loc3_ in _loc2_)
            {
               this.§6;§(_loc3_,_loc2_[_loc3_]);
            }
         }
      }
   }
}
