package §<!p§
{
   import §+!d§.§"r§;
   import §,Q§.§="2§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §]"7§ extends EventDispatcher
   {
      
      public static const §+B§:String = "snapping";
      
      public static const §["7§:String = "tooltips";
      
      public static const §="-§:String = "zoombar";
      
      private static var §#9§:§]"7§;
       
      
      private var §+!z§:Dictionary;
      
      private var §7`§:SharedObject;
      
      public function §]"7§()
      {
         this.§+!z§ = new Dictionary();
         super();
         §="2§.registerMethod("setOptions",this.§+=§);
         this.§+!z§[§+B§] = true;
         this.§+!z§[§["7§] = true;
         this.§+!z§[§="-§] = false;
         this.§0y§(false);
      }
      
      public static function init() : void
      {
         if(§#9§ == null)
         {
            §#9§ = new §]"7§();
         }
      }
      
      public static function §7U§() : §]"7§
      {
         if(§#9§ == null)
         {
            init();
         }
         return §#9§;
      }
      
      private function §0y§(param1:Boolean = true) : void
      {
         var key:String = null;
         var save:Boolean = param1;
         try
         {
            if(!this.§7`§)
            {
               this.§7`§ = SharedObject.getLocal(§'N§.§@!S§());
            }
            for(key in this.§+!z§)
            {
               if(this.§7`§.data[key] == undefined || save)
               {
                  this.§7`§.data[key] = this.§+!z§[key];
               }
               else
               {
                  this.§+!z§[key] = this.§7`§.data[key];
               }
            }
            this.§7`§.flush();
         }
         catch(e:Error)
         {
         }
         §"r§.§4"$§ = this.§+!z§[§["7§];
      }
      
      public function §&"#§(param1:String) : void
      {
         if(this.§+!z§[param1] == undefined)
         {
            this.§+!z§[param1] = false;
         }
         this.§-!l§(param1,!this.§+!z§[param1]);
      }
      
      public function §-!l§(param1:String, param2:Boolean) : void
      {
         if(this.§+!z§[param1] != param2)
         {
            this.§+!z§[param1] = param2;
            dispatchEvent(new Event(Event.CHANGE));
            this.§0y§();
            §"r§.§4"$§ = this.§+!z§[§["7§];
         }
      }
      
      public function § "1§(param1:String) : Boolean
      {
         if(this.§+!z§[param1] == undefined)
         {
            return false;
         }
         return this.§+!z§[param1];
      }
      
      public function §+=§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(§'N§.§`"+§)
         {
            for(_loc3_ in _loc2_)
            {
               this.§-!l§(_loc3_,_loc2_[_loc3_]);
            }
         }
      }
   }
}
