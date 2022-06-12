package §]!l§
{
   import §!!T§.§"!S§;
   import §9!7§.§6"0§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §-"&§ extends EventDispatcher
   {
      
      public static const § !A§:String = "snapping";
      
      public static const §<!T§:String = "tooltips";
      
      public static const §>R§:String = "zoombar";
      
      private static var §%!A§:§-"&§;
       
      
      private var §8n§:Dictionary;
      
      private var §[!Z§:SharedObject;
      
      public function §-"&§()
      {
         this.§8n§ = new Dictionary();
         super();
         §"!S§.registerMethod("setOptions",this.§+!t§);
         this.§8n§[§ !A§] = true;
         this.§8n§[§<!T§] = true;
         this.§8n§[§>R§] = false;
         this.§-§(false);
      }
      
      public static function init() : void
      {
         if(§%!A§ == null)
         {
            §%!A§ = new §-"&§();
         }
      }
      
      public static function §?!Q§() : §-"&§
      {
         if(§%!A§ == null)
         {
            init();
         }
         return §%!A§;
      }
      
      private function §-§(param1:Boolean = true) : void
      {
         var key:String = null;
         var save:Boolean = param1;
         try
         {
            if(!this.§[!Z§)
            {
               this.§[!Z§ = SharedObject.getLocal(§3!P§.§<"§());
            }
            for(key in this.§8n§)
            {
               if(this.§[!Z§.data[key] == undefined || save)
               {
                  this.§[!Z§.data[key] = this.§8n§[key];
               }
               else
               {
                  this.§8n§[key] = this.§[!Z§.data[key];
               }
            }
            this.§[!Z§.flush();
         }
         catch(e:Error)
         {
         }
         §6"0§.§3!;§ = this.§8n§[§<!T§];
      }
      
      public function §""2§(param1:String) : void
      {
         if(this.§8n§[param1] == undefined)
         {
            this.§8n§[param1] = false;
         }
         this.§<! §(param1,!this.§8n§[param1]);
      }
      
      public function §<! §(param1:String, param2:Boolean) : void
      {
         if(this.§8n§[param1] != param2)
         {
            this.§8n§[param1] = param2;
            dispatchEvent(new Event(Event.CHANGE));
            this.§-§();
            §6"0§.§3!;§ = this.§8n§[§<!T§];
         }
      }
      
      public function §3"#§(param1:String) : Boolean
      {
         if(this.§8n§[param1] == undefined)
         {
            return false;
         }
         return this.§8n§[param1];
      }
      
      public function §+!t§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(§3!P§.§!!t§)
         {
            for(_loc3_ in _loc2_)
            {
               this.§<! §(_loc3_,_loc2_[_loc3_]);
            }
         }
      }
   }
}
