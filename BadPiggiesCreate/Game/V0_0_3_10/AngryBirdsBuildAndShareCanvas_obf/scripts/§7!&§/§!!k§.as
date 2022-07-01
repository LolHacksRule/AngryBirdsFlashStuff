package §7!&§
{
   import §8"'§.§?!`§;
   import §<8§.§"h§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §!!k§ extends EventDispatcher
   {
      
      public static const §'!S§:String = "snapping";
      
      public static const §`-§:String = "tooltips";
      
      public static const §0i§:String = "zoombar";
      
      private static var §!!B§:§!!k§;
       
      
      private var §1Y§:Dictionary;
      
      private var §`!>§:SharedObject;
      
      public function §!!k§()
      {
         this.§1Y§ = new Dictionary();
         super();
         §?!`§.registerMethod("setOptions",this.§#q§);
         this.§1Y§[§'!S§] = true;
         this.§1Y§[§`-§] = true;
         this.§1Y§[§0i§] = false;
         this.§`!b§(false);
      }
      
      public static function init() : void
      {
         if(§!!B§ == null)
         {
            §!!B§ = new §!!k§();
         }
      }
      
      public static function §4Z§() : §!!k§
      {
         if(§!!B§ == null)
         {
            init();
         }
         return §!!B§;
      }
      
      private function §`!b§(param1:Boolean = true) : void
      {
         var key:String = null;
         var save:Boolean = param1;
         try
         {
            if(!this.§`!>§)
            {
               this.§`!>§ = SharedObject.getLocal(§7"$§.§1f§());
            }
            for(key in this.§1Y§)
            {
               if(this.§`!>§.data[key] == undefined || save)
               {
                  this.§`!>§.data[key] = this.§1Y§[key];
               }
               else
               {
                  this.§1Y§[key] = this.§`!>§.data[key];
               }
            }
            this.§`!>§.flush();
         }
         catch(e:Error)
         {
         }
         §"h§.§"I§ = this.§1Y§[§`-§];
      }
      
      public function §73§(param1:String) : void
      {
         if(this.§1Y§[param1] == undefined)
         {
            this.§1Y§[param1] = false;
         }
         this.§`R§(param1,!this.§1Y§[param1]);
      }
      
      public function §`R§(param1:String, param2:Boolean) : void
      {
         if(this.§1Y§[param1] != param2)
         {
            this.§1Y§[param1] = param2;
            dispatchEvent(new Event(Event.CHANGE));
            this.§`!b§();
            §"h§.§"I§ = this.§1Y§[§`-§];
         }
      }
      
      public function §;K§(param1:String) : Boolean
      {
         if(this.§1Y§[param1] == undefined)
         {
            return false;
         }
         return this.§1Y§[param1];
      }
      
      public function §#q§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(§7"$§.§3!O§)
         {
            for(_loc3_ in _loc2_)
            {
               this.§`R§(_loc3_,_loc2_[_loc3_]);
            }
         }
      }
   }
}
