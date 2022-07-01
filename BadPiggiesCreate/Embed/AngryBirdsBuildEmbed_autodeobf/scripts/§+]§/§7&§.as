package §+]§
{
   import §!!8§.§-!D§;
   import §#!4§.§<f§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §7&§ extends EventDispatcher
   {
      
      public static const §4!K§:String = "snapping";
      
      public static const §&!S§:String = "tooltips";
      
      public static const §5^§:String = "zoombar";
      
      private static var § W§:§7&§;
       
      
      private var §6b§:Dictionary;
      
      private var § !Y§:SharedObject;
      
      public function §7&§()
      {
         this.§6b§ = new Dictionary();
         super();
         §-!D§.§<!C§("setOptions",this.§^s§);
         this.§6b§[§4!K§] = true;
         this.§6b§[§&!S§] = true;
         this.§6b§[§5^§] = false;
         this.§'R§(false);
      }
      
      public static function init() : void
      {
         if(§ W§ == null)
         {
            § W§ = new §7&§();
         }
      }
      
      public static function §=n§() : §7&§
      {
         if(§ W§ == null)
         {
            init();
         }
         return § W§;
      }
      
      private function §'R§(param1:Boolean = true) : void
      {
         var key:String = null;
         var save:Boolean = param1;
         try
         {
            if(!this.§ !Y§)
            {
               this.§ !Y§ = SharedObject.getLocal(§35§.§]!<§());
            }
            for(key in this.§6b§)
            {
               if(this.§ !Y§.data[key] == undefined || save)
               {
                  this.§ !Y§.data[key] = this.§6b§[key];
               }
               else
               {
                  this.§6b§[key] = this.§ !Y§.data[key];
               }
            }
            this.§ !Y§.flush();
         }
         catch(e:Error)
         {
         }
         §<f§.§0b§ = this.§6b§[§&!S§];
      }
      
      public function §"!$§(param1:String) : void
      {
         if(this.§6b§[param1] == undefined)
         {
            this.§6b§[param1] = false;
         }
         this.§7!R§(param1,!this.§6b§[param1]);
      }
      
      public function §7!R§(param1:String, param2:Boolean) : void
      {
         if(this.§6b§[param1] != param2)
         {
            this.§6b§[param1] = param2;
            dispatchEvent(new Event(Event.CHANGE));
            this.§'R§();
            §<f§.§0b§ = this.§6b§[§&!S§];
         }
      }
      
      public function §4V§(param1:String) : Boolean
      {
         if(this.§6b§[param1] == undefined)
         {
            return false;
         }
         return this.§6b§[param1];
      }
      
      public function §^s§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(§35§.§7!p§)
         {
            for(_loc3_ in _loc2_)
            {
               this.§7!R§(_loc3_,_loc2_[_loc3_]);
            }
         }
      }
   }
}
