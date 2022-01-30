package §?""§
{
   import §&!&§.§+!A§;
   import §&"&§.§8!"§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §&z§ extends EventDispatcher
   {
      
      public static const § T§:String = "snapping";
      
      public static const §@8§:String = "tooltips";
      
      public static const §7L§:String = "zoombar";
      
      private static var §4S§:§&z§;
       
      
      private var §6R§:Dictionary;
      
      private var §%m§:SharedObject;
      
      public function §&z§()
      {
         this.§6R§ = new Dictionary();
         super();
         §8!"§.registerMethod("setOptions",this.§'U§);
         this.§6R§[§ T§] = true;
         this.§6R§[§@8§] = true;
         this.§6R§[§7L§] = false;
         this.§2"#§(false);
      }
      
      public static function init() : void
      {
         if(§4S§ == null)
         {
            §4S§ = new §&z§();
         }
      }
      
      public static function §%!w§() : §&z§
      {
         if(§4S§ == null)
         {
            init();
         }
         return §4S§;
      }
      
      private function §2"#§(param1:Boolean = true) : void
      {
         var key:String = null;
         var save:Boolean = param1;
         try
         {
            if(!this.§%m§)
            {
               this.§%m§ = SharedObject.getLocal(§1+§.§[! §());
            }
            for(key in this.§6R§)
            {
               if(this.§%m§.data[key] == undefined || save)
               {
                  this.§%m§.data[key] = this.§6R§[key];
               }
               else
               {
                  this.§6R§[key] = this.§%m§.data[key];
               }
            }
            this.§%m§.flush();
         }
         catch(e:Error)
         {
         }
         §+!A§.§<!#§ = this.§6R§[§@8§];
      }
      
      public function §<o§(param1:String) : void
      {
         if(this.§6R§[param1] == undefined)
         {
            this.§6R§[param1] = false;
         }
         this.§"!F§(param1,!this.§6R§[param1]);
      }
      
      public function §"!F§(param1:String, param2:Boolean) : void
      {
         if(this.§6R§[param1] != param2)
         {
            this.§6R§[param1] = param2;
            dispatchEvent(new Event(Event.CHANGE));
            this.§2"#§();
            §+!A§.§<!#§ = this.§6R§[§@8§];
         }
      }
      
      public function §>!M§(param1:String) : Boolean
      {
         if(this.§6R§[param1] == undefined)
         {
            return false;
         }
         return this.§6R§[param1];
      }
      
      public function §'U§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(§1+§.§&g§)
         {
            for(_loc3_ in _loc2_)
            {
               this.§"!F§(_loc3_,_loc2_[_loc3_]);
            }
         }
      }
   }
}
