package §%!W§
{
   import §#!8§.§&!'§;
   import §4!j§.§""3§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §9!K§ extends EventDispatcher
   {
      
      public static const §-y§:String = "snapping";
      
      public static const §<!G§:String = "tooltips";
      
      public static const §>$§:String = "zoombar";
      
      private static var §7§:§9!K§;
       
      
      private var §1,§:Dictionary;
      
      private var §'!r§:SharedObject;
      
      public function §9!K§()
      {
         this.§1,§ = new Dictionary();
         super();
         §&!'§.registerMethod("setOptions",this.§8!R§);
         this.§1,§[§-y§] = true;
         this.§1,§[§<!G§] = true;
         this.§1,§[§>$§] = false;
         this.§%!H§(false);
      }
      
      public static function init() : void
      {
         if(§7§ == null)
         {
            §7§ = new §9!K§();
         }
      }
      
      public static function §8!?§() : §9!K§
      {
         if(§7§ == null)
         {
            init();
         }
         return §7§;
      }
      
      private function §%!H§(param1:Boolean = true) : void
      {
         var key:String = null;
         var save:Boolean = param1;
         try
         {
            if(!this.§'!r§)
            {
               this.§'!r§ = SharedObject.getLocal(§@=§.§<&§());
            }
            for(key in this.§1,§)
            {
               if(this.§'!r§.data[key] == undefined || save)
               {
                  this.§'!r§.data[key] = this.§1,§[key];
               }
               else
               {
                  this.§1,§[key] = this.§'!r§.data[key];
               }
            }
            this.§'!r§.flush();
         }
         catch(e:Error)
         {
         }
         §""3§.§,!G§ = this.§1,§[§<!G§];
      }
      
      public function §6!$§(param1:String) : void
      {
         if(this.§1,§[param1] == undefined)
         {
            this.§1,§[param1] = false;
         }
         this.§#!u§(param1,!this.§1,§[param1]);
      }
      
      public function §#!u§(param1:String, param2:Boolean) : void
      {
         if(this.§1,§[param1] != param2)
         {
            this.§1,§[param1] = param2;
            dispatchEvent(new Event(Event.CHANGE));
            this.§%!H§();
            §""3§.§,!G§ = this.§1,§[§<!G§];
         }
      }
      
      public function §6E§(param1:String) : Boolean
      {
         if(this.§1,§[param1] == undefined)
         {
            return false;
         }
         return this.§1,§[param1];
      }
      
      public function §8!R§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(§@=§.§%"2§)
         {
            for(_loc3_ in _loc2_)
            {
               this.§#!u§(_loc3_,_loc2_[_loc3_]);
            }
         }
      }
   }
}
